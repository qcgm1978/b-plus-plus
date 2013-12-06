// Generated by CoffeeScript 1.6.3
(function() {
  'use strict';
  TestCase("jsTestDriver", {
    'test jsTestDriver should work': function() {
      return assertTrue('it should pass if only jsTestDriver works', true);
    }
  });

  TestCase('JsUnit', {
    'test assertEquals etc': function() {
      var a, b;
      assertEquals('array equals in js test driver assertEqual test', [], []);
      assertEquals({}, {});
      assertEquals({
        a: 1
      }, {
        a: 1
      });
      assertFalse({a:1}=={a:1});
      assertNotSame({
        a: 1
      }, {
        a: 1
      });
      a = {
        a: 1
      };
      b = {
        a: 1
      };
      assertEquals(a, b);
      assertNotSame(a, b);
      a = b = {
        a: 1
      };
      return assertSame(a, b);
    }
  });

}).call(this);

/*
//@ sourceMappingURL=test-testSelf.map
*/