package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import flash.utils.getTimer;
   
   public class IssueInfoMessageParser implements IMessageParser
   {
       
      
      private var var_61:IssueMessageData;
      
      public function IssueInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_61 = new IssueMessageData();
         var_61.issueId = param1.readInteger();
         var_61.state = param1.readInteger();
         var_61.categoryId = param1.readInteger();
         var_61.reportedCategoryId = param1.readInteger();
         var_61.timeStamp = getTimer() - param1.readInteger();
         var_61.priority = param1.readInteger();
         var_61.reporterUserId = param1.readInteger();
         var_61.reporterUserName = param1.readString();
         var_61.reportedUserId = param1.readInteger();
         var_61.reportedUserName = param1.readString();
         var_61.pickerUserId = param1.readInteger();
         var_61.pickerUserName = param1.readString();
         var_61.message = param1.readString();
         var_61.chatRecordId = param1.readInteger();
         var_61.roomName = param1.readString();
         var_61.roomType = param1.readInteger();
         if(false)
         {
            var_61.roomResources = param1.readString();
            var_61.unitPort = param1.readInteger();
            var_61.worldId = param1.readInteger();
         }
         if(false)
         {
            var_61.flatType = param1.readString();
            var_61.flatId = param1.readInteger();
            var_61.flatOwnerName = param1.readString();
         }
         return true;
      }
      
      public function get issueData() : IssueMessageData
      {
         return var_61;
      }
      
      public function flush() : Boolean
      {
         var_61 = null;
         return true;
      }
   }
}
