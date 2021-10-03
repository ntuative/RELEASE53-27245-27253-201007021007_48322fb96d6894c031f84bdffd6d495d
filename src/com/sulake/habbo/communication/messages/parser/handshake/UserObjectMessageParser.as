package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_411:String;
      
      private var var_2459:String;
      
      private var var_2460:int;
      
      private var var_2463:int;
      
      private var var_605:String;
      
      private var var_1283:String;
      
      private var _name:String;
      
      private var var_539:int;
      
      private var var_944:int;
      
      private var var_2461:int;
      
      private var _respectTotal:int;
      
      private var var_2462:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2463;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1283;
      }
      
      public function get customData() : String
      {
         return this.var_2459;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_539;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2460;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2462;
      }
      
      public function get figure() : String
      {
         return this.var_411;
      }
      
      public function get respectTotal() : int
      {
         return this._respectTotal;
      }
      
      public function get sex() : String
      {
         return this.var_605;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_411 = param1.readString();
         this.var_605 = param1.readString();
         this.var_2459 = param1.readString();
         this.var_1283 = param1.readString();
         this.var_2461 = param1.readInteger();
         this.var_2462 = param1.readString();
         this.var_2460 = param1.readInteger();
         this.var_2463 = param1.readInteger();
         this._respectTotal = param1.readInteger();
         this.var_944 = param1.readInteger();
         this.var_539 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2461;
      }
      
      public function get respectLeft() : int
      {
         return this.var_944;
      }
   }
}
