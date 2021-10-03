package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1686:int = -1;
      
      private var var_1440:Boolean;
      
      private var var_1439:String;
      
      private var var_2358:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_2358 = String(param1["set-type"]);
         var_1439 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1440 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1686 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1439;
      }
      
      public function get staticId() : int
      {
         return var_1686;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1686 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1440;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1440 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1439 = param1;
      }
      
      public function get setType() : String
      {
         return var_2358;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
