.class public Lcom/android/exchange/adapter/EmailSyncAdapter;
.super Lcom/android/exchange/adapter/AbstractSyncAdapter;
.source "EmailSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;,
        Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;
    }
.end annotation


# static fields
.field private static final FETCH_REQUEST_PROJECTION:[Ljava/lang/String;

.field private static final MESSAGE_ID_SUBJECT_PROJECTION:[Ljava/lang/String;

.field private static final UPDATES_PROJECTION:[Ljava/lang/String;


# instance fields
.field mBindArgument:[Ljava/lang/String;

.field mBindArguments:[Ljava/lang/String;

.field mDeletedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFetchNeeded:Z

.field mFetchRequestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;",
            ">;"
        }
    .end annotation
.end field

.field mIsLooping:Z

.field mUpdatedIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "flagRead"

    aput-object v1, v0, v3

    const-string v1, "mailboxKey"

    aput-object v1, v0, v4

    const-string v1, "syncServerId"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "flagFavorite"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->UPDATES_PROJECTION:[Ljava/lang/String;

    .line 80
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "subject"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->MESSAGE_ID_SUBJECT_PROJECTION:[Ljava/lang/String;

    .line 87
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "syncServerId"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->FETCH_REQUEST_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/exchange/EasSyncService;)V
    .locals 2
    .parameter "service"

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/AbstractSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArguments:[Ljava/lang/String;

    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    .line 100
    iput-boolean v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchNeeded:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mIsLooping:Z

    .line 107
    return-void
.end method

.method static synthetic access$002(Lcom/android/exchange/adapter/EmailSyncAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchNeeded:Z

    return p1
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->MESSAGE_ID_SUBJECT_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/exchange/adapter/EmailSyncAdapter;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->addCleanupOps(Ljava/util/ArrayList;)V

    return-void
.end method

.method private addCleanupOps(Ljava/util/ArrayList;)V
    .locals 6
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

    .prologue
    .line 972
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 973
    .local v1, id:Ljava/lang/Long;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 977
    .end local v1           #id:Ljava/lang/Long;
    :cond_0
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 978
    .restart local v1       #id:Ljava/lang/Long;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 983
    .end local v1           #id:Ljava/lang/Long;
    :cond_1
    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 984
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "mailboxKey=? AND (flags&512)!=0"

    iget-object v4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 986
    return-void
.end method

.method private formatTwo(I)Ljava/lang/String;
    .locals 2
    .parameter "num"

    .prologue
    .line 1005
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x30

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1008
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getEmailFilter()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget v0, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncLookback:I

    .line 125
    .local v0, syncLookback:I
    if-nez v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget v0, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncLookback:I

    .line 128
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 142
    const-string v1, "3"

    :goto_0
    return-object v1

    .line 130
    :pswitch_0
    const-string v1, "1"

    goto :goto_0

    .line 132
    :pswitch_1
    const-string v1, "2"

    goto :goto_0

    .line 134
    :pswitch_2
    const-string v1, "3"

    goto :goto_0

    .line 136
    :pswitch_3
    const-string v1, "4"

    goto :goto_0

    .line 138
    :pswitch_4
    const-string v1, "5"

    goto :goto_0

    .line 140
    :pswitch_5
    const-string v1, "0"

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private messageReferenced(Landroid/content/ContentResolver;J)Z
    .locals 7
    .parameter "cr"
    .parameter "id"

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1042
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Body;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Body;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "sourceMessageKey=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mBindArgument:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1045
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1047
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1045
    return v0

    .line 1047
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public cleanup()V
    .locals 3

    .prologue
    .line 990
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 991
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 992
    .local v0, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->addCleanupOps(Ljava/util/ArrayList;)V

    .line 994
    :try_start_0
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.android.email.provider"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1002
    .end local v0           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_1
    :goto_0
    return-void

    .line 998
    .restart local v0       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v1

    goto :goto_0

    .line 996
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4
    .parameter "calendar"

    .prologue
    const/16 v3, 0x3a

    const/16 v2, 0x2d

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1019
    .local v0, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1020
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1021
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1023
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1025
    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1027
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1029
    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatTwo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    const-string v1, ".000Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 967
    const-string v0, "Email"

    return-object v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mIsLooping:Z

    return v0
.end method

.method public isSyncable()Z
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .locals 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;

    invoke-direct {v0, p0, p1, p0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;-><init>(Lcom/android/exchange/adapter/EmailSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/EmailSyncAdapter;)V

    .line 218
    .local v0, p:Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchNeeded:Z

    .line 219
    invoke-virtual {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->parse()Z

    move-result v1

    .line 221
    .local v1, res:Z
    invoke-virtual {v0}, Lcom/android/exchange/adapter/EmailSyncAdapter$EasEmailSyncParser;->isLooping()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mIsLooping:Z

    .line 223
    iget-boolean v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchNeeded:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 224
    :cond_0
    const/4 v2, 0x1

    .line 226
    :goto_0
    return v2

    :cond_1
    move v2, v1

    goto :goto_0
.end method

.method sendDeletedItems(Lcom/android/exchange/adapter/Serializer;Ljava/util/ArrayList;Z)Z
    .locals 10
    .parameter "s"
    .parameter
    .parameter "first"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/exchange/adapter/Serializer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, deletedIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 1063
    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1066
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailboxKey="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v8, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1070
    .local v6, c:Landroid/database/Cursor;
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1072
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1073
    const/16 v1, 0xb

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1075
    .local v7, serverId:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1078
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/exchange/adapter/EmailSyncAdapter;->messageReferenced(Landroid/content/ContentResolver;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1079
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Postponing deletion of referenced message: "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v7, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->userLog([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1090
    .end local v7           #serverId:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1081
    .restart local v7       #serverId:Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_2

    .line 1082
    const/16 v1, 0x16

    :try_start_1
    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1083
    const/4 p3, 0x0

    .line 1086
    :cond_2
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v7}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1087
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1090
    .end local v7           #serverId:Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1093
    return p3
.end method

.method public sendLocalChanges(Lcom/android/exchange/adapter/Serializer;)Z
    .locals 31
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1100
    .local v5, cr:Landroid/content/ContentResolver;
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getSyncKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1101
    const/4 v6, 0x0

    .line 1253
    :goto_0
    return v6

    .line 1105
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-object v6, v0

    iget v6, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-object v6, v0

    iget v6, v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 1106
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 1110
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mDeletedIdList:Ljava/util/ArrayList;

    move-object v6, v0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/exchange/adapter/EmailSyncAdapter;->sendDeletedItems(Lcom/android/exchange/adapter/Serializer;Ljava/util/ArrayList;Z)Z

    move-result v14

    .line 1112
    .local v14, firstCommand:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1116
    if-eqz v14, :cond_3

    .line 1117
    const/16 v6, 0x16

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1118
    const/4 v14, 0x0

    .line 1120
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;

    .line 1121
    .local v26, req:Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;
    const/16 v6, 0xa

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0xd

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;->serverId:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v6, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto :goto_1

    .line 1126
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v26           #req:Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-object v7, v0

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    const/4 v9, 0x6

    invoke-static {v6, v7, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v28

    .line 1130
    .local v28, trashMailboxId:J
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->LIST_PROJECTION:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mailboxKey="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-object v9, v0

    iget-wide v9, v9, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1134
    .local v11, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1136
    :goto_2
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1137
    const/4 v6, 0x0

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1139
    .local v18, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1142
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v6

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/android/exchange/adapter/EmailSyncAdapter;->UPDATES_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    .line 1146
    .local v13, currentCursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-nez v6, :cond_5

    .line 1243
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1247
    .end local v13           #currentCursor:Landroid/database/Cursor;
    .end local v18           #id:J
    :catchall_0
    move-exception v6

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v6

    .line 1150
    .restart local v13       #currentCursor:Landroid/database/Cursor;
    .restart local v18       #id:J
    :cond_5
    const/4 v6, 0x2

    :try_start_3
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v27

    .line 1151
    .local v27, serverId:Ljava/lang/String;
    if-nez v27, :cond_6

    .line 1243
    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 1155
    :cond_6
    const/4 v6, 0x1

    :try_start_5
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v6, v6, v28

    if-nez v6, :cond_8

    .line 1156
    if-eqz v14, :cond_7

    .line 1157
    const/16 v6, 0x16

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1158
    const/4 v14, 0x0

    .line 1161
    :cond_7
    const/16 v6, 0x9

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0xd

    move-object v0, v6

    move v1, v7

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1243
    :try_start_6
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 1165
    :cond_8
    const/16 v16, 0x0

    .line 1166
    .local v16, flagChange:Z
    const/16 v25, 0x0

    .line 1168
    .local v25, readChange:Z
    const/4 v6, 0x1

    :try_start_7
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 1169
    .local v20, mailbox:J
    const/16 v6, 0x9

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v6, v20, v6

    if-eqz v6, :cond_9

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    move-object v6, v0

    new-instance v7, Lcom/android/exchange/MessageMoveRequest;

    move-object v0, v7

    move-wide/from16 v1, v18

    move-wide/from16 v3, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/exchange/MessageMoveRequest;-><init>(JJ)V

    invoke-virtual {v6, v7}, Lcom/android/exchange/EasSyncService;->addRequest(Lcom/android/exchange/Request;)V

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mUpdatedIdList:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1183
    :cond_9
    const/4 v15, 0x0

    .line 1184
    .local v15, flag:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/exchange/EasSyncService;->mProtocolVersionDouble:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v8, 0x4028

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_a

    .line 1185
    const/4 v6, 0x3

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1186
    const/4 v6, 0x6

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eq v15, v6, :cond_a

    .line 1187
    const/16 v16, 0x1

    .line 1191
    :cond_a
    const/4 v6, 0x0

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 1192
    .local v24, read:I
    const/4 v6, 0x4

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v6

    move/from16 v0, v24

    move v1, v6

    if-eq v0, v1, :cond_b

    .line 1193
    const/16 v25, 0x1

    .line 1196
    :cond_b
    if-nez v16, :cond_c

    if-nez v25, :cond_c

    .line 1243
    :try_start_8
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 1201
    :cond_c
    if-eqz v14, :cond_d

    .line 1202
    const/16 v6, 0x16

    :try_start_9
    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1203
    const/4 v14, 0x0

    .line 1206
    :cond_d
    const/16 v6, 0x8

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0xd

    const/16 v8, 0xb

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0x1d

    invoke-virtual {v6, v7}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 1209
    if-eqz v25, :cond_e

    .line 1210
    const/16 v6, 0x95

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    move v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1218
    :cond_e
    if-eqz v16, :cond_f

    .line 1219
    if-eqz v15, :cond_10

    .line 1221
    const/16 v6, 0xba

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0xbb

    const-string v8, "2"

    invoke-virtual {v6, v7, v8}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1223
    const/16 v6, 0xbd

    const-string v7, "FollowUp"

    move-object/from16 v0, p1

    move v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1225
    .local v22, now:J
    const-string v6, "GMT"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-static {v6}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v12

    .line 1227
    .local v12, calendar:Ljava/util/Calendar;
    move-object v0, v12

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1230
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v30

    .line 1231
    .local v30, utc:Ljava/lang/String;
    const/16 v6, 0x25e

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0x25f

    move-object v0, v6

    move v1, v7

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1233
    const-wide/32 v6, 0x240c8400

    add-long v6, v6, v22

    invoke-virtual {v12, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1234
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/EmailSyncAdapter;->formatDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v30

    .line 1235
    const/16 v6, 0x24c

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    const/16 v7, 0x24d

    move-object v0, v6

    move v1, v7

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 1236
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1241
    .end local v12           #calendar:Ljava/util/Calendar;
    .end local v22           #now:J
    .end local v30           #utc:Ljava/lang/String;
    :cond_f
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1243
    :try_start_a
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2

    .line 1238
    :cond_10
    const/16 v6, 0xba

    :try_start_b
    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_3

    .line 1243
    .end local v15           #flag:I
    .end local v16           #flagChange:Z
    .end local v20           #mailbox:J
    .end local v24           #read:I
    .end local v25           #readChange:Z
    .end local v27           #serverId:Ljava/lang/String;
    :catchall_1
    move-exception v6

    :try_start_c
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1247
    .end local v13           #currentCursor:Landroid/database/Cursor;
    .end local v18           #id:J
    :cond_11
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1250
    if-nez v14, :cond_12

    .line 1251
    invoke-virtual/range {p1 .. p1}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 1253
    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method public sendSyncOptions(Ljava/lang/Double;Lcom/android/exchange/adapter/Serializer;)V
    .locals 12
    .parameter "protocolVersion"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x22

    const/16 v10, 0x17

    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 162
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/exchange/adapter/EmailSyncAdapter;->FETCH_REQUEST_PROJECTION:[Ljava/lang/String;

    const-string v3, "flagLoaded=2 AND mailboxKey=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v7, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 171
    .local v6, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/exchange/adapter/EmailSyncAdapter$FetchRequest;-><init>(JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 185
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    const/16 v0, 0x1e

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 187
    const/16 v0, 0x13

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->tag(I)Lcom/android/exchange/adapter/Serializer;

    .line 188
    const/16 v0, 0x15

    const-string v1, "5"

    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 189
    invoke-virtual {p2, v10}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 191
    const/16 v0, 0x18

    invoke-direct {p0}, Lcom/android/exchange/adapter/EmailSyncAdapter;->getEmailFilter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 193
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4028

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 194
    const/16 v0, 0x445

    invoke-virtual {p2, v0}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 196
    const/16 v0, 0x446

    const-string v1, "2"

    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 197
    const/16 v0, 0x447

    const-string v1, "200000"

    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 198
    invoke-virtual {p2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 204
    :goto_1
    invoke-virtual {p2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    .line 213
    :goto_2
    return-void

    .line 201
    :cond_1
    const-string v0, "2"

    invoke-virtual {p2, v11, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 202
    const/16 v0, 0x23

    const-string v1, "7"

    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    goto :goto_1

    .line 206
    :cond_2
    invoke-virtual {p2, v10}, Lcom/android/exchange/adapter/Serializer;->start(I)Lcom/android/exchange/adapter/Serializer;

    .line 209
    const-string v0, "0"

    invoke-virtual {p2, v11, v0}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 210
    const/16 v0, 0x19

    const-string v1, "7"

    invoke-virtual {p2, v0, v1}, Lcom/android/exchange/adapter/Serializer;->data(ILjava/lang/String;)Lcom/android/exchange/adapter/Serializer;

    .line 211
    invoke-virtual {p2}, Lcom/android/exchange/adapter/Serializer;->end()Lcom/android/exchange/adapter/Serializer;

    goto :goto_2
.end method

.method public wipe()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 111
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailboxKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->DELETED_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailboxKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->UPDATED_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mailboxKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v0}, Lcom/android/exchange/EasSyncService;->clearRequests()V

    .line 118
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mFetchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 120
    iget-object v0, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    iget-object v3, p0, Lcom/android/exchange/adapter/EmailSyncAdapter;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 121
    return-void
.end method
