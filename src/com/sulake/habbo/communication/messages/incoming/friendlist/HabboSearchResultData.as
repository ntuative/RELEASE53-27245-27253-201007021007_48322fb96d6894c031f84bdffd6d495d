package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2436:Boolean;
      
      private var var_2434:int;
      
      private var var_2435:Boolean;
      
      private var var_1564:String;
      
      private var var_1283:String;
      
      private var var_1980:int;
      
      private var var_1979:String;
      
      private var var_2437:String;
      
      private var var_1978:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1980 = param1.readInteger();
         this.var_1564 = param1.readString();
         this.var_1979 = param1.readString();
         this.var_2436 = param1.readBoolean();
         this.var_2435 = param1.readBoolean();
         param1.readString();
         this.var_2434 = param1.readInteger();
         this.var_1978 = param1.readString();
         this.var_2437 = param1.readString();
         this.var_1283 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1283;
      }
      
      public function get avatarName() : String
      {
         return this.var_1564;
      }
      
      public function get avatarId() : int
      {
         return this.var_1980;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2436;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2437;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1978;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2435;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1979;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2434;
      }
   }
}
