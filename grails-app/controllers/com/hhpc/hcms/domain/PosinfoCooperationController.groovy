package com.hhpc.hcms.domain

class PosinfoCooperationController {

    def index = { redirect(action: "list", params: params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def list = {
        params.max = Math.min(params.max ? params.max.toInteger() : 10,  100)
        [posinfoCooperationInstanceList: PosinfoCooperation.list(params), posinfoCooperationInstanceTotal: PosinfoCooperation.count()]
    }

    def create = {
        def posinfoCooperationInstance = new PosinfoCooperation()
        posinfoCooperationInstance.properties = params
        return [posinfoCooperationInstance: posinfoCooperationInstance]
    }

    def save = {
        def posinfoCooperationInstance = new PosinfoCooperation(params)
        if (!posinfoCooperationInstance.hasErrors() && posinfoCooperationInstance.save()) {
            flash.message = "posinfoCooperation.created"
            flash.args = [posinfoCooperationInstance.id]
            flash.defaultMessage = "PosinfoCooperation ${posinfoCooperationInstance.id} created"
            redirect(action: "show", id: posinfoCooperationInstance.id)
        }
        else {
            render(view: "create", model: [posinfoCooperationInstance: posinfoCooperationInstance])
        }
    }

    def show = {
        def posinfoCooperationInstance = PosinfoCooperation.get(params.id)
        if (!posinfoCooperationInstance) {
            flash.message = "posinfoCooperation.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PosinfoCooperation not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [posinfoCooperationInstance: posinfoCooperationInstance]
        }
    }

    def edit = {
        def posinfoCooperationInstance = PosinfoCooperation.get(params.id)
        if (!posinfoCooperationInstance) {
            flash.message = "posinfoCooperation.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PosinfoCooperation not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [posinfoCooperationInstance: posinfoCooperationInstance]
        }
    }

    def update = {
        def posinfoCooperationInstance = PosinfoCooperation.get(params.id)
        if (posinfoCooperationInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (posinfoCooperationInstance.version > version) {
                    
                    posinfoCooperationInstance.errors.rejectValue("version", "posinfoCooperation.optimistic.locking.failure", "Another user has updated this PosinfoCooperation while you were editing")
                    render(view: "edit", model: [posinfoCooperationInstance: posinfoCooperationInstance])
                    return
                }
            }
            posinfoCooperationInstance.properties = params
            if (!posinfoCooperationInstance.hasErrors() && posinfoCooperationInstance.save()) {
                flash.message = "posinfoCooperation.updated"
                flash.args = [params.id]
                flash.defaultMessage = "PosinfoCooperation ${params.id} updated"
                redirect(action: "show", id: posinfoCooperationInstance.id)
            }
            else {
                render(view: "edit", model: [posinfoCooperationInstance: posinfoCooperationInstance])
            }
        }
        else {
            flash.message = "posinfoCooperation.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PosinfoCooperation not found with id ${params.id}"
            redirect(action: "edit", id: params.id)
        }
    }

    def delete = {
        def posinfoCooperationInstance = PosinfoCooperation.get(params.id)
        if (posinfoCooperationInstance) {
            try {
                posinfoCooperationInstance.delete()
                flash.message = "posinfoCooperation.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "PosinfoCooperation ${params.id} deleted"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "posinfoCooperation.not.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "PosinfoCooperation ${params.id} could not be deleted"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "posinfoCooperation.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PosinfoCooperation not found with id ${params.id}"
            redirect(action: "list")
        }
    }
}
