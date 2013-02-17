package com.hhpc.hcms.domain

class PosinfoController {

    def index = { redirect(action: "list", params: params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def list = {
        params.max = Math.min(params.max ? params.max.toInteger() : 10,  100)
        [posinfoInstanceList: Posinfo.list(params), posinfoInstanceTotal: Posinfo.count()]
    }

    def create = {
        def posinfoInstance = new Posinfo()
        posinfoInstance.properties = params
        return [posinfoInstance: posinfoInstance]
    }

    def save = {
        def posinfoInstance = new Posinfo(params)
        if (!posinfoInstance.hasErrors() && posinfoInstance.save()) {
            flash.message = "posinfo.created"
            flash.args = [posinfoInstance.id]
            flash.defaultMessage = "Posinfo ${posinfoInstance.id} created"
            redirect(action: "show", id: posinfoInstance.id)
        }
        else {
            render(view: "create", model: [posinfoInstance: posinfoInstance])
        }
    }

    def show = {
        def posinfoInstance = Posinfo.get(params.id)
        if (!posinfoInstance) {
            flash.message = "posinfo.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Posinfo not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [posinfoInstance: posinfoInstance]
        }
    }

    def edit = {
        def posinfoInstance = Posinfo.get(params.id)
        if (!posinfoInstance) {
            flash.message = "posinfo.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Posinfo not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [posinfoInstance: posinfoInstance]
        }
    }

    def update = {
        def posinfoInstance = Posinfo.get(params.id)
        if (posinfoInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (posinfoInstance.version > version) {
                    
                    posinfoInstance.errors.rejectValue("version", "posinfo.optimistic.locking.failure", "Another user has updated this Posinfo while you were editing")
                    render(view: "edit", model: [posinfoInstance: posinfoInstance])
                    return
                }
            }
            posinfoInstance.properties = params
            if (!posinfoInstance.hasErrors() && posinfoInstance.save()) {
                flash.message = "posinfo.updated"
                flash.args = [params.id]
                flash.defaultMessage = "Posinfo ${params.id} updated"
                redirect(action: "show", id: posinfoInstance.id)
            }
            else {
                render(view: "edit", model: [posinfoInstance: posinfoInstance])
            }
        }
        else {
            flash.message = "posinfo.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Posinfo not found with id ${params.id}"
            redirect(action: "edit", id: params.id)
        }
    }

    def delete = {
        def posinfoInstance = Posinfo.get(params.id)
        if (posinfoInstance) {
            try {
                posinfoInstance.delete()
                flash.message = "posinfo.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "Posinfo ${params.id} deleted"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "posinfo.not.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "Posinfo ${params.id} could not be deleted"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "posinfo.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Posinfo not found with id ${params.id}"
            redirect(action: "list")
        }
    }
}
