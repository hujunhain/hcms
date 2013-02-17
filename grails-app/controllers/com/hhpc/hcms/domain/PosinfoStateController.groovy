package com.hhpc.hcms.domain

class PosinfoStateController {

    def index = { redirect(action: "list", params: params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def list = {
        params.max = Math.min(params.max ? params.max.toInteger() : 10,  100)
        [posinfoStateInstanceList: PosinfoState.list(params), posinfoStateInstanceTotal: PosinfoState.count()]
    }

    def create = {
        def posinfoStateInstance = new PosinfoState()
        posinfoStateInstance.properties = params
        return [posinfoStateInstance: posinfoStateInstance]
    }

    def save = {
        def posinfoStateInstance = new PosinfoState(params)
        if (!posinfoStateInstance.hasErrors() && posinfoStateInstance.save()) {
            flash.message = "posinfoState.created"
            flash.args = [posinfoStateInstance.id]
            flash.defaultMessage = "PosinfoState ${posinfoStateInstance.id} created"
            redirect(action: "show", id: posinfoStateInstance.id)
        }
        else {
            render(view: "create", model: [posinfoStateInstance: posinfoStateInstance])
        }
    }

    def show = {
        def posinfoStateInstance = PosinfoState.get(params.id)
        if (!posinfoStateInstance) {
            flash.message = "posinfoState.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PosinfoState not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [posinfoStateInstance: posinfoStateInstance]
        }
    }

    def edit = {
        def posinfoStateInstance = PosinfoState.get(params.id)
        if (!posinfoStateInstance) {
            flash.message = "posinfoState.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PosinfoState not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [posinfoStateInstance: posinfoStateInstance]
        }
    }

    def update = {
        def posinfoStateInstance = PosinfoState.get(params.id)
        if (posinfoStateInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (posinfoStateInstance.version > version) {
                    
                    posinfoStateInstance.errors.rejectValue("version", "posinfoState.optimistic.locking.failure", "Another user has updated this PosinfoState while you were editing")
                    render(view: "edit", model: [posinfoStateInstance: posinfoStateInstance])
                    return
                }
            }
            posinfoStateInstance.properties = params
            if (!posinfoStateInstance.hasErrors() && posinfoStateInstance.save()) {
                flash.message = "posinfoState.updated"
                flash.args = [params.id]
                flash.defaultMessage = "PosinfoState ${params.id} updated"
                redirect(action: "show", id: posinfoStateInstance.id)
            }
            else {
                render(view: "edit", model: [posinfoStateInstance: posinfoStateInstance])
            }
        }
        else {
            flash.message = "posinfoState.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PosinfoState not found with id ${params.id}"
            redirect(action: "edit", id: params.id)
        }
    }

    def delete = {
        def posinfoStateInstance = PosinfoState.get(params.id)
        if (posinfoStateInstance) {
            try {
                posinfoStateInstance.delete()
                flash.message = "posinfoState.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "PosinfoState ${params.id} deleted"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "posinfoState.not.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "PosinfoState ${params.id} could not be deleted"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "posinfoState.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PosinfoState not found with id ${params.id}"
            redirect(action: "list")
        }
    }
}
