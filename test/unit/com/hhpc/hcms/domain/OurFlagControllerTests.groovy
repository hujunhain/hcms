package com.hhpc.hcms.domain



import org.junit.*
import grails.test.mixin.*

@TestFor(OurFlagController)
@Mock(OurFlag)
class OurFlagControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/ourFlag/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.ourFlagInstanceList.size() == 0
        assert model.ourFlagInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.ourFlagInstance != null
    }

    void testSave() {
        controller.save()

        assert model.ourFlagInstance != null
        assert view == '/ourFlag/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/ourFlag/show/1'
        assert controller.flash.message != null
        assert OurFlag.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/ourFlag/list'

        populateValidParams(params)
        def ourFlag = new OurFlag(params)

        assert ourFlag.save() != null

        params.id = ourFlag.id

        def model = controller.show()

        assert model.ourFlagInstance == ourFlag
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/ourFlag/list'

        populateValidParams(params)
        def ourFlag = new OurFlag(params)

        assert ourFlag.save() != null

        params.id = ourFlag.id

        def model = controller.edit()

        assert model.ourFlagInstance == ourFlag
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/ourFlag/list'

        response.reset()

        populateValidParams(params)
        def ourFlag = new OurFlag(params)

        assert ourFlag.save() != null

        // test invalid parameters in update
        params.id = ourFlag.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/ourFlag/edit"
        assert model.ourFlagInstance != null

        ourFlag.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/ourFlag/show/$ourFlag.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        ourFlag.clearErrors()

        populateValidParams(params)
        params.id = ourFlag.id
        params.version = -1
        controller.update()

        assert view == "/ourFlag/edit"
        assert model.ourFlagInstance != null
        assert model.ourFlagInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/ourFlag/list'

        response.reset()

        populateValidParams(params)
        def ourFlag = new OurFlag(params)

        assert ourFlag.save() != null
        assert OurFlag.count() == 1

        params.id = ourFlag.id

        controller.delete()

        assert OurFlag.count() == 0
        assert OurFlag.get(ourFlag.id) == null
        assert response.redirectedUrl == '/ourFlag/list'
    }
}
