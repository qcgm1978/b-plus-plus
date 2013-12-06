'use strict'
global={}
Func=(arg)->
    priv='priv'
    global?.a=1
    this?.a=2
    this?.getPriv= ->
        priv
    this
func=new Func()
test 'test create class',->
    equal {a:2},{a:2}
    equal typeof func,typeof {a:2}
    ok func instanceof Object
    obj={}
    equal Func(),undefined,'no global this'
    equal global?.a,1,'side effects on global obj'
    equal this,{}
    equal this.a,undefined
    a=new Func()
    equal a.a,2 ,'instance property is set'
    notStrictEqual(func,a)
    equal a.getPriv(),'priv'


