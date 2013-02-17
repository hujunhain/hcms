package com.hhpc.hcms.domain

class AlcoholTypeController {

    def index = { redirect(action: "list", params: params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def list = {
        params.max = Math.min(params.max ? params.max.toInteger() : 10,  100)
        [alcoholTypeInstanceList: AlcoholType.list(params), alcoholTypeInstanceTotal: AlcoholType.count()]
    }

    def create = {
        def alcoholTypeInstance = new AlcoholType()
        alcoholTypeInstance.properties = params
        return [alcoholTypeInstance: alcoholTypeInstance]
    }

    def save = {
        def alcoholTypeInstance = new AlcoholType(params)
        if (!alcoholTypeInstance.hasErrors() && alcoholTypeInstance.save()) {
            flash.message = "alcoholType.created"
            flash.args = [alcoholTypeInstance.id]
            flash.defaultMessage = "AlcoholType ${alcoholTypeInstance.id} created"
            redirect(action: "show", id: alcoholTypeInstance.id)
        }
        else {
            render(view: "create", model: [alcoholTypeInstance: alcoholTypeInstance])
        }
    }

    def show = {
        def alcoholTypeInstance = AlcoholType.get(params.id)
        if (!alcoholTypeInstance) {
            flash.message = "alcoholType.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "AlcoholType not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [alcoholTypeInstance: alcoholTypeInstance]
        }
    }

    def edit = {
        def alcoholTypeInstance = AlcoholType.get(params.id)
        if (!alcoholTypeInstance) {
            flash.message = "alcoholType.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "AlcoholType not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [alcoholTypeInstance: alcoholTypeInstance]
        }
    }

    def update = {
        def alcoholTypeInstance = AlcoholType.get(params.id)
        if (alcoholTypeInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (alcoholTypeInstance.version > version) {
                    
                    alcoholTypeInstance.errors.rejectValue("version", "alcoholType.optimistic.locking.failure", "Another user has updated this AlcoholType while you were editing")
                    render(view: "edit", model: [alcoholTypeInstance: alcoholTypeInstance])
                    return
                }
            }
            alcoholTypeInstance.properties = params
            if (!alcoholTypeInstance.hasErrors() && alcoholTypeInstance.save()) {
                flash.message = "alcoholType.updated"
                flash.args = [params.id]
                flash.defaultMessage = "AlcoholType ${params.id} updated"
                redirect(action: "show", id: alcoholTypeInstance.id)
            }
            else {
                render(view: "edit", model: [alcoholTypeInstance: alcoholTypeInstance])
            }
        }
        else {
            flash.message = "alcoholType.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "AlcoholType not found with id ${params.id}"
            redirect(action: "edit", id: params.id)
        }
    }

    def delete = {
        def alcoholTypeInstance = AlcoholType.get(params.id)
        if (alcoholTypeInstance) {
            try {
                alcoholTypeInstance.delete()
                flash.message = "alcoholType.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "AlcoholType ${params.id} deleted"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "alcoholType.not.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "AlcoholType ${params.id} could not be deleted"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "alcoholType.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "AlcoholType not found with id ${params.id}"
            redirect(action: "list")
        }
    }
}
