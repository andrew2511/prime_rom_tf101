.class Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendOrSaveMessageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mSend:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageCompose;Z)V
    .locals 2
    .parameter
    .parameter "send"

    .prologue
    .line 915
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 916
    if-eqz p2, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    const-string v0, "Email"

    const-string v1, "Inhibiting send while monkey is in charge."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const/4 p2, 0x0

    .line 920
    :cond_0
    iput-boolean p2, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->mSend:Z

    .line 921
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 912
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 17
    .parameter "params"

    .prologue
    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v11, v0

    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$400(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    monitor-enter v11

    .line 926
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v12, v0

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1100(Lcom/android/email/activity/MessageCompose;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v3

    .line 927
    .local v3, attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageCompose;->access$400(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageCompose;->access$900(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v14

    array-length v15, v3

    if-lez v15, :cond_2

    const/4 v15, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->mSend:Z

    move/from16 v16, v0

    invoke-static/range {v12 .. v16}, Lcom/android/email/activity/MessageCompose;->access$1200(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;ZZ)V

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 929
    .local v9, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v12, v0

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$400(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 931
    sget-object v12, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageCompose;->access$400(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v13

    iget-wide v13, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v12, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 933
    .local v5, draftUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageCompose;->access$400(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/email/activity/MessageCompose;->access$1300(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v9, v5, v12, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 935
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 936
    .local v10, values:Landroid/content/ContentValues;
    const-string v12, "textContent"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageCompose;->access$400(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v13

    iget-object v13, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    const-string v12, "textReply"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageCompose;->access$400(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v13

    iget-object v13, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    const-string v12, "htmlReply"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageCompose;->access$400(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v13

    iget-object v13, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const-string v12, "introText"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageCompose;->access$400(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v13

    iget-object v13, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const-string v12, "sourceMessageKey"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageCompose;->access$400(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v13

    iget-wide v13, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageCompose;->access$400(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v13

    iget-wide v13, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v12, v13, v14, v10}, Lcom/android/emailcommon/provider/EmailContent$Body;->updateBodyWithMessageId(Landroid/content/Context;JLandroid/content/ContentValues;)V

    .line 947
    .end local v5           #draftUri:Landroid/net/Uri;
    .end local v10           #values:Landroid/content/ContentValues;
    :goto_1
    const/4 v6, 0x0

    .line 948
    .local v6, hasUnloadedAttachments:Z
    move-object v1, v3

    .local v1, arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v8, v1

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_2
    if-ge v7, v8, :cond_5

    aget-object v2, v1, v7

    .line 949
    .local v2, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v12, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-nez v12, :cond_0

    iget v12, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v12, v12, 0x100

    if-nez v12, :cond_0

    .line 951
    iget v12, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    or-int/lit8 v12, v12, 0x4

    iput v12, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 952
    const/4 v6, 0x1

    .line 953
    sget-boolean v12, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v12, :cond_0

    .line 954
    const-string v12, "MessageCompose"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Requesting download of attachment #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_0
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->isSaved()Z

    move-result v12

    if-nez v12, :cond_4

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v12, v0

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$400(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    iget-wide v12, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iput-wide v12, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v12, v0

    invoke-virtual {v2, v12}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 948
    :cond_1
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 927
    .end local v1           #arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v2           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v6           #hasUnloadedAttachments:Z
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #resolver:Landroid/content/ContentResolver;
    :cond_2
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 944
    .restart local v9       #resolver:Landroid/content/ContentResolver;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v12, v0

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageCompose;->access$400(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v13

    const/4 v14, 0x3

    invoke-virtual {v12, v13, v14}, Lcom/android/email/Controller;->saveToMailbox(Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    goto :goto_1

    .line 988
    .end local v3           #attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v9           #resolver:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v12

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 964
    .restart local v1       #arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v2       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v3       #attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v6       #hasUnloadedAttachments:Z
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    .restart local v9       #resolver:Landroid/content/ContentResolver;
    :cond_4
    :try_start_1
    iget-wide v12, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/email/activity/MessageCompose;->access$400(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v14

    iget-wide v14, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    cmp-long v12, v12, v14

    if-eqz v12, :cond_1

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v12, v0

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$400(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    iget-wide v12, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iput-wide v12, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 971
    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 972
    .local v4, cv:Landroid/content/ContentValues;
    const-string v12, "flags"

    iget v13, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 973
    const-string v12, "messageKey"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageCompose;->access$400(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v13

    iget-wide v13, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12, v13, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_3

    .line 978
    .end local v2           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v4           #cv:Landroid/content/ContentValues;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->mSend:Z

    move v12, v0

    if-eqz v12, :cond_7

    .line 981
    if-eqz v6, :cond_6

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v12, v0

    const v13, 0x7f08008c

    invoke-static {v12, v13}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/app/Activity;I)V

    .line 985
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v12, v0

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v13, v0

    invoke-static {v13}, Lcom/android/email/activity/MessageCompose;->access$400(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v13

    iget-wide v13, v13, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object v15, v0

    invoke-static {v15}, Lcom/android/email/activity/MessageCompose;->access$400(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v15

    iget-wide v15, v15, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual/range {v12 .. v16}, Lcom/android/email/Controller;->sendMessage(JJ)V

    .line 987
    :cond_7
    const/4 v12, 0x0

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v12
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 912
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 993
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->access$100()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 994
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$202(Z)Z

    .line 995
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->access$100()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 996
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 997
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1005
    :cond_0
    :goto_0
    return-void

    .line 996
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1001
    :cond_1
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->mSend:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->getChangingConfigurations()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v1, 0x7f0800a9

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
