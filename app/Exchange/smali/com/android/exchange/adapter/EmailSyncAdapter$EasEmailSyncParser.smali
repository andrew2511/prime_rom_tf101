.class public Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "EmailSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/EmailSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EasEmailSyncParser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;
    }
.end annotation


# instance fields
.field changedEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;",
            ">;"
        }
    .end annotation
.end field

.field deletedEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field fetchedEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ">;"
        }
    .end annotation
.end field

.field private mMailboxIdAsString:Ljava/lang/String;

.field newEmails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/EmailSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/EmailSyncAdapter;)V
    .locals 2
    .parameter
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    .line 255
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newEmails:Ljava/util/ArrayList;

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->fetchedEmails:Ljava/util/ArrayList;

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->deletedEmails:Ljava/util/ArrayList;

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    .line 256
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailboxIdAsString:Ljava/lang/String;

    .line 257
    return-void
.end method

.method private addParser()Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 418
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 419
    .local v0, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 420
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    iput-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 421
    iput v4, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 423
    const/4 v1, 0x1

    .line 425
    .local v1, status:I
    :goto_0
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 426
    iget v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v2, :sswitch_data_0

    .line 437
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 428
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    goto :goto_0

    .line 431
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v1

    .line 432
    goto :goto_0

    .line 434
    :sswitch_2
    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->addData(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_0

    .line 441
    :cond_0
    if-eq v1, v4, :cond_1

    .line 442
    new-instance v2, Lcom/android/exchange/adapter/AbstractSyncAdapter$SyncStatusException;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/android/exchange/adapter/AbstractSyncAdapter$SyncStatusException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 444
    :cond_1
    return-object v0

    .line 426
    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0x1d -> :sswitch_2
    .end sparse-switch
.end method

.method private attachmentAmountOverLimit(Ljava/util/ArrayList;)Z
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, newEmails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Message;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 741
    const/16 v0, 0x64

    .line 742
    .local v0, AMOUNT_LIMIT:I
    const/4 v1, 0x0

    .line 743
    .local v1, attachmentAmount:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 744
    .local v3, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v4, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 745
    .local v4, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    if-eqz v4, :cond_0

    .line 746
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_0

    .line 749
    .end local v3           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v4           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    :cond_1
    new-array v5, v9, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attachment amount for this commit:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 750
    const/16 v5, 0x64

    if-le v1, v5, :cond_2

    move v5, v9

    :goto_1
    return v5

    :cond_2
    move v5, v8

    goto :goto_1
.end method

.method private attachmentParser(Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 7
    .parameter
    .parameter "msg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    .local p1, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    const/4 v2, 0x0

    .line 528
    .local v2, fileName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 529
    .local v3, length:Ljava/lang/String;
    const/4 v4, 0x0

    .line 530
    .local v4, location:Ljava/lang/String;
    const/4 v1, 0x0

    .line 532
    .local v1, contentId:Ljava/lang/String;
    :goto_0
    const/16 v5, 0x85

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 533
    iget v5, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v5, :sswitch_data_0

    .line 552
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 537
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 538
    goto :goto_0

    .line 541
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 542
    goto :goto_0

    .line 545
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 546
    goto :goto_0

    .line 549
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 550
    goto :goto_0

    .line 556
    :cond_0
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 557
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 558
    .local v0, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const-string v5, "base64"

    iput-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mEncoding:Ljava/lang/String;

    .line 559
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 560
    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 561
    iput-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    .line 562
    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getMimeTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 563
    iget-object v5, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v5, v5, Lcom/android/exchange/EasSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    .line 564
    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    .line 565
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    const/4 v5, 0x1

    iput-boolean v5, p2, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 568
    .end local v0           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_1
    return-void

    .line 533
    :sswitch_data_0
    .sparse-switch
        0x87 -> :sswitch_1
        0x88 -> :sswitch_2
        0x89 -> :sswitch_3
        0x90 -> :sswitch_0
        0x44c -> :sswitch_2
        0x450 -> :sswitch_0
        0x451 -> :sswitch_1
        0x453 -> :sswitch_3
    .end sparse-switch
.end method

.method private attachmentPostHandling(Ljava/util/ArrayList;)V
    .locals 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 787
    .local p1, newEmails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Message;>;"
    const/4 v3, 0x0

    .line 788
    .local v3, batchCount:I
    const/16 v0, 0x64

    .line 789
    .local v0, BATCH_AMOUNT:I
    const/16 v1, 0x7d0

    .line 791
    .local v1, GC_SLEEP_TIME:I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 792
    .local v9, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    iget-object v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    if-eqz v11, :cond_0

    .line 793
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 795
    .local v10, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "The amount of attachments needs post handling:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v11}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 796
    invoke-direct {p0, v9}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->findMessageid(Lcom/android/emailcommon/provider/EmailContent$Message;)J

    move-result-wide v7

    .line 797
    .local v7, messageKey:J
    const-wide/16 v11, 0x0

    cmp-long v11, v7, v11

    if-nez v11, :cond_1

    .line 799
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "Fail to find message key"

    aput-object v13, v11, v12

    invoke-virtual {p0, v11}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 802
    :cond_1
    iget-object v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 803
    .local v2, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iput-wide v7, v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 804
    sget-object v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toContentValues()Landroid/content/ContentValues;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    add-int/lit8 v3, v3, 0x1

    .line 808
    const/16 v11, 0x64

    if-lt v3, v11, :cond_2

    .line 810
    :try_start_0
    iget-object v11, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const-string v12, "com.android.email.provider"

    invoke-virtual {v11, v12, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 811
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 812
    const/4 v3, 0x0

    .line 813
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 814
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "Sleep for GC"

    aput-object v13, v11, v12

    invoke-virtual {p0, v11}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 816
    const-wide/16 v11, 0x7d0

    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 817
    :catch_0
    move-exception v11

    move-object v4, v11

    .line 818
    .local v4, e:Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 819
    .end local v4           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v11

    move-object v4, v11

    .line 820
    .local v4, e:Landroid/os/RemoteException;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Attachment post handling fail:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v11}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    goto :goto_1

    .line 822
    .end local v4           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v11

    move-object v4, v11

    .line 823
    .local v4, e:Landroid/content/OperationApplicationException;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Attachment post handling fail:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v11}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 829
    .end local v2           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v4           #e:Landroid/content/OperationApplicationException;
    :cond_3
    if-eqz v3, :cond_0

    .line 830
    :try_start_1
    iget-object v11, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const-string v12, "com.android.email.provider"

    invoke-virtual {v11, v12, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_0

    .line 832
    :catch_3
    move-exception v11

    move-object v4, v11

    .line 833
    .local v4, e:Landroid/os/RemoteException;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Attachment post handling fail:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v11}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 835
    .end local v4           #e:Landroid/os/RemoteException;
    :catch_4
    move-exception v11

    move-object v4, v11

    .line 836
    .local v4, e:Landroid/content/OperationApplicationException;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Attachment post handling fail:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v11}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 842
    .end local v4           #e:Landroid/content/OperationApplicationException;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #messageKey:J
    .end local v9           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v10           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_4
    return-void
