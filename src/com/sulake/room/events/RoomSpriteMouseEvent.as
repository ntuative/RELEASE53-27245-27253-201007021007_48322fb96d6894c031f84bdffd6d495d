package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1728:Boolean = false;
      
      private var var_1734:Boolean = false;
      
      private var var_1726:String = "";
      
      private var _type:String = "";
      
      private var var_1727:Boolean = false;
      
      private var var_1733:Number = 0;
      
      private var var_1730:Number = 0;
      
      private var var_1735:Number = 0;
      
      private var var_1729:String = "";
      
      private var var_1731:Number = 0;
      
      private var var_1732:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_1729 = param2;
         var_1726 = param3;
         var_1730 = param4;
         var_1735 = param5;
         var_1733 = param6;
         var_1731 = param7;
         var_1732 = param8;
         var_1734 = param9;
         var_1727 = param10;
         var_1728 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1732;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1728;
      }
      
      public function get localX() : Number
      {
         return var_1733;
      }
      
      public function get localY() : Number
      {
         return var_1731;
      }
      
      public function get canvasId() : String
      {
         return var_1729;
      }
      
      public function get altKey() : Boolean
      {
         return var_1734;
      }
      
      public function get spriteTag() : String
      {
         return var_1726;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_1730;
      }
      
      public function get screenY() : Number
      {
         return var_1735;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1727;
      }
   }
}
