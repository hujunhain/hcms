package com.hhpc.hcms.domain

class PosinfoBaseSaleController {

    def index = { redirect(action: "list", params: params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def list = {
        params.max = Math.min(params.max ? params.max.toInteger() : 10,  100)
        [posinfoBaseSaleInstanceList: PosinfoBaseSale.list(params), posinfoBaseSaleInstanceTotal: PosinfoBaseSale.count()]
    }

    def create = {
        def posinfoBaseSaleInstance = new PosinfoBaseSale()
        posinfoBaseSaleInstance.properties = params
        return [posinfoBaseSaleInstance: posinfoBaseSaleInstance]
    }

    def save = {
        def posinfoBaseSaleInstance = new PosinfoBaseSale(params)
        if (!posinfoBaseSaleInstance.hasErrors() && posinfoBaseSaleInstance.save()) {
            flash.message = "posinfoBaseSale.created"
            flash.args = [posinfoBaseSaleInstance.id]
            flash.defaultMessage = "PosinfoBaseSale ${posinfoBaseSaleInstance.id} created"
            redirect(action: "show", id: posinfoBaseSaleInstance.id)
        }
        else {
            render(view: "create", model: [posinfoBaseSaleInstance: posinfoBaseSaleInstance])
        }
    }

    def show = {
        def posinfoBaseSaleInstance = PosinfoBaseSale.get(params.id)
        if (!posinfoBaseSaleInstance) {
            flash.message = "posinfoBaseSale.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PosinfoBaseSale not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [posinfoBaseSaleInstance: posinfoBaseSaleInstance]
        }
    }

    def edit = {
        def posinfoBaseSaleInstance = PosinfoBaseSale.get(params.id)
        if (!posinfoBaseSaleInstance) {
            flash.message = "posinfoBaseSale.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PosinfoBaseSale not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [posinfoBaseSaleInstance: posinfoBaseSaleInstance]
        }
    }

    def update = {
        def posinfoBaseSaleInstance = PosinfoBaseSale.get(params.id)
        if (posinfoBaseSaleInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (posinfoBaseSaleInstance.version > version) {
                    
                    posinfoBaseSaleInstance.errors.rejectValue("version", "posinfoBaseSale.optimistic.locking.failure", "Another user has updated this PosinfoBaseSale while you were editing")
                    render(view: "edit", model: [posinfoBaseSaleInstance: posinfoBaseSaleInstance])
                    return
                }
            }
            posinfoBaseSaleInstance.properties = params
            if (!posinfoBaseSaleInstance.hasErrors() && posinfoBaseSaleInstance.save()) {
                flash.message = "posinfoBaseSale.updated"
                flash.args = [params.id]
                flash.defaultMessage = "PosinfoBaseSale ${params.id} updated"
                redirect(action: "show", id: posinfoBaseSaleInstance.id)
            }
            else {
                render(view: "edit", model: [posinfoBaseSaleInstance: posinfoBaseSaleInstance])
            }
        }
        else {
            flash.message = "posinfoBaseSale.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PosinfoBaseSale not found with id ${params.id}"
            redirect(action: "edit", id: params.id)
        }
    }

    def delete = {
        def posinfoBaseSaleInstance = PosinfoBaseSale.get(params.id)
        if (posinfoBaseSaleInstance) {
            try {
                posinfoBaseSaleInstance.delete()
                flash.message = "posinfoBaseSale.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "PosinfoBaseSale ${params.id} deleted"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "posinfoBaseSale.not.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "PosinfoBaseSale ${params.id} could not be deleted"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "posinfoBaseSale.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "PosinfoBaseSale not found with id ${params.id}"
            redirect(action: "list")
        }
    }
}
