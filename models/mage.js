// Generated by CoffeeScript 1.3.1
(function() {
  var Mage, Unit,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; };

  if (typeof global === "undefined") {
    Unit = window.Unit;
  } else {
    Unit = require('../models/unit.js').Unit;
  }

  Mage = (function(_super) {

    __extends(Mage, _super);

    Mage.name = 'Mage';

    function Mage(o) {
      Mage.__super__.constructor.call(this, "Mage", 100, 10, 10, 10, 10, o);
    }

    return Mage;

  })(Unit);

  if (typeof global === "undefined") {
    window.Mage = Mage;
  } else {
    exports.Mage = Mage;
  }

}).call(this);
