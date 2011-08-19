.class public Lcom/google/android/gm/provider/Operations;
.super Ljava/lang/Object;
.source "Operations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/Operations$OperationInfo;,
        Lcom/google/android/gm/provider/Operations$RecordHistory;
    }
.end annotation


# static fields
.field private static final NUM_RETRY_UPHILL_OPS:Ljava/lang/Integer;


# instance fields
.field private final PROJECTION_PROVIDE_OPERATIONS:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mOperationsInserter:Landroid/database/DatabaseUtils$InsertHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Operations;->NUM_RETRY_UPHILL_OPS:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "context"
    .parameter "db"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "message_messageId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "value1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "value2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "numAttempts"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "nextTimeToAttempt"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gm/provider/Operations;->PROJECTION_PROVIDE_OPERATIONS:[Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 105
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    iget-object v1, p0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "operations"

    invoke-direct {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/Operations;->mOperationsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 106
    iput-object p1, p0, Lcom/google/android/gm/provider/Operations;->mContext:Landroid/content/Context;

    .line 107
    return-void
.end method

.method private calculateAndUpdateOpDelay(JJIJLcom/google/android/gm/provider/Operations$OperationInfo;Lcom/google/android/gm/provider/MailEngine$SyncInfo;Lcom/google/android/gm/provider/MailEngine;)J
    .locals 23
    .parameter "currentTime"
    .parameter "operationId"
    .parameter "numAttempts"
    .parameter "nextTimeToAttempt"
    .parameter "opInfo"
    .parameter "syncInfo"
    .parameter "mailEngine"

    .prologue
    .line 457
    move-object/from16 v0, p8

    iget-object v0, v0, Lcom/google/android/gm/provider/Operations$OperationInfo;->mAction:Ljava/lang/String;

    move-object v15, v0

    .line 458
    .local v15, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/Operations;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gmail_delay_bad_op"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move/from16 v17, v3

    .line 461
    .local v17, delayBadOp:Z
    :goto_0
    const-string v3, "Gmail"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 462
    const-string v3, "Gmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateAndUpdateOpDelay: currentTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", nextTimeToAttempt = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", numAttempts = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p9 .. p9}, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_0
    if-eqz v17, :cond_a

    .line 467
    cmp-long v3, p6, p1

    if-lez v3, :cond_2

    const-wide/16 v3, -0x1

    .line 531
    :goto_1
    return-wide v3

    .line 458
    .end local v17           #delayBadOp:Z
    :cond_1
    const/4 v3, 0x0

    move/from16 v17, v3

    goto :goto_0

    .line 468
    .restart local v17       #delayBadOp:Z
    :cond_2
    move-object/from16 v0, p9

    iget-boolean v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->receivedHandledClientOp:Z

    move v3, v0

    if-nez v3, :cond_4

    if-lez p5, :cond_4

    .line 469
    const-string v3, "Gmail"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 470
    const-string v3, "Gmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not retrying this operation id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as we have "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "not received what client operations the server has handled."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_3
    move-object/from16 v0, p10

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    move-object v3, v0

    const-string v4, "unackedSentOperations"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 477
    move-object/from16 v0, p10

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    .line 478
    const-wide/16 v3, -0x1

    goto :goto_1

    .line 481
    :cond_4
    const/4 v3, 0x3

    move/from16 v0, p5

    move v1, v3

    if-lt v0, v1, :cond_9

    .line 484
    const/4 v3, 0x3

    sub-int v21, p5, v3

    .line 485
    .local v21, numBackoffs:I
    const/16 v3, 0x1e

    move/from16 v0, v21

    move v1, v3

    if-gt v0, v1, :cond_6

    .line 486
    const/4 v3, 0x1

    shl-int v3, v3, v21

    mul-int/lit8 v16, v3, 0x1e

    .line 491
    .local v16, delay:I
    :goto_2
    const v3, 0x15180

    move v0, v3

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v3, v3

    add-long v13, p1, v3

    .line 492
    .local v13, newBackOffTime:J
    const-wide/16 v19, -0x1

    .line 493
    .local v19, newOpId:J
    add-int/lit8 v18, p5, 0x1

    .line 494
    .local v18, newAttempts:I
    move-object/from16 v0, p9

    iget-boolean v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->normalSync:Z

    move v3, v0

    if-eqz v3, :cond_8

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    const-string v4, "DELETE FROM operations where _id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/Operations;->doesLabelMatter(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 502
    move-object/from16 v0, p8

    iget-wide v0, v0, Lcom/google/android/gm/provider/Operations$OperationInfo;->mConversationId:J

    move-wide v4, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Lcom/google/android/gm/provider/Operations$OperationInfo;->mMessageId:J

    move-wide v6, v0

    move-object/from16 v0, p8

    iget-object v0, v0, Lcom/google/android/gm/provider/Operations$OperationInfo;->mAction:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Lcom/google/android/gm/provider/Operations$OperationInfo;->mLabelId:J

    move-wide v9, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v11, v0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v14}, Lcom/google/android/gm/provider/Operations;->recordOperationWithLabelId(JJLjava/lang/String;JJJ)J

    move-result-wide v19

    .line 518
    :goto_3
    const-string v3, "Gmail"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 519
    const-string v3, "Gmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Backing off operation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with newAttempts, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", newBackOffTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newOpId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-wide/from16 v3, v19

    .line 523
    goto/16 :goto_1

    .line 489
    .end local v13           #newBackOffTime:J
    .end local v16           #delay:I
    .end local v18           #newAttempts:I
    .end local v19           #newOpId:J
    :cond_6
    const v16, 0x15180

    .restart local v16       #delay:I
    goto/16 :goto_2

    .line 506
    .restart local v13       #newBackOffTime:J
    .restart local v18       #newAttempts:I
    .restart local v19       #newOpId:J
    :cond_7
    move-object/from16 v0, p8

    iget-wide v0, v0, Lcom/google/android/gm/provider/Operations$OperationInfo;->mConversationId:J

    move-wide v6, v0

    move-object/from16 v0, p8

    iget-wide v0, v0, Lcom/google/android/gm/provider/Operations$OperationInfo;->mMessageId:J

    move-wide v8, v0

    move-object/from16 v0, p8

    iget-object v0, v0, Lcom/google/android/gm/provider/Operations$OperationInfo;->mAction:Ljava/lang/String;

    move-object v10, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide v11, v0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v14}, Lcom/google/android/gm/provider/Operations;->recordOperation(JJLjava/lang/String;JJ)J

    move-result-wide v19

    goto :goto_3

    .line 512
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    const-string v4, "DELETE FROM operations where _id = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    new-instance v4, Lcom/google/android/gm/provider/Operations$OperationInfo;

    move-object/from16 v0, p9

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->conversationId:J

    move-wide v5, v0

    move-object/from16 v0, p9

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->messageId:J

    move-wide v7, v0

    move-object/from16 v0, p8

    iget-object v0, v0, Lcom/google/android/gm/provider/Operations$OperationInfo;->mAction:Ljava/lang/String;

    move-object v9, v0

    const-wide/16 v10, 0x0

    move/from16 v12, v18

    invoke-direct/range {v4 .. v14}, Lcom/google/android/gm/provider/Operations$OperationInfo;-><init>(JJLjava/lang/String;JIJ)V

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Operations;->incrementAndAddOperations(Lcom/google/android/gm/provider/Operations$OperationInfo;)J

    move-result-wide v19

    goto/16 :goto_3

    .line 525
    .end local v13           #newBackOffTime:J
    .end local v16           #delay:I
    .end local v18           #newAttempts:I
    .end local v19           #newOpId:J
    .end local v21           #numBackoffs:I
    :cond_9
    const/4 v3, 0x2

    move v0, v3

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v3, 0x0

    add-int/lit8 v4, p5, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v22, v3

    const/4 v3, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v22, v3

    .line 527
    .local v22, params:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    const-string v4, "UPDATE operations SET numAttempts = ? WHERE _id = ?"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v22           #params:[Ljava/lang/String;
    :cond_a
    move-wide/from16 v3, p3

    .line 531
    goto/16 :goto_1
