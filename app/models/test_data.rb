class TestData
    def to_json
        {:thing => "some_stuff", :array => ["first", "second", "third"]}.to_json 
    end
end
