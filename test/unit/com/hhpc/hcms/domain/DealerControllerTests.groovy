package com.hhpc.hcms.domain



import org.junit.*
import grails.test.mixin.*

@TestFor(DealerController)
@Mock(Dealer)
class DealerControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/dealer/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.dealerInstanceList.size() == 0
        assert model.dealerInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.dealerInstance != null
    }

    void testSave() {
        controller.save()

        assert model.dealerInstance != null
        assert view == '/dealer/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/dealer/show/1'
        assert controller.flash.message != null
        assert Dealer.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/dealer/list'

        populateValidParams(params)
        def dealer = new Dealer(params)

        assert dealer.save() != null

        params.id = dealer.id

        def model = controller.show()

        assert model.dealerInstance == dealer
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/dealer/list'

        populateValidParams(params)
        def dealer = new Dealer(params)

        assert dealer.save() != null

        params.id = dealer.id

        def model = controller.edit()

        assert model.dealerInstance == dealer
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/dealer/list'

        response.reset()

        populateValidParams(params)
        def dealer = new Dealer(params)

        assert dealer.save() != null

        // test invalid parameters in update
        params.id = dealer.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/dealer/edit"
        assert model.dealerInstance != null

        dealer.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/dealer/show/$dealer.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        dealer.clearErrors()

        populateValidParams(params)
        params.id = dealer.id
        params.version = -1
        controller.update()

        assert view == "/dealer/edit"
        assert model.dealerInstance != null
        assert model.dealerInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/dealer/list'

        response.reset()

        populateValidParams(params)
        def dealer = new Dealer(params)

        assert dealer.save() != null
        assert Dealer.count() == 1

        params.id = dealer.id

        controller.delete()

        assert Dealer.count() == 0
        assert Dealer.get(dealer.id) == null
        assert response.redirectedUrl == '/dealer/list'
    }
}
