package com.hhpc.hcms.domain



import org.junit.*
import grails.test.mixin.*

@TestFor(BreedController)
@Mock(Breed)
class BreedControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/breed/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.breedInstanceList.size() == 0
        assert model.breedInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.breedInstance != null
    }

    void testSave() {
        controller.save()

        assert model.breedInstance != null
        assert view == '/breed/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/breed/show/1'
        assert controller.flash.message != null
        assert Breed.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/breed/list'

        populateValidParams(params)
        def breed = new Breed(params)

        assert breed.save() != null

        params.id = breed.id

        def model = controller.show()

        assert model.breedInstance == breed
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/breed/list'

        populateValidParams(params)
        def breed = new Breed(params)

        assert breed.save() != null

        params.id = breed.id

        def model = controller.edit()

        assert model.breedInstance == breed
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/breed/list'

        response.reset()

        populateValidParams(params)
        def breed = new Breed(params)

        assert breed.save() != null

        // test invalid parameters in update
        params.id = breed.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/breed/edit"
        assert model.breedInstance != null

        breed.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/breed/show/$breed.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        breed.clearErrors()

        populateValidParams(params)
        params.id = breed.id
        params.version = -1
        controller.update()

        assert view == "/breed/edit"
        assert model.breedInstance != null
        assert model.breedInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/breed/list'

        response.reset()

        populateValidParams(params)
        def breed = new Breed(params)

        assert breed.save() != null
        assert Breed.count() == 1

        params.id = breed.id

        controller.delete()

        assert Breed.count() == 0
        assert Breed.get(breed.id) == null
        assert response.redirectedUrl == '/breed/list'
    }
}
