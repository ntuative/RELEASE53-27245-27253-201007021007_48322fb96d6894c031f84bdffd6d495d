package com.sulake.habbo.avatar.structure.figure
{
   import com.sulake.core.utils.Map;
   
   public class SetType implements ISetType
   {
       
      
      private var var_309:Map;
      
      private var var_1820:Boolean;
      
      private var var_1819:int;
      
      private var _type:String;
      
      public function SetType(param1:XML)
      {
         super();
         _type = String(param1.@type);
         var_1819 = parseInt(param1.@paletteid);
         var_1820 = Boolean(parseInt(param1.@mandatory));
         var_309 = new Map();
         append(param1);
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function cleanUp(param1:XML) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         for each(_loc2_ in param1["set"])
         {
            _loc3_ = String(_loc2_.@id);
            _loc4_ = var_309.getValue(_loc3_);
            if(_loc4_ != null)
            {
               _loc4_.dispose();
               var_309.remove(_loc3_);
            }
         }
      }
      
      public function getPartSet(param1:int) : IFigurePartSet
      {
         return var_309.getValue(String(param1));
      }
      
      public function getDefaultPartSet(param1:String) : IFigurePartSet
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc2_:Array = var_309.getKeys();
         var _loc3_:int = _loc2_.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_ = _loc2_[_loc3_];
            _loc5_ = var_309.getValue(_loc4_);
            if(_loc5_ && _loc5_.clubLevel == 0 && _loc5_.gender == param1)
            {
               return _loc5_;
            }
            _loc3_--;
         }
         return null;
      }
      
      public function get isMandatory() : Boolean
      {
         return var_1820;
      }
      
      public function get paletteID() : int
      {
         return var_1819;
      }
      
      public function append(param1:XML) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in param1["set"])
         {
            var_309.add(String(_loc2_.@id),new FigurePartSet(_loc2_,_type));
         }
      }
      
      public function get partSets() : Map
      {
         return var_309;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_309.getValues())
         {
            _loc1_.dispose();
         }
         var_309.dispose();
         var_309 = null;
      }
   }
}
