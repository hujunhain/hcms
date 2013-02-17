package com.hhpc.hcms.domain



import org.junit.*
import grails.test.mixin.*

@TestFor(PosinfoTypeController)
@Mock(PosinfoType)
class PosinfoTypeControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/posinfoType/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.posinfoTypeInstanceList.size() == 0
        assert model.posinfoTypeInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.posinfoTypeInstance != null
    }

    void testSave() {
        controller.save()

        assert model.posinfoTypeInstance != null
        assert view == '/posinfoType/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/posinfoType/show/1'
        assert controller.flash.message != null
        assert PosinfoType.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/posinfoType/list'

        populateValidParams(params)
        def posinfoType = new PosinfoType(params)

        assert posinfoType.save() != null

        params.id = posinfoType.id

        def model = controller.show()

        assert model.posinfoTypeInstance == posinfoType
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/posinfoType/list'

        populateValidParams(params)
        def posinfoType = new PosinfoType(params)

        assert posinfoType.save() != null

        params.id = posinfoType.id

        def model = controller.edit()

        assert model.posinfoTypeInstance == posinfoType
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/posinfoType/list'

        response.reset()

        populateValidParams(params)
        def posinfoType = new PosinfoType(params)

        assert posinfoType.save() != null

        // test invalid parameters in update
        params.id = posinfoType.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/posinfoType/edit"
        assert model.posinfoTypeInstance != null

        posinfoType.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/posinfoType/show/$posinfoType.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        posinfoType.clearErrors()

        populateValidParams(params)
        params.id = posinfoType.id
        params.version = -1
        controller.update()

        assert view == "/posinfoType/edit"
        assert model.posinfoTypeInstance != null
        assert model.posinfoTypeInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/posinfoType/list'

        response.reset()

        populateValidParams(params)
        def posinfoType = new PosinfoType(params)

        assert posinfoType.save() != null
        assert PosinfoType.count() == 1

        params.id = posinfoType.id

        controller.delete()

        assert PosinfoType.count() == 0
        assert PosinfoType.get(posinfoType.id) == null
        assert response.redirectedUrl == '/posinfoType/list'
    }
}
