class TestController < ApplicationController
    respond_to :json, :html
    def test
        respond_with TestData.new
    end

    def index
        
    end

end
