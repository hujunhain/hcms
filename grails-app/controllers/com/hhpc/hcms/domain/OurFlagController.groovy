package com.hhpc.hcms.domain

class OurFlagController {

    def index = { redirect(action: "list", params: params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def list = {
        params.max = Math.min(params.max ? params.max.toInteger() : 10,  100)
        [ourFlagInstanceList: OurFlag.list(params), ourFlagInstanceTotal: OurFlag.count()]
    }

    def create = {
        def ourFlagInstance = new OurFlag()
        ourFlagInstance.properties = params
        return [ourFlagInstance: ourFlagInstance]
    }

    def save = {
        def ourFlagInstance = new OurFlag(params)
        if (!ourFlagInstance.hasErrors() && ourFlagInstance.save()) {
            flash.message = "ourFlag.created"
            flash.args = [ourFlagInstance.id]
            flash.defaultMessage = "OurFlag ${ourFlagInstance.id} created"
            redirect(action: "show", id: ourFlagInstance.id)
        }
        else {
            render(view: "create", model: [ourFlagInstance: ourFlagInstance])
        }
    }

    def show = {
        def ourFlagInstance = OurFlag.get(params.id)
        if (!ourFlagInstance) {
            flash.message = "ourFlag.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "OurFlag not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [ourFlagInstance: ourFlagInstance]
        }
    }

    def edit = {
        def ourFlagInstance = OurFlag.get(params.id)
        if (!ourFlagInstance) {
            flash.message = "ourFlag.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "OurFlag not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [ourFlagInstance: ourFlagInstance]
        }
    }

    def update = {
        def ourFlagInstance = OurFlag.get(params.id)
        if (ourFlagInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (ourFlagInstance.version > version) {
                    
                    ourFlagInstance.errors.rejectValue("version", "ourFlag.optimistic.locking.failure", "Another user has updated this OurFlag while you were editing")
                    render(view: "edit", model: [ourFlagInstance: ourFlagInstance])
                    return
                }
            }
            ourFlagInstance.properties = params
            if (!ourFlagInstance.hasErrors() && ourFlagInstance.save()) {
                flash.message = "ourFlag.updated"
                flash.args = [params.id]
                flash.defaultMessage = "OurFlag ${params.id} updated"
                redirect(action: "show", id: ourFlagInstance.id)
            }
            else {
                render(view: "edit", model: [ourFlagInstance: ourFlagInstance])
            }
        }
        else {
            flash.message = "ourFlag.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "OurFlag not found with id ${params.id}"
            redirect(action: "edit", id: params.id)
        }
    }

    def delete = {
        def ourFlagInstance = OurFlag.get(params.id)
        if (ourFlagInstance) {
            try {
                ourFlagInstance.delete()
                flash.message = "ourFlag.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "OurFlag ${params.id} deleted"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "ourFlag.not.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "OurFlag ${params.id} could not be deleted"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "ourFlag.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "OurFlag not found with id ${params.id}"
            redirect(action: "list")
        }
    }
}
