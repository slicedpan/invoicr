#= require jamb/jamb

class @JambNode

    @Leaf = 0
    @Array = 1
    @Map = 2
    @ArrayItem = 3

    copy: () ->
        ret = JambNode.new(@jq_obj.clone(), @type, @key)

    constructor: (@jq_obj, @type, @key) ->
        if @type == @Map then @children = {} else @children = []

    add_node: (node) ->
        @children.push(node)

    add_named_node: (node) ->
        @children[name] = node

    hide: () ->
        @jq_obj.hide()

    show: () ->
        @jq_obj.show()

    build_tree: () ->
        if @type == @ArrayItem or @type == @Leaf then return
        new_children = @jq_obj.find('.jamb_node')


    set_data: (data) ->
        if @type == @Leaf
            @jq_obj.text(data)
        else if @type == @Array
            counter = 0
            for val in data[@key]
                if @children[counter]
                    @children[counter].set_data(val)
                    @children[counter].show()
                else
                    jq_child = @children[0].jq_obj.clone()
                    child = JambNode.new(jq_child, @Leaf, null)
                    
                    @children.push(child)
                ++counter
            while counter < @children.length
                @children[counter].hide()
                ++counter
        else if @type == @Map
            for key, value of data
                
