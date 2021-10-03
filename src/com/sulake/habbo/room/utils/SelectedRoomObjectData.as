package com.sulake.habbo.room.utils
{
   import com.sulake.habbo.room.ISelectedRoomObjectData;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class SelectedRoomObjectData implements ISelectedRoomObjectData
   {
       
      
      private var var_74:Vector3d = null;
      
      private var _id:int = 0;
      
      private var var_252:Vector3d = null;
      
      private var var_2078:int = 0;
      
      private var var_2077:String = null;
      
      private var _category:int = 0;
      
      private var var_2076:String = "";
      
      public function SelectedRoomObjectData(param1:int, param2:int, param3:String, param4:IVector3d, param5:IVector3d, param6:int = 0, param7:String = null)
      {
         super();
         _id = param1;
         _category = param2;
         var_2076 = param3;
         var_74 = new Vector3d();
         var_74.assign(param4);
         var_252 = new Vector3d();
         var_252.assign(param5);
         var_2078 = param6;
         var_2077 = param7;
      }
      
      public function get loc() : Vector3d
      {
         return var_74;
      }
      
      public function get typeId() : int
      {
         return var_2078;
      }
      
      public function get dir() : Vector3d
      {
         return var_252;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get instanceData() : String
      {
         return var_2077;
      }
      
      public function get operation() : String
      {
         return var_2076;
      }
      
      public function dispose() : void
      {
         var_74 = null;
         var_252 = null;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
