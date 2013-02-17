package com.hhpc

class SecRoleController {

    def index = { redirect(action: "list", params: params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def list = {
        params.max = Math.min(params.max ? params.max.toInteger() : 10,  100)
        [secRoleInstanceList: SecRole.list(params), secRoleInstanceTotal: SecRole.count()]
    }

    def create = {
        def secRoleInstance = new SecRole()
        secRoleInstance.properties = params
        return [secRoleInstance: secRoleInstance]
    }

    def save = {
        def secRoleInstance = new SecRole(params)
        if (!secRoleInstance.hasErrors() && secRoleInstance.save()) {
            flash.message = "secRole.created"
            flash.args = [secRoleInstance.id]
            flash.defaultMessage = "SecRole ${secRoleInstance.id} created"
            redirect(action: "show", id: secRoleInstance.id)
        }
        else {
            render(view: "create", model: [secRoleInstance: secRoleInstance])
        }
    }

    def show = {
        def secRoleInstance = SecRole.get(params.id)
        if (!secRoleInstance) {
            flash.message = "secRole.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "SecRole not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [secRoleInstance: secRoleInstance]
        }
    }

    def edit = {
        def secRoleInstance = SecRole.get(params.id)
        if (!secRoleInstance) {
            flash.message = "secRole.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "SecRole not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [secRoleInstance: secRoleInstance]
        }
    }

    def update = {
        def secRoleInstance = SecRole.get(params.id)
        if (secRoleInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (secRoleInstance.version > version) {
                    
                    secRoleInstance.errors.rejectValue("version", "secRole.optimistic.locking.failure", "Another user has updated this SecRole while you were editing")
                    render(view: "edit", model: [secRoleInstance: secRoleInstance])
                    return
                }
            }
            secRoleInstance.properties = params
            if (!secRoleInstance.hasErrors() && secRoleInstance.save()) {
                flash.message = "secRole.updated"
                flash.args = [params.id]
                flash.defaultMessage = "SecRole ${params.id} updated"
                redirect(action: "show", id: secRoleInstance.id)
            }
            else {
                render(view: "edit", model: [secRoleInstance: secRoleInstance])
            }
        }
        else {
            flash.message = "secRole.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "SecRole not found with id ${params.id}"
            redirect(action: "edit", id: params.id)
        }
    }

    def delete = {
        def secRoleInstance = SecRole.get(params.id)
        if (secRoleInstance) {
            try {
                secRoleInstance.delete()
                flash.message = "secRole.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "SecRole ${params.id} deleted"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "secRole.not.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "SecRole ${params.id} could not be deleted"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "secRole.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "SecRole not found with id ${params.id}"
            redirect(action: "list")
        }
    }
}
