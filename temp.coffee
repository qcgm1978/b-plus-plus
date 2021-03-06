describe "A spy, when faking a return value", ->
  foo = undefined
  bar = undefined
  fetchedBar = undefined
  beforeEach ->
    foo =
      setBar: (value) ->
        bar = value

      getBar: ->
        bar

    spyOn(foo, "getBar").andReturn 745
    foo.setBar 123
    fetchedBar = foo.getBar()

  it "tracks that the spy was called", ->
    expect(foo.getBar).toHaveBeenCalled()

  it "should not affect other functions", ->
    expect(bar).toEqual 123

  it "when called returns the requested value", ->
    expect(fetchedBar).toEqual 745


