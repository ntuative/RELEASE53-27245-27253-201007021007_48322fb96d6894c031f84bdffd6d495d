package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1936:int;
      
      private var var_1785:int;
      
      private var var_1920:int;
      
      private var var_2098:int;
      
      private var _nutrition:int;
      
      private var var_1288:int;
      
      private var var_2100:int;
      
      private var var_2102:int;
      
      private var _energy:int;
      
      private var var_2103:int;
      
      private var var_2099:int;
      
      private var _ownerName:String;
      
      private var var_2101:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1936;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set respect(param1:int) : void
      {
         var_1785 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1936 = param1;
      }
      
      public function get petId() : int
      {
         return var_1288;
      }
      
      public function get experienceMax() : int
      {
         return var_2102;
      }
      
      public function get nutritionMax() : int
      {
         return var_2098;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_2100 = param1;
      }
      
      public function get ownerId() : int
      {
         return var_2101;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function set petId(param1:int) : void
      {
         var_1288 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function get energyMax() : int
      {
         return var_2099;
      }
      
      public function get respect() : int
      {
         return var_1785;
      }
      
      public function get levelMax() : int
      {
         return var_2100;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_2102 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1920 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_2098 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_2101 = param1;
      }
      
      public function get experience() : int
      {
         return var_1920;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_2099 = param1;
      }
      
      public function set age(param1:int) : void
      {
         var_2103 = param1;
      }
      
      public function get age() : int
      {
         return var_2103;
      }
   }
}
