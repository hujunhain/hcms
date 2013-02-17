package com.hhpc.hcms.domain

class PubPosinfoController {

    def index = { redirect(action: "list", params: params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def list = {
        params.max = Math.min(params.max ? params.max.toInteger() : 10,  100)
        [pubPosinfoInstanceList: PubPosinfo.list(params), pubPosinfoInstanceTotal: PubPosinfo.count()]
    }

    def create = {
        def pubPosinfoInstance = new PubPosinfo()
        pubPosinfoInstance.properties = params
        return [pubPosinfoInstance: pubPosinfoInstance]
    }

    def save = {
        def pubPosinfoInstance = new PubPosinfo(params)
        if (!pubPosinfoInstance.hasErrors() && pubPosinfoInstance.save()) {
            flash.message = "pubPosinfo.created"
            flash.args = [pubPosinfoInstance.id]
            flash.defaultMessage = "PubPosinfo ${pubPosinfoInstance.id} created"
            redirect(action: "show", id: pubPosinfoInstance.id)
        }
        else {
            render(view: "create", model: [pubPosinfoInstance: pubPosinfoInstance])
        }
    }

    def show = {
        def pubPosinfoInstance = PubPosinfo.get(params.id)
        if (!pubPosinfoInstance) {
            flash.message = "pubPosinfo.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PubPosinfo not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [pubPosinfoInstance: pubPosinfoInstance]
        }
    }

    def edit = {
        def pubPosinfoInstance = PubPosinfo.get(params.id)
        if (!pubPosinfoInstance) {
            flash.message = "pubPosinfo.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PubPosinfo not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [pubPosinfoInstance: pubPosinfoInstance]
        }
    }

    def update = {
        def pubPosinfoInstance = PubPosinfo.get(params.id)
        if (pubPosinfoInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (pubPosinfoInstance.version > version) {
                    
                    pubPosinfoInstance.errors.rejectValue("version", "pubPosinfo.optimistic.locking.failure", "Another user has updated this PubPosinfo while you were editing")
                    render(view: "edit", model: [pubPosinfoInstance: pubPosinfoInstance])
                    return
                }
            }
            pubPosinfoInstance.properties = params
            if (!pubPosinfoInstance.hasErrors() && pubPosinfoInstance.save()) {
                flash.message = "pubPosinfo.updated"
                flash.args = [params.id]
                flash.defaultMessage = "PubPosinfo ${params.id} updated"
                redirect(action: "show", id: pubPosinfoInstance.id)
            }
            else {
                render(view: "edit", model: [pubPosinfoInstance: pubPosinfoInstance])
            }
        }
        else {
            flash.message = "pubPosinfo.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PubPosinfo not found with id ${params.id}"
            redirect(action: "edit", id: params.id)
        }
    }

    def delete = {
        def pubPosinfoInstance = PubPosinfo.get(params.id)
        if (pubPosinfoInstance) {
            try {
                pubPosinfoInstance.delete()
                flash.message = "pubPosinfo.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "PubPosinfo ${params.id} deleted"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "pubPosinfo.not.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "PubPosinfo ${params.id} could not be deleted"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "pubPosinfo.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PubPosinfo not found with id ${params.id}"
            redirect(action: "list")
        }
    }
}
