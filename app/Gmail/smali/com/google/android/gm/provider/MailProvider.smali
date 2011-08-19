.class public final Lcom/google/android/gm/provider/MailProvider;
.super Landroid/content/ContentProvider;
.source "MailProvider.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/MailProvider$1;,
        Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;
    }
.end annotation


# static fields
.field private static volatile sThis:Lcom/google/android/gm/provider/MailProvider;

.field private static final sUrlMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mBoundAccount:Ljava/lang/String;

.field private mBoundEngine:Lcom/google/android/gm/provider/MailEngine;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 65
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/gm/provider/MailProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    .line 68
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/conversations"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/conversations/labels"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/conversations/#/labels"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/conversations/#/labels/*"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/conversations/#/messages"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/messages"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/messages/#"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 89
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/messages/#/labels"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/messages/#/labels/*"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/messages/labels"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/messages/#/attachments/*/*/*"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/messages/#/attachments/*/*/*/download"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/labels/#"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/labels/*/#"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 113
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/label/#"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/settings"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/unread/*"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    const-string v1, "gmail-ls"

    const-string v2, "*/status"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailProvider;->mBoundAccount:Ljava/lang/String;

    .line 136
    return-void
.end method

.method private static attachmentRequestForUri(Lcom/google/android/gm/provider/MailEngine;Landroid/net/Uri;)Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;
    .locals 11
    .parameter "mailEngine"
    .parameter "uri"

    .prologue
    const/4 v10, 0x0

    .line 632
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x2

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 633
    .local v2, localMessageId:J
    const/4 v8, 0x0

    invoke-virtual {p0, v2, v3, v8}, Lcom/google/android/gm/provider/MailEngine;->getLocalMessage(JZ)Lcom/google/android/gm/provider/MailSync$Message;

    move-result-object v4

    .line 634
    .local v4, message:Lcom/google/android/gm/provider/MailSync$Message;
    if-nez v4, :cond_0

    .line 635
    const-string v8, "Gmail"

    const-string v9, "Message not found"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v10

    .line 653
    .end local p0
    :goto_0
    return-object v8

    .line 638
    .restart local p0
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 639
    .local v5, partId:Ljava/lang/String;
    invoke-virtual {v4, v5}, Lcom/google/android/gm/provider/MailSync$Message;->getAttachmentOrNull(Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Attachment;

    move-result-object v0

    .line 640
    .local v0, attachment:Lcom/google/android/gm/provider/Gmail$Attachment;
    if-nez v0, :cond_1

    .line 641
    const-string v8, "Gmail"

    const-string v9, "Attachment not found"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v10

    .line 642
    goto :goto_0

    .line 644
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->valueOf(Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    move-result-object v6

    .line 646
    .local v6, rendition:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x6

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 648
    .local v1, download:Z
    new-instance v7, Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;

    invoke-direct {v7, v10}, Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;-><init>(Lcom/google/android/gm/provider/MailProvider$1;)V

    .line 649
    .local v7, request:Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;
    iput-object v4, v7, Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;->message:Lcom/google/android/gm/provider/MailSync$Message;

    .line 650
    iput-object v0, v7, Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;->attachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    .line 651
    iput-object v6, v7, Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;->rendition:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    .line 652
    iput-boolean v1, v7, Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;->saveToSd:Z

    move-object v8, v7

    .line 653
    goto :goto_0
.end method

.method static getMailProvider()Lcom/google/android/gm/provider/MailProvider;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/google/android/gm/provider/MailProvider;->sThis:Lcom/google/android/gm/provider/MailProvider;

    return-object v0
.end method

.method private notifyDatasetChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 683
    iget-object v0, p0, Lcom/google/android/gm/provider/MailProvider;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail;->getBaseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 684
    return-void
.end method

.method private sendOrSaveDraft(Lcom/google/android/gm/provider/MailEngine;JLandroid/content/ContentValues;)J
    .locals 7
    .parameter "mailEngine"
    .parameter "localMessageId"
    .parameter "values"

    .prologue
    .line 407
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6, p4}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 408
    .local v6, valuesWithoutFakes:Landroid/content/ContentValues;
    const-string v0, "save"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 409
    .local v3, save:Z
    const-string v0, "save"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 410
    const-string v0, "refMessageId"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 412
    .local v4, localRefMessageId:J
    const-string v0, "refMessageId"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    move-object v0, p1

    move-wide v1, p2

    .line 414
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/provider/MailEngine;->sendOrSaveDraft(JZJLandroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public bindAccount(Ljava/lang/String;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 222
    monitor-enter p0

    .line 223
    :try_start_0
    invoke-static {}, Lcom/google/android/gm/provider/MailEngine;->clearMailEngines()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailProvider;->mBoundAccount:Ljava/lang/String;

    .line 225
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/MailProvider;->getOrMakeMailEngine(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailProvider;->mBoundEngine:Lcom/google/android/gm/provider/MailEngine;

    .line 226
    iput-object p1, p0, Lcom/google/android/gm/provider/MailProvider;->mBoundAccount:Ljava/lang/String;

    .line 227
    monitor-exit p0

    .line 228
    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 5
    .parameter "url"
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 420
    sget-object v3, Lcom/google/android/gm/provider/MailProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 421
    .local v2, match:I
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 422
    .local v0, account:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailProvider;->getOrMakeMailEngine(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v1

    .line 423
    .local v1, mailEngine:Lcom/google/android/gm/provider/MailEngine;
    packed-switch v2, :pswitch_data_0

    .line 433
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 425
    :pswitch_0
    invoke-virtual {v1, p2}, Lcom/google/android/gm/provider/MailEngine;->setLabelOnConversationsBulk([Landroid/content/ContentValues;)V

    move v3, v4

    .line 430
    :goto_0
    return v3

    .line 429
    :pswitch_1
    invoke-virtual {v1, p2}, Lcom/google/android/gm/provider/MailEngine;->setLabelOnLocalMessageBulk([Landroid/content/ContentValues;)V

    move v3, v4

    .line 430
    goto :goto_0

    .line 423
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 27
    .parameter "url"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 507
    sget-object v12, Lcom/google/android/gm/provider/MailProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v23

    .line 508
    .local v23, match:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 509
    .local v19, account:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailProvider;->getOrMakeMailEngine(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v5

    .line 510
    .local v5, mailEngine:Lcom/google/android/gm/provider/MailEngine;
    packed-switch v23, :pswitch_data_0

    .line 573
    :pswitch_0
    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 512
    :pswitch_1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 513
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "selection must be empty"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 516
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x2

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    .line 518
    .local v21, localMessageId:J
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    .line 519
    .local v10, label:Ljava/lang/String;
    const-string v12, "Gmail"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MailProvider.delete(): removing label "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " from local message "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-static {v10}, Lcom/google/android/gm/provider/Gmail;->isLabelUserSettable(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 524
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "label is not user-settable: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 526
    :cond_1
    const/4 v12, 0x0

    move-object v0, v5

    move-wide/from16 v1, v21

    move-object v3, v10

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gm/provider/MailEngine;->setLabelOnLocalMessage(JLjava/lang/String;Z)V

    .line 529
    const/4 v12, 0x1

    .line 568
    .end local v10           #label:Ljava/lang/String;
    .end local v21           #localMessageId:J
    :goto_0
    return v12

    .line 532
    .restart local p0
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x2

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 534
    .local v6, conversationId:J
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v10

    .line 535
    .restart local v10       #label:Ljava/lang/String;
    const-string v12, "maxMessageId"

    move-object/from16 v0, p2

    move-object v1, v12

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p3

    array-length v0, v0

    move v12, v0

    const/4 v13, 0x1

    if-eq v12, v13, :cond_3

    .line 536
    :cond_2
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "selection must be \'maxMessageId\', selection args must contain max message id"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 540
    :cond_3
    const/4 v12, 0x0

    aget-object v12, p3, v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 541
    .local v8, maxMessageId:J
    const-string v12, "Gmail"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MailProvider.delete(): removing label "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " from conversation "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-static {v10}, Lcom/google/android/gm/provider/Gmail;->isLabelUserSettable(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 546
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "label is not user-settable: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 548
    :cond_4
    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gm/provider/MailEngine;->setLabelOnConversation(JJLjava/lang/String;Z)V

    .line 550
    const/4 v12, 0x1

    goto :goto_0

    .line 553
    .end local v6           #conversationId:J
    .end local v8           #maxMessageId:J
    .end local v10           #label:Ljava/lang/String;
    .restart local p0
    :pswitch_3
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 554
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "selection must be empty"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 557
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 558
    .local v24, messageId:J
    const-string v12, "Gmail"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MailProvider.delete(): removing local message "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    move-object v0, v5

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->expungeLocalMessage(J)I

    move-result v20

    .local v20, count:I
    move/from16 v12, v20

    .line 562
    goto/16 :goto_0

    .line 565
    .end local v20           #count:I
    .end local v24           #messageId:J
    :pswitch_4
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailProvider;->attachmentRequestForUri(Lcom/google/android/gm/provider/MailEngine;Landroid/net/Uri;)Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;

    move-result-object v26

    .line 566
    .local v26, request:Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;
    if-nez v26, :cond_6

    const/4 v12, 0x0

    goto/16 :goto_0

    .line 567
    :cond_6
    invoke-virtual {v5}, Lcom/google/android/gm/provider/MailEngine;->getAttachmentManager()Lcom/google/android/gm/provider/AttachmentManager;

    move-result-object v11

    .line 568
    .local v11, attachmentManager:Lcom/google/android/gm/provider/AttachmentManager;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;->message:Lcom/google/android/gm/provider/MailSync$Message;

    move-object v12, v0

    iget-wide v12, v12, Lcom/google/android/gm/provider/MailSync$Message;->conversationId:J

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;->message:Lcom/google/android/gm/provider/MailSync$Message;

    move-object v14, v0

    iget-wide v14, v14, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;->attachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;->rendition:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    move-object/from16 v17, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;->saveToSd:Z

    move/from16 v18, v0

    invoke-virtual/range {v11 .. v18}, Lcom/google/android/gm/provider/AttachmentManager;->cancelDownloadRequest(JJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)I

    move-result v12

    goto/16 :goto_0

    .line 510
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method getOrMakeMailEngine(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;
    .locals 2
    .parameter "account"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/gm/provider/MailProvider;->mBoundAccount:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/google/android/gm/provider/MailProvider;->mBoundAccount:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/google/android/gm/provider/MailProvider;->mBoundEngine:Lcom/google/android/gm/provider/MailEngine;

    .line 242
    :goto_0
    return-object v0

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must request bound account"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gm/provider/MailEngine;->getOrMakeMailEngine(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "url"

    .prologue
    const/4 v7, 0x0

    .line 389
    sget-object v5, Lcom/google/android/gm/provider/MailProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 390
    .local v3, match:I
    sparse-switch v3, :sswitch_data_0

    move-object v5, v7

    .line 403
    :goto_0
    return-object v5

    .line 392
    :sswitch_0
    const-string v5, "com.google.android.gm/conversations"

    goto :goto_0

    .line 394
    :sswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 395
    .local v0, account:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailProvider;->getOrMakeMailEngine(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v2

    .line 397
    .local v2, mailEngine:Lcom/google/android/gm/provider/MailEngine;
    invoke-static {v2, p1}, Lcom/google/android/gm/provider/MailProvider;->attachmentRequestForUri(Lcom/google/android/gm/provider/MailEngine;Landroid/net/Uri;)Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;

    move-result-object v4

    .line 398
    .local v4, request:Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;
    if-nez v4, :cond_0

    move-object v5, v7

    goto :goto_0

    .line 399
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailEngine;->getAttachmentManager()Lcom/google/android/gm/provider/AttachmentManager;

    move-result-object v1

    .line 400
    .local v1, attachmentManager:Lcom/google/android/gm/provider/AttachmentManager;
    iget-object v5, v4, Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;->attachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    iget-object v5, v5, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    goto :goto_0

    .line 390
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xb -> :sswitch_1
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 13
    .parameter "url"
    .parameter "values"

    .prologue
    .line 439
    const-string v6, "Gmail"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 440
    const-string v6, "Gmail"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MailProvider.insert: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_0
    sget-object v6, Lcom/google/android/gm/provider/MailProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    .line 446
    .local v10, match:I
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 447
    .local v7, account:Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/google/android/gm/provider/MailProvider;->getOrMakeMailEngine(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    .line 449
    .local v0, mailEngine:Lcom/google/android/gm/provider/MailEngine;
    packed-switch v10, :pswitch_data_0

    .line 501
    :pswitch_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v7           #account:Ljava/lang/String;
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 451
    .restart local v7       #account:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x2

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 452
    .local v8, localMessageId:J
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v6

    const/4 v10, 0x1

    if-eq v6, v10, :cond_1

    .line 453
    .end local v10           #match:I
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v7           #account:Ljava/lang/String;
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 455
    .restart local v7       #account:Ljava/lang/String;
    :cond_1
    const-string v6, "canonicalName"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 456
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "values must have \'canonicalName\'"

    .end local v7           #account:Ljava/lang/String;
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 459
    .restart local v7       #account:Ljava/lang/String;
    :cond_2
    const-string v6, "canonicalName"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 460
    .local v5, label:Ljava/lang/String;
    const-string v6, "Gmail"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MailProvider.insert(): adding label "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to local message "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-static {v5}, Lcom/google/android/gm/provider/Gmail;->isLabelUserSettable(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 465
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #account:Ljava/lang/String;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "label is not user-settable: "

    .end local v8           #localMessageId:J
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 467
    .restart local v7       #account:Ljava/lang/String;
    .restart local v8       #localMessageId:J
    :cond_3
    const/4 v6, 0x1

    invoke-virtual {v0, v8, v9, v5, v6}, Lcom/google/android/gm/provider/MailEngine;->setLabelOnLocalMessage(JLjava/lang/String;Z)V

    .line 468
    invoke-static {v7, v8, v9, v5}, Lcom/google/android/gm/provider/Gmail;->getMessageLabelUri(Ljava/lang/String;JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 498
    .end local v5           #label:Ljava/lang/String;
    .end local v8           #localMessageId:J
    :goto_0
    return-object v6

    .line 471
    .restart local v10       #match:I
    .restart local p0
    :pswitch_2
    const-wide/16 v11, 0x0

    invoke-direct {p0, v0, v11, v12, p2}, Lcom/google/android/gm/provider/MailProvider;->sendOrSaveDraft(Lcom/google/android/gm/provider/MailEngine;JLandroid/content/ContentValues;)J

    move-result-wide v8

    .line 472
    .restart local v8       #localMessageId:J
    const-string v6, "Gmail"

    new-instance v10, Ljava/lang/StringBuilder;

    .end local v10           #match:I
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MailProvider.insert(): added local message "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-static {v7, v8, v9}, Lcom/google/android/gm/provider/Gmail;->getMessageByIdUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    goto :goto_0

    .line 476
    .end local v8           #localMessageId:J
    .restart local v10       #match:I
    :pswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x2

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 477
    .local v1, conversationId:J
    const-string v6, "canonicalName"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 478
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "values must have \'canonicalName\'"

    .end local v7           #account:Ljava/lang/String;
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 481
    .restart local v7       #account:Ljava/lang/String;
    :cond_4
    const-string v6, "canonicalName"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 482
    .restart local v5       #label:Ljava/lang/String;
    const-string v6, "maxMessageId"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 483
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "values must have \'maxMessageId\'"

    .end local v7           #account:Ljava/lang/String;
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 486
    .restart local v7       #account:Ljava/lang/String;
    :cond_5
    const-string v6, "maxMessageId"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 487
    .local v3, maxMessageId:J
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v6

    const/4 v8, 0x2

    if-eq v6, v8, :cond_6

    .line 488
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v7           #account:Ljava/lang/String;
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 490
    .restart local v7       #account:Ljava/lang/String;
    :cond_6
    const-string v6, "Gmail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MailProvider.insert(): adding label "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to conversation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", maxMessageId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-static {v5}, Lcom/google/android/gm/provider/Gmail;->isLabelUserSettable(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 495
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #account:Ljava/lang/String;
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "label is not user-settable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 497
    .restart local v7       #account:Ljava/lang/String;
    :cond_7
    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/provider/MailEngine;->setLabelOnConversation(JJLjava/lang/String;Z)V

    .line 498
    invoke-static {v7, v1, v2, v5}, Lcom/google/android/gm/provider/Gmail;->getConversationLabelUri(Ljava/lang/String;JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto/16 :goto_0

    .line 449
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 14
    .parameter "accounts"

    .prologue
    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    iget-object v11, p0, Lcom/google/android/gm/provider/MailProvider;->mBoundAccount:Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 171
    monitor-exit p0

    .line 213
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v10

    .line 175
    .local v10, validDbs:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object v2, p1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v7, v2

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v0, v2, v5

    .line 176
    .local v0, account:Landroid/accounts/Account;
    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v12, "com.google"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 175
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 179
    :cond_1
    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gm/provider/MailEngine;->getDbName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gm/provider/MailEngine;->getInternalDbName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 212
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v10           #validDbs:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 183
    .restart local v2       #arr$:[Landroid/accounts/Account;
    .restart local v5       #i$:I
    .restart local v7       #len$:I
    .restart local v10       #validDbs:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const/4 v9, 0x0

    .line 184
    .local v9, restartGmail:Z
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 185
    .local v3, context:Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v7, :cond_5

    aget-object v4, v2, v5

    .line 186
    .local v4, db:Ljava/lang/String;
    const-string v11, "mailstore"

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, ".db"

    invoke-virtual {v4, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    move v6, v11

    .line 188
    .local v6, isMailStoreDb:Z
    :goto_4
    if-eqz v6, :cond_3

    invoke-interface {v10, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 189
    const-string v11, "Gmail"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Deleting mail db "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " because there is no account for it"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {v3, v4}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 194
    const-string v11, "mailstore"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    const-string v12, ".db"

    invoke-virtual {v4, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, accountName:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->getMailEngine(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v8

    .line 198
    .local v8, mailEngine:Lcom/google/android/gm/provider/MailEngine;
    if-eqz v8, :cond_3

    .line 199
    const/4 v9, 0x1

    .line 185
    .end local v1           #accountName:Ljava/lang/String;
    .end local v8           #mailEngine:Lcom/google/android/gm/provider/MailEngine;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 186
    .end local v6           #isMailStoreDb:Z
    :cond_4
    const/4 v11, 0x0

    move v6, v11

    goto :goto_4

    .line 204
    .end local v4           #db:Ljava/lang/String;
    :cond_5
    if-eqz v9, :cond_6

    .line 207
    invoke-static {v3}, Lcom/google/android/gm/Utils;->cancelAllNotifications(Landroid/content/Context;)V

    .line 209
    const-string v11, "Gmail"

    const-string v12, "Restarting because we deleted an account."

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    .line 212
    :cond_6
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 149
    sput-object p0, Lcom/google/android/gm/provider/MailProvider;->sThis:Lcom/google/android/gm/provider/MailProvider;

    .line 150
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "AccountManager Listener"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 152
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 153
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/gm/provider/MailProvider;->mHandler:Landroid/os/Handler;

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/provider/MailProvider;->mContentResolver:Landroid/content/ContentResolver;

    .line 156
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/provider/MailProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, v3, v4}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 158
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gm.intent.ACTION_PROVIDER_CREATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 160
    return v4
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 17
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 658
    const-string v2, "Gmail"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 659
    const-string v2, "Gmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MailProvider.openFile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_0
    sget-object v2, Lcom/google/android/gm/provider/MailProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v14

    .line 662
    .local v14, match:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v16

    .line 663
    .local v16, segments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object/from16 v0, v16

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 664
    .local v11, account:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailProvider;->getOrMakeMailEngine(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v13

    .line 665
    .local v13, mailEngine:Lcom/google/android/gm/provider/MailEngine;
    packed-switch v14, :pswitch_data_0

    .line 678
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 667
    :pswitch_0
    move-object v0, v13

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailProvider;->attachmentRequestForUri(Lcom/google/android/gm/provider/MailEngine;Landroid/net/Uri;)Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;

    move-result-object v15

    .line 668
    .local v15, request:Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;
    if-nez v15, :cond_1

    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    throw v2

    .line 670
    :cond_1
    :try_start_0
    invoke-virtual {v13}, Lcom/google/android/gm/provider/MailEngine;->getAttachmentManager()Lcom/google/android/gm/provider/AttachmentManager;

    move-result-object v2

    iget-object v3, v15, Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;->message:Lcom/google/android/gm/provider/MailSync$Message;

    iget-wide v3, v3, Lcom/google/android/gm/provider/MailSync$Message;->conversationId:J

    iget-object v5, v15, Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;->message:Lcom/google/android/gm/provider/MailSync$Message;

    iget-wide v5, v5, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    iget-object v7, v15, Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;->attachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    iget-object v8, v15, Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;->rendition:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    iget-boolean v9, v15, Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;->saveToSd:Z

    move-object/from16 v10, p2

    invoke-virtual/range {v2 .. v10}, Lcom/google/android/gm/provider/AttachmentManager;->openAttachment(JJLcom/google/android/gm/provider/Gmail$Attachment;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;ZLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 674
    :goto_0
    return-object v2

    .line 673
    :catch_0
    move-exception v2

    move-object v12, v2

    .line 674
    .local v12, e:Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    goto :goto_0

    .line 665
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 37
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 248
    const-string v6, "Gmail"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 249
    const-string v6, "Gmail"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MailProvider.query: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_0
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 254
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "sortOrder must be empty"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 257
    :cond_1
    sget-object v6, Lcom/google/android/gm/provider/MailProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v30

    .line 258
    .local v30, match:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 262
    .local v17, account:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailProvider;->mBoundAccount:Ljava/lang/String;

    move-object v6, v0

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailProvider;->mBoundAccount:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 263
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailProvider;->bindAccount(Ljava/lang/String;)V

    .line 266
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailProvider;->getOrMakeMailEngine(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v5

    .line 269
    .local v5, mailEngine:Lcom/google/android/gm/provider/MailEngine;
    const/16 v35, 0x1

    .line 271
    .local v35, setNotificationUri:Z
    packed-switch v30, :pswitch_data_0

    .line 372
    :pswitch_0
    const/16 v34, 0x0

    .line 375
    .end local v5           #mailEngine:Lcom/google/android/gm/provider/MailEngine;
    .end local p1
    .end local p4
    .local v34, result:Landroid/database/Cursor;
    :goto_0
    if-eqz v34, :cond_3

    if-eqz v35, :cond_3

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailProvider;->mContentResolver:Landroid/content/ContentResolver;

    move-object v6, v0

    invoke-static/range {v17 .. v17}, Lcom/google/android/gm/provider/Gmail;->getBaseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, v34

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_3
    move-object/from16 v6, v34

    .line 384
    .end local v34           #result:Landroid/database/Cursor;
    :goto_1
    return-object v6

    .line 273
    .restart local v5       #mailEngine:Lcom/google/android/gm/provider/MailEngine;
    .restart local p1
    .restart local p4
    :pswitch_1
    if-eqz p3, :cond_4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    .line 274
    :cond_4
    const-string p3, "label:^i"

    .line 276
    :cond_5
    move-object v0, v5

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gm/provider/MailEngine;->getConversationCursorForQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v34

    .line 278
    .restart local v34       #result:Landroid/database/Cursor;
    goto :goto_0

    .line 280
    .end local v34           #result:Landroid/database/Cursor;
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    .end local p4
    check-cast p4, Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    .line 281
    .local v23, conversationId:J
    const-string v6, "1"

    const-string v7, "useCache"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    .line 282
    .local v36, useCache:Z
    move-object v0, v5

    move-object/from16 v1, p2

    move-wide/from16 v2, v23

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gm/provider/MailEngine;->getMessageCursorForConversationId([Ljava/lang/String;JZ)Landroid/database/Cursor;

    move-result-object v34

    .line 284
    .restart local v34       #result:Landroid/database/Cursor;
    goto :goto_0

    .line 287
    .end local v23           #conversationId:J
    .end local v34           #result:Landroid/database/Cursor;
    .end local v36           #useCache:Z
    .restart local p4
    :pswitch_3
    invoke-static/range {p3 .. p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v31

    .line 288
    .local v31, messageId:J
    move-object v0, v5

    move-object/from16 v1, p2

    move-wide/from16 v2, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gm/provider/MailEngine;->getMessageCursorForMessageId([Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v34

    .line 291
    .restart local v34       #result:Landroid/database/Cursor;
    goto :goto_0

    .line 294
    .end local v31           #messageId:J
    .end local v34           #result:Landroid/database/Cursor;
    :pswitch_4
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v28

    .line 295
    .local v28, localMessageId:J
    move-object v0, v5

    move-object/from16 v1, p2

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gm/provider/MailEngine;->getMessageCursorForLocalMessageId([Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v34

    .line 297
    .restart local v34       #result:Landroid/database/Cursor;
    goto :goto_0

    .line 300
    .end local v28           #localMessageId:J
    .end local v34           #result:Landroid/database/Cursor;
    :pswitch_5
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailProvider;->attachmentRequestForUri(Lcom/google/android/gm/provider/MailEngine;Landroid/net/Uri;)Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;

    move-result-object v33

    .line 301
    .local v33, request:Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;
    if-nez v33, :cond_6

    const/4 v6, 0x0

    goto :goto_1

    .line 302
    :cond_6
    invoke-virtual {v5}, Lcom/google/android/gm/provider/MailEngine;->getAttachmentManager()Lcom/google/android/gm/provider/AttachmentManager;

    move-result-object v5

    .end local v5           #mailEngine:Lcom/google/android/gm/provider/MailEngine;
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;->message:Lcom/google/android/gm/provider/MailSync$Message;

    move-object v6, v0

    iget-wide v6, v6, Lcom/google/android/gm/provider/MailSync$Message;->conversationId:J

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;->message:Lcom/google/android/gm/provider/MailSync$Message;

    move-object v8, v0

    iget-wide v8, v8, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;->attachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    move-object v10, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;->rendition:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    move-object v11, v0

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;->saveToSd:Z

    move v12, v0

    move-object/from16 v13, p2

    invoke-virtual/range {v5 .. v13}, Lcom/google/android/gm/provider/AttachmentManager;->queryAndStartDownloadingAttachment(JJLcom/google/android/gm/provider/Gmail$Attachment;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v34

    .line 305
    .restart local v34       #result:Landroid/database/Cursor;
    goto/16 :goto_0

    .line 309
    .end local v33           #request:Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;
    .end local v34           #result:Landroid/database/Cursor;
    .restart local v5       #mailEngine:Lcom/google/android/gm/provider/MailEngine;
    :pswitch_6
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailProvider;->attachmentRequestForUri(Lcom/google/android/gm/provider/MailEngine;Landroid/net/Uri;)Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;

    move-result-object v33

    .line 310
    .restart local v33       #request:Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;
    if-nez v33, :cond_7

    const/4 v6, 0x0

    goto/16 :goto_1

    .line 313
    :cond_7
    if-eqz p2, :cond_8

    move-object/from16 v19, p2

    .line 317
    .local v19, attachmentProjection:[Ljava/lang/String;
    :goto_2
    new-instance v25, Landroid/database/MatrixCursor;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 318
    .local v25, cursor:Landroid/database/MatrixCursor;
    invoke-virtual/range {v25 .. v25}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v20

    .line 321
    .local v20, builder:Landroid/database/MatrixCursor$RowBuilder;
    move-object/from16 v18, v19

    .local v18, arr$:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v27, v0

    .local v27, len$:I
    const/16 v26, 0x0

    .local v26, i$:I
    :goto_3
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_b

    aget-object v22, v18, v26

    .line 322
    .local v22, column:Ljava/lang/String;
    const-string v6, "_display_name"

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 323
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;->attachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 321
    :goto_4
    add-int/lit8 v26, v26, 0x1

    goto :goto_3

    .line 313
    .end local v18           #arr$:[Ljava/lang/String;
    .end local v19           #attachmentProjection:[Ljava/lang/String;
    .end local v20           #builder:Landroid/database/MatrixCursor$RowBuilder;
    .end local v22           #column:Ljava/lang/String;
    .end local v25           #cursor:Landroid/database/MatrixCursor;
    .end local v26           #i$:I
    .end local v27           #len$:I
    :cond_8
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_display_name"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "_size"

    aput-object v8, v6, v7

    move-object/from16 v19, v6

    goto :goto_2

    .line 324
    .restart local v18       #arr$:[Ljava/lang/String;
    .restart local v19       #attachmentProjection:[Ljava/lang/String;
    .restart local v20       #builder:Landroid/database/MatrixCursor$RowBuilder;
    .restart local v22       #column:Ljava/lang/String;
    .restart local v25       #cursor:Landroid/database/MatrixCursor;
    .restart local v26       #i$:I
    .restart local v27       #len$:I
    :cond_9
    const-string v6, "_size"

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;->rendition:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    move-object v6, v0

    sget-object v7, Lcom/google/android/gm/provider/Gmail$AttachmentRendition;->BEST:Lcom/google/android/gm/provider/Gmail$AttachmentRendition;

    if-ne v6, v7, :cond_a

    .line 329
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;->attachment:Lcom/google/android/gm/provider/Gmail$Attachment;

    move-object v6, v0

    iget v6, v6, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_4

    .line 331
    :cond_a
    const/4 v6, 0x0

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_4

    .line 334
    .end local v22           #column:Ljava/lang/String;
    :cond_b
    move-object/from16 v34, v25

    .line 335
    .restart local v34       #result:Landroid/database/Cursor;
    goto/16 :goto_0

    .line 339
    .end local v18           #arr$:[Ljava/lang/String;
    .end local v19           #attachmentProjection:[Ljava/lang/String;
    .end local v20           #builder:Landroid/database/MatrixCursor$RowBuilder;
    .end local v25           #cursor:Landroid/database/MatrixCursor;
    .end local v26           #i$:I
    .end local v27           #len$:I
    .end local v33           #request:Lcom/google/android/gm/provider/MailProvider$AttachmentRequest;
    .end local v34           #result:Landroid/database/Cursor;
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    .end local p4
    check-cast p4, Ljava/lang/String;

    invoke-static/range {p4 .. p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_c

    const/4 v6, 0x1

    move v10, v6

    .line 340
    .local v10, showHidden:Z
    :goto_5
    const-string v6, "canonicalName"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 342
    .local v7, filterLabels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v8, 0x0

    move-object/from16 v6, p2

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gm/provider/MailEngine;->getLabelCursor([Ljava/lang/String;Ljava/util/List;JZ)Landroid/database/Cursor;

    move-result-object v34

    .line 343
    .restart local v34       #result:Landroid/database/Cursor;
    goto/16 :goto_0

    .line 339
    .end local v7           #filterLabels:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #showHidden:Z
    .end local v34           #result:Landroid/database/Cursor;
    :cond_c
    const/4 v6, 0x0

    move v10, v6

    goto :goto_5

    .line 347
    .restart local p4
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 348
    .local v21, canonicalName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-eqz v6, :cond_d

    const/4 v6, 0x1

    move v10, v6

    .line 349
    .restart local v10       #showHidden:Z
    :goto_6
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v21, v6, v7

    invoke-static {v6}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v13

    const-wide/16 v14, 0x0

    move-object v11, v5

    move-object/from16 v12, p2

    move/from16 v16, v10

    invoke-virtual/range {v11 .. v16}, Lcom/google/android/gm/provider/MailEngine;->getLabelCursor([Ljava/lang/String;Ljava/util/List;JZ)Landroid/database/Cursor;

    move-result-object v34

    .line 351
    .restart local v34       #result:Landroid/database/Cursor;
    goto/16 :goto_0

    .line 348
    .end local v10           #showHidden:Z
    .end local v34           #result:Landroid/database/Cursor;
    :cond_d
    const/4 v6, 0x0

    move v10, v6

    goto :goto_6

    .line 355
    .end local v21           #canonicalName:Ljava/lang/String;
    .restart local p1
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 356
    .local v14, labelId:J
    const/4 v13, 0x0

    const/16 v16, 0x1

    move-object v11, v5

    move-object/from16 v12, p2

    invoke-virtual/range {v11 .. v16}, Lcom/google/android/gm/provider/MailEngine;->getLabelCursor([Ljava/lang/String;Ljava/util/List;JZ)Landroid/database/Cursor;

    move-result-object v34

    .line 357
    .restart local v34       #result:Landroid/database/Cursor;
    goto/16 :goto_0

    .line 361
    .end local v14           #labelId:J
    .end local v34           #result:Landroid/database/Cursor;
    .restart local p1
    :pswitch_a
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->getPublicSettingsCursor([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v34

    .line 362
    .restart local v34       #result:Landroid/database/Cursor;
    goto/16 :goto_0

    .line 365
    .end local v34           #result:Landroid/database/Cursor;
    :pswitch_b
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->getStatusCursor([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v34

    .line 366
    .restart local v34       #result:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailProvider;->mContentResolver:Landroid/content/ContentResolver;

    move-object v6, v0

    invoke-static/range {v17 .. v17}, Lcom/google/android/gm/provider/Gmail;->getStatusUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, v34

    move-object v1, v6

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 367
    const/16 v35, 0x0

    .line 368
    goto/16 :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 624
    invoke-static {}, Lcom/google/android/gm/provider/MailEngine;->clearMailEngines()V

    .line 625
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 20
    .parameter "url"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 580
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 581
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "selection must be empty"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 584
    :cond_0
    const/16 v17, 0x0

    .line 586
    .local v17, numRowsModified:I
    sget-object v18, Lcom/google/android/gm/provider/MailProvider;->sUrlMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v16

    .line 587
    .local v16, match:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 588
    .local v12, account:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailProvider;->getOrMakeMailEngine(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v15

    .line 589
    .local v15, mailEngine:Lcom/google/android/gm/provider/MailEngine;
    sparse-switch v16, :sswitch_data_0

    .line 616
    new-instance v18, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 591
    :sswitch_0
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v13

    .line 592
    .local v13, localMessageId:J
    move-object/from16 v0, p0

    move-object v1, v15

    move-wide v2, v13

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gm/provider/MailProvider;->sendOrSaveDraft(Lcom/google/android/gm/provider/MailEngine;JLandroid/content/ContentValues;)J

    .line 593
    const/16 v17, 0x1

    .line 619
    .end local v13           #localMessageId:J
    :cond_1
    :goto_0
    return v17

    .line 597
    :sswitch_1
    invoke-virtual {v15}, Lcom/google/android/gm/provider/MailEngine;->getMailSync()Lcom/google/android/gm/provider/MailSync;

    move-result-object v5

    .line 599
    .local v5, mailSync:Lcom/google/android/gm/provider/MailSync;
    const-string v18, "labelsIncluded"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 601
    .local v6, labelsIncluded:Ljava/lang/String;
    const-string v18, "labelsPartial"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 603
    .local v7, labelsPartial:Ljava/lang/String;
    const-string v18, "conversationAgeDays"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 605
    .local v8, conversationAgeDays:J
    const-string v18, "maxAttachmentSize"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 607
    .local v10, maxAttachmentSizeMb:J
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gm/provider/MailSync;->setConfig(Ljava/lang/String;Ljava/lang/String;JJ)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 610
    const/16 v17, 0x1

    .line 611
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailProvider;->notifyDatasetChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 589
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0xe -> :sswitch_1
    .end sparse-switch
.end method
