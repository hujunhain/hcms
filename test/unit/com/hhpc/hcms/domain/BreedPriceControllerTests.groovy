package com.hhpc.hcms.domain



import org.junit.*
import grails.test.mixin.*

@TestFor(BreedPriceController)
@Mock(BreedPrice)
class BreedPriceControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/breedPrice/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.breedPriceInstanceList.size() == 0
        assert model.breedPriceInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.breedPriceInstance != null
    }

    void testSave() {
        controller.save()

        assert model.breedPriceInstance != null
        assert view == '/breedPrice/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/breedPrice/show/1'
        assert controller.flash.message != null
        assert BreedPrice.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/breedPrice/list'

        populateValidParams(params)
        def breedPrice = new BreedPrice(params)

        assert breedPrice.save() != null

        params.id = breedPrice.id

        def model = controller.show()

        assert model.breedPriceInstance == breedPrice
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/breedPrice/list'

        populateValidParams(params)
        def breedPrice = new BreedPrice(params)

        assert breedPrice.save() != null

        params.id = breedPrice.id

        def model = controller.edit()

        assert model.breedPriceInstance == breedPrice
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/breedPrice/list'

        response.reset()

        populateValidParams(params)
        def breedPrice = new BreedPrice(params)

        assert breedPrice.save() != null

        // test invalid parameters in update
        params.id = breedPrice.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/breedPrice/edit"
        assert model.breedPriceInstance != null

        breedPrice.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/breedPrice/show/$breedPrice.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        breedPrice.clearErrors()

        populateValidParams(params)
        params.id = breedPrice.id
        params.version = -1
        controller.update()

        assert view == "/breedPrice/edit"
        assert model.breedPriceInstance != null
        assert model.breedPriceInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/breedPrice/list'

        response.reset()

        populateValidParams(params)
        def breedPrice = new BreedPrice(params)

        assert breedPrice.save() != null
        assert BreedPrice.count() == 1

        params.id = breedPrice.id

        controller.delete()

        assert BreedPrice.count() == 0
        assert BreedPrice.get(breedPrice.id) == null
        assert response.redirectedUrl == '/breedPrice/list'
    }
}
