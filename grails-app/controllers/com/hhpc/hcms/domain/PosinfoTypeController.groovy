package com.hhpc.hcms.domain

class PosinfoTypeController {

    def index = { redirect(action: "list", params: params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def list = {
        params.max = Math.min(params.max ? params.max.toInteger() : 10,  100)
        [posinfoTypeInstanceList: PosinfoType.list(params), posinfoTypeInstanceTotal: PosinfoType.count()]
    }

    def create = {
        def posinfoTypeInstance = new PosinfoType()
        posinfoTypeInstance.properties = params
        return [posinfoTypeInstance: posinfoTypeInstance]
    }

    def save = {
        def posinfoTypeInstance = new PosinfoType(params)
        if (!posinfoTypeInstance.hasErrors() && posinfoTypeInstance.save()) {
            flash.message = "posinfoType.created"
            flash.args = [posinfoTypeInstance.id]
            flash.defaultMessage = "PosinfoType ${posinfoTypeInstance.id} created"
            redirect(action: "show", id: posinfoTypeInstance.id)
        }
        else {
            render(view: "create", model: [posinfoTypeInstance: posinfoTypeInstance])
        }
    }

    def show = {
        def posinfoTypeInstance = PosinfoType.get(params.id)
        if (!posinfoTypeInstance) {
            flash.message = "posinfoType.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PosinfoType not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [posinfoTypeInstance: posinfoTypeInstance]
        }
    }

    def edit = {
        def posinfoTypeInstance = PosinfoType.get(params.id)
        if (!posinfoTypeInstance) {
            flash.message = "posinfoType.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PosinfoType not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [posinfoTypeInstance: posinfoTypeInstance]
        }
    }

    def update = {
        def posinfoTypeInstance = PosinfoType.get(params.id)
        if (posinfoTypeInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (posinfoTypeInstance.version > version) {
                    
                    posinfoTypeInstance.errors.rejectValue("version", "posinfoType.optimistic.locking.failure", "Another user has updated this PosinfoType while you were editing")
                    render(view: "edit", model: [posinfoTypeInstance: posinfoTypeInstance])
                    return
                }
            }
            posinfoTypeInstance.properties = params
            if (!posinfoTypeInstance.hasErrors() && posinfoTypeInstance.save()) {
                flash.message = "posinfoType.updated"
                flash.args = [params.id]
                flash.defaultMessage = "PosinfoType ${params.id} updated"
                redirect(action: "show", id: posinfoTypeInstance.id)
            }
            else {
                render(view: "edit", model: [posinfoTypeInstance: posinfoTypeInstance])
            }
        }
        else {
            flash.message = "posinfoType.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PosinfoType not found with id ${params.id}"
            redirect(action: "edit", id: params.id)
        }
    }

    def delete = {
        def posinfoTypeInstance = PosinfoType.get(params.id)
        if (posinfoTypeInstance) {
            try {
                posinfoTypeInstance.delete()
                flash.message = "posinfoType.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "PosinfoType ${params.id} deleted"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "posinfoType.not.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "PosinfoType ${params.id} could not be deleted"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "posinfoType.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PosinfoType not found with id ${params.id}"
            redirect(action: "list")
        }
    }
}
