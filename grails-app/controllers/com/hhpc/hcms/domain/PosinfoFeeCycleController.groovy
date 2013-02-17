package com.hhpc.hcms.domain

class PosinfoFeeCycleController {

    def index = { redirect(action: "list", params: params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def list = {
        params.max = Math.min(params.max ? params.max.toInteger() : 10,  100)
        [posinfoFeeCycleInstanceList: PosinfoFeeCycle.list(params), posinfoFeeCycleInstanceTotal: PosinfoFeeCycle.count()]
    }

    def create = {
        def posinfoFeeCycleInstance = new PosinfoFeeCycle()
        posinfoFeeCycleInstance.properties = params
        return [posinfoFeeCycleInstance: posinfoFeeCycleInstance]
    }

    def save = {
        def posinfoFeeCycleInstance = new PosinfoFeeCycle(params)
        if (!posinfoFeeCycleInstance.hasErrors() && posinfoFeeCycleInstance.save()) {
            flash.message = "posinfoFeeCycle.created"
            flash.args = [posinfoFeeCycleInstance.id]
            flash.defaultMessage = "PosinfoFeeCycle ${posinfoFeeCycleInstance.id} created"
            redirect(action: "show", id: posinfoFeeCycleInstance.id)
        }
        else {
            render(view: "create", model: [posinfoFeeCycleInstance: posinfoFeeCycleInstance])
        }
    }

    def show = {
        def posinfoFeeCycleInstance = PosinfoFeeCycle.get(params.id)
        if (!posinfoFeeCycleInstance) {
            flash.message = "posinfoFeeCycle.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PosinfoFeeCycle not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [posinfoFeeCycleInstance: posinfoFeeCycleInstance]
        }
    }

    def edit = {
        def posinfoFeeCycleInstance = PosinfoFeeCycle.get(params.id)
        if (!posinfoFeeCycleInstance) {
            flash.message = "posinfoFeeCycle.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PosinfoFeeCycle not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [posinfoFeeCycleInstance: posinfoFeeCycleInstance]
        }
    }

    def update = {
        def posinfoFeeCycleInstance = PosinfoFeeCycle.get(params.id)
        if (posinfoFeeCycleInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (posinfoFeeCycleInstance.version > version) {
                    
                    posinfoFeeCycleInstance.errors.rejectValue("version", "posinfoFeeCycle.optimistic.locking.failure", "Another user has updated this PosinfoFeeCycle while you were editing")
                    render(view: "edit", model: [posinfoFeeCycleInstance: posinfoFeeCycleInstance])
                    return
                }
            }
            posinfoFeeCycleInstance.properties = params
            if (!posinfoFeeCycleInstance.hasErrors() && posinfoFeeCycleInstance.save()) {
                flash.message = "posinfoFeeCycle.updated"
                flash.args = [params.id]
                flash.defaultMessage = "PosinfoFeeCycle ${params.id} updated"
                redirect(action: "show", id: posinfoFeeCycleInstance.id)
            }
            else {
                render(view: "edit", model: [posinfoFeeCycleInstance: posinfoFeeCycleInstance])
            }
        }
        else {
            flash.message = "posinfoFeeCycle.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PosinfoFeeCycle not found with id ${params.id}"
            redirect(action: "edit", id: params.id)
        }
    }

    def delete = {
        def posinfoFeeCycleInstance = PosinfoFeeCycle.get(params.id)
        if (posinfoFeeCycleInstance) {
            try {
                posinfoFeeCycleInstance.delete()
                flash.message = "posinfoFeeCycle.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "PosinfoFeeCycle ${params.id} deleted"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "posinfoFeeCycle.not.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "PosinfoFeeCycle ${params.id} could not be deleted"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "posinfoFeeCycle.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PosinfoFeeCycle not found with id ${params.id}"
            redirect(action: "list")
        }
    }
}
