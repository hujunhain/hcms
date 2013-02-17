package com.hhpc.hcms.domain



import org.junit.*
import grails.test.mixin.*

@TestFor(PubPosinfoCoopController)
@Mock(PubPosinfoCoop)
class PubPosinfoCoopControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/pubPosinfoCoop/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.pubPosinfoCoopInstanceList.size() == 0
        assert model.pubPosinfoCoopInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.pubPosinfoCoopInstance != null
    }

    void testSave() {
        controller.save()

        assert model.pubPosinfoCoopInstance != null
        assert view == '/pubPosinfoCoop/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/pubPosinfoCoop/show/1'
        assert controller.flash.message != null
        assert PubPosinfoCoop.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/pubPosinfoCoop/list'

        populateValidParams(params)
        def pubPosinfoCoop = new PubPosinfoCoop(params)

        assert pubPosinfoCoop.save() != null

        params.id = pubPosinfoCoop.id

        def model = controller.show()

        assert model.pubPosinfoCoopInstance == pubPosinfoCoop
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/pubPosinfoCoop/list'

        populateValidParams(params)
        def pubPosinfoCoop = new PubPosinfoCoop(params)

        assert pubPosinfoCoop.save() != null

        params.id = pubPosinfoCoop.id

        def model = controller.edit()

        assert model.pubPosinfoCoopInstance == pubPosinfoCoop
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/pubPosinfoCoop/list'

        response.reset()

        populateValidParams(params)
        def pubPosinfoCoop = new PubPosinfoCoop(params)

        assert pubPosinfoCoop.save() != null

        // test invalid parameters in update
        params.id = pubPosinfoCoop.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/pubPosinfoCoop/edit"
        assert model.pubPosinfoCoopInstance != null

        pubPosinfoCoop.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/pubPosinfoCoop/show/$pubPosinfoCoop.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        pubPosinfoCoop.clearErrors()

        populateValidParams(params)
        params.id = pubPosinfoCoop.id
        params.version = -1
        controller.update()

        assert view == "/pubPosinfoCoop/edit"
        assert model.pubPosinfoCoopInstance != null
        assert model.pubPosinfoCoopInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/pubPosinfoCoop/list'

        response.reset()

        populateValidParams(params)
        def pubPosinfoCoop = new PubPosinfoCoop(params)

        assert pubPosinfoCoop.save() != null
        assert PubPosinfoCoop.count() == 1

        params.id = pubPosinfoCoop.id

        controller.delete()

        assert PubPosinfoCoop.count() == 0
        assert PubPosinfoCoop.get(pubPosinfoCoop.id) == null
        assert response.redirectedUrl == '/pubPosinfoCoop/list'
    }
}