.end method

.method private checkForMessageToDiscard(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 16
    .parameter "mailEngine"

    .prologue
    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/Operations;->mContext:Landroid/content/Context;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 546
    .local v1, contentResolver:Landroid/content/ContentResolver;
    const-string v12, "gmail_num_retry_uphill_op"

    sget-object v13, Lcom/google/android/gm/provider/Operations;->NUM_RETRY_UPHILL_OPS:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v1, v12, v13}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 550
    .local v9, numRetryUphillOp:Ljava/lang/Integer;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/Operations;->nextOperationId()I

    move-result v5

    .line 551
    .local v5, nextOp:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    move-object v12, v0

    const-string v13, "nextUnackedSentOp"

    invoke-virtual {v12, v13}, Lcom/google/android/gm/provider/MailSync;->getIntegerSetting(Ljava/lang/String;)I

    move-result v8

    .line 554
    .local v8, nextUnackedUphillOp:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    move-object v12, v0

    const-string v13, "errorCountNextUnackedSentOp"

    invoke-virtual {v12, v13}, Lcom/google/android/gm/provider/MailSync;->getIntegerSetting(Ljava/lang/String;)I

    move-result v4

    .line 556
    .local v4, errorCount:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    move-object v12, v0

    const-string v13, "nextUnackedOpWriteTime"

    invoke-virtual {v12, v13}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v6

    .line 558
    .local v6, nextOpFirstTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long v2, v12, v14

    .line 559
    .local v2, currentTime:J
    const-string v12, "gmail_wait_time_retry_uphill_op"

    const-wide/32 v13, 0x8e30

    invoke-static {v1, v12, v13, v14}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    .line 566
    .local v10, waitDiscardTime:J
    if-ne v5, v8, :cond_0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lt v4, v12, :cond_0

    sub-long v12, v2, v6

    cmp-long v12, v12, v10

    if-lez v12, :cond_0

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v12, v0

    const-string v13, "operations"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_id == "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 570
    :cond_0
    return-void
