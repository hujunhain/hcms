package com.hhpc.hcms.domain



import org.junit.*
import grails.test.mixin.*

@TestFor(PosinfoFeeCycleController)
@Mock(PosinfoFeeCycle)
class PosinfoFeeCycleControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/posinfoFeeCycle/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.posinfoFeeCycleInstanceList.size() == 0
        assert model.posinfoFeeCycleInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.posinfoFeeCycleInstance != null
    }

    void testSave() {
        controller.save()

        assert model.posinfoFeeCycleInstance != null
        assert view == '/posinfoFeeCycle/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/posinfoFeeCycle/show/1'
        assert controller.flash.message != null
        assert PosinfoFeeCycle.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/posinfoFeeCycle/list'

        populateValidParams(params)
        def posinfoFeeCycle = new PosinfoFeeCycle(params)

        assert posinfoFeeCycle.save() != null

        params.id = posinfoFeeCycle.id

        def model = controller.show()

        assert model.posinfoFeeCycleInstance == posinfoFeeCycle
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/posinfoFeeCycle/list'

        populateValidParams(params)
        def posinfoFeeCycle = new PosinfoFeeCycle(params)

        assert posinfoFeeCycle.save() != null

        params.id = posinfoFeeCycle.id

        def model = controller.edit()

        assert model.posinfoFeeCycleInstance == posinfoFeeCycle
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/posinfoFeeCycle/list'

        response.reset()

        populateValidParams(params)
        def posinfoFeeCycle = new PosinfoFeeCycle(params)

        assert posinfoFeeCycle.save() != null

        // test invalid parameters in update
        params.id = posinfoFeeCycle.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/posinfoFeeCycle/edit"
        assert model.posinfoFeeCycleInstance != null

        posinfoFeeCycle.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/posinfoFeeCycle/show/$posinfoFeeCycle.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        posinfoFeeCycle.clearErrors()

        populateValidParams(params)
        params.id = posinfoFeeCycle.id
        params.version = -1
        controller.update()

        assert view == "/posinfoFeeCycle/edit"
        assert model.posinfoFeeCycleInstance != null
        assert model.posinfoFeeCycleInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/posinfoFeeCycle/list'

        response.reset()

        populateValidParams(params)
        def posinfoFeeCycle = new PosinfoFeeCycle(params)

        assert posinfoFeeCycle.save() != null
        assert PosinfoFeeCycle.count() == 1

        params.id = posinfoFeeCycle.id

        controller.delete()

        assert PosinfoFeeCycle.count() == 0
        assert PosinfoFeeCycle.get(posinfoFeeCycle.id) == null
        assert response.redirectedUrl == '/posinfoFeeCycle/list'
    }
}
