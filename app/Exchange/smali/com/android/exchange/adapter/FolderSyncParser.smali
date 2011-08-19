.class public Lcom/android/exchange/adapter/FolderSyncParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "FolderSyncParser.java"


# static fields
.field private static final MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

.field private static final UNINITIALIZED_PARENT_KEY:Landroid/content/ContentValues;

.field public static final VALID_EAS_FOLDER_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountId:J

.field private mAccountIdAsString:Ljava/lang/String;

.field private mBindArguments:[Ljava/lang/String;

.field private mFixupUninitializedNeeded:Z

.field private mInitialSync:Z

.field private mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mParentFixupsNeeded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 74
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x5

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->VALID_EAS_FOLDER_TYPES:Ljava/util/List;

    .line 90
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v6

    const-string v1, "serverId"

    aput-object v1, v0, v3

    const-string v1, "parentServerId"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    .line 105
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->UNINITIALIZED_PARENT_KEY:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V
    .locals 4
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 98
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mFixupUninitializedNeeded:Z

    .line 108
    sget-object v0, Lcom/android/exchange/adapter/FolderSyncParser;->UNINITIALIZED_PARENT_KEY:Landroid/content/ContentValues;

    const-string v1, "parentKey"

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 113
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    iput-wide v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    .line 114
    iget-wide v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/android/exchange/adapter/FolderSyncParser;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/exchange/adapter/FolderSyncParser;->commitMailboxes(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/exchange/adapter/FolderSyncParser;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mFixupUninitializedNeeded:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/exchange/adapter/FolderSyncParser;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    return-object v0
.end method

.method private commitMailboxes(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Mailbox;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Mailbox;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/provider/EmailContent$Mailbox;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, validMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    .local p2, userMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    .local p3, mailboxMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    .local p4, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 407
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 408
    .local v2, m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-virtual {p0, v2, p3}, Lcom/android/exchange/adapter/FolderSyncParser;->isValidMailFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 409
    iput v7, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 410
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 412
    :cond_0
    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rejecting unknown type mailbox: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 417
    .end local v2           #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 418
    .restart local v2       #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "Adding mailbox: "

    aput-object v4, v3, v6

    iget-object v4, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    .line 419
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->toContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 424
    .end local v2           #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_2
    const-string v3, "Applying "

    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v5, " mailbox operations."

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 428
    :try_start_0
    iget-object v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "com.android.email.provider"

    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move v3, v7

    .line 435
    :goto_2
    return v3

    .line 430
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 431
    .local v0, e:Landroid/os/RemoteException;
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "RemoteException in commitMailboxes"

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    move v3, v6

    .line 432
    goto :goto_2

    .line 433
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 434
    .local v0, e:Landroid/content/OperationApplicationException;
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "OperationApplicationException in commitMailboxes"

    aput-object v4, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    move v3, v6

    .line 435
    goto :goto_2
.end method

.method private getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "serverId"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 180
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 181
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    const-string v3, "serverId=? and accountKey=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addParser()Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 218
    const/4 v1, 0x0

    .line 219
    .local v1, name:Ljava/lang/String;
    const/4 v3, 0x0

    .line 220
    .local v3, serverId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 221
    .local v2, parentId:Ljava/lang/String;
    const/4 v4, 0x0

    .line 223
    .local v4, type:I
    :goto_0
    const/16 v5, 0x1cf

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v5

    if-eq v5, v9, :cond_0

    .line 224
    iget v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    packed-switch v5, :pswitch_data_0

    .line 242
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_0

    .line 226
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 227
    goto :goto_0

    .line 230
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValueInt()I

    move-result v4

    .line 231
    goto :goto_0

    .line 234
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 235
    goto :goto_0

    .line 238
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 239
    goto :goto_0

    .line 246
    :cond_0
    sget-object v5, Lcom/android/exchange/adapter/FolderSyncParser;->VALID_EAS_FOLDER_TYPES:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 247
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    .line 248
    .local v0, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    iput-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 249
    iput-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    .line 250
    iget-wide v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    iput-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 251
    iput v7, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 254
    const/4 v5, -0x1

    iput v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 255
    packed-switch v4, :pswitch_data_1

    .line 289
    :goto_1
    :pswitch_4
    iget v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v6, 0x40

    if-ge v5, v6, :cond_2

    move v5, v7

    :goto_2
    iput-boolean v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 291
    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 292
    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    .line 293
    iput-boolean v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mFixupUninitializedNeeded:Z

    .line 294
    iget-boolean v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    if-nez v5, :cond_1

    .line 295
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v5, v0

    .line 301
    .end local v0           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :goto_3
    return-object v5

    .line 257
    .restart local v0       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :pswitch_5
    iput v8, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 258
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    iput v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    goto :goto_1

    .line 261
    :pswitch_6
    const/16 v5, 0x42

    iput v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 262
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    iput v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    goto :goto_1

    .line 268
    :pswitch_7
    const/4 v5, 0x4

    iput v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    goto :goto_1

    .line 271
    :pswitch_8
    const/4 v5, 0x5

    iput v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    goto :goto_1

    .line 274
    :pswitch_9
    iput v9, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    goto :goto_1

    .line 277
    :pswitch_a
    const/4 v5, 0x6

    iput v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    goto :goto_1

    .line 280
    :pswitch_b
    const/16 v5, 0x41

    iput v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 281
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncInterval:I

    iput v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    goto :goto_1

    .line 284
    :pswitch_c
    const/16 v5, 0x45

    iput v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    goto :goto_1

    :cond_2
    move v5, v8

    .line 289
    goto :goto_2

    .line 301
    .end local v0           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    .line 224
    :pswitch_data_0
    .packed-switch 0x1c7
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 255
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_b
        :pswitch_6
    .end packed-switch
.end method

.method public changesParser(Ljava/util/ArrayList;Z)V
    .locals 5
    .parameter
    .parameter "initialSync"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v0, addMailboxes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    iget-object v2, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/exchange/provider/MailboxUtilities;->startMailboxChanges(Landroid/content/Context;J)V

    .line 447
    :cond_0
    :goto_0
    const/16 v2, 0x1ce

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    .line 448
    iget v2, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v3, 0x1cf

    if-ne v2, v3, :cond_1

    .line 449
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->addParser()Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 450
    .local v1, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v1, :cond_0

    .line 451
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 453
    .end local v1           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_1
    iget v2, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v3, 0x1d0

    if-ne v2, v3, :cond_2

    .line 454
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/FolderSyncParser;->deleteParser(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 455
    :cond_2
    iget v2, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v3, 0x1d1

    if-ne v2, v3, :cond_3

    .line 456
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/FolderSyncParser;->updateParser(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 457
    :cond_3
    iget v2, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v3, 0x1d7

    if-ne v2, v3, :cond_4

    .line 458
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValueInt()I

    goto :goto_0

    .line 460
    :cond_4
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_0

    .line 463
    :cond_5
    new-instance v2, Lcom/android/exchange/adapter/FolderSyncParser$1;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/android/exchange/adapter/FolderSyncParser$1;-><init>(Lcom/android/exchange/adapter/FolderSyncParser;Ljava/util/ArrayList;ZLjava/util/ArrayList;)V

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 531
    return-void
.end method

.method public commandsParser()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 538
    return-void
.end method

.method public commit()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 547
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const-string v1, "Sync Issues"

    aput-object v1, v0, v10

    .line 548
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountIdAsString:Ljava/lang/String;

    aput-object v1, v0, v2

    .line 549
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/adapter/FolderSyncParser;->MAILBOX_ID_COLUMNS_PROJECTION:[Ljava/lang/String;

    const-string v3, "displayName=? and accountKey=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 552
    .local v6, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 553
    .local v9, parentServerId:Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 555
    .local v7, id:J
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 557
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 560
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 562
    if-eqz v9, :cond_1

    .line 563
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    aput-object v9, v0, v10

    .line 566
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "parentServerId=? and accountKey=?"

    iget-object v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 569
    :cond_1
    return-void

    .line 560
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public deleteParser(Ljava/util/ArrayList;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    const/16 v3, 0x1d0

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 187
    iget v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    packed-switch v3, :pswitch_data_0

    .line 212
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_0

    .line 189
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, serverId:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/exchange/adapter/FolderSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 193
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Deleting "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    .line 195
    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 200
    iget-boolean v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    if-nez v3, :cond_0

    .line 201
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, parentId:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 203
    iget-object v3, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    .end local v1           #parentId:Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    .line 215
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #serverId:Ljava/lang/String;
    :cond_1
    return-void

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1c8
        :pswitch_0
    .end packed-switch
.end method

.method isValidMailFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/HashMap;)Z
    .locals 12
    .parameter "mailbox"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/provider/EmailContent$Mailbox;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/emailcommon/provider/EmailContent$Mailbox;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, mailboxMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Mailbox;>;"
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 318
    iget v8, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 320
    .local v8, folderType:I
    const/16 v0, 0x40

    if-ge v8, v0, :cond_0

    move v0, v3

    .line 342
    :goto_0
    return v0

    .line 322
    :cond_0
    const/16 v0, 0x45

    if-eq v8, v0, :cond_1

    move v0, v6

    goto :goto_0

    .line 324
    :cond_1
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 327
    .local v9, parent:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v9, :cond_3

    .line 328
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 329
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mParentServerId:Ljava/lang/String;

    aput-object v1, v0, v3

    .line 330
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND serverId=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mBindArguments:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowInt(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v10, v0

    .line 334
    .local v10, parentId:J
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContext:Landroid/content/Context;

    invoke-static {v0, v10, v11}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v9

    .line 337
    if-nez v9, :cond_3

    move v0, v6

    goto :goto_0

    :cond_2
    move v0, v6

    .line 339
    goto :goto_0

    .line 342
    .end local v10           #parentId:J
    :cond_3
    invoke-virtual {p0, v9, p2}, Lcom/android/exchange/adapter/FolderSyncParser;->isValidMailFolder(Lcom/android/emailcommon/provider/EmailContent$Mailbox;Ljava/util/HashMap;)Z

    move-result v0

    goto :goto_0
.end method

.method public parse()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 120
    const/4 v2, 0x0

    .line 121
    .local v2, res:Z
    const/4 v3, 0x0

    .line 124
    .local v3, resetFolders:Z
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v1, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 125
    .local v1, key:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v5, "0"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v5, v12

    :goto_0
    iput-boolean v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    .line 126
    iget-boolean v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    if-eqz v5, :cond_1

    .line 127
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "accountKey=? and type!=68"

    new-array v8, v12, [Ljava/lang/String;

    iget-wide v9, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 130
    :cond_1
    invoke-virtual {p0, v11}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v5

    const/16 v6, 0x1d6

    if-eq v5, v6, :cond_3

    .line 131
    new-instance v5, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v5, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v5

    :cond_2
    move v5, v11

    .line 125
    goto :goto_0

    .line 132
    :cond_3
    :goto_1
    invoke-virtual {p0, v11}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_8

    .line 133
    iget v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v6, 0x1cc

    if-ne v5, v6, :cond_5

    .line 134
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValueInt()I

    move-result v4

    .line 135
    .local v4, status:I
    if-eq v4, v12, :cond_3

    .line 136
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FolderSync failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 137
    const/16 v5, 0x9

    if-ne v4, v5, :cond_4

    .line 138
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v6, "Bad sync key; RESET and delete all folders"

    invoke-virtual {v5, v6}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 140
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    const-string v6, "0"

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 141
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 142
    .local v0, cv:Landroid/content/ContentValues;
    const-string v5, "syncKey"

    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6, v0, v14, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 146
    iget-wide v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v5, v6}, Lcom/android/exchange/ExchangeService;->deleteAccountPIMData(J)V

    .line 148
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "accountKey=? and type!=68"

    new-array v8, v12, [Ljava/lang/String;

    iget-wide v9, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 151
    iget-wide v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccountId:J

    invoke-static {v5, v6}, Lcom/android/exchange/ExchangeService;->stopNonAccountMailboxSyncsForAccount(J)V

    .line 152
    const/4 v2, 0x1

    .line 153
    const/4 v3, 0x1

    .line 154
    goto :goto_1

    .line 157
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_4
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v6, "Throwing IOException; will retry later"

    invoke-virtual {v5, v6}, Lcom/android/exchange/EasSyncService;->errorLog(Ljava/lang/String;)V

    .line 158
    new-instance v5, Lcom/android/exchange/adapter/Parser$EasParserException;

    const-string v6, "Folder status error"

    invoke-direct {v5, p0, v6}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;Ljava/lang/String;)V

    throw v5

    .line 161
    .end local v4           #status:I
    :cond_5
    iget v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v6, 0x1d2

    if-ne v5, v6, :cond_6

    .line 162
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 163
    new-array v5, v13, [Ljava/lang/String;

    const-string v6, "New Account SyncKey: "

    aput-object v6, v5, v11

    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    aput-object v6, v5, v12

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 164
    :cond_6
    iget v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    const/16 v6, 0x1ce

    if-ne v5, v6, :cond_7

    .line 165
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mOperations:Ljava/util/ArrayList;

    iget-boolean v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mInitialSync:Z

    invoke-virtual {p0, v5, v6}, Lcom/android/exchange/adapter/FolderSyncParser;->changesParser(Ljava/util/ArrayList;Z)V

    goto/16 :goto_1

    .line 167
    :cond_7
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto/16 :goto_1

    .line 169
    :cond_8
    iget-object v5, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v5}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 170
    :try_start_0
    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v6}, Lcom/android/exchange/EasSyncService;->isStopped()Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v3, :cond_a

    .line 171
    :cond_9
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->commit()V

    .line 172
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Leaving FolderSyncParser with Account syncKey="

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v8, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    .line 174
    :cond_a
    monitor-exit v5

    .line 175
    return v2

    .line 174
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public responsesParser()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 573
    return-void
.end method

.method public updateParser(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v5, 0x0

    .line 347
    .local v5, serverId:Ljava/lang/String;
    const/4 v2, 0x0

    .line 348
    .local v2, displayName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 349
    .local v4, parentId:Ljava/lang/String;
    :goto_0
    const/16 v6, 0x1d1

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/FolderSyncParser;->nextTag(I)I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    .line 350
    iget v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->tag:I

    packed-switch v6, :pswitch_data_0

    .line 361
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->skipTag()V

    goto :goto_0

    .line 352
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 353
    goto :goto_0

    .line 355
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 356
    goto :goto_0

    .line 358
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/FolderSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 359
    goto :goto_0

    .line 367
    :cond_0
    if-eqz v5, :cond_6

    if-nez v2, :cond_1

    if-eqz v4, :cond_6

    .line 368
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/exchange/adapter/FolderSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 371
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 372
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Updating "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    invoke-virtual {p0, v6}, Lcom/android/exchange/adapter/FolderSyncParser;->userLog([Ljava/lang/String;)V

    .line 374
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 375
    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_2
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, oldParentId:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 379
    iget-object v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mParentFixupsNeeded:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 383
    .local v1, cv:Landroid/content/ContentValues;
    if-eqz v2, :cond_4

    .line 384
    const-string v6, "displayName"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :cond_4
    const-string v6, "parentServerId"

    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v6, "parentKey"

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 390
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/exchange/adapter/FolderSyncParser;->mFixupUninitializedNeeded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #oldParentId:Ljava/lang/String;
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 400
    .end local v0           #c:Landroid/database/Cursor;
    :cond_6
    return-void

    .line 397
    .restart local v0       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v6

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x1c7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
