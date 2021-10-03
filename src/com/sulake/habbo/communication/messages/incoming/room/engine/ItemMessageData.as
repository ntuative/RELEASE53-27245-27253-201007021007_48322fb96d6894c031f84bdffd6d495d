package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_84:Number = 0;
      
      private var _data:String = "";
      
      private var var_1493:int = 0;
      
      private var var_36:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_2181:Boolean = false;
      
      private var var_2515:String = "";
      
      private var _id:int = 0;
      
      private var var_199:Boolean = false;
      
      private var var_252:String = "";
      
      private var var_2183:int = 0;
      
      private var var_2182:int = 0;
      
      private var var_1733:int = 0;
      
      private var var_1731:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_2181 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_199)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_2181;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_199)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_252;
      }
      
      public function get state() : int
      {
         return var_36;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_199)
         {
            var_1733 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_199)
         {
            var_2183 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_199)
         {
            var_2182 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_199)
         {
            var_252 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_199)
         {
            var_1731 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_199)
         {
            var_36 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1733;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_199)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_2183;
      }
      
      public function get wallY() : Number
      {
         return var_2182;
      }
      
      public function get localY() : Number
      {
         return var_1731;
      }
      
      public function setReadOnly() : void
      {
         var_199 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_84;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_199)
         {
            var_84 = param1;
         }
      }
   }
}
