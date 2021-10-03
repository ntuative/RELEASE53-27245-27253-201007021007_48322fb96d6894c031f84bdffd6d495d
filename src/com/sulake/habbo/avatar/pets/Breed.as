package com.sulake.habbo.avatar.pets
{
   public class Breed extends PetEditorInfo implements IBreed
   {
       
      
      private var var_607:String;
      
      private var _id:int;
      
      private var var_2273:String = "";
      
      private var var_2272:int;
      
      private var var_2274:String;
      
      private var var_1966:Boolean;
      
      public function Breed(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var_2272 = parseInt(param1.@pattern);
         var_607 = String(param1.@gender);
         var_1966 = Boolean(parseInt(param1.@colorable));
         var_2273 = String(param1.@localizationKey);
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get localizationKey() : String
      {
         return var_2273;
      }
      
      public function get isColorable() : Boolean
      {
         return var_1966;
      }
      
      public function get gender() : String
      {
         return var_607;
      }
      
      public function get patternId() : int
      {
         return var_2272;
      }
      
      public function get avatarFigureString() : String
      {
         return var_2274;
      }
      
      public function set avatarFigureString(param1:String) : void
      {
         var_2274 = param1;
      }
   }
}
