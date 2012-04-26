// Generated by CoffeeScript 1.3.1
(function() {
  var Game;

  Game = (function() {

    Game.name = 'Game';

    Game.ROWS = 50;

    Game.COLUMNS = 50;

    Game.UPDATE_INTERVAL = 40;

    Game.MAX_PLAYERS = 10;

    Game.prototype.board = null;

    Game.prototype.timestamp = null;

    Game.prototype.playerCount = 0;

    function Game() {
      var c, r, _i, _j, _ref, _ref1;
      this.board = [];
      for (r = _i = 0, _ref = this.ROWS; 0 <= _ref ? _i <= _ref : _i >= _ref; r = 0 <= _ref ? ++_i : --_i) {
        this.board.push([]);
        for (c = _j = 0, _ref1 = this.COLS; 0 <= _ref1 ? _j <= _ref1 : _j >= _ref1; c = 0 <= _ref1 ? ++_j : --_j) {
          this.board[r].push(0);
        }
      }
      this.timestamp = (new Date()).getTime();
      this.playerCount = 0;
    }

    Game.prototype.save = function() {};

    Game.prototype.load = function() {};

    Game.prototype.computeState = function() {};

    Game.prototype.update = function() {};

    Game.prototype.playerJoin = function() {
      this.playerCount++;
    };

    Game.prototype.playerLeave = function() {
      this.playerCount--;
    };

    Game.prototype.getPlayerCount = function() {
      return this.playerCount;
    };

    return Game;

  })();

  if (typeof global === void 0) {
    window.Game = Game;
  }

  exports.Game = Game;

}).call(this);
