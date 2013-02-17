package com.hhpc.hcms.domain



import org.junit.*
import grails.test.mixin.*

@TestFor(PubPosinfoController)
@Mock(PubPosinfo)
class PubPosinfoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/pubPosinfo/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.pubPosinfoInstanceList.size() == 0
        assert model.pubPosinfoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.pubPosinfoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.pubPosinfoInstance != null
        assert view == '/pubPosinfo/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/pubPosinfo/show/1'
        assert controller.flash.message != null
        assert PubPosinfo.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/pubPosinfo/list'

        populateValidParams(params)
        def pubPosinfo = new PubPosinfo(params)

        assert pubPosinfo.save() != null

        params.id = pubPosinfo.id

        def model = controller.show()

        assert model.pubPosinfoInstance == pubPosinfo
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/pubPosinfo/list'

        populateValidParams(params)
        def pubPosinfo = new PubPosinfo(params)

        assert pubPosinfo.save() != null

        params.id = pubPosinfo.id

        def model = controller.edit()

        assert model.pubPosinfoInstance == pubPosinfo
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/pubPosinfo/list'

        response.reset()

        populateValidParams(params)
        def pubPosinfo = new PubPosinfo(params)

        assert pubPosinfo.save() != null

        // test invalid parameters in update
        params.id = pubPosinfo.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/pubPosinfo/edit"
        assert model.pubPosinfoInstance != null

        pubPosinfo.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/pubPosinfo/show/$pubPosinfo.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        pubPosinfo.clearErrors()

        populateValidParams(params)
        params.id = pubPosinfo.id
        params.version = -1
        controller.update()

        assert view == "/pubPosinfo/edit"
        assert model.pubPosinfoInstance != null
        assert model.pubPosinfoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/pubPosinfo/list'

        response.reset()

        populateValidParams(params)
        def pubPosinfo = new PubPosinfo(params)

        assert pubPosinfo.save() != null
        assert PubPosinfo.count() == 1

        params.id = pubPosinfo.id

        controller.delete()

        assert PubPosinfo.count() == 0
        assert PubPosinfo.get(pubPosinfo.id) == null
        assert response.redirectedUrl == '/pubPosinfo/list'
    }
}
