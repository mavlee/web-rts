// Generated by CoffeeScript 1.3.1
(function() {
  var SwordsmanFactory,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; };

  SwordsmanFactory = (function(_super) {

    __extends(SwordsmanFactory, _super);

    SwordsmanFactory.name = 'SwordsmanFactory';

    function SwordsmanFactory(o) {
      SwordsmanFactory.__super__.constructor.call(this, "Swordsman Factory", 100, 10, 10, o);
    }

    return SwordsmanFactory;

  })(Factory);

  window.SwordsmanFactory = SwordsmanFactory;

}).call(this);
