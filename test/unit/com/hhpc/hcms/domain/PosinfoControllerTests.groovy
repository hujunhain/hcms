package com.hhpc.hcms.domain



import org.junit.*
import grails.test.mixin.*

@TestFor(PosinfoController)
@Mock(Posinfo)
class PosinfoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/posinfo/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.posinfoInstanceList.size() == 0
        assert model.posinfoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.posinfoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.posinfoInstance != null
        assert view == '/posinfo/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/posinfo/show/1'
        assert controller.flash.message != null
        assert Posinfo.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/posinfo/list'

        populateValidParams(params)
        def posinfo = new Posinfo(params)

        assert posinfo.save() != null

        params.id = posinfo.id

        def model = controller.show()

        assert model.posinfoInstance == posinfo
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/posinfo/list'

        populateValidParams(params)
        def posinfo = new Posinfo(params)

        assert posinfo.save() != null

        params.id = posinfo.id

        def model = controller.edit()

        assert model.posinfoInstance == posinfo
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/posinfo/list'

        response.reset()

        populateValidParams(params)
        def posinfo = new Posinfo(params)

        assert posinfo.save() != null

        // test invalid parameters in update
        params.id = posinfo.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/posinfo/edit"
        assert model.posinfoInstance != null

        posinfo.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/posinfo/show/$posinfo.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        posinfo.clearErrors()

        populateValidParams(params)
        params.id = posinfo.id
        params.version = -1
        controller.update()

        assert view == "/posinfo/edit"
        assert model.posinfoInstance != null
        assert model.posinfoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/posinfo/list'

        response.reset()

        populateValidParams(params)
        def posinfo = new Posinfo(params)

        assert posinfo.save() != null
        assert Posinfo.count() == 1

        params.id = posinfo.id

        controller.delete()

        assert Posinfo.count() == 0
        assert Posinfo.get(posinfo.id) == null
        assert response.redirectedUrl == '/posinfo/list'
    }
}