.end method

.method private doesLabelMatter(Ljava/lang/String;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 536
    const-string v0, "messageSaved"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "messageSent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "messageExpunged"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    :cond_0
    const/4 v0, 0x0

    .line 541
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static updateLabelId(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    .locals 3
    .parameter "db"
    .parameter "currentLabelId"
    .parameter "newLabelId"

    .prologue
    .line 218
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 219
    .local v0, params:[Ljava/lang/String;
    const-string v1, "UPDATE operations SET value1 = ? WHERE action IN (\'messageLabelAdded\', \'messageLabelRemoved\', \'conversationLabelAdded\', \'conversationLabelRemoved\') AND value1 = ?"

    invoke-virtual {p0, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    return-void
.end method


# virtual methods
.method public deleteOperationsForLabelId(J)V
    .locals 4
    .parameter "labelId"

    .prologue
    .line 208
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 209
    .local v0, labelIdSelectionArgs:[Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "operations"

    const-string v3, "action IN (\'messageLabelAdded\', \'messageLabelRemoved\', \'conversationLabelAdded\', \'conversationLabelRemoved\') AND value1 = ?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 212
    return-void
.end method

.method public deleteOperationsForMessageId(J)V
    .locals 6
    .parameter "messageId"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "operations"

    const-string v2, "message_messageId = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 193
    return-void
.end method

.method public deleteOperationsForMessageIds(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, messageIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const-string v1, ", "

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, joinedMessageIds:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "operations"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message_messageId IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 201
    return-void
.end method

.method public hasUnackedSendOrSaveOperationsForConversation(J)Z
    .locals 8
    .parameter "conversationId"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 124
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT COUNT(*) FROM operations WHERE ACTION IN (\'messageSaved\', \'messageSent\') AND value2 = ?"

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0
.end method

.method public incrementAndAddOperations(Lcom/google/android/gm/provider/Operations$OperationInfo;)J
    .locals 28
    .parameter "opInfo"

    .prologue
    .line 256
    const-wide/16 v18, -0x1

    .line 257
    .local v18, newOpId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 259
    :try_start_0
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v22, opInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/Operations$OperationInfo;>;"
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 261
    .local v2, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v3, "operations"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/Operations;->PROJECTION_PROVIDE_OPERATIONS:[Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 265
    .local v15, cursor:Landroid/database/Cursor;
    const-string v3, "_id"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 266
    .local v25, operationIdIndex:I
    const-string v3, "action"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 267
    .local v14, actionIndex:I
    const-string v3, "message_messageId"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 268
    .local v17, messageIdIndex:I
    const-string v3, "value1"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 269
    .local v26, value1Index:I
    const-string v3, "value2"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 270
    .local v27, value2Index:I
    const-string v3, "numAttempts"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 271
    .local v21, numAttemptsIndex:I
    const-string v3, "nextTimeToAttempt"

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 273
    .local v20, nextTimeToAttemptIndex:I
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    move-object v0, v15

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 275
    .local v24, operationId:I
    invoke-interface {v15, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 276
    .local v8, currentAction:Ljava/lang/String;
    move-object v0, v15

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 277
    .local v6, currentMessageId:J
    move-object v0, v15

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 278
    .local v11, currentNumAttempts:I
    move-object v0, v15

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 279
    .local v12, currentNextTimeToAttempt:J
    move-object v0, v15

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 280
    .local v4, currentConversationId:J
    move-object v0, v15

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 281
    .local v9, currentLabelId:J
    new-instance v3, Lcom/google/android/gm/provider/Operations$OperationInfo;

    invoke-direct/range {v3 .. v13}, Lcom/google/android/gm/provider/Operations$OperationInfo;-><init>(JJLjava/lang/String;JIJ)V

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 300
    .end local v2           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v4           #currentConversationId:J
    .end local v6           #currentMessageId:J
    .end local v8           #currentAction:Ljava/lang/String;
    .end local v9           #currentLabelId:J
    .end local v11           #currentNumAttempts:I
    .end local v12           #currentNextTimeToAttempt:J
    .end local v14           #actionIndex:I
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v17           #messageIdIndex:I
    .end local v20           #nextTimeToAttemptIndex:I
    .end local v21           #numAttemptsIndex:I
    .end local v22           #opInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/Operations$OperationInfo;>;"
    .end local v24           #operationId:I
    .end local v25           #operationIdIndex:I
    .end local v26           #value1Index:I
    .end local v27           #value2Index:I
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3

    .line 285
    .restart local v2       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v14       #actionIndex:I
    .restart local v15       #cursor:Landroid/database/Cursor;
    .restart local v17       #messageIdIndex:I
    .restart local v20       #nextTimeToAttemptIndex:I
    .restart local v21       #numAttemptsIndex:I
    .restart local v22       #opInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/Operations$OperationInfo;>;"
    .restart local v25       #operationIdIndex:I
    .restart local v26       #value1Index:I
    .restart local v27       #value2Index:I
    :cond_0
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    const-string v4, "DELETE FROM operations"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gm/provider/Operations;->recordOperation(Lcom/google/android/gm/provider/Operations$OperationInfo;)J

    move-result-wide v18

    .line 294
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/android/gm/provider/Operations$OperationInfo;

    .line 295
    .local v23, opInfoToRecord:Lcom/google/android/gm/provider/Operations$OperationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Operations;->recordOperation(Lcom/google/android/gm/provider/Operations$OperationInfo;)J

    goto :goto_1

    .line 297
    .end local v23           #opInfoToRecord:Lcom/google/android/gm/provider/Operations$OperationInfo;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 302
    return-wide v18
.end method

.method public nextOperationId()I
    .locals 4

    .prologue
    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT _id FROM operations LIMIT 1"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    long-to-int v1, v1

    .line 241
    :goto_0
    return v1

    .line 240
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 241
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public provideNormalOperations(Lcom/google/android/gm/provider/MailStore$OperationSink;Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)V
    .locals 48
    .parameter "sink"
    .parameter "mailEngine"
    .parameter "syncInfo"

    .prologue
    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/Operations;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gmail_discard_error_uphill_op_old_froyo"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    move/from16 v40, v6

    .line 377
    .local v40, checkDiscard:Z
    :goto_0
    if-eqz v40, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/Operations;->checkForMessageToDiscard(Lcom/google/android/gm/provider/MailEngine;)V

    .line 379
    :cond_0
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 380
    .local v5, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v6, "operations"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 381
    const-string v13, "50"

    .line 382
    .local v13, limit:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/Operations;->PROJECTION_PROVIDE_OPERATIONS:[Ljava/lang/String;

    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "_id"

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v41

    .line 385
    .local v41, cursor:Landroid/database/Cursor;
    const-string v6, "_id"

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 386
    .local v45, operationIdIndex:I
    const-string v6, "action"

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 387
    .local v39, actionIndex:I
    const-string v6, "message_messageId"

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v42

    .line 388
    .local v42, messageIdIndex:I
    const-string v6, "value1"

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v46

    .line 389
    .local v46, value1Index:I
    const-string v6, "value2"

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v47

    .line 390
    .local v47, value2Index:I
    const-string v6, "numAttempts"

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    .line 391
    .local v44, numAttemptsIndex:I
    const-string v6, "nextTimeToAttempt"

    move-object/from16 v0, v41

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 392
    .local v43, nextTimeToAttemptIndex:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long v23, v9, v11

    .line 394
    .local v23, currentTime:J
    :cond_1
    :goto_1
    invoke-interface/range {v41 .. v41}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 395
    move-object/from16 v0, v41

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 396
    .local v25, operationId:J
    move-object/from16 v0, v41

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 397
    .local v19, action:Ljava/lang/String;
    invoke-interface/range {v41 .. v42}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 398
    .local v17, messageId:J
    move-object/from16 v0, v41

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 399
    .local v27, numAttempts:I
    move-object/from16 v0, v41

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 400
    .local v28, nextTimeToAttempt:J
    move-object/from16 v0, v41

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 403
    .local v15, conversationId:J
    move-object/from16 v0, v41

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 404
    .local v20, labelId:J
    new-instance v14, Lcom/google/android/gm/provider/Operations$OperationInfo;

    invoke-direct/range {v14 .. v21}, Lcom/google/android/gm/provider/Operations$OperationInfo;-><init>(JJLjava/lang/String;J)V

    .local v14, opInfo:Lcom/google/android/gm/provider/Operations$OperationInfo;
    move-object/from16 v22, p0

    move-object/from16 v30, v14

    move-object/from16 v31, p3

    move-object/from16 v32, p2

    .line 406
    invoke-direct/range {v22 .. v32}, Lcom/google/android/gm/provider/Operations;->calculateAndUpdateOpDelay(JJIJLcom/google/android/gm/provider/Operations$OperationInfo;Lcom/google/android/gm/provider/MailEngine$SyncInfo;Lcom/google/android/gm/provider/MailEngine;)J

    move-result-wide v7

    .line 409
    .local v7, newOpId:J
    const-wide/16 v9, -0x1

    cmp-long v6, v7, v9

    if-eqz v6, :cond_1

    .line 412
    move-wide/from16 v25, v7

    .line 413
    const-string v6, "messageLabelAdded"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object/from16 v6, p1

    move-wide/from16 v9, v17

    move-wide/from16 v11, v20

    .line 414
    invoke-interface/range {v6 .. v12}, Lcom/google/android/gm/provider/MailStore$OperationSink;->messageLabelAdded(JJJ)V

    goto :goto_1

    .line 373
    .end local v5           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v7           #newOpId:J
    .end local v13           #limit:Ljava/lang/String;
    .end local v14           #opInfo:Lcom/google/android/gm/provider/Operations$OperationInfo;
    .end local v15           #conversationId:J
    .end local v17           #messageId:J
    .end local v19           #action:Ljava/lang/String;
    .end local v20           #labelId:J
    .end local v23           #currentTime:J
    .end local v25           #operationId:J
    .end local v27           #numAttempts:I
    .end local v28           #nextTimeToAttempt:J
    .end local v39           #actionIndex:I
    .end local v40           #checkDiscard:Z
    .end local v41           #cursor:Landroid/database/Cursor;
    .end local v42           #messageIdIndex:I
    .end local v43           #nextTimeToAttemptIndex:I
    .end local v44           #numAttemptsIndex:I
    .end local v45           #operationIdIndex:I
    .end local v46           #value1Index:I
    .end local v47           #value2Index:I
    :cond_2
    const/4 v6, 0x0

    move/from16 v40, v6

    goto/16 :goto_0

    .line 415
    .restart local v5       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v7       #newOpId:J
    .restart local v13       #limit:Ljava/lang/String;
    .restart local v14       #opInfo:Lcom/google/android/gm/provider/Operations$OperationInfo;
    .restart local v15       #conversationId:J
    .restart local v17       #messageId:J
    .restart local v19       #action:Ljava/lang/String;
    .restart local v20       #labelId:J
    .restart local v23       #currentTime:J
    .restart local v25       #operationId:J
    .restart local v27       #numAttempts:I
    .restart local v28       #nextTimeToAttempt:J
    .restart local v39       #actionIndex:I
    .restart local v40       #checkDiscard:Z
    .restart local v41       #cursor:Landroid/database/Cursor;
    .restart local v42       #messageIdIndex:I
    .restart local v43       #nextTimeToAttemptIndex:I
    .restart local v44       #numAttemptsIndex:I
    .restart local v45       #operationIdIndex:I
    .restart local v46       #value1Index:I
    .restart local v47       #value2Index:I
    :cond_3
    const-string v6, "messageLabelRemoved"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object/from16 v30, p1

    move-wide/from16 v31, v25

    move-wide/from16 v33, v17

    move-wide/from16 v35, v20

    .line 416
    invoke-interface/range {v30 .. v36}, Lcom/google/android/gm/provider/MailStore$OperationSink;->messageLabelRemoved(JJJ)V

    goto/16 :goto_1

    .line 417
    :cond_4
    const-string v6, "conversationLabelAdded"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 418
    const/16 v37, 0x1

    move-object/from16 v30, p1

    move-wide/from16 v31, v25

    move-wide/from16 v33, v17

    move-wide/from16 v35, v20

    invoke-interface/range {v30 .. v37}, Lcom/google/android/gm/provider/MailStore$OperationSink;->conversationLabelAddedOrRemoved(JJJZ)V

    goto/16 :goto_1

    .line 420
    :cond_5
    const-string v6, "conversationLabelRemoved"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 421
    const/16 v37, 0x0

    move-object/from16 v30, p1

    move-wide/from16 v31, v25

    move-wide/from16 v33, v17

    move-wide/from16 v35, v20

    invoke-interface/range {v30 .. v37}, Lcom/google/android/gm/provider/MailStore$OperationSink;->conversationLabelAddedOrRemoved(JJJZ)V

    goto/16 :goto_1

    .line 423
    :cond_6
    const-string v6, "messageSaved"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "messageSent"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 425
    :cond_7
    const/4 v6, 0x1

    move-object/from16 v0, p2

    move-wide/from16 v1, v17

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gm/provider/MailEngine;->getMessage(JZ)Lcom/google/android/gm/provider/MailSync$Message;

    move-result-object v33

    .line 426
    .local v33, message:Lcom/google/android/gm/provider/MailSync$Message;
    if-nez v33, :cond_8

    .line 427
    const-string v6, "Gmail"

    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #newOpId:J
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find message with id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for operations!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v6, v0

    const-string v7, "operations"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 434
    .restart local v7       #newOpId:J
    :cond_8
    move-wide/from16 v34, v17

    .line 435
    .local v34, prevMessageId:J
    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->refMessageId:J

    move-wide/from16 v36, v0

    const-string v6, "messageSaved"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    move-object/from16 v30, p1

    move-wide/from16 v31, v25

    invoke-interface/range {v30 .. v38}, Lcom/google/android/gm/provider/MailStore$OperationSink;->messageSavedOrSent(JLcom/google/android/gm/provider/MailSync$Message;JJZ)V

    goto/16 :goto_1

    .line 438
    .end local v33           #message:Lcom/google/android/gm/provider/MailSync$Message;
    .end local v34           #prevMessageId:J
    :cond_9
    const-string v6, "messageExpunged"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 439
    move-object/from16 v0, p1

    move-wide/from16 v1, v25

    move-wide/from16 v3, v17

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gm/provider/MailStore$OperationSink;->messageExpunged(JJ)V

    goto/16 :goto_1

    .line 441
    :cond_a
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #newOpId:J
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 444
    .end local v14           #opInfo:Lcom/google/android/gm/provider/Operations$OperationInfo;
    .end local v15           #conversationId:J
    .end local v17           #messageId:J
    .end local v19           #action:Ljava/lang/String;
    .end local v20           #labelId:J
    .end local v25           #operationId:J
    .end local v27           #numAttempts:I
    .end local v28           #nextTimeToAttempt:J
    :cond_b
    invoke-interface/range {v41 .. v41}, Landroid/database/Cursor;->close()V

    .line 445
    return-void
.end method

.method public provideOperations(Lcom/google/android/gm/provider/MailStore$OperationSink;Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)V
    .locals 34
    .parameter "sink"
    .parameter "mailEngine"
    .parameter "syncInfo"

    .prologue
    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    const-string v6, "SELECT \n  _id,\n  action,\n  numAttempts,\n  nextTimeToAttempt\nFROM\n operations\nWHERE\n  message_messageId = ? AND value2 = ?\n"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->messageId:J

    move-wide v9, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->conversationId:J

    move-wide v9, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v30

    .line 323
    .local v30, cursor:Landroid/database/Cursor;
    const-string v5, "_id"

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 324
    .local v33, operationIdIndex:I
    const-string v5, "action"

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 325
    .local v27, actionIndex:I
    const-string v5, "numAttempts"

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 326
    .local v32, numAttemptsIndex:I
    const-string v5, "nextTimeToAttempt"

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 328
    .local v31, nextTimeToAttemptIndex:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long v28, v5, v7

    .line 331
    .local v28, currentTime:J
    :goto_0
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 332
    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 333
    .local v13, operationId:J
    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 334
    .local v9, action:Ljava/lang/String;
    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 335
    .local v15, numAttempts:I
    invoke-interface/range {v30 .. v31}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 338
    .local v16, nextTimeToAttempt:J
    new-instance v4, Lcom/google/android/gm/provider/Operations$OperationInfo;

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->conversationId:J

    move-wide v5, v0

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->messageId:J

    move-wide v7, v0

    const-wide/16 v10, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gm/provider/Operations$OperationInfo;-><init>(JJLjava/lang/String;J)V

    .line 341
    .local v4, opInfo:Lcom/google/android/gm/provider/Operations$OperationInfo;
    const-string v5, "messageSent"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 365
    .end local v4           #opInfo:Lcom/google/android/gm/provider/Operations$OperationInfo;
    .end local v9           #action:Ljava/lang/String;
    .end local v13           #operationId:J
    .end local v15           #numAttempts:I
    .end local v16           #nextTimeToAttempt:J
    :cond_0
    :goto_1
    return-void

    .restart local v4       #opInfo:Lcom/google/android/gm/provider/Operations$OperationInfo;
    .restart local v9       #action:Ljava/lang/String;
    .restart local v13       #operationId:J
    .restart local v15       #numAttempts:I
    .restart local v16       #nextTimeToAttempt:J
    :cond_1
    move-object/from16 v10, p0

    move-wide/from16 v11, v28

    move-object/from16 v18, v4

    move-object/from16 v19, p3

    move-object/from16 v20, p2

    .line 343
    invoke-direct/range {v10 .. v20}, Lcom/google/android/gm/provider/Operations;->calculateAndUpdateOpDelay(JJIJLcom/google/android/gm/provider/Operations$OperationInfo;Lcom/google/android/gm/provider/MailEngine$SyncInfo;Lcom/google/android/gm/provider/MailEngine;)J

    move-result-wide v19

    .line 345
    .local v19, newOpId:J
    const-wide/16 v5, -0x1

    cmp-long v5, v19, v5

    if-eqz v5, :cond_0

    .line 348
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->messageId:J

    move-wide v5, v0

    const/4 v7, 0x1

    move-object/from16 v0, p2

    move-wide v1, v5

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gm/provider/MailEngine;->getMessage(JZ)Lcom/google/android/gm/provider/MailSync$Message;

    move-result-object v21

    .line 350
    .local v21, message:Lcom/google/android/gm/provider/MailSync$Message;
    if-nez v21, :cond_2

    .line 351
    const-string v5, "Gmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot find message with id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->messageId:J

    move-wide v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for operations!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    const-string v6, "operations"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 359
    :cond_2
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->messageId:J

    move-wide/from16 v22, v0

    .line 360
    .local v22, prevMessageId:J
    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->refMessageId:J

    move-wide/from16 v24, v0

    const/16 v26, 0x0

    move-object/from16 v18, p1

    invoke-interface/range {v18 .. v26}, Lcom/google/android/gm/provider/MailStore$OperationSink;->messageSavedOrSent(JLcom/google/android/gm/provider/MailSync$Message;JJZ)V

    goto/16 :goto_0

    .line 364
    .end local v4           #opInfo:Lcom/google/android/gm/provider/Operations$OperationInfo;
    .end local v9           #action:Ljava/lang/String;
    .end local v13           #operationId:J
    .end local v15           #numAttempts:I
    .end local v16           #nextTimeToAttempt:J
    .end local v19           #newOpId:J
    .end local v21           #message:Lcom/google/android/gm/provider/MailSync$Message;
    .end local v22           #prevMessageId:J
    :cond_3
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public recordOperation(JJLjava/lang/String;)J
    .locals 10
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "action"

    .prologue
    const-wide/16 v6, 0x0

    .line 141
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-wide v8, v6

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gm/provider/Operations;->recordOperation(JJLjava/lang/String;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public recordOperation(JJLjava/lang/String;JJ)J
    .locals 5
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "action"
    .parameter "numAttempts"
    .parameter "nextTimeToAttempt"

    .prologue
    const-wide/16 v3, 0x0

    .line 151
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 152
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "action"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v1, "message_messageId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 154
    const-string v1, "value2"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 155
    cmp-long v1, p6, v3

    if-lez v1, :cond_0

    cmp-long v1, p8, v3

    if-lez v1, :cond_0

    .line 156
    const-string v1, "numAttempts"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 157
    const-string v1, "nextTimeToAttempt"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/provider/Operations;->mOperationsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v1, v0}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public recordOperation(Lcom/google/android/gm/provider/Operations$OperationInfo;)J
    .locals 12
    .parameter "opInfo"

    .prologue
    .line 131
    iget-object v0, p1, Lcom/google/android/gm/provider/Operations$OperationInfo;->mAction:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/Operations;->doesLabelMatter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-wide v1, p1, Lcom/google/android/gm/provider/Operations$OperationInfo;->mConversationId:J

    iget-wide v3, p1, Lcom/google/android/gm/provider/Operations$OperationInfo;->mMessageId:J

    iget-object v5, p1, Lcom/google/android/gm/provider/Operations$OperationInfo;->mAction:Ljava/lang/String;

    iget-wide v6, p1, Lcom/google/android/gm/provider/Operations$OperationInfo;->mLabelId:J

    iget v0, p1, Lcom/google/android/gm/provider/Operations$OperationInfo;->mNumAttempts:I

    int-to-long v8, v0

    iget-wide v10, p1, Lcom/google/android/gm/provider/Operations$OperationInfo;->mNextTimeToAttempt:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/gm/provider/Operations;->recordOperationWithLabelId(JJLjava/lang/String;JJJ)J

    move-result-wide v0

    .line 135
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v1, p1, Lcom/google/android/gm/provider/Operations$OperationInfo;->mConversationId:J

    iget-wide v3, p1, Lcom/google/android/gm/provider/Operations$OperationInfo;->mMessageId:J

    iget-object v5, p1, Lcom/google/android/gm/provider/Operations$OperationInfo;->mAction:Ljava/lang/String;

    iget v0, p1, Lcom/google/android/gm/provider/Operations$OperationInfo;->mNumAttempts:I

    int-to-long v6, v0

    iget-wide v8, p1, Lcom/google/android/gm/provider/Operations$OperationInfo;->mNextTimeToAttempt:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gm/provider/Operations;->recordOperation(JJLjava/lang/String;JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public recordOperationWithLabelId(JJLjava/lang/String;J)J
    .locals 12
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "action"
    .parameter "labelId"

    .prologue
    .line 164
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v11}, Lcom/google/android/gm/provider/Operations;->recordOperationWithLabelId(JJLjava/lang/String;JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public recordOperationWithLabelId(JJLjava/lang/String;JJJ)J
    .locals 3
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "action"
    .parameter "labelId"
    .parameter "numAttempts"
    .parameter "nextTimeToAttempt"

    .prologue
    .line 174
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 175
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "action"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "message_messageId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 177
    const-string v1, "value1"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    const-string v1, "value2"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 179
    const-wide/16 v1, 0x0

    cmp-long v1, p8, v1

    if-lez v1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p10, v1

    if-lez v1, :cond_0

    .line 180
    const-string v1, "numAttempts"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 181
    const-string v1, "nextTimeToAttempt"

    invoke-static {p10, p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/provider/Operations;->mOperationsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v1, v0}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method public updateMessageId(JJ)V
    .locals 5
    .parameter "currentMessageId"
    .parameter "newMessageId"

    .prologue
    .line 228
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 229
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "message_messageId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 230
    iget-object v1, p0, Lcom/google/android/gm/provider/Operations;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "operations"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message_messageId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 231
    return-void
.end method
