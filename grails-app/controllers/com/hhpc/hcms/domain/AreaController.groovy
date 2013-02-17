package com.hhpc.hcms.domain

class AreaController {

    def index = { redirect(action: "list", params: params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def list = {
        params.max = Math.min(params.max ? params.max.toInteger() : 10,  100)
        [areaInstanceList: Area.list(params), areaInstanceTotal: Area.count()]
    }

    def create = {
        def areaInstance = new Area()
        areaInstance.properties = params
        return [areaInstance: areaInstance]
    }

    def save = {
        def areaInstance = new Area(params)
        if (!areaInstance.hasErrors() && areaInstance.save()) {
            flash.message = "area.created"
            flash.args = [areaInstance.id]
            flash.defaultMessage = "Area ${areaInstance.id} created"
            redirect(action: "show", id: areaInstance.id)
        }
        else {
            render(view: "create", model: [areaInstance: areaInstance])
        }
    }

    def show = {
        def areaInstance = Area.get(params.id)
        if (!areaInstance) {
            flash.message = "area.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Area not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [areaInstance: areaInstance]
        }
    }

    def edit = {
        def areaInstance = Area.get(params.id)
        if (!areaInstance) {
            flash.message = "area.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Area not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [areaInstance: areaInstance]
        }
    }

    def update = {
        def areaInstance = Area.get(params.id)
        if (areaInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (areaInstance.version > version) {
                    
                    areaInstance.errors.rejectValue("version", "area.optimistic.locking.failure", "Another user has updated this Area while you were editing")
                    render(view: "edit", model: [areaInstance: areaInstance])
                    return
                }
            }
            areaInstance.properties = params
            if (!areaInstance.hasErrors() && areaInstance.save()) {
                flash.message = "area.updated"
                flash.args = [params.id]
                flash.defaultMessage = "Area ${params.id} updated"
                redirect(action: "show", id: areaInstance.id)
            }
            else {
                render(view: "edit", model: [areaInstance: areaInstance])
            }
        }
        else {
            flash.message = "area.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Area not found with id ${params.id}"
            redirect(action: "edit", id: params.id)
        }
    }

    def delete = {
        def areaInstance = Area.get(params.id)
        if (areaInstance) {
            try {
                areaInstance.delete()
                flash.message = "area.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "Area ${params.id} deleted"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "area.not.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "Area ${params.id} could not be deleted"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "area.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Area not found with id ${params.id}"
            redirect(action: "list")
        }
    }
}
