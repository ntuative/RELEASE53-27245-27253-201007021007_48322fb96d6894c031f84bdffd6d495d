package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class RoomThumbnailObjectData
   {
       
      
      private var var_1652:int;
      
      private var var_1653:int;
      
      public function RoomThumbnailObjectData()
      {
         super();
      }
      
      public function get pos() : int
      {
         return var_1652;
      }
      
      public function set pos(param1:int) : void
      {
         this.var_1652 = param1;
      }
      
      public function getCopy() : RoomThumbnailObjectData
      {
         var _loc1_:RoomThumbnailObjectData = new RoomThumbnailObjectData();
         _loc1_.var_1652 = this.var_1652;
         _loc1_.var_1653 = this.var_1653;
         return _loc1_;
      }
      
      public function set imgId(param1:int) : void
      {
         this.var_1653 = param1;
      }
      
      public function get imgId() : int
      {
         return var_1653;
      }
   }
}
