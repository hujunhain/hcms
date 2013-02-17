package com.hhpc.hcms.domain

class PubPosinfoCoopController {

    def index = { redirect(action: "list", params: params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def list = {
        params.max = Math.min(params.max ? params.max.toInteger() : 10,  100)
        [pubPosinfoCoopInstanceList: PubPosinfoCoop.list(params), pubPosinfoCoopInstanceTotal: PubPosinfoCoop.count()]
    }

    def create = {
        def pubPosinfoCoopInstance = new PubPosinfoCoop()
        pubPosinfoCoopInstance.properties = params
        return [pubPosinfoCoopInstance: pubPosinfoCoopInstance]
    }

    def save = {
        def pubPosinfoCoopInstance = new PubPosinfoCoop(params)
        if (!pubPosinfoCoopInstance.hasErrors() && pubPosinfoCoopInstance.save()) {
            flash.message = "pubPosinfoCoop.created"
            flash.args = [pubPosinfoCoopInstance.id]
            flash.defaultMessage = "PubPosinfoCoop ${pubPosinfoCoopInstance.id} created"
            redirect(action: "show", id: pubPosinfoCoopInstance.id)
        }
        else {
            render(view: "create", model: [pubPosinfoCoopInstance: pubPosinfoCoopInstance])
        }
    }

    def show = {
        def pubPosinfoCoopInstance = PubPosinfoCoop.get(params.id)
        if (!pubPosinfoCoopInstance) {
            flash.message = "pubPosinfoCoop.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PubPosinfoCoop not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [pubPosinfoCoopInstance: pubPosinfoCoopInstance]
        }
    }

    def edit = {
        def pubPosinfoCoopInstance = PubPosinfoCoop.get(params.id)
        if (!pubPosinfoCoopInstance) {
            flash.message = "pubPosinfoCoop.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PubPosinfoCoop not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [pubPosinfoCoopInstance: pubPosinfoCoopInstance]
        }
    }

    def update = {
        def pubPosinfoCoopInstance = PubPosinfoCoop.get(params.id)
        if (pubPosinfoCoopInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (pubPosinfoCoopInstance.version > version) {
                    
                    pubPosinfoCoopInstance.errors.rejectValue("version", "pubPosinfoCoop.optimistic.locking.failure", "Another user has updated this PubPosinfoCoop while you were editing")
                    render(view: "edit", model: [pubPosinfoCoopInstance: pubPosinfoCoopInstance])
                    return
                }
            }
            pubPosinfoCoopInstance.properties = params
            if (!pubPosinfoCoopInstance.hasErrors() && pubPosinfoCoopInstance.save()) {
                flash.message = "pubPosinfoCoop.updated"
                flash.args = [params.id]
                flash.defaultMessage = "PubPosinfoCoop ${params.id} updated"
                redirect(action: "show", id: pubPosinfoCoopInstance.id)
            }
            else {
                render(view: "edit", model: [pubPosinfoCoopInstance: pubPosinfoCoopInstance])
            }
        }
        else {
            flash.message = "pubPosinfoCoop.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PubPosinfoCoop not found with id ${params.id}"
            redirect(action: "edit", id: params.id)
        }
    }

    def delete = {
        def pubPosinfoCoopInstance = PubPosinfoCoop.get(params.id)
        if (pubPosinfoCoopInstance) {
            try {
                pubPosinfoCoopInstance.delete()
                flash.message = "pubPosinfoCoop.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "PubPosinfoCoop ${params.id} deleted"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "pubPosinfoCoop.not.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "PubPosinfoCoop ${params.id} could not be deleted"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "pubPosinfoCoop.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PubPosinfoCoop not found with id ${params.id}"
            redirect(action: "list")
        }
    }
}