.end method

.method private attachmentsParser(Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 2
    .parameter
    .parameter "msg"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;",
            "Lcom/android/emailcommon/provider/EmailContent$Message;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 514
    .local p1, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    :goto_0
    const/16 v0, 0x86

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 515
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v0, :sswitch_data_0

    .line 521
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 518
    :sswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->attachmentParser(Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_0

    .line 524
    :cond_0
    return-void

    .line 515
    nop

    :sswitch_data_0
    .sparse-switch
        0x85 -> :sswitch_0
        0x44f -> :sswitch_0
    .end sparse-switch
.end method

.method private bodyParser(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 4
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    const-string v1, "1"

    .line 464
    .local v1, bodyType:Ljava/lang/String;
    const-string v0, ""

    .line 465
    .local v0, body:Ljava/lang/String;
    :goto_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 466
    iget v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v2, :sswitch_data_0

    .line 474
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 468
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 469
    goto :goto_0

    .line 471
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 472
    goto :goto_0

    .line 478
    :cond_0
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 479
    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 483
    :goto_1
    return-void

    .line 481
    :cond_1
    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    goto :goto_1

    .line 466
    :sswitch_data_0
    .sparse-switch
        0x446 -> :sswitch_0
        0x44b -> :sswitch_1
    .end sparse-switch
.end method

.method private changeApplicationDataParser(Ljava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;J)V
    .locals 6
    .parameter
    .parameter "oldRead"
    .parameter "oldFlag"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;>;"
    const/4 v2, 0x1

    .line 674
    const/4 v4, 0x0

    .line 675
    .local v4, read:Ljava/lang/Boolean;
    const/4 v5, 0x0

    .line 676
    .local v5, flag:Ljava/lang/Boolean;
    :goto_0
    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 677
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v0, :sswitch_data_0

    .line 685
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 679
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 680
    goto :goto_0

    .line 679
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 682
    :sswitch_1
    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->flagParser()Ljava/lang/Boolean;

    move-result-object v5

    .line 683
    goto :goto_0

    .line 688
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {p2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz v5, :cond_4

    invoke-virtual {p3, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 690
    :cond_3
    new-instance v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;

    move-object v1, p0

    move-wide v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;-><init>(Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;JLjava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    :cond_4
    return-void

    .line 677
    nop

    :sswitch_data_0
    .sparse-switch
        0x95 -> :sswitch_0
        0xba -> :sswitch_1
    .end sparse-switch
.end method

.method private findMessageid(Lcom/android/emailcommon/provider/EmailContent$Message;)J
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 757
    const-wide/16 v7, 0x0

    .line 758
    .local v7, retVal:J
    new-array v2, v13, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v12

    .line 761
    .local v2, projection:[Ljava/lang/String;
    const-string v9, "syncServerId=? AND accountKey=? AND timeStamp=?"

    .line 765
    .local v9, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "syncServerId=? AND accountKey=? AND timeStamp=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    aput-object v5, v4, v12

    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v13

    const/4 v5, 0x2

    iget-wide v10, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 770
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v13, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 771
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 775
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 776
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 778
    :cond_0
    new-array v0, v13, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Find message key for attachments:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 779
    return-wide v7

    .line 773
    :cond_1
    new-array v0, v13, [Ljava/lang/String;

    const-string v1, "The mail is not the only one!"

    aput-object v1, v0, v12

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private flagParser()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 449
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 450
    .local v0, state:Ljava/lang/Boolean;
    :goto_0
    const/16 v1, 0xba

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 451
    iget v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 456
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 453
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 454
    goto :goto_0

    :cond_0
    move v1, v3

    .line 453
    goto :goto_1

    .line 459
    :cond_1
    return-object v0

    .line 451
    nop

    :pswitch_data_0
    .packed-switch 0xbb
        :pswitch_0
    .end packed-switch
.end method

.method private getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "serverId"
    .parameter "projection"

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 600
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailboxIdAsString:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 601
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "syncServerId=? and mailboxKey=?"

    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v4, v2, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private meetingRequestParser(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 3
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    new-instance v0, Lcom/android/emailcommon/mail/PackedString$Builder;

    invoke-direct {v0}, Lcom/android/emailcommon/mail/PackedString$Builder;-><init>()V

    .line 354
    .local v0, packedString:Lcom/android/emailcommon/mail/PackedString$Builder;
    :goto_0
    const/16 v1, 0xa2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 355
    iget v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v1, :sswitch_data_0

    .line 385
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 357
    :sswitch_0
    const-string v1, "DTSTAMP"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :sswitch_1
    const-string v1, "DTSTART"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :sswitch_2
    const-string v1, "DTEND"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 366
    :sswitch_3
    const-string v1, "ORGMAIL"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 369
    :sswitch_4
    const-string v1, "LOC"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :sswitch_5
    const-string v1, "UID"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/utility/CalendarUtilities;->getUidFromGlobalObjId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 376
    :sswitch_6
    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nullParser()V

    goto :goto_0

    .line 379
    :sswitch_7
    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->recurrencesParser()V

    goto :goto_0

    .line 382
    :sswitch_8
    const-string v1, "RESPONSE"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :cond_0
    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 389
    const-string v1, "TITLE"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/mail/PackedString$Builder;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_1
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/PackedString$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMeetingInfo:Ljava/lang/String;

    .line 392
    return-void

    .line 355
    nop

    :sswitch_data_0
    .sparse-switch
        0x9b -> :sswitch_6
        0x9d -> :sswitch_0
        0x9e -> :sswitch_2
        0xa1 -> :sswitch_4
        0xa3 -> :sswitch_3
        0xa6 -> :sswitch_8
        0xa7 -> :sswitch_7
        0xb1 -> :sswitch_1
        0xb4 -> :sswitch_5
    .end sparse-switch
.end method

.method private mimeBodyParser(Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/lang/String;)V
    .locals 7
    .parameter "msg"
    .parameter "mimeData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 495
    .local v2, in:Ljava/io/ByteArrayInputStream;
    new-instance v3, Lcom/android/emailcommon/internet/MimeMessage;

    invoke-direct {v3, v2}, Lcom/android/emailcommon/internet/MimeMessage;-><init>(Ljava/io/InputStream;)V

    .line 497
    .local v3, mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 499
    .local v5, viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 500
    .local v0, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    invoke-static {v3, v5, v0}, Lcom/android/emailcommon/internet/MimeUtility;->collectParts(Lcom/android/emailcommon/mail/Part;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 501
    new-instance v4, Lcom/android/emailcommon/provider/EmailContent$Body;

    invoke-direct {v4}, Lcom/android/emailcommon/provider/EmailContent$Body;-><init>()V

    .line 503
    .local v4, tempBody:Lcom/android/emailcommon/provider/EmailContent$Body;
    invoke-static {v4, p1, v5}, Lcom/android/emailcommon/utility/ConversionUtilities;->updateBodyFields(Lcom/android/emailcommon/provider/EmailContent$Body;Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/util/ArrayList;)Z

    .line 505
    iget-object v6, v4, Lcom/android/emailcommon/provider/EmailContent$Body;->mHtmlContent:Ljava/lang/String;

    iput-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 506
    iget-object v6, v4, Lcom/android/emailcommon/provider/EmailContent$Body;->mTextContent:Ljava/lang/String;

    iput-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    return-void

    .line 507
    .end local v0           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    .end local v2           #in:Ljava/io/ByteArrayInputStream;
    .end local v3           #mimeMessage:Lcom/android/emailcommon/internet/MimeMessage;
    .end local v4           #tempBody:Lcom/android/emailcommon/provider/EmailContent$Body;
    .end local v5           #viewables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Part;>;"
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 509
    .local v1, e:Lcom/android/emailcommon/mail/MessagingException;
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private nullParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    :goto_0
    const/16 v0, 0x9b

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 398
    :cond_0
    return-void
.end method

.method private recurrencesParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    :goto_0
    const/16 v0, 0xa7

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 402
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 407
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 404
    :pswitch_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nullParser()V

    goto :goto_0

    .line 410
    :cond_0
    return-void

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0xa8
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addData(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 10
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v0, atts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    const/4 v4, 0x0

    .line 263
    .local v4, truncated:Z
    :cond_0
    :goto_0
    const/16 v5, 0x1d

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6

    .line 264
    iget v5, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v5, :sswitch_data_0

    .line 336
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 267
    :sswitch_0
    invoke-direct {p0, v0, p1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->attachmentsParser(Ljava/util/ArrayList;Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_0

    .line 270
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/emailcommon/mail/Address;->parseIncludingInformal(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v5

    invoke-static {v5}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    goto :goto_0

    .line 273
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/emailcommon/mail/Address;->parseIncludingInformal(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    .line 274
    .local v1, froms:[Lcom/android/emailcommon/mail/Address;
    if-eqz v1, :cond_1

    array-length v5, v1

    if-lez v5, :cond_1

    .line 275
    aget-object v5, v1, v8

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 277
    :cond_1
    invoke-static {v1}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    goto :goto_0

    .line 280
    .end local v1           #froms:[Lcom/android/emailcommon/mail/Address;
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/emailcommon/mail/Address;->parseIncludingInformal(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v5

    invoke-static {v5}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    goto :goto_0

    .line 283
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/emailcommon/mail/Address;->parseIncludingInformal(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v5

    invoke-static {v5}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    goto :goto_0

    .line 286
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/emailcommon/utility/Utility;->parseEmailDateTimeToMillis(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    goto :goto_0

    .line 289
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    goto :goto_0

    .line 292
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v5

    if-ne v5, v7, :cond_2

    move v5, v7

    :goto_1
    iput-boolean v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    goto :goto_0

    :cond_2
    move v5, v8

    goto :goto_1

    .line 295
    :sswitch_8
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->bodyParser(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto :goto_0

    .line 298
    :sswitch_9
    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->flagParser()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagFavorite:Z

    goto/16 :goto_0

    .line 301
    :sswitch_a
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValueInt()I

    move-result v5

    if-ne v5, v7, :cond_3

    move v4, v7

    .line 302
    :goto_2
    goto/16 :goto_0

    :cond_3
    move v4, v8

    .line 301
    goto :goto_2

    .line 306
    :sswitch_b
    if-eqz v4, :cond_4

    .line 312
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    .line 313
    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "Partially loaded: "

    aput-object v6, v5, v8

    iget-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 314
    iput v9, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 315
    iget-object v5, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-static {v5, v7}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$002(Lcom/android/exchange/adapter/EmailSyncAdapter;Z)Z

    goto/16 :goto_0

    .line 317
    :cond_4
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mimeBodyParser(Lcom/android/emailcommon/provider/EmailContent$Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 321
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 322
    .local v3, text:Ljava/lang/String;
    iput-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    goto/16 :goto_0

    .line 325
    .end local v3           #text:Ljava/lang/String;
    :sswitch_d
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, messageClass:Ljava/lang/String;
    const-string v5, "IPM.Schedule.Meeting.Request"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 327
    iget v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto/16 :goto_0

    .line 328
    :cond_5
    const-string v5, "IPM.Schedule.Meeting.Canceled"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 329
    iget v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    goto/16 :goto_0

    .line 333
    .end local v2           #messageClass:Ljava/lang/String;
    :sswitch_e
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->meetingRequestParser(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    goto/16 :goto_0

    .line 340
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 341
    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 343
    :cond_7
    return-void

    .line 264
    nop

    :sswitch_data_0
    .sparse-switch
        0x86 -> :sswitch_0
        0x8c -> :sswitch_c
        0x8f -> :sswitch_5
        0x93 -> :sswitch_d
        0x94 -> :sswitch_6
        0x95 -> :sswitch_7
        0x96 -> :sswitch_1
        0x97 -> :sswitch_3
        0x98 -> :sswitch_2
        0x99 -> :sswitch_4
        0xa2 -> :sswitch_e
        0xb6 -> :sswitch_b
        0xb7 -> :sswitch_a
        0xba -> :sswitch_9
        0x44a -> :sswitch_8
        0x44e -> :sswitch_0
    .end sparse-switch
.end method

.method changeParser(Ljava/util/ArrayList;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, changes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 643
    const/4 v7, 0x0

    .line 644
    .local v7, serverId:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 645
    .local v2, oldRead:Ljava/lang/Boolean;
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 646
    .local v3, oldFlag:Ljava/lang/Boolean;
    const-wide/16 v4, 0x0

    .line 647
    .local v4, id:J
    :goto_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 648
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    sparse-switch v0, :sswitch_data_0

    .line 667
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 650
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 651
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0, v7, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 653
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v8, "Changing "

    aput-object v8, v0, v1

    const/4 v1, 0x1

    aput-object v7, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 655
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v10, :cond_1

    move v0, v10

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 656
    const/4 v0, 0x6

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v10, :cond_2

    move v0, v10

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 657
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .line 660
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    move v0, v9

    .line 655
    goto :goto_1

    :cond_2
    move v0, v9

    .line 656
    goto :goto_2

    .line 660
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .end local v6           #c:Landroid/database/Cursor;
    :sswitch_1
    move-object v0, p0

    move-object v1, p1

    .line 664
    invoke-direct/range {v0 .. v5}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changeApplicationDataParser(Ljava/util/ArrayList;Ljava/lang/Boolean;Ljava/lang/Boolean;J)V

    goto :goto_0

    .line 670
    :cond_3
    return-void

    .line 648
    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method public commandsParser()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 699
    :goto_0
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 700
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 701
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newEmails:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->addParser()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 703
    :cond_0
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_2

    .line 704
    :cond_1
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->deletedEmails:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    invoke-virtual {p0, v0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->deleteParser(Ljava/util/ArrayList;I)V

    .line 705
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 706
    :cond_2
    iget v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 707
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changeParser(Ljava/util/ArrayList;)V

    .line 708
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->incrementChangeCount()V

    goto :goto_0

    .line 710
    :cond_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 712
    :cond_4
    return-void
.end method

.method public commit()V
    .locals 22

    .prologue
    .line 846
    const/4 v13, 0x0

    .line 850
    .local v13, notifyCount:I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 852
    .local v14, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->fetchedEmails:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 854
    .local v12, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    move-object v0, v12

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mServerId:Ljava/lang/String;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 855
    .local v6, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 857
    .local v10, id:Ljava/lang/String;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 858
    const/16 v17, 0x0

    move-object v0, v6

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 861
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 866
    if-eqz v10, :cond_0

    .line 867
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "Fetched body successfully for "

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v10, v17, v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v10, v17, v18

    .line 869
    sget-object v17, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "messageKey=?"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "textContent"

    move-object v0, v12

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    sget-object v17, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "_id=?"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    const-string v18, "flagLoaded"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 861
    :catchall_0
    move-exception v17

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v17

    .line 881
    .end local v6           #c:Landroid/database/Cursor;
    .end local v10           #id:Ljava/lang/String;
    .end local v12           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newEmails:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->attachmentAmountOverLimit(Ljava/util/ArrayList;)Z

    move-result v5

    .line 882
    .local v5, amountOverLimit:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newEmails:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 883
    .restart local v12       #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    move-object v0, v12

    iget-boolean v0, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 884
    add-int/lit8 v13, v13, 0x1

    .line 886
    :cond_4
    const/4 v15, 0x0

    .line 887
    .local v15, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    if-eqz v5, :cond_5

    .line 888
    iget-object v15, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 889
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object v1, v12

    iput-object v0, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    .line 891
    :cond_5
    invoke-virtual {v12, v14}, Lcom/android/emailcommon/provider/EmailContent$Message;->addSaveOps(Ljava/util/ArrayList;)V

    .line 892
    if-eqz v5, :cond_3

    .line 893
    iput-object v15, v12, Lcom/android/emailcommon/provider/EmailContent$Message;->mAttachments:Ljava/util/ArrayList;

    goto :goto_1

    .line 897
    .end local v12           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v15           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->deletedEmails:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 898
    .local v10, id:Ljava/lang/Long;
    sget-object v17, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    invoke-static/range {v17 .. v19}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    move-wide/from16 v18, v0

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-static/range {v17 .. v21}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    goto :goto_2

    .line 903
    .end local v10           #id:Ljava/lang/Long;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_a

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->changedEmails:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;

    .line 906
    .local v7, change:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 907
    .local v8, cv:Landroid/content/ContentValues;
    move-object v0, v7

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->read:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 908
    const-string v17, "flagRead"

    move-object v0, v7

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->read:Ljava/lang/Boolean;

    move-object/from16 v18, v0

    move-object v0, v8

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 910
    :cond_8
    move-object v0, v7

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flag:Ljava/lang/Boolean;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 911
    const-string v17, "flagFavorite"

    move-object v0, v7

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->flag:Ljava/lang/Boolean;

    move-object/from16 v18, v0

    move-object v0, v8

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 913
    :cond_9
    sget-object v17, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v7

    iget-wide v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;->id:J

    move-wide/from16 v18, v0

    invoke-static/range {v17 .. v19}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 921
    .end local v7           #change:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser$ServerChange;
    .end local v8           #cv:Landroid/content/ContentValues;
    :cond_a
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 922
    .local v11, mailboxValues:Landroid/content/ContentValues;
    const-string v17, "syncKey"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v11

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    sget-object v17, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    move-wide/from16 v18, v0

    invoke-static/range {v17 .. v19}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-static {v0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$200(Lcom/android/exchange/adapter/EmailSyncAdapter;Ljava/util/ArrayList;)V

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17

    .line 931
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v18

    if-eqz v18, :cond_c

    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 962
    :cond_b
    :goto_4
    return-void

    .line 933
    :cond_c
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "com.android.email.provider"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 934
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string v20, " SyncKey saved as: "

    aput-object v20, v18, v19

    const/16 v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V

    .line 936
    if-eqz v5, :cond_d

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->newEmails:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->attachmentPostHandling(Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 944
    :cond_d
    :goto_5
    :try_start_3
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 946
    if-lez v13, :cond_b

    .line 951
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 952
    .restart local v8       #cv:Landroid/content/ContentValues;
    const-string v17, "field"

    const-string v18, "newMessageCount"

    move-object v0, v8

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    const-string v17, "add"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object v0, v8

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 954
    sget-object v17, Lcom/android/emailcommon/provider/EmailContent$Account;->ADD_TO_FIELD_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    move-wide/from16 v18, v0

    invoke-static/range {v17 .. v19}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 955
    .local v16, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object v2, v8

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 957
    :try_start_4
    new-instance v17, Lcom/android/emailcommon/service/AccountServiceProxy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifyNewMessages(J)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_4

    .line 958
    :catch_0
    move-exception v17

    goto/16 :goto_4

    .line 944
    .end local v8           #cv:Landroid/content/ContentValues;
    .end local v16           #uri:Landroid/net/Uri;
    :catchall_1
    move-exception v18

    :try_start_5
    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v18

    .line 941
    :catch_1
    move-exception v18

    goto :goto_5

    .line 939
    :catch_2
    move-exception v18

    goto :goto_5
.end method

.method deleteParser(Ljava/util/ArrayList;I)V
    .locals 6
    .parameter
    .parameter "entryTag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 606
    .local p1, deletes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 607
    iget v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    packed-switch v2, :pswitch_data_0

    .line 625
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->skipTag()V

    goto :goto_0

    .line 609
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 611
    .local v1, serverId:Ljava/lang/String;
    invoke-static {}, Lcom/android/exchange/adapter/EmailSyncAdapter;->access$100()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->getServerIdCursor(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 613
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 614
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    sget-boolean v2, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v2, :cond_0

    .line 616
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Deleting "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    .line 628
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #serverId:Ljava/lang/String;
    :cond_1
    return-void

    .line 607
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public getMimeTypeFromFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "fileName"

    .prologue
    .line 581
    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 582
    .local v1, lastDot:I
    const/4 v0, 0x0

    .line 583
    .local v0, extension:Ljava/lang/String;
    if-lez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_0

    .line 584
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 586
    :cond_0
    if-nez v0, :cond_2

    .line 588
    const-string v2, "application/octet-stream"

    .line 595
    .local v2, mimeType:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 590
    .end local v2           #mimeType:Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 591
    .restart local v2       #mimeType:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 592
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "application/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public responsesParser()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    .line 716
    :cond_0
    :goto_0
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 717
    iget v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    if-eq v1, v5, :cond_0

    iget v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    .line 719
    iget v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->tag:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 721
    :try_start_0
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->fetchedEmails:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->addParser()Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/exchange/adapter/AbstractSyncAdapter$SyncStatusException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 722
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 723
    .local v0, sse:Lcom/android/exchange/adapter/AbstractSyncAdapter$SyncStatusException;
    iget v1, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter$SyncStatusException;->mStatus:I

    if-ne v1, v5, :cond_0

    .line 727
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/exchange/adapter/AbstractSyncAdapter$SyncStatusException;->mServerId:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 728
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mMailboxIdAsString:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 729
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "syncServerId=? and mailboxKey=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->this$0:Lcom/android/exchange/adapter/EmailSyncAdapter;

    iget-object v4, v4, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 735
    .end local v0           #sse:Lcom/android/exchange/adapter/AbstractSyncAdapter$SyncStatusException;
    :cond_1
    return-void
.end method
