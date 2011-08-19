.class Lcom/google/android/gm/provider/MailEngine$PublicMailStore;
.super Ljava/lang/Object;
.source "MailEngine.java"

# interfaces
.implements Lcom/google/android/gm/provider/MailStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PublicMailStore"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/provider/MailEngine;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 4085
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addOrUpdateMessage(Lcom/google/android/gm/provider/MailSync$Message;Z)V
    .locals 11
    .parameter "message"
    .parameter "synced"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v1, 0x3

    .line 4140
    const-string v0, "Gmail"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOrUpdateMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4142
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 4148
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT COUNT(*) FROM operations WHERE message_messageId = ? AND action IN (?, ?) AND value2 = ?"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "messageSaved"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "messageSent"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p1, Lcom/google/android/gm/provider/MailSync$Message;->conversationId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v7

    .line 4156
    .local v7, numSendOrSaveOperations:J
    cmp-long v0, v7, v9

    if-nez v0, :cond_1

    .line 4157
    const-wide/16 v2, 0x0

    sget-object v5, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->SERVER_CREATED:Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->addOrUpdateMessageNoNotifyWithoutWritingOperations(Lcom/google/android/gm/provider/MailSync$Message;JZLcom/google/android/gm/provider/MailEngine$ClientCreated;)V

    .line 4172
    :goto_0
    iget-wide v0, p1, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 4173
    .local v6, messageIdString:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages_to_fetch"

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4174
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4176
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4178
    return-void

    .line 4160
    .end local v6           #messageIdString:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOrUpdateMessage ignoring message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because of a pending save/send operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4176
    .end local v7           #numSendOrSaveOperations:J
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method addOrUpdateMessageNoNotifyWithoutWritingOperations(Lcom/google/android/gm/provider/MailSync$Message;JZLcom/google/android/gm/provider/MailEngine$ClientCreated;)V
    .locals 30
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4851
    new-instance v21, Landroid/util/TimingLogger;

    const-string v5, "Gmail"

    const-string v6, "addOrUpdateMessageNoNotifyWithoutWritingOperations"

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 4856
    :try_start_0
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 4857
    const-string v5, "messageId"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    move-wide v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4858
    const-string v5, "conversation"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->conversationId:J

    move-wide v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4859
    const-string v5, "fromAddress"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->fromAddress:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4860
    const-string v5, "toAddresses"

    const-string v6, "\n"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->toAddresses:Ljava/util/List;

    move-object v7, v0

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4863
    const-string v5, "ccAddresses"

    const-string v6, "\n"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->ccAddresses:Ljava/util/List;

    move-object v7, v0

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4866
    const-string v5, "bccAddresses"

    const-string v6, "\n"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->bccAddresses:Ljava/util/List;

    move-object v7, v0

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4869
    const-string v5, "replyToAddresses"

    const-string v6, "\n"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->replyToAddresses:Ljava/util/List;

    move-object v7, v0

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4872
    const-string v5, "dateSentMs"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->dateSentMs:J

    move-wide v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4873
    const-string v5, "dateReceivedMs"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->dateReceivedMs:J

    move-wide v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4874
    const-string v5, "subject"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->subject:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4875
    const-string v5, "listInfo"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->listInfo:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4876
    const-string v5, "personalLevel"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->personalLevel:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->toInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4877
    const-string v5, "clientCreated"

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->toInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4878
    const-string v5, "snippet"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->snippet:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4879
    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-eqz v5, :cond_0

    .line 4881
    const-string v5, "_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4883
    :cond_0
    const-string v5, "synced"

    if-eqz p4, :cond_6

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4886
    const-string v5, "pre body"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 4887
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->body:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_1

    .line 4888
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/gm/provider/MailEngine;->access$2000(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gmail_db_compression_type"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 4891
    if-nez v5, :cond_7

    .line 4892
    const-string v5, "body"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->body:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4893
    const-string v5, "bodyCompressed"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 4913
    :cond_1
    :goto_1
    const-string v5, "body"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 4915
    const-string v5, "bodyEmbedsExternalResources"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->bodyEmbedsExternalResources:Z

    move v6, v0

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4919
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->customFromAddress:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4920
    const-string v5, "customFromAddress"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->customFromAddress:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4925
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->refMsgId:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_3

    .line 4926
    const-string v5, "refMessageId"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->refMsgId:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4931
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->attachments:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_e

    .line 4935
    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-nez v5, :cond_b

    if-eqz p4, :cond_b

    .line 4936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/gm/provider/MailEngine;->access$900(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdDraft()J

    move-result-wide v23

    .line 4938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/gm/provider/MailEngine;->access$2100(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/MailEngine$Preferences;

    move-result-object v5

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/gm/provider/MailEngine;->access$2100(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/MailEngine$Preferences;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/gm/provider/MailEngine;->getAccountName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/gm/provider/MailEngine$Preferences;->getPrefetchAttachments(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    move/from16 v25, v5

    .line 4947
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->attachments:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_4
    :goto_4
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gm/provider/Gmail$Attachment;

    .line 4948
    const/4 v10, 0x0

    .line 4949
    const/16 v19, 0x1

    .line 4950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/gm/provider/MailEngine;->getAccountName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    move-wide v6, v0

    sget-object v9, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->BEST:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    invoke-static/range {v5 .. v10}, Lcom/google/android/gm/provider/Gmail;->getAttachmentUri(Ljava/lang/String;JLcom/google/android/gm/provider/Gmail$Attachment;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)Landroid/net/Uri;

    move-result-object v5

    .line 4952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v6, v0

    invoke-static {v6}, Lcom/google/android/gm/provider/MailEngine;->access$2000(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, v8, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    invoke-static {v6, v5, v7}, Lcom/google/android/gm/provider/MimeType;->isViewable(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v5

    .line 4956
    iget-object v6, v8, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    const-string v7, "image/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 4957
    sget-object v6, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->SERVER_CREATED:Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    move-object/from16 v0, p5

    move-object v1, v6

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->labelIds:Ljava/util/Set;

    move-object v6, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 4959
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v6, v0

    invoke-static {v6}, Lcom/google/android/gm/provider/MailEngine;->access$1600(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/AttachmentManager;

    move-result-object v11

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->conversationId:J

    move-wide v12, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    move-wide v14, v0

    sget-object v17, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->SIMPLE:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    const/16 v20, 0x1

    move-object/from16 v16, v8

    move/from16 v18, v10

    invoke-virtual/range {v11 .. v20}, Lcom/google/android/gm/provider/AttachmentManager;->enqueueAttachment(JJLcom/google/android/gm/provider/Gmail$Attachment;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;ZZI)V

    .line 4968
    :cond_5
    sget-object v6, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->SERVER_CREATED:Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    move-object/from16 v0, p5

    move-object v1, v6

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->labelIds:Ljava/util/Set;

    move-object v6, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v25, :cond_4

    if-eqz v5, :cond_4

    .line 4971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/gm/provider/MailEngine;->access$1600(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/AttachmentManager;

    move-result-object v11

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->conversationId:J

    move-wide v12, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    move-wide v14, v0

    sget-object v17, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->BEST:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    const/16 v20, 0x0

    move-object/from16 v16, v8

    move/from16 v18, v10

    invoke-virtual/range {v11 .. v20}, Lcom/google/android/gm/provider/AttachmentManager;->enqueueAttachment(JJLcom/google/android/gm/provider/Gmail$Attachment;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;ZZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    .line 5049
    :catchall_0
    move-exception v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5050
    const-string v6, "post body"

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 5051
    invoke-virtual/range {v21 .. v21}, Landroid/util/TimingLogger;->dumpToLog()V

    throw v5

    .line 4883
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 4895
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/gm/provider/MailEngine;->access$2000(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "gmail_db_compression_threshold"

    const/16 v7, 0x64

    invoke-static {v5, v6, v7}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 4898
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->body:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v5, :cond_8

    .line 4899
    const-string v5, "body"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->body:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4900
    const-string v5, "bodyCompressed"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 4903
    :cond_8
    :try_start_2
    const-string v5, "bodyCompressed"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->body:Ljava/lang/String;

    move-object v6, v0

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gm/provider/ZipUtils;->deflate([B)[B

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 4905
    const-string v5, "body"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 4906
    :catch_0
    move-exception v5

    .line 4908
    :try_start_3
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "UTF-8 not supported"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4915
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 4938
    :cond_a
    const/4 v5, 0x0

    move/from16 v25, v5

    goto/16 :goto_3

    .line 4978
    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/google/android/gm/provider/MailEngine;->access$2200(Lcom/google/android/gm/provider/MailSync$Message;)Ljava/lang/String;

    move-result-object v5

    .line 4982
    :goto_5
    const-string v6, "joinedAttachmentInfos"

    move-object/from16 v0, v22

    move-object v1, v6

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4985
    const-wide/16 v5, 0x0

    .line 4986
    const/4 v7, 0x0

    .line 4987
    const/4 v8, 0x0

    .line 4988
    const/4 v9, 0x0

    .line 4989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v10, v0

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "conversation"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "synced"

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "joinedAttachmentInfos"

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-string v13, "clientCreated"

    aput-object v13, v11, v12

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    move-wide v12, v0

    invoke-virtual {v10, v11, v12, v13}, Lcom/google/android/gm/provider/MailEngine;->getMessageCursorForMessageId([Ljava/lang/String;J)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v10

    .line 4998
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 4999
    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 5000
    const/4 v7, 0x1

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, 0x1

    .line 5001
    :goto_6
    const/4 v8, 0x2

    invoke-interface {v10, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5002
    const/4 v9, 0x3

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    sget-object v11, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->CLIENT_CREATED:Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    invoke-static {v11}, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->access$2300(Lcom/google/android/gm/provider/MailEngine$ClientCreated;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v11

    if-ne v9, v11, :cond_10

    const/4 v9, 0x1

    :goto_7
    move/from16 v27, v9

    move v9, v7

    move-wide/from16 v28, v5

    move-wide/from16 v6, v28

    move/from16 v5, v27

    .line 5006
    :goto_8
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5009
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-eqz v10, :cond_11

    .line 5010
    if-eqz v5, :cond_c

    if-eqz v8, :cond_c

    .line 5014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v5, v0

    invoke-static {v5, v8}, Lcom/google/android/gm/provider/MailEngine;->access$2400(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;)V

    .line 5016
    :cond_c
    if-nez p4, :cond_d

    if-eqz v9, :cond_d

    .line 5017
    const-string v5, "Gmail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    move-wide v9, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " already synced. Keep it that way"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5019
    const-string v5, "synced"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5021
    :cond_d
    const-string v5, "Gmail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Updating message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    move-wide v9, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". synced="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "messages"

    const-string v9, "messageId = ?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    move-wide v12, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v0, v5

    move-object v1, v8

    move-object/from16 v2, v22

    move-object v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 5025
    const/4 v8, 0x1

    if-eq v5, v8, :cond_12

    .line 5026
    new-instance v6, Landroid/database/SQLException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "surprising number of rows updated: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4980
    :cond_e
    const-string v5, ""

    goto/16 :goto_5

    .line 5000
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 5002
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 5006
    :catchall_1
    move-exception v5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v5

    .line 5030
    :cond_11
    const-string v5, "Gmail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Inserting message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    move-wide v9, v0

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". synced="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/gm/provider/MailEngine;->access$2500(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v8

    .line 5032
    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-nez v5, :cond_12

    .line 5033
    new-instance v5, Landroid/database/SQLException;

    const-string v6, "error inserting message"

    invoke-direct {v5, v6}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 5037
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    move-wide v8, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->labelIds:Ljava/util/Set;

    move-object v10, v0

    invoke-virtual {v5, v8, v9, v10}, Lcom/google/android/gm/provider/MailCore;->setLabelsOnMessageWithoutWritingOperations(JLjava/util/Set;)V

    .line 5040
    sget-object v8, Lcom/google/android/gm/provider/MailSync$SyncRationale;->UNKNOWN:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    .line 5042
    const-wide/16 v9, 0x0

    cmp-long v5, v6, v9

    if-eqz v5, :cond_13

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->conversationId:J

    move-wide v9, v0

    cmp-long v5, v6, v9

    if-eqz v5, :cond_13

    .line 5044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gm/provider/MailCore;->onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;ZZ)V

    .line 5047
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5050
    const-string v5, "post body"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 5051
    invoke-virtual/range {v21 .. v21}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 5053
    return-void

    :cond_14
    move/from16 v27, v9

    move v9, v7

    move-wide/from16 v28, v5

    move-wide/from16 v6, v28

    move/from16 v5, v27

    goto/16 :goto_8
.end method

.method public addSendWithoutSyncConversationInfoToCheck(JJ)V
    .locals 5
    .parameter "conversationId"
    .parameter "highestMessageIdOnServer"

    .prologue
    .line 4457
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v3}, Lcom/google/android/gm/provider/MailEngine;->access$200(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4458
    const-wide/16 v1, 0x0

    .line 4460
    .local v1, highestMessageIdOnDevice:J
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v3}, Lcom/google/android/gm/provider/MailEngine;->access$200(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 4465
    :goto_0
    cmp-long v3, v1, p3

    if-gez v3, :cond_1

    .line 4466
    const-string v3, "Gmail"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4467
    const-string v3, "Gmail"

    const-string v4, "  device is lower than server. Will check conversation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4473
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4474
    .local v0, conversationsValues:Landroid/content/ContentValues;
    const-string v3, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4475
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v3}, Lcom/google/android/gm/provider/MailEngine;->access$1700(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/database/DatabaseUtils$InsertHelper;->replace(Landroid/content/ContentValues;)J

    .line 4483
    .end local v0           #conversationsValues:Landroid/content/ContentValues;
    :cond_1
    return-void

    .line 4461
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public addSyncedConversationInfoToCheck(JJ)V
    .locals 12
    .parameter "conversationId"
    .parameter "highestMessageIdOnServer"

    .prologue
    .line 4492
    const-string v7, ""

    .line 4497
    .local v7, existingSyncRationale:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->access$100(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    monitor-enter v0

    .line 4498
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->access$100(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4500
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->access$100(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 4504
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4506
    sget-object v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;->NONE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync$SyncRationale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4507
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->access$1300(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteTransactionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 4509
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    sget-object v3, Lcom/google/android/gm/provider/MailSync$SyncRationale;->UNKNOWN:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/MailCore;->onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;ZZ)V

    .line 4511
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4513
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4522
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 4523
    .local v6, conversationsValues:Landroid/content/ContentValues;
    const-string v0, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4524
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->access$1800(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/database/DatabaseUtils$InsertHelper;->replace(Landroid/content/ContentValues;)J

    .line 4570
    .end local v6           #conversationsValues:Landroid/content/ContentValues;
    :cond_0
    :goto_1
    return-void

    .line 4504
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 4513
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 4528
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->access$200(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4529
    const-wide/16 v9, 0x0

    .line 4531
    .local v9, highestMessageIdOnDevice:J
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->access$200(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-wide v9

    .line 4536
    :goto_2
    cmp-long v0, v9, p3

    if-gez v0, :cond_3

    .line 4537
    const-string v0, "Gmail"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4538
    const-string v0, "Gmail"

    const-string v1, "  device is lower than server. Will check conversation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4544
    :cond_2
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 4545
    .restart local v6       #conversationsValues:Landroid/content/ContentValues;
    const-string v0, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4546
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->access$1800(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/database/DatabaseUtils$InsertHelper;->replace(Landroid/content/ContentValues;)J

    goto :goto_1

    .line 4555
    .end local v6           #conversationsValues:Landroid/content/ContentValues;
    :cond_3
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select count(*) from messages where messageId = ? and synced = 1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    move v8, v0

    .line 4559
    .local v8, haveMessage:Z
    :goto_3
    if-nez v8, :cond_5

    .line 4560
    const-string v0, "Gmail"

    const-string v1, "  we do not have the server\'s message. Will check message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4562
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 4563
    .local v11, values:Landroid/content/ContentValues;
    const-string v0, "_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4564
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->access$1900(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    goto/16 :goto_1

    .line 4555
    .end local v8           #haveMessage:Z
    .end local v11           #values:Landroid/content/ContentValues;
    :cond_4
    const/4 v0, 0x0

    move v8, v0

    goto :goto_3

    .line 4567
    .restart local v8       #haveMessage:Z
    :cond_5
    const-string v0, "Gmail"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4568
    const-string v0, "Gmail"

    const-string v1, "  nothing to check"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4532
    .end local v8           #haveMessage:Z
    :catch_0
    move-exception v0

    goto :goto_2

    .line 4501
    .end local v9           #highestMessageIdOnDevice:J
    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 4273
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 4274
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4275
    return-void
.end method

.method public delayConversationSync(J)V
    .locals 17
    .parameter "id"

    .prologue
    .line 4809
    const/4 v13, 0x1

    new-array v3, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v3, v13

    .line 4810
    .local v3, args:[Ljava/lang/String;
    const-string v12, "_id = ?"

    .line 4812
    .local v12, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v13, v0

    iget-object v13, v13, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "SELECT numAttempts FROM conversations_to_fetch WHERE _id = ?"

    invoke-static {v13, v14, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v9

    .line 4814
    .local v9, numAttempts:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v13, v0

    iget-object v13, v13, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v13}, Lcom/google/android/gm/provider/MailSync;->getConversationAgeDays()J

    move-result-wide v7

    .line 4815
    .local v7, maxAge:J
    const-wide/16 v13, 0x0

    cmp-long v13, v7, v13

    if-lez v13, :cond_0

    const-wide/16 v13, 0x7

    cmp-long v13, v7, v13

    if-lez v13, :cond_1

    .line 4816
    :cond_0
    const-wide/16 v7, 0x7

    .line 4818
    :cond_1
    const-wide/16 v13, 0x4

    add-long/2addr v13, v7

    cmp-long v13, v9, v13

    if-lez v13, :cond_2

    .line 4820
    const-string v13, "Gmail"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Giving up on conversation "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " after "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " attempts"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4822
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v13, v0

    iget-object v13, v13, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "conversations_to_fetch"

    const-string v15, "_id = ?"

    invoke-virtual {v13, v14, v15, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4837
    :goto_0
    return-void

    .line 4824
    :cond_2
    const/4 v13, 0x1

    long-to-int v14, v9

    shl-int/2addr v13, v14

    const/16 v14, 0x18

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 4825
    .local v6, delay:I
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    mul-int/lit8 v15, v6, 0x3c

    mul-int/lit8 v15, v15, 0x3c

    mul-int/lit16 v15, v15, 0x3e8

    int-to-long v15, v15

    add-long v4, v13, v15

    .line 4826
    .local v4, date:J
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 4827
    .local v11, values:Landroid/content/ContentValues;
    const-string v13, "nextAttemptDateMs"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4828
    const-string v13, "numAttempts"

    const-wide/16 v14, 0x1

    add-long/2addr v14, v9

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v13, v0

    iget-object v13, v13, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v14, "conversations_to_fetch"

    const-string v15, "_id = ?"

    invoke-virtual {v13, v14, v11, v15, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4834
    const-string v13, "Gmail"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Delayed sync of conversation "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " by "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " hours till after "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteCorruptedMessage(JJ)V
    .locals 5
    .parameter "conversationId"
    .parameter "messageId"

    .prologue
    .line 4840
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM messages WHERE conversation = ? AND messageId >= ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4842
    return-void
.end method

.method public deleteLabel(Lcom/google/android/gm/provider/MailCore$Label;)V
    .locals 2
    .parameter "label"

    .prologue
    .line 4356
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->access$1300(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteTransactionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 4358
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/MailCore;->deleteLabel(Lcom/google/android/gm/provider/MailCore$Label;)V

    .line 4359
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailCore;->onLabelsChanged()V

    .line 4360
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4362
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4364
    return-void

    .line 4362
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public expungeMessages(JLjava/util/List;Lcom/google/android/gm/provider/MailSync$SyncRationale;)V
    .locals 6
    .parameter "conversationId"
    .parameter
    .parameter "rationale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gm/provider/MailSync$SyncRationale;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4183
    .local p3, messageIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->access$1300(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteTransactionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 4185
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gm/provider/MailCore;->expungeMessagesWithoutWritingOperations(JLjava/util/List;)V

    .line 4186
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-wide v1, p1

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/MailCore;->onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;ZZ)V

    .line 4188
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4190
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4192
    return-void

    .line 4190
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5057
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->access$400(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v0

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getConversationInfosToFetch(Lcom/google/android/gm/provider/MailEngine$SyncInfo;)Ljava/util/ArrayList;
    .locals 16
    .parameter "syncInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/provider/MailEngine$SyncInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/provider/MailSync$ConversationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4641
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->normalSync:Z

    move v14, v0

    if-eqz v14, :cond_1

    .line 4642
    :cond_0
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 4643
    .local v5, cutoff:J
    const-string v13, "select conversations_to_fetch._id as _id,   max(\n    case when not clientCreated then messages.messageId else 0 end)\n    as highestMessageId,   max(messages.clientCreated) as hasClientCreatedMessages from   conversations_to_fetch left outer join messages on   messages.conversation = conversations_to_fetch._id   and messages.synced = 1 where nextAttemptDateMs < ?group by conversations_to_fetch._id order by conversations_to_fetch._id desc limit 50"

    .line 4657
    .local v13, query:Ljava/lang/String;
    const/4 v14, 0x1

    new-array v1, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v1, v14

    .line 4675
    .end local v5           #cutoff:J
    .local v1, args:[Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v14, v0

    iget-object v14, v14, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14, v13, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 4676
    .local v4, cursor:Landroid/database/Cursor;
    const-string v14, "_id"

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 4677
    .local v10, idIndex:I
    const-string v14, "highestMessageId"

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 4680
    .local v9, highestMessageIdIndex:I
    :try_start_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 4682
    .local v12, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/MailSync$ConversationInfo;>;"
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 4683
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 4684
    .local v2, conversationId:J
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 4685
    .local v7, highestFetchedMessageId:J
    new-instance v11, Lcom/google/android/gm/provider/MailSync$ConversationInfo;

    invoke-direct {v11, v2, v3, v7, v8}, Lcom/google/android/gm/provider/MailSync$ConversationInfo;-><init>(JJ)V

    .line 4687
    .local v11, info:Lcom/google/android/gm/provider/MailSync$ConversationInfo;
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 4691
    .end local v2           #conversationId:J
    .end local v7           #highestFetchedMessageId:J
    .end local v11           #info:Lcom/google/android/gm/provider/MailSync$ConversationInfo;
    .end local v12           #infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/MailSync$ConversationInfo;>;"
    :catchall_0
    move-exception v14

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v14

    .line 4659
    .end local v1           #args:[Ljava/lang/String;
    .end local v4           #cursor:Landroid/database/Cursor;
    .end local v9           #highestMessageIdIndex:I
    .end local v10           #idIndex:I
    .end local v13           #query:Ljava/lang/String;
    :cond_1
    const-string v13, "select send_without_sync_conversations_to_fetch._id as _id,   max(\n    case when not clientCreated then messages.messageId else 0 end)\n    as highestMessageId,   max(messages.clientCreated) as hasClientCreatedMessages from   send_without_sync_conversations_to_fetch left outer join messages on   messages.conversation = send_without_sync_conversations_to_fetch._id   and messages.synced = 1 group by send_without_sync_conversations_to_fetch._id order by send_without_sync_conversations_to_fetch._id desc limit 50"

    .line 4672
    .restart local v13       #query:Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1       #args:[Ljava/lang/String;
    goto :goto_0

    .line 4691
    .restart local v4       #cursor:Landroid/database/Cursor;
    .restart local v9       #highestMessageIdIndex:I
    .restart local v10       #idIndex:I
    .restart local v12       #infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/MailSync$ConversationInfo;>;"
    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return-object v12
.end method

.method public getDirtyConversations()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4792
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 4794
    .local v3, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v4, v4, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT DISTINCT _id FROM conversations WHERE dirty = 1"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4797
    .local v0, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4798
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 4799
    .local v1, id:J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4802
    .end local v1           #id:J
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4804
    return-object v3
.end method

.method public getInputStreamForUploadedAttachment(JLcom/google/android/gm/provider/Gmail$Attachment;)Ljava/io/InputStream;
    .locals 7
    .parameter "messageId"
    .parameter "attachment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 4730
    iget-object v4, p3, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4731
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading cached attachment: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p3, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4733
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p3, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4765
    :goto_0
    return-object v4

    .line 4734
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 4735
    .local v1, e:Ljava/io/IOException;
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load cached attachment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p3, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Will attempt original URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p3, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4742
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    const/4 v0, 0x0

    .line 4747
    .local v0, attachmentStream:Ljava/io/InputStream;
    :try_start_1
    iget-object v4, p3, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 4748
    .local v3, uri:Landroid/net/Uri;
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading attachment URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p3, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4749
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v4}, Lcom/google/android/gm/provider/MailEngine;->access$2000(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    move-object v4, v0

    .line 4765
    goto :goto_0

    .line 4750
    .end local v3           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 4751
    .local v2, exception:Ljava/io/FileNotFoundException;
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to attach "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p3, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "due to a FileNotFoundException. Since the cached file has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "already been tried, this file cannot be attached. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Notify the user."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4756
    throw v2

    .line 4757
    .end local v2           #exception:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v4

    move-object v2, v4

    .line 4758
    .local v2, exception:Ljava/lang/SecurityException;
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to attach "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p3, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " due to a SecurityException. Since the cached file has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "already been tried, this file cannot be attached. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Notify the user."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4763
    throw v2
.end method

.method public getLabelCanonicalNameOrNull(Lcom/google/android/gm/provider/MailCore$Label;)Ljava/lang/String;
    .locals 1
    .parameter "label"

    .prologue
    .line 4406
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/MailCore;->getLabelCanonicalNameOrNull(Lcom/google/android/gm/provider/MailCore$Label;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabelOrNull(J)Lcom/google/android/gm/provider/MailCore$Label;
    .locals 1
    .parameter "labelId"

    .prologue
    .line 4396
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/provider/MailCore;->getLabelOrNull(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v0

    return-object v0
.end method

.method public getMessageCursorForConversationId([Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 1
    .parameter "projection"
    .parameter "conversationId"

    .prologue
    .line 4308
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gm/provider/MailEngine;->getMessageCursorForConversationId([Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getMessageIdsToFetch()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4697
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 4699
    .local v3, messageIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v4, v4, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "select _id from messages_to_fetch"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 4702
    .local v0, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4703
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 4704
    .local v1, messageId:J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4707
    .end local v1           #messageId:J
    :catchall_0
    move-exception v4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4710
    return-object v3
.end method

.method public getOrAddLabel(J)Lcom/google/android/gm/provider/MailCore$Label;
    .locals 1
    .parameter "labelId"

    .prologue
    .line 4386
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/provider/MailCore;->getOrAddLabel(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v0

    return-object v0
.end method

.method public getOrAddLabel(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;
    .locals 1
    .parameter "canonicalName"

    .prologue
    .line 4381
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/MailCore;->getOrAddLabel(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v0

    return-object v0
.end method

.method public isSyncConfigKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 4770
    const-string v0, "labelsIncluded"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "labelsPartial"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "conversationAgeDays"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "maxAttachmentSize"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4774
    :cond_0
    const/4 v0, 0x1

    .line 4776
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markConversationDirty(J)V
    .locals 8
    .parameter "conversationId"

    .prologue
    const/4 v5, 0x1

    .line 4781
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4782
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "dirty"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4783
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "conversations"

    const-string v4, "_id = ?"

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 4785
    .local v0, updated:I
    if-nez v0, :cond_0

    .line 4786
    const-string v2, "Gmail"

    const-string v3, "Failed to mark conversation as dirty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4788
    :cond_0
    return-void
.end method

.method public notifyConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V
    .locals 6
    .parameter "conversationId"
    .parameter "rationale"

    .prologue
    .line 4621
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->access$1300(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteTransactionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 4623
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/MailCore;->onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;ZZ)V

    .line 4625
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4627
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4629
    return-void

    .line 4627
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public notifyConversationLoaded(JLcom/google/android/gm/provider/MailSync$SyncRationale;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)V
    .locals 6
    .parameter "conversationId"
    .parameter "rationale"
    .parameter "syncInfo"

    .prologue
    .line 4576
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->access$1300(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteTransactionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 4578
    :try_start_0
    iget-boolean v0, p4, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->normalSync:Z

    if-eqz v0, :cond_0

    .line 4579
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "conversations_to_fetch"

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4598
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "conversations_to_fetch"

    const-string v2, "_id in (SELECT messageId FROM messages WHERE conversation = ?)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4612
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4614
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4616
    return-void

    .line 4603
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "send_without_sync_conversations_to_fetch"

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4605
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "send_without_sync_conversations_to_fetch"

    const-string v2, "_id in (SELECT messageId FROM messages WHERE conversation = ?)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4614
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public notifyMessageDoesNotExist(J)V
    .locals 6
    .parameter "messageId"

    .prologue
    .line 4633
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages_to_fetch"

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4634
    return-void
.end method

.method public notifyMessageNotUpdated(JLjava/lang/String;)V
    .locals 7
    .parameter "messageId"
    .parameter "error"

    .prologue
    .line 4284
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4285
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "error"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4286
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "messages"

    const-string v3, "messageId = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4287
    return-void
.end method

.method public prepare()V
    .locals 1

    .prologue
    .line 4268
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 4269
    return-void
.end method

.method public provideOperations(Lcom/google/android/gm/provider/MailStore$OperationSink;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)V
    .locals 2
    .parameter "sink"
    .parameter "syncInfo"

    .prologue
    .line 4447
    iget-boolean v0, p2, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->normalSync:Z

    if-eqz v0, :cond_0

    .line 4448
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mOperations:Lcom/google/android/gm/provider/Operations;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/gm/provider/Operations;->provideNormalOperations(Lcom/google/android/gm/provider/MailStore$OperationSink;Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)V

    .line 4452
    :goto_0
    return-void

    .line 4450
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mOperations:Lcom/google/android/gm/provider/Operations;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v0, p1, v1, p2}, Lcom/google/android/gm/provider/Operations;->provideOperations(Lcom/google/android/gm/provider/MailStore$OperationSink;Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)V

    goto :goto_0
.end method

.method public removeCustomFromPreference(Ljava/lang/String;)V
    .locals 2
    .parameter "preferenceName"

    .prologue
    .line 4436
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->access$400(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gm/provider/MailCore;->removeCustomFromPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 4437
    return-void
.end method

.method public removeOperationByMessageId(J)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 4720
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mOperations:Lcom/google/android/gm/provider/Operations;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/provider/Operations;->deleteOperationsForMessageId(J)V

    .line 4721
    return-void
.end method

.method public removeOperations(J)V
    .locals 6
    .parameter "maxOperationId"

    .prologue
    .line 4715
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "operations"

    const-string v2, "_id <= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4716
    return-void
.end method

.method public renameLabel(Lcom/google/android/gm/provider/MailCore$Label;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .parameter "label"
    .parameter "canonicalName"
    .parameter "name"
    .parameter "color"
    .parameter "visibility"

    .prologue
    .line 4369
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->access$1300(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteTransactionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 4371
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/MailCore;->renameLabel(Lcom/google/android/gm/provider/MailCore$Label;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 4372
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailCore;->onLabelsChanged()V

    .line 4373
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4375
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4377
    return-void

    .line 4375
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public setCustomFromPreference(Ljava/util/Map;Z)V
    .locals 2
    .parameter
    .parameter "isStartSync"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/MailStore$CustomFromPreference;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 4425
    .local p1, fromPreferences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/MailStore$CustomFromPreference;>;"
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->access$400(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gm/provider/MailCore;->setCustomFromPreference(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 4426
    return-void
.end method

.method public setCustomLabelColorPreference(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4419
    .local p1, colorPreferences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;>;"
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->access$400(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gm/provider/MailCore;->setCustomLabelColorPreference(Ljava/lang/String;Ljava/util/Map;)V

    .line 4420
    return-void
.end method

.method public setInfoOverloadEnabledPreference(Ljava/lang/String;)V
    .locals 1
    .parameter "infoOverloadEnabledPref"

    .prologue
    .line 4441
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/MailCore;->setInfoOverloadEnabledPreference(Ljava/lang/String;)V

    .line 4442
    return-void
.end method

.method public setLabelCounts(Lcom/google/android/gm/provider/MailCore$Label;IIILjava/lang/String;)V
    .locals 6
    .parameter "label"
    .parameter "conversations"
    .parameter "unreadConversations"
    .parameter "color"
    .parameter "visibility"

    .prologue
    .line 4412
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/MailCore;->setLabelCounts(Lcom/google/android/gm/provider/MailCore$Label;IIILjava/lang/String;)V

    .line 4414
    return-void
.end method

.method public setLabelOnMessages(JLjava/util/List;Lcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/MailSync$SyncRationale;)V
    .locals 10
    .parameter "conversationId"
    .parameter
    .parameter "label"
    .parameter "on"
    .parameter "rationale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gm/provider/MailCore$Label;",
            "Z",
            "Lcom/google/android/gm/provider/MailSync$SyncRationale;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4292
    .local p3, messageIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->access$1300(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteTransactionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 4294
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local p3           #messageIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 4295
    .local v1, messageId:J
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    sget-object v5, Lcom/google/android/gm/provider/Operations$RecordHistory;->FALSE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-object v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/MailCore;->setLabelOnMessage(JLcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4302
    .end local v1           #messageId:J
    .end local v9           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 4298
    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-wide v4, p1

    move-object/from16 v6, p6

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gm/provider/MailCore;->onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;ZZ)V

    .line 4300
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4302
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4304
    return-void
.end method

.method public setLabels(Ljava/util/Map;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/MailStore$LabelInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4313
    .local p1, labelInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/MailStore$LabelInfo;>;"
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->access$1300(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteTransactionListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 4315
    :try_start_0
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 4322
    .local v9, mutableLabelInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/MailStore$LabelInfo;>;"
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailCore;->getAllLabels()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/MailCore$Label;

    .line 4323
    .local v1, label:Lcom/google/android/gm/provider/MailCore$Label;
    iget-wide v2, v1, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v2, v1, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v2, v3}, Lcom/google/android/gm/provider/MailCore;->isLabelIdLocal(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4325
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailCore;->deleteLabel(Lcom/google/android/gm/provider/MailCore$Label;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4350
    .end local v1           #label:Lcom/google/android/gm/provider/MailCore$Label;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v9           #mutableLabelInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/MailStore$LabelInfo;>;"
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 4329
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v9       #mutableLabelInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/MailStore$LabelInfo;>;"
    :cond_1
    :try_start_1
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 4332
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/gm/provider/MailStore$LabelInfo;>;"
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gm/provider/MailCore;->getLabelOrThrow(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v1

    .line 4333
    .restart local v1       #label:Lcom/google/android/gm/provider/MailCore$Label;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gm/provider/MailStore$LabelInfo;

    .line 4334
    .local v8, info:Lcom/google/android/gm/provider/MailStore$LabelInfo;
    iget-object v0, v8, Lcom/google/android/gm/provider/MailStore$LabelInfo;->canonicalName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailCore;->isCanonicalLabelNameLocal(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v2, v1, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v2, v3}, Lcom/google/android/gm/provider/MailCore;->isLabelIdLocal(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4336
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server label appears to be local: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v1, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcom/google/android/gm/provider/MailStore$LabelInfo;->canonicalName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4340
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    iget-object v2, v8, Lcom/google/android/gm/provider/MailStore$LabelInfo;->canonicalName:Ljava/lang/String;

    iget-object v3, v8, Lcom/google/android/gm/provider/MailStore$LabelInfo;->name:Ljava/lang/String;

    iget v4, v8, Lcom/google/android/gm/provider/MailStore$LabelInfo;->color:I

    iget-object v5, v8, Lcom/google/android/gm/provider/MailStore$LabelInfo;->visibility:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/MailCore;->renameLabel(Lcom/google/android/gm/provider/MailCore$Label;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 4342
    iget v2, v8, Lcom/google/android/gm/provider/MailStore$LabelInfo;->numConversations:I

    iget v3, v8, Lcom/google/android/gm/provider/MailStore$LabelInfo;->numUnreadConversations:I

    iget v4, v8, Lcom/google/android/gm/provider/MailStore$LabelInfo;->color:I

    iget-object v5, v8, Lcom/google/android/gm/provider/MailStore$LabelInfo;->visibility:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->setLabelCounts(Lcom/google/android/gm/provider/MailCore$Label;IIILjava/lang/String;)V

    goto :goto_1

    .line 4346
    .end local v1           #label:Lcom/google/android/gm/provider/MailCore$Label;
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/gm/provider/MailStore$LabelInfo;>;"
    .end local v8           #info:Lcom/google/android/gm/provider/MailStore$LabelInfo;
    :cond_4
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailCore;->onLabelsChanged()V

    .line 4347
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->access$000(Lcom/google/android/gm/provider/MailEngine;)V

    .line 4348
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4350
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4352
    return-void
.end method

.method public setServerPreferences(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4431
    .local p1, serverPreferences:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->access$400(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gm/provider/MailCore;->setServerPreferences(Ljava/lang/String;Ljava/util/Map;)V

    .line 4432
    return-void
.end method

.method public setSettings(Ljava/util/Map;Z)V
    .locals 7
    .parameter
    .parameter "configChanged"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 4094
    .local p1, settings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v3, v3, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v4}, Lcom/google/android/gm/provider/MailEngine;->access$1300(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteTransactionListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 4095
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v3, v3, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 4097
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4098
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->isSyncConfigKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4099
    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gm/provider/MailEngine;->setInternalSetting(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 4107
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v4, v4, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4108
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v4, v4, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 4101
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4104
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v3, v3, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 4105
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v3, v3, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4107
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v3, v3, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4108
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v3, v3, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4113
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v3, v3, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    if-eqz v3, :cond_2

    .line 4114
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v3, v3, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v4, v4, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/MailSync;->getServerVersion()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gm/provider/MailCore;->setServerVersion(J)V

    .line 4115
    if-eqz p2, :cond_2

    .line 4116
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v3}, Lcom/google/android/gm/provider/MailEngine;->access$1400(Lcom/google/android/gm/provider/MailEngine;)V

    .line 4120
    :cond_2
    if-eqz p2, :cond_3

    .line 4121
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4122
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "syncRationale"

    sget-object v4, Lcom/google/android/gm/provider/MailSync$SyncRationale;->UNKNOWN:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/MailSync$SyncRationale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4124
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v3, v3, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "conversations"

    const-string v5, "queryId = 0"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4125
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v3}, Lcom/google/android/gm/provider/MailEngine;->access$300(Lcom/google/android/gm/provider/MailEngine;)V

    .line 4128
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_3
    const-string v3, "lowestMessageIdInDuration"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4134
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/MailEngine;->purgeStaleMessagesOutsideTransaction()Z

    .line 4136
    :cond_4
    return-void
.end method

.method public updateSentOrSavedMessage(JJJ)V
    .locals 19
    .parameter "prevMessageId"
    .parameter "messageId"
    .parameter "conversationId"

    .prologue
    .line 4197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v6, v0

    invoke-static {v6}, Lcom/google/android/gm/provider/MailEngine;->access$1300(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteTransactionListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V

    .line 4199
    const-wide/16 v15, 0x0

    .line 4200
    .local v15, localMessageId:J
    const-wide/16 v6, 0x0

    .line 4203
    .local v6, oldConversationId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v5, v0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v8

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gm/provider/MailEngine;->getMessageCursorForMessageId([Ljava/lang/String;J)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v14

    .line 4205
    .local v14, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 4221
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4264
    :goto_0
    return-void

    .line 4214
    :cond_0
    :try_start_3
    const-string v5, "_id"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 4215
    const-string v5, "conversation"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 4217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v5, v0

    const/4 v8, 0x1

    invoke-static {v5, v14, v8}, Lcom/google/android/gm/provider/MailEngine;->access$1500(Lcom/google/android/gm/provider/MailEngine;Landroid/database/Cursor;Z)Lcom/google/android/gm/provider/MailSync$Message;

    move-result-object v18

    .line 4218
    .local v18, prevMessage:Lcom/google/android/gm/provider/MailSync$Message;
    move-wide/from16 v0, p3

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    .line 4219
    move-wide/from16 v0, p5

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/google/android/gm/provider/MailSync$Message;->conversationId:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4221
    :try_start_4
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 4226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v5, v0

    invoke-static {v5}, Lcom/google/android/gm/provider/MailEngine;->access$1600(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/AttachmentManager;

    move-result-object v5

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    move-wide v8, v0

    move-object v0, v5

    move-wide/from16 v1, p1

    move-wide v3, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gm/provider/AttachmentManager;->updateMessageId(JJ)V

    .line 4227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gm/provider/MailEngine;->mOperations:Lcom/google/android/gm/provider/Operations;

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    move-wide v8, v0

    move-object v0, v5

    move-wide/from16 v1, p1

    move-wide v3, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gm/provider/Operations;->updateMessageId(JJ)V

    .line 4235
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    .line 4236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Long;

    const/4 v9, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/gm/provider/MailCore;->expungeMessagesWithoutWritingOperations(JLjava/util/List;)V

    .line 4238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    sget-object v8, Lcom/google/android/gm/provider/MailSync$SyncRationale;->UNKNOWN:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gm/provider/MailCore;->onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;ZZ)V

    .line 4245
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    const-string v8, "^^out"

    invoke-virtual {v5, v8}, Lcom/google/android/gm/provider/MailCore;->getLabelOrThrow(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v17

    .line 4246
    .local v17, outboxLabel:Lcom/google/android/gm/provider/MailCore$Label;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->labelIds:Ljava/util/Set;

    move-object v5, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    move-wide v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4247
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->labelIds:Ljava/util/Set;

    move-object v5, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    move-wide v8, v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4248
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->labelIds:Ljava/util/Set;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    const-string v9, "^f"

    invoke-virtual {v8, v9}, Lcom/google/android/gm/provider/MailCore;->getLabelOrThrow(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v8

    iget-wide v8, v8, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4253
    :cond_2
    const/4 v12, 0x1

    sget-object v13, Lcom/google/android/gm/provider/MailEngine$ClientCreated;->CLIENT_CREATED:Lcom/google/android/gm/provider/MailEngine$ClientCreated;

    move-object/from16 v8, p0

    move-object/from16 v9, v18

    move-wide v10, v15

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->addOrUpdateMessageNoNotifyWithoutWritingOperations(Lcom/google/android/gm/provider/MailSync$Message;JZLcom/google/android/gm/provider/MailEngine$ClientCreated;)V

    .line 4256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v5, v0

    iget-object v8, v5, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->conversationId:J

    move-wide v9, v0

    sget-object v11, Lcom/google/android/gm/provider/MailSync$SyncRationale;->UNKNOWN:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gm/provider/MailCore;->onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;ZZ)V

    .line 4260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 4221
    .end local v17           #outboxLabel:Lcom/google/android/gm/provider/MailCore$Label;
    .end local v18           #prevMessage:Lcom/google/android/gm/provider/MailSync$Message;
    :catchall_0
    move-exception v5

    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4262
    .end local v14           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    move-object v6, v0

    .end local v6           #oldConversationId:J
    iget-object v6, v6, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public wipeAndResync(Ljava/lang/String;)V
    .locals 1
    .parameter "reason"

    .prologue
    .line 4089
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0, p1}, Lcom/google/android/gm/provider/MailEngine;->access$1200(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;)V

    .line 4090
    return-void
.end method

.method public yieldForContention()Z
    .locals 1

    .prologue
    .line 4279
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    move-result v0

    return v0
.end method
