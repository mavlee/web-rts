// Generated by CoffeeScript 1.3.1
(function() {
  var Archer,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; };

  Archer = (function(_super) {

    __extends(Archer, _super);

    Archer.name = 'Archer';

    function Archer() {
      Archer.__super__.constructor.call(this, "Archer", 100, 10, 10, 10);
    }

    return Archer;

  })(Unit);

}).call(this);