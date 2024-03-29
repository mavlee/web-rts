// Generated by CoffeeScript 1.3.1
(function() {
  var Unit;

  Unit = (function() {

    Unit.name = 'Unit';

    Unit.prototype.owner_id = 0;

    Unit.prototype.life = 0;

    Unit.prototype.damage = 0;

    Unit.prototype.move_speed = 0;

    Unit.prototype.attack_range = 0;

    Unit.prototype.attack_speed = 0;

    Unit.prototype.last_move_time = 0;

    Unit.prototype.last_attack_time = 0;

    function Unit(name, l, d, ms, ar, as, o) {
      this.name = name;
      this.life = l;
      this.damage = d;
      this.move_speed = ms;
      this.attack_range = ar;
      this.attack_speed = as;
      this.owner_id = o;
    }

    Unit.prototype.canMove = function() {
      if ((new Date()).getTime() - this.last_move_time >= move_speed) {
        return true;
      }
      return false;
    };

    Unit.prototype.canAttack = function() {
      if ((new Date()).getTime() - this.last_attack_time >= attack_speed) {
        return true;
      }
      return false;
    };

    return Unit;

  })();

  if (typeof global === "undefined") {
    window.Unit = Unit;
  } else {
    exports.Unit = Unit;
  }

}).call(this);
