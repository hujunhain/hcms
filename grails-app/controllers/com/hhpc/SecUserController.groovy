package com.hhpc

class SecUserController {

    def index = { redirect(action: "list", params: params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def list = {
        params.max = Math.min(params.max ? params.max.toInteger() : 10,  100)
        [secUserInstanceList: SecUser.list(params), secUserInstanceTotal: SecUser.count()]
    }

    def create = {
        def secUserInstance = new SecUser()
        secUserInstance.properties = params
        return [secUserInstance: secUserInstance]
    }

    def save = {
        def secUserInstance = new SecUser(params)
        if (!secUserInstance.hasErrors() && secUserInstance.save()) {
            flash.message = "secUser.created"
            flash.args = [secUserInstance.id]
            flash.defaultMessage = "SecUser ${secUserInstance.id} created"
            redirect(action: "show", id: secUserInstance.id)
        }
        else {
            render(view: "create", model: [secUserInstance: secUserInstance])
        }
    }

    def show = {
        def secUserInstance = SecUser.get(params.id)
        if (!secUserInstance) {
            flash.message = "secUser.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "SecUser not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [secUserInstance: secUserInstance]
        }
    }

    def edit = {
        def secUserInstance = SecUser.get(params.id)
        if (!secUserInstance) {
            flash.message = "secUser.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "SecUser not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [secUserInstance: secUserInstance]
        }
    }

    def update = {
        def secUserInstance = SecUser.get(params.id)
        if (secUserInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (secUserInstance.version > version) {
                    
                    secUserInstance.errors.rejectValue("version", "secUser.optimistic.locking.failure", "Another user has updated this SecUser while you were editing")
                    render(view: "edit", model: [secUserInstance: secUserInstance])
                    return
                }
            }
            secUserInstance.properties = params
            if (!secUserInstance.hasErrors() && secUserInstance.save()) {
                flash.message = "secUser.updated"
                flash.args = [params.id]
                flash.defaultMessage = "SecUser ${params.id} updated"
                redirect(action: "show", id: secUserInstance.id)
            }
            else {
                render(view: "edit", model: [secUserInstance: secUserInstance])
            }
        }
        else {
            flash.message = "secUser.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "SecUser not found with id ${params.id}"
            redirect(action: "edit", id: params.id)
        }
    }

    def delete = {
        def secUserInstance = SecUser.get(params.id)
        if (secUserInstance) {
            try {
                secUserInstance.delete()
                flash.message = "secUser.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "SecUser ${params.id} deleted"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "secUser.not.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "SecUser ${params.id} could not be deleted"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "secUser.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "SecUser not found with id ${params.id}"
            redirect(action: "list")
        }
    }
}
