package com.hhpc.hcms.domain

class CooperationTypeController {

    def index = { redirect(action: "list", params: params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def list = {
        params.max = Math.min(params.max ? params.max.toInteger() : 10,  100)
        [cooperationTypeInstanceList: CooperationType.list(params), cooperationTypeInstanceTotal: CooperationType.count()]
    }

    def create = {
        def cooperationTypeInstance = new CooperationType()
        cooperationTypeInstance.properties = params
        return [cooperationTypeInstance: cooperationTypeInstance]
    }

    def save = {
        def cooperationTypeInstance = new CooperationType(params)
        if (!cooperationTypeInstance.hasErrors() && cooperationTypeInstance.save()) {
            flash.message = "cooperationType.created"
            flash.args = [cooperationTypeInstance.id]
            flash.defaultMessage = "CooperationType ${cooperationTypeInstance.id} created"
            redirect(action: "show", id: cooperationTypeInstance.id)
        }
        else {
            render(view: "create", model: [cooperationTypeInstance: cooperationTypeInstance])
        }
    }

    def show = {
        def cooperationTypeInstance = CooperationType.get(params.id)
        if (!cooperationTypeInstance) {
            flash.message = "cooperationType.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "CooperationType not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [cooperationTypeInstance: cooperationTypeInstance]
        }
    }

    def edit = {
        def cooperationTypeInstance = CooperationType.get(params.id)
        if (!cooperationTypeInstance) {
            flash.message = "cooperationType.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "CooperationType not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [cooperationTypeInstance: cooperationTypeInstance]
        }
    }

    def update = {
        def cooperationTypeInstance = CooperationType.get(params.id)
        if (cooperationTypeInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (cooperationTypeInstance.version > version) {
                    
                    cooperationTypeInstance.errors.rejectValue("version", "cooperationType.optimistic.locking.failure", "Another user has updated this CooperationType while you were editing")
                    render(view: "edit", model: [cooperationTypeInstance: cooperationTypeInstance])
                    return
                }
            }
            cooperationTypeInstance.properties = params
            if (!cooperationTypeInstance.hasErrors() && cooperationTypeInstance.save()) {
                flash.message = "cooperationType.updated"
                flash.args = [params.id]
                flash.defaultMessage = "CooperationType ${params.id} updated"
                redirect(action: "show", id: cooperationTypeInstance.id)
            }
            else {
                render(view: "edit", model: [cooperationTypeInstance: cooperationTypeInstance])
            }
        }
        else {
            flash.message = "cooperationType.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "CooperationType not found with id ${params.id}"
            redirect(action: "edit", id: params.id)
        }
    }

    def delete = {
        def cooperationTypeInstance = CooperationType.get(params.id)
        if (cooperationTypeInstance) {
            try {
                cooperationTypeInstance.delete()
                flash.message = "cooperationType.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "CooperationType ${params.id} deleted"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "cooperationType.not.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "CooperationType ${params.id} could not be deleted"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "cooperationType.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "CooperationType not found with id ${params.id}"
            redirect(action: "list")
        }
    }
}
