package com.hhpc.hcms.domain



import org.junit.*
import grails.test.mixin.*

@TestFor(ContractTypeController)
@Mock(ContractType)
class ContractTypeControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/contractType/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.contractTypeInstanceList.size() == 0
        assert model.contractTypeInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.contractTypeInstance != null
    }

    void testSave() {
        controller.save()

        assert model.contractTypeInstance != null
        assert view == '/contractType/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/contractType/show/1'
        assert controller.flash.message != null
        assert ContractType.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/contractType/list'

        populateValidParams(params)
        def contractType = new ContractType(params)

        assert contractType.save() != null

        params.id = contractType.id

        def model = controller.show()

        assert model.contractTypeInstance == contractType
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/contractType/list'

        populateValidParams(params)
        def contractType = new ContractType(params)

        assert contractType.save() != null

        params.id = contractType.id

        def model = controller.edit()

        assert model.contractTypeInstance == contractType
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/contractType/list'

        response.reset()

        populateValidParams(params)
        def contractType = new ContractType(params)

        assert contractType.save() != null

        // test invalid parameters in update
        params.id = contractType.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/contractType/edit"
        assert model.contractTypeInstance != null

        contractType.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/contractType/show/$contractType.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        contractType.clearErrors()

        populateValidParams(params)
        params.id = contractType.id
        params.version = -1
        controller.update()

        assert view == "/contractType/edit"
        assert model.contractTypeInstance != null
        assert model.contractTypeInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/contractType/list'

        response.reset()

        populateValidParams(params)
        def contractType = new ContractType(params)

        assert contractType.save() != null
        assert ContractType.count() == 1

        params.id = contractType.id

        controller.delete()

        assert ContractType.count() == 0
        assert ContractType.get(contractType.id) == null
        assert response.redirectedUrl == '/contractType/list'
    }
}
