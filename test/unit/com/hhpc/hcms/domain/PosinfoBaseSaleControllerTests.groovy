package com.hhpc.hcms.domain



import org.junit.*
import grails.test.mixin.*

@TestFor(PosinfoBaseSaleController)
@Mock(PosinfoBaseSale)
class PosinfoBaseSaleControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/posinfoBaseSale/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.posinfoBaseSaleInstanceList.size() == 0
        assert model.posinfoBaseSaleInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.posinfoBaseSaleInstance != null
    }

    void testSave() {
        controller.save()

        assert model.posinfoBaseSaleInstance != null
        assert view == '/posinfoBaseSale/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/posinfoBaseSale/show/1'
        assert controller.flash.message != null
        assert PosinfoBaseSale.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/posinfoBaseSale/list'

        populateValidParams(params)
        def posinfoBaseSale = new PosinfoBaseSale(params)

        assert posinfoBaseSale.save() != null

        params.id = posinfoBaseSale.id

        def model = controller.show()

        assert model.posinfoBaseSaleInstance == posinfoBaseSale
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/posinfoBaseSale/list'

        populateValidParams(params)
        def posinfoBaseSale = new PosinfoBaseSale(params)

        assert posinfoBaseSale.save() != null

        params.id = posinfoBaseSale.id

        def model = controller.edit()

        assert model.posinfoBaseSaleInstance == posinfoBaseSale
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/posinfoBaseSale/list'

        response.reset()

        populateValidParams(params)
        def posinfoBaseSale = new PosinfoBaseSale(params)

        assert posinfoBaseSale.save() != null

        // test invalid parameters in update
        params.id = posinfoBaseSale.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/posinfoBaseSale/edit"
        assert model.posinfoBaseSaleInstance != null

        posinfoBaseSale.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/posinfoBaseSale/show/$posinfoBaseSale.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        posinfoBaseSale.clearErrors()

        populateValidParams(params)
        params.id = posinfoBaseSale.id
        params.version = -1
        controller.update()

        assert view == "/posinfoBaseSale/edit"
        assert model.posinfoBaseSaleInstance != null
        assert model.posinfoBaseSaleInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/posinfoBaseSale/list'

        response.reset()

        populateValidParams(params)
        def posinfoBaseSale = new PosinfoBaseSale(params)

        assert posinfoBaseSale.save() != null
        assert PosinfoBaseSale.count() == 1

        params.id = posinfoBaseSale.id

        controller.delete()

        assert PosinfoBaseSale.count() == 0
        assert PosinfoBaseSale.get(posinfoBaseSale.id) == null
        assert response.redirectedUrl == '/posinfoBaseSale/list'
    }
}
