// Generated by CoffeeScript 1.3.1
(function() {
  var SpearmanFactory,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor; child.__super__ = parent.prototype; return child; };

  SpearmanFactory = (function(_super) {

    __extends(SpearmanFactory, _super);

    SpearmanFactory.name = 'SpearmanFactory';

    function SpearmanFactory(o) {
      SpearmanFactory.__super__.constructor.call(this, "Spearman Factory", 100, 10, 10, o);
    }

    return SpearmanFactory;

  })(Factory);

  window.SpearmanFactory = SpearmanFactory;

}).call(this);
