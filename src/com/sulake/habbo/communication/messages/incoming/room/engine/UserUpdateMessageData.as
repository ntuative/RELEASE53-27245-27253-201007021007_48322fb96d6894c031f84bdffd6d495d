package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_84:Number = 0;
      
      private var var_252:int = 0;
      
      private var var_1850:int = 0;
      
      private var var_1851:Number = 0;
      
      private var var_1846:Number = 0;
      
      private var var_1847:Number = 0;
      
      private var var_1849:Number = 0;
      
      private var var_1848:Boolean = false;
      
      private var var_85:Number = 0;
      
      private var _id:int = 0;
      
      private var var_243:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_243 = [];
         super();
         _id = param1;
         var_85 = param2;
         _y = param3;
         var_84 = param4;
         var_1849 = param5;
         var_252 = param6;
         var_1850 = param7;
         var_1851 = param8;
         var_1846 = param9;
         var_1847 = param10;
         var_1848 = param11;
         var_243 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_84;
      }
      
      public function get dir() : int
      {
         return var_252;
      }
      
      public function get localZ() : Number
      {
         return var_1849;
      }
      
      public function get isMoving() : Boolean
      {
         return var_1848;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1850;
      }
      
      public function get targetX() : Number
      {
         return var_1851;
      }
      
      public function get targetY() : Number
      {
         return var_1846;
      }
      
      public function get targetZ() : Number
      {
         return var_1847;
      }
      
      public function get x() : Number
      {
         return var_85;
      }
      
      public function get actions() : Array
      {
         return var_243.slice();
      }
   }
}
