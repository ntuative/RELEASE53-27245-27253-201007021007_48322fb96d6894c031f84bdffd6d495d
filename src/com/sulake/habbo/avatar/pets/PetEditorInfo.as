package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_1909:Boolean;
      
      private var var_1908:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_1909 = Boolean(parseInt(param1.@club));
         var_1908 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_1909;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1908;
      }
   }
}
