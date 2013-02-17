package com.hhpc.hcms.domain



import org.junit.*
import grails.test.mixin.*

@TestFor(PosinfoCooperationController)
@Mock(PosinfoCooperation)
class PosinfoCooperationControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/posinfoCooperation/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.posinfoCooperationInstanceList.size() == 0
        assert model.posinfoCooperationInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.posinfoCooperationInstance != null
    }

    void testSave() {
        controller.save()

        assert model.posinfoCooperationInstance != null
        assert view == '/posinfoCooperation/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/posinfoCooperation/show/1'
        assert controller.flash.message != null
        assert PosinfoCooperation.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/posinfoCooperation/list'

        populateValidParams(params)
        def posinfoCooperation = new PosinfoCooperation(params)

        assert posinfoCooperation.save() != null

        params.id = posinfoCooperation.id

        def model = controller.show()

        assert model.posinfoCooperationInstance == posinfoCooperation
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/posinfoCooperation/list'

        populateValidParams(params)
        def posinfoCooperation = new PosinfoCooperation(params)

        assert posinfoCooperation.save() != null

        params.id = posinfoCooperation.id

        def model = controller.edit()

        assert model.posinfoCooperationInstance == posinfoCooperation
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/posinfoCooperation/list'

        response.reset()

        populateValidParams(params)
        def posinfoCooperation = new PosinfoCooperation(params)

        assert posinfoCooperation.save() != null

        // test invalid parameters in update
        params.id = posinfoCooperation.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/posinfoCooperation/edit"
        assert model.posinfoCooperationInstance != null

        posinfoCooperation.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/posinfoCooperation/show/$posinfoCooperation.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        posinfoCooperation.clearErrors()

        populateValidParams(params)
        params.id = posinfoCooperation.id
        params.version = -1
        controller.update()

        assert view == "/posinfoCooperation/edit"
        assert model.posinfoCooperationInstance != null
        assert model.posinfoCooperationInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/posinfoCooperation/list'

        response.reset()

        populateValidParams(params)
        def posinfoCooperation = new PosinfoCooperation(params)

        assert posinfoCooperation.save() != null
        assert PosinfoCooperation.count() == 1

        params.id = posinfoCooperation.id

        controller.delete()

        assert PosinfoCooperation.count() == 0
        assert PosinfoCooperation.get(posinfoCooperation.id) == null
        assert response.redirectedUrl == '/posinfoCooperation/list'
    }
}
