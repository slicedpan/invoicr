class @Jamb
    constructor: (@jq_parent) ->
      
    load: (query) ->
        $.ajax(query).done((data) => @finished(data))

    populate_level: (data, root) ->
        if root.hasClass("jamb_value")
          root.text(data[root.attr("key")])
        
    finished: (data) ->
        

