package com.hhpc.hcms.domain

class ContractTypeController {

    def index = { redirect(action: "list", params: params) }

    // the delete, save and update actions only accept POST requests
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def list = {
        params.max = Math.min(params.max ? params.max.toInteger() : 10,  100)
        [contractTypeInstanceList: ContractType.list(params), contractTypeInstanceTotal: ContractType.count()]
    }

    def create = {
        def contractTypeInstance = new ContractType()
        contractTypeInstance.properties = params
        return [contractTypeInstance: contractTypeInstance]
    }

    def save = {
        def contractTypeInstance = new ContractType(params)
        if (!contractTypeInstance.hasErrors() && contractTypeInstance.save()) {
            flash.message = "contractType.created"
            flash.args = [contractTypeInstance.id]
            flash.defaultMessage = "ContractType ${contractTypeInstance.id} created"
            redirect(action: "show", id: contractTypeInstance.id)
        }
        else {
            render(view: "create", model: [contractTypeInstance: contractTypeInstance])
        }
    }

    def show = {
        def contractTypeInstance = ContractType.get(params.id)
        if (!contractTypeInstance) {
            flash.message = "contractType.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "ContractType not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [contractTypeInstance: contractTypeInstance]
        }
    }

    def edit = {
        def contractTypeInstance = ContractType.get(params.id)
        if (!contractTypeInstance) {
            flash.message = "contractType.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "ContractType not found with id ${params.id}"
            redirect(action: "list")
        }
        else {
            return [contractTypeInstance: contractTypeInstance]
        }
    }

    def update = {
        def contractTypeInstance = ContractType.get(params.id)
        if (contractTypeInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (contractTypeInstance.version > version) {
                    
                    contractTypeInstance.errors.rejectValue("version", "contractType.optimistic.locking.failure", "Another user has updated this ContractType while you were editing")
                    render(view: "edit", model: [contractTypeInstance: contractTypeInstance])
                    return
                }
            }
            contractTypeInstance.properties = params
            if (!contractTypeInstance.hasErrors() && contractTypeInstance.save()) {
                flash.message = "contractType.updated"
                flash.args = [params.id]
                flash.defaultMessage = "ContractType ${params.id} updated"
                redirect(action: "show", id: contractTypeInstance.id)
            }
            else {
                render(view: "edit", model: [contractTypeInstance: contractTypeInstance])
            }
        }
        else {
            flash.message = "contractType.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "ContractType not found with id ${params.id}"
            redirect(action: "edit", id: params.id)
        }
    }

    def delete = {
        def contractTypeInstance = ContractType.get(params.id)
        if (contractTypeInstance) {
            try {
                contractTypeInstance.delete()
                flash.message = "contractType.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "ContractType ${params.id} deleted"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "contractType.not.deleted"
                flash.args = [params.id]
                flash.defaultMessage = "ContractType ${params.id} could not be deleted"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "contractType.not.found"
            flash.args = [params.id]
            flash.defaultMessage = "ContractType not found with id ${params.id}"
            redirect(action: "list")
        }
    }
}
