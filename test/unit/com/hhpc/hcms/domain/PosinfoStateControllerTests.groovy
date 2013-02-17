package com.hhpc.hcms.domain



import org.junit.*
import grails.test.mixin.*

@TestFor(PosinfoStateController)
@Mock(PosinfoState)
class PosinfoStateControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/posinfoState/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.posinfoStateInstanceList.size() == 0
        assert model.posinfoStateInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.posinfoStateInstance != null
    }

    void testSave() {
        controller.save()

        assert model.posinfoStateInstance != null
        assert view == '/posinfoState/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/posinfoState/show/1'
        assert controller.flash.message != null
        assert PosinfoState.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/posinfoState/list'

        populateValidParams(params)
        def posinfoState = new PosinfoState(params)

        assert posinfoState.save() != null

        params.id = posinfoState.id

        def model = controller.show()

        assert model.posinfoStateInstance == posinfoState
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/posinfoState/list'

        populateValidParams(params)
        def posinfoState = new PosinfoState(params)

        assert posinfoState.save() != null

        params.id = posinfoState.id

        def model = controller.edit()

        assert model.posinfoStateInstance == posinfoState
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/posinfoState/list'

        response.reset()

        populateValidParams(params)
        def posinfoState = new PosinfoState(params)

        assert posinfoState.save() != null

        // test invalid parameters in update
        params.id = posinfoState.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/posinfoState/edit"
        assert model.posinfoStateInstance != null

        posinfoState.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/posinfoState/show/$posinfoState.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        posinfoState.clearErrors()

        populateValidParams(params)
        params.id = posinfoState.id
        params.version = -1
        controller.update()

        assert view == "/posinfoState/edit"
        assert model.posinfoStateInstance != null
        assert model.posinfoStateInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/posinfoState/list'

        response.reset()

        populateValidParams(params)
        def posinfoState = new PosinfoState(params)

        assert posinfoState.save() != null
        assert PosinfoState.count() == 1

        params.id = posinfoState.id

        controller.delete()

        assert PosinfoState.count() == 0
        assert PosinfoState.get(posinfoState.id) == null
        assert response.redirectedUrl == '/posinfoState/list'
    }
}
