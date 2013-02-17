package com.hhpc.hcms.domain



import org.junit.*
import grails.test.mixin.*

@TestFor(CooperationTypeController)
@Mock(CooperationType)
class CooperationTypeControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/cooperationType/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.cooperationTypeInstanceList.size() == 0
        assert model.cooperationTypeInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.cooperationTypeInstance != null
    }

    void testSave() {
        controller.save()

        assert model.cooperationTypeInstance != null
        assert view == '/cooperationType/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/cooperationType/show/1'
        assert controller.flash.message != null
        assert CooperationType.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/cooperationType/list'

        populateValidParams(params)
        def cooperationType = new CooperationType(params)

        assert cooperationType.save() != null

        params.id = cooperationType.id

        def model = controller.show()

        assert model.cooperationTypeInstance == cooperationType
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/cooperationType/list'

        populateValidParams(params)
        def cooperationType = new CooperationType(params)

        assert cooperationType.save() != null

        params.id = cooperationType.id

        def model = controller.edit()

        assert model.cooperationTypeInstance == cooperationType
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/cooperationType/list'

        response.reset()

        populateValidParams(params)
        def cooperationType = new CooperationType(params)

        assert cooperationType.save() != null

        // test invalid parameters in update
        params.id = cooperationType.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/cooperationType/edit"
        assert model.cooperationTypeInstance != null

        cooperationType.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/cooperationType/show/$cooperationType.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        cooperationType.clearErrors()

        populateValidParams(params)
        params.id = cooperationType.id
        params.version = -1
        controller.update()

        assert view == "/cooperationType/edit"
        assert model.cooperationTypeInstance != null
        assert model.cooperationTypeInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/cooperationType/list'

        response.reset()

        populateValidParams(params)
        def cooperationType = new CooperationType(params)

        assert cooperationType.save() != null
        assert CooperationType.count() == 1

        params.id = cooperationType.id

        controller.delete()

        assert CooperationType.count() == 0
        assert CooperationType.get(cooperationType.id) == null
        assert response.redirectedUrl == '/cooperationType/list'
    }
}
