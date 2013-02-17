package com.hhpc.hcms.domain

class BreedController {

    def index = { redirect(action: "list", params: params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def list = {
        params.max = Math.min(params.max ? params.max.toInteger() : 10,  100)
        [breedInstanceList: Breed.list(params), breedInstanceTotal: Breed.count()]
    }

    def create = {
        def breedInstance = new Breed()
        breedInstance.properties = params
        return [breedInstance: breedInstance]
    }

    def save = {
        def breedInstance = new Breed(params)
        if (!breedInstance.hasErrors() && breedInstance.save()) {
            flash.message = "breed.created"
            flash.args = [breedInstance.id]
            flash.defaultMessage = "Breed ${breedInstance.id} created"
            redirect(action: "show", id: breedInstance.id)
        }
        else {
            render(view: "create", model: [breedInstance: breedInstance])
        }
    }

    def show = {
        def breedInstance = Breed.get(params.id)
        if (!breedInstance) {
            flash.message = "breed.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Breed not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [breedInstance: breedInstance]
        }
    }

    def edit = {
        def breedInstance = Breed.get(params.id)
        if (!breedInstance) {
            flash.message = "breed.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Breed not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [breedInstance: breedInstance]
        }
    }

    def update = {
        def breedInstance = Breed.get(params.id)
        if (breedInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (breedInstance.version > version) {
                    
                    breedInstance.errors.rejectValue("version", "breed.optimistic.locking.failure", "Another user has updated this Breed while you were editing")
                    render(view: "edit", model: [breedInstance: breedInstance])
                    return
                }
            }
            breedInstance.properties = params
            if (!breedInstance.hasErrors() && breedInstance.save()) {
                flash.message = "breed.updated"
                flash.args = [params.id]
                flash.defaultMessage = "Breed ${params.id} updated"
                redirect(action: "show", id: breedInstance.id)
            }
            else {
                render(view: "edit", model: [breedInstance: breedInstance])
            }
        }
        else {
            flash.message = "breed.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Breed not found with id ${params.id}"
            redirect(action: "edit", id: params.id)
        }
    }

    def delete = {
        def breedInstance = Breed.get(params.id)
        if (breedInstance) {
            try {
                breedInstance.delete()
                flash.message = "breed.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "Breed ${params.id} deleted"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "breed.not.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "Breed ${params.id} could not be deleted"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "breed.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Breed not found with id ${params.id}"
            redirect(action: "list")
        }
    }
}
