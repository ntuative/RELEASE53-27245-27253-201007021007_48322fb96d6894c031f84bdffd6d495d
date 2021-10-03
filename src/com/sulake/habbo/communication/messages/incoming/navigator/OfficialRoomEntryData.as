package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1231:int = 4;
      
      public static const const_698:int = 3;
      
      public static const const_582:int = 2;
      
      public static const const_838:int = 1;
       
      
      private var var_1970:String;
      
      private var _disposed:Boolean;
      
      private var var_1917:int;
      
      private var var_1968:Boolean;
      
      private var var_926:String;
      
      private var var_896:PublicRoomData;
      
      private var var_1971:int;
      
      private var _index:int;
      
      private var var_1972:String;
      
      private var _type:int;
      
      private var var_1751:String;
      
      private var var_897:GuestRoomData;
      
      private var var_1969:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_1970 = param1.readString();
         var_1969 = param1.readString();
         var_1968 = param1.readInteger() == 1;
         var_1972 = param1.readString();
         var_926 = param1.readString();
         var_1971 = param1.readInteger();
         var_1917 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_838)
         {
            var_1751 = param1.readString();
         }
         else if(_type == const_698)
         {
            var_896 = new PublicRoomData(param1);
         }
         else if(_type == const_582)
         {
            var_897 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_1971;
      }
      
      public function get popupCaption() : String
      {
         return var_1970;
      }
      
      public function get userCount() : int
      {
         return var_1917;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1968;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_838)
         {
            return 0;
         }
         if(this.type == const_582)
         {
            return this.var_897.maxUserCount;
         }
         if(this.type == const_698)
         {
            return this.var_896.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1969;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_897 != null)
         {
            this.var_897.dispose();
            this.var_897 = null;
         }
         if(this.var_896 != null)
         {
            this.var_896.dispose();
            this.var_896 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_897;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_1972;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_896;
      }
      
      public function get picRef() : String
      {
         return var_926;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1751;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
