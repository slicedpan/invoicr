class TestController < ApplicationController

    respond_to :json, :html

    def index
    end

    def test
        base = {:thing => "stuff", :another_thing => "more stuff"}
        base.merge!({:array => ["first", "second", "the third"]})
        respond_with base.to_json
    end

    def test2 
        base = {:obj => {"field_one" => "value", "field_two" =>
            {:thing => "blah", "thing2" => "blah"}}, 
            :obj2 => "fffuuuu"}
        respond_with base.to_json
    end

end
