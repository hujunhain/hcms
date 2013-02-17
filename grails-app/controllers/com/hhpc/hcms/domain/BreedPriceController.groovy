package com.hhpc.hcms.domain

class BreedPriceController {

    def index = { redirect(action: "list", params: params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def list = {
        params.max = Math.min(params.max ? params.max.toInteger() : 10,  100)
        [breedPriceInstanceList: BreedPrice.list(params), breedPriceInstanceTotal: BreedPrice.count()]
    }

    def create = {
        def breedPriceInstance = new BreedPrice()
        breedPriceInstance.properties = params
        return [breedPriceInstance: breedPriceInstance]
    }

    def save = {
        def breedPriceInstance = new BreedPrice(params)
        if (!breedPriceInstance.hasErrors() && breedPriceInstance.save()) {
            flash.message = "breedPrice.created"
            flash.args = [breedPriceInstance.id]
            flash.defaultMessage = "BreedPrice ${breedPriceInstance.id} created"
            redirect(action: "show", id: breedPriceInstance.id)
        }
        else {
            render(view: "create", model: [breedPriceInstance: breedPriceInstance])
        }
    }

    def show = {
        def breedPriceInstance = BreedPrice.get(params.id)
        if (!breedPriceInstance) {
            flash.message = "breedPrice.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "BreedPrice not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [breedPriceInstance: breedPriceInstance]
        }
    }

    def edit = {
        def breedPriceInstance = BreedPrice.get(params.id)
        if (!breedPriceInstance) {
            flash.message = "breedPrice.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "BreedPrice not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [breedPriceInstance: breedPriceInstance]
        }
    }

    def update = {
        def breedPriceInstance = BreedPrice.get(params.id)
        if (breedPriceInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (breedPriceInstance.version > version) {
                    
                    breedPriceInstance.errors.rejectValue("version", "breedPrice.optimistic.locking.failure", "Another user has updated this BreedPrice while you were editing")
                    render(view: "edit", model: [breedPriceInstance: breedPriceInstance])
                    return
                }
            }
            breedPriceInstance.properties = params
            if (!breedPriceInstance.hasErrors() && breedPriceInstance.save()) {
                flash.message = "breedPrice.updated"
                flash.args = [params.id]
                flash.defaultMessage = "BreedPrice ${params.id} updated"
                redirect(action: "show", id: breedPriceInstance.id)
            }
            else {
                render(view: "edit", model: [breedPriceInstance: breedPriceInstance])
            }
        }
        else {
            flash.message = "breedPrice.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "BreedPrice not found with id ${params.id}"
            redirect(action: "edit", id: params.id)
        }
    }

    def delete = {
        def breedPriceInstance = BreedPrice.get(params.id)
        if (breedPriceInstance) {
            try {
                breedPriceInstance.delete()
                flash.message = "breedPrice.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "BreedPrice ${params.id} deleted"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "breedPrice.not.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "BreedPrice ${params.id} could not be deleted"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "breedPrice.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "BreedPrice not found with id ${params.id}"
            redirect(action: "list")
        }
    }
}
