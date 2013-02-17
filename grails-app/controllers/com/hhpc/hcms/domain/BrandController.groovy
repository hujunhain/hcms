package com.hhpc.hcms.domain

class BrandController {

    def index = { redirect(action: "list", params: params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def list = {
        params.max = Math.min(params.max ? params.max.toInteger() : 10,  100)
        [brandInstanceList: Brand.list(params), brandInstanceTotal: Brand.count()]
    }

    def create = {
        def brandInstance = new Brand()
        brandInstance.properties = params
        return [brandInstance: brandInstance]
    }

    def save = {
        def brandInstance = new Brand(params)
        if (!brandInstance.hasErrors() && brandInstance.save()) {
            flash.message = "brand.created"
            flash.args = [brandInstance.id]
            flash.defaultMessage = "Brand ${brandInstance.id} created"
            redirect(action: "show", id: brandInstance.id)
        }
        else {
            render(view: "create", model: [brandInstance: brandInstance])
        }
    }

    def show = {
        def brandInstance = Brand.get(params.id)
        if (!brandInstance) {
            flash.message = "brand.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Brand not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [brandInstance: brandInstance]
        }
    }

    def edit = {
        def brandInstance = Brand.get(params.id)
        if (!brandInstance) {
            flash.message = "brand.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Brand not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [brandInstance: brandInstance]
        }
    }

    def update = {
        def brandInstance = Brand.get(params.id)
        if (brandInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (brandInstance.version > version) {
                    
                    brandInstance.errors.rejectValue("version", "brand.optimistic.locking.failure", "Another user has updated this Brand while you were editing")
                    render(view: "edit", model: [brandInstance: brandInstance])
                    return
                }
            }
            brandInstance.properties = params
            if (!brandInstance.hasErrors() && brandInstance.save()) {
                flash.message = "brand.updated"
                flash.args = [params.id]
                flash.defaultMessage = "Brand ${params.id} updated"
                redirect(action: "show", id: brandInstance.id)
            }
            else {
                render(view: "edit", model: [brandInstance: brandInstance])
            }
        }
        else {
            flash.message = "brand.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Brand not found with id ${params.id}"
            redirect(action: "edit", id: params.id)
        }
    }

    def delete = {
        def brandInstance = Brand.get(params.id)
        if (brandInstance) {
            try {
                brandInstance.delete()
                flash.message = "brand.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "Brand ${params.id} deleted"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "brand.not.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "Brand ${params.id} could not be deleted"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "brand.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "Brand not found with id ${params.id}"
            redirect(action: "list")
        }
    }
}
