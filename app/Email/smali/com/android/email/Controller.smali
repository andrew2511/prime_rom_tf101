.class public Lcom/android/email/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/Controller$ControllerService;,
        Lcom/android/email/Controller$ServiceCallbackWrapper;,
        Lcom/android/email/Controller$ServiceCallback;,
        Lcom/android/email/Controller$LegacyListener;,
        Lcom/android/email/Controller$MessageRetrievalListenerBridge;,
        Lcom/android/email/Controller$Result;
    }
.end annotation


# static fields
.field private static final BODY_SOURCE_KEY_PROJECTION:[Ljava/lang/String;

.field private static final MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

.field private static sCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/emailcommon/service/IEmailServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/email/Controller;


# instance fields
.field private final mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

.field private final mContext:Landroid/content/Context;

.field private final mLegacyController:Lcom/android/email/MessagingController;

.field final mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLegacyListener:Lcom/android/email/Controller$LegacyListener;

.field private final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/email/Controller$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderContext:Landroid/content/Context;

.field private final mServiceCallback:Lcom/android/email/Controller$ServiceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "accountKey"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/email/Controller;->MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

    .line 99
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "sourceMessageKey"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/email/Controller;->BODY_SOURCE_KEY_PROJECTION:[Ljava/lang/String;

    .line 111
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    sput-object v0, Lcom/android/email/Controller;->sCallbackList:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "_context"

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/android/email/Controller$LegacyListener;

    invoke-direct {v0, p0}, Lcom/android/email/Controller$LegacyListener;-><init>(Lcom/android/email/Controller;)V

    iput-object v0, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    .line 78
    new-instance v0, Lcom/android/email/Controller$ServiceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/Controller$ServiceCallback;-><init>(Lcom/android/email/Controller;Lcom/android/email/Controller$1;)V

    iput-object v0, p0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/Controller;->mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1564
    new-instance v0, Lcom/android/email/Controller$12;

    invoke-direct {v0, p0}, Lcom/android/email/Controller$12;-><init>(Lcom/android/email/Controller;)V

    iput-object v0, p0, Lcom/android/email/Controller;->mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    .line 116
    iput-object p1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    .line 117
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/email/MessagingController;->getInstance(Landroid/content/Context;Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    .line 118
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    iget-object v1, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    invoke-virtual {v0, v1}, Lcom/android/email/MessagingController;->addListener(Lcom/android/email/MessagingListener;)V

    .line 119
    return-void
.end method

.method static synthetic access$100(Lcom/android/email/Controller;J)Lcom/android/emailcommon/service/IEmailService;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()Lcom/android/email/Controller;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/email/Controller;)Lcom/android/email/Controller$LegacyListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/Controller;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/email/Controller;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/Controller;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/Controller;)Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/email/Controller;->mCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    return-object v0
.end method

.method static synthetic access$800()Landroid/os/RemoteCallbackList;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/email/Controller;->sCallbackList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/email/Controller;->BODY_SOURCE_KEY_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method private getExchangeEmailService()Lcom/android/emailcommon/service/IEmailService;
    .locals 2

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v0, v1}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/Controller;
    .locals 2
    .parameter "_context"

    .prologue
    .line 135
    const-class v0, Lcom/android/email/Controller;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;

    if-nez v1, :cond_0

    .line 136
    new-instance v1, Lcom/android/email/Controller;

    invoke-direct {v1, p0}, Lcom/android/email/Controller;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;

    .line 138
    :cond_0
    sget-object v1, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getServiceForAccount(J)Lcom/android/emailcommon/service/IEmailService;
    .locals 1
    .parameter "accountId"

    .prologue
    .line 933
    invoke-virtual {p0, p1, p2}, Lcom/android/email/Controller;->isMessagingController(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 934
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/email/Controller;->getExchangeEmailService()Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    goto :goto_0
.end method

.method private getServiceForMessage(J)Lcom/android/emailcommon/service/IEmailService;
    .locals 3
    .parameter "messageId"

    .prologue
    .line 919
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    .line 920
    .local v0, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v0, :cond_0

    .line 921
    const/4 v1, 0x0

    .line 923
    :goto_0
    return-object v1

    :cond_0
    iget-wide v1, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-direct {p0, v1, v2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    goto :goto_0
.end method

.method public static declared-synchronized injectMockControllerForTest(Lcom/android/email/Controller;)V
    .locals 2
    .parameter "mockController"

    .prologue
    .line 147
    const-class v0, Lcom/android/email/Controller;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/android/email/Controller;->sInstance:Lcom/android/email/Controller;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit v0

    return-void

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private lookupAccountForMessage(J)J
    .locals 8
    .parameter "messageId"

    .prologue
    const/4 v4, 0x1

    .line 682
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 683
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/email/Controller;->MESSAGEID_TO_ACCOUNTID_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 687
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 691
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-wide v1

    .line 687
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0

    .line 691
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private sendPendingMessagesSmtp(J)V
    .locals 4
    .parameter "accountId"

    .prologue
    .line 557
    iget-object v3, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 559
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_0

    .line 568
    :goto_0
    return-void

    .line 562
    :cond_0
    const/4 v3, 0x5

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v1

    .line 563
    .local v1, sentboxId:J
    new-instance v3, Lcom/android/email/Controller$5;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/android/email/Controller$5;-><init>(Lcom/android/email/Controller;Lcom/android/emailcommon/provider/EmailContent$Account;J)V

    invoke-static {v3}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private setMessageBoolean(JLjava/lang/String;Z)Landroid/os/AsyncTask;
    .locals 6
    .parameter "messageId"
    .parameter "columnName"
    .parameter "columnValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 835
    new-instance v0, Lcom/android/email/Controller$10;

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Controller$10;-><init>(Lcom/android/email/Controller;Ljava/lang/String;ZJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addResultCallback(Lcom/android/email/Controller$Result;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v0

    .line 167
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/android/email/Controller$Result;->setRegistered(Z)V

    .line 168
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 169
    monitor-exit v0

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cleanupForTest()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    iget-object v1, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    invoke-virtual {v0, v1}, Lcom/android/email/MessagingController;->removeListener(Lcom/android/email/MessagingListener;)V

    .line 129
    return-void
.end method

.method createMailbox(JI)J
    .locals 4
    .parameter "accountId"
    .parameter "mailboxType"

    .prologue
    .line 508
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    if-gez p3, :cond_1

    .line 509
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid arguments "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, mes:Ljava/lang/String;
    const-string v2, "Email"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 513
    .end local v1           #mes:Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    .line 514
    .local v0, box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    iput-wide p1, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 515
    iput p3, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 516
    const/4 v2, -0x1

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 517
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 518
    invoke-virtual {p0, p3}, Lcom/android/email/Controller;->getMailboxServerName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 519
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 520
    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    return-wide v2
.end method

.method public deleteAccount(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 963
    new-instance v0, Lcom/android/email/Controller$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/Controller$11;-><init>(Lcom/android/email/Controller;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 968
    return-void
.end method

.method public deleteAccountSync(JLandroid/content/Context;)V
    .locals 9
    .parameter "accountId"
    .parameter "context"

    .prologue
    .line 975
    :try_start_0
    iget-object v6, p0, Lcom/android/email/Controller;->mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    invoke-static {p3, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 978
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_1

    .line 1004
    iget-object v6, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v6

    .line 1005
    :try_start_1
    iget-object v7, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/Controller$Result;

    .line 1006
    .local v4, l:Lcom/android/email/Controller$Result;
    invoke-virtual {v4, p1, p2}, Lcom/android/email/Controller$Result;->deleteAccountCallback(J)V

    goto :goto_0

    .line 1008
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #l:Lcom/android/email/Controller$Result;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1010
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :goto_1
    return-void

    .line 982
    .end local v3           #i$:Ljava/util/Iterator;
    .restart local v0       #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_1
    :try_start_3
    invoke-virtual {v0, p3}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 984
    .local v1, accountUri:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 985
    const/4 v6, 0x0

    invoke-static {v1, p3, v6}, Lcom/android/email/mail/Store;->getInstance(Ljava/lang/String;Landroid/content/Context;Lcom/android/email/mail/Store$PersistentDataCallbacks;)Lcom/android/email/mail/Store;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/mail/Store;->delete()V

    .line 987
    invoke-static {v1}, Lcom/android/email/mail/Store;->removeInstance(Ljava/lang/String;)V

    .line 990
    :cond_2
    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 992
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 995
    invoke-static {p3}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    .line 998
    invoke-static {p3}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/email/SecurityPolicy;->reducePolicies()V

    .line 1000
    invoke-static {p3}, Lcom/android/email/Email;->setServicesEnabledSync(Landroid/content/Context;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1004
    iget-object v6, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v6

    .line 1005
    :try_start_4
    iget-object v7, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/Controller$Result;

    .line 1006
    .restart local v4       #l:Lcom/android/email/Controller$Result;
    invoke-virtual {v4, p1, p2}, Lcom/android/email/Controller$Result;->deleteAccountCallback(J)V

    goto :goto_2

    .line 1008
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #l:Lcom/android/email/Controller$Result;
    :catchall_1
    move-exception v7

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 1001
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v1           #accountUri:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 1002
    .local v2, e:Ljava/lang/Exception;
    :try_start_6
    const-string v6, "Email"

    const-string v7, "Exception while deleting account"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1004
    iget-object v6, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v6

    .line 1005
    :try_start_7
    iget-object v7, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/Controller$Result;

    .line 1006
    .restart local v4       #l:Lcom/android/email/Controller$Result;
    invoke-virtual {v4, p1, p2}, Lcom/android/email/Controller$Result;->deleteAccountCallback(J)V

    goto :goto_3

    .line 1008
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #l:Lcom/android/email/Controller$Result;
    :catchall_2
    move-exception v7

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v7

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_1

    .line 1004
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_3
    move-exception v6

    iget-object v7, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v7

    .line 1005
    :try_start_9
    iget-object v8, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/email/Controller$Result;

    .line 1006
    .restart local v4       #l:Lcom/android/email/Controller$Result;
    invoke-virtual {v4, p1, p2}, Lcom/android/email/Controller$Result;->deleteAccountCallback(J)V

    goto :goto_4

    .line 1008
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #l:Lcom/android/email/Controller$Result;
    :catchall_4
    move-exception v6

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v6

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_5
    :try_start_a
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v6
.end method

.method public deleteAttachment(J)V
    .locals 4
    .parameter "attachmentId"

    .prologue
    const/4 v3, 0x0

    .line 700
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 701
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 702
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 703
    return-void
.end method

.method public deleteAttachmentMessages()V
    .locals 9

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 196
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 198
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "type=257"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 200
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 203
    .local v7, mailboxId:J
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3, v7, v8}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllMailboxAttachmentFiles(Landroid/content/Context;JJ)V

    .line 205
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "mailboxKey=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 209
    .end local v7           #mailboxId:J
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_0

    .line 210
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v1

    .line 209
    :cond_1
    if-eqz v6, :cond_2

    .line 210
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 213
    :cond_2
    return-void
.end method

.method public deleteMessage(JJ)V
    .locals 6
    .parameter "messageId"
    .parameter "accountId"

    .prologue
    .line 716
    new-instance v0, Lcom/android/email/Controller$8;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Controller$8;-><init>(Lcom/android/email/Controller;JJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 721
    return-void
.end method

.method deleteMessageSync(JJ)V
    .locals 11
    .parameter "messageId"
    .parameter "accountId"

    .prologue
    const/4 v10, 0x0

    .line 728
    iget-object v7, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v7, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 730
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_1

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 733
    :cond_1
    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    const/4 v9, 0x6

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v4

    .line 736
    .local v4, trashMailboxId:J
    iget-object v7, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v7, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->getMailboxForMessageId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 738
    .local v2, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v2, :cond_0

    .line 741
    iget-object v7, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v7, v8, v9, p1, p2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAttachmentFiles(Landroid/content/Context;JJ)V

    .line 744
    sget-object v7, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 746
    .local v6, uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 749
    .local v3, resolver:Landroid/content/ContentResolver;
    iget-wide v7, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    cmp-long v7, v7, v4

    if-eqz v7, :cond_2

    iget v7, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    .line 751
    :cond_2
    invoke-virtual {v3, v6, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 759
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/email/Controller;->isMessagingController(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 760
    iget-object v7, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    iget-wide v8, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-virtual {v7, v8, v9}, Lcom/android/email/MessagingController;->processPendingActions(J)V

    goto :goto_0

    .line 754
    :cond_3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 755
    .local v1, cv:Landroid/content/ContentValues;
    const-string v7, "mailboxKey"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 756
    invoke-virtual {v3, v6, v1, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method public deleteSyncedDataSync(J)V
    .locals 7
    .parameter "accountId"

    .prologue
    .line 1027
    :try_start_0
    iget-object v5, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v5, p1, p2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->deleteAllAccountAttachmentFiles(Landroid/content/Context;J)V

    .line 1033
    iget-object v5, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1034
    .local v3, resolver:Landroid/content/ContentResolver;
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 1035
    .local v0, accountIdArgs:[Ljava/lang/String;
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "accountKey=? AND type!=68"

    invoke-virtual {v3, v5, v6, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1038
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "accountKey=?"

    invoke-virtual {v3, v5, v6, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1041
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1042
    .local v1, cv:Landroid/content/ContentValues;
    const-string v5, "syncKey"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1043
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id =?"

    invoke-virtual {v3, v5, v1, v6, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1044
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1045
    const-string v5, "syncKey"

    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1046
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "accountKey=?"

    invoke-virtual {v3, v5, v1, v6, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1050
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v4

    .line 1051
    .local v4, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v4, :cond_0

    .line 1052
    invoke-interface {v4, p1, p2}, Lcom/android/emailcommon/service/IEmailService;->deleteAccountPIMData(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    .end local v0           #accountIdArgs:[Ljava/lang/String;
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v4           #service:Lcom/android/emailcommon/service/IEmailService;
    :cond_0
    :goto_0
    return-void

    .line 1054
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 1055
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "Email"

    const-string v6, "Exception while deleting account synced data"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized findOrCreateMailboxOfType(JI)J
    .locals 6
    .parameter "accountId"
    .parameter "mailboxType"

    .prologue
    const-wide/16 v4, -0x1

    .line 464
    monitor-enter p0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    move-wide v2, v4

    .line 469
    :goto_0
    monitor-exit p0

    return-wide v2

    .line 467
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v2, p1, p2, p3}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v0

    .line 469
    .local v0, mailboxId:J
    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/Controller;->createMailbox(JI)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    goto :goto_0

    :cond_2
    move-wide v2, v0

    goto :goto_0

    .line 464
    .end local v0           #mailboxId:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getAttachmentMailbox()Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 221
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "type=257"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 224
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    new-instance v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    .line 226
    .local v7, m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-virtual {v7, v6}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restore(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v8, v7

    .line 240
    .end local v7           #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .local v8, m:Ljava/lang/Object;
    :goto_0
    return-object v8

    .line 230
    .end local v8           #m:Ljava/lang/Object;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 232
    new-instance v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v7}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    .line 233
    .restart local v7       #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    const-wide/16 v0, 0x0

    iput-wide v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 234
    const-string v0, "__attachment_mailbox__"

    iput-object v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mFlagVisible:Z

    .line 236
    const-string v0, "__attachment_mailbox__"

    iput-object v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 237
    const/4 v0, -0x1

    iput v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 238
    const/16 v0, 0x101

    iput v0, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    .line 239
    iget-object v0, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->save(Landroid/content/Context;)Landroid/net/Uri;

    move-object v8, v7

    .line 240
    .restart local v8       #m:Ljava/lang/Object;
    goto :goto_0

    .line 230
    .end local v7           #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v8           #m:Ljava/lang/Object;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method getMailboxServerName(I)Ljava/lang/String;
    .locals 2
    .parameter "mailboxType"

    .prologue
    .line 479
    const/4 v0, -0x1

    .line 480
    .local v0, resId:I
    packed-switch p1, :pswitch_data_0

    .line 500
    :goto_0
    :pswitch_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    .line 482
    :pswitch_1
    const v0, 0x7f08004c

    .line 483
    goto :goto_0

    .line 485
    :pswitch_2
    const v0, 0x7f08004d

    .line 486
    goto :goto_0

    .line 488
    :pswitch_3
    const v0, 0x7f08004e

    .line 489
    goto :goto_0

    .line 491
    :pswitch_4
    const v0, 0x7f08004f

    .line 492
    goto :goto_0

    .line 494
    :pswitch_5
    const v0, 0x7f080050

    .line 495
    goto :goto_0

    .line 497
    :pswitch_6
    const v0, 0x7f080051

    goto :goto_0

    .line 500
    :cond_0
    const-string v1, ""

    goto :goto_1

    .line 480
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public getResultCallbacksForTest()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/email/Controller$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method public isMessagingController(J)Z
    .locals 4
    .parameter "accountId"

    .prologue
    .line 950
    iget-object v2, p0, Lcom/android/email/Controller;->mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 951
    .local v0, isLegacyController:Ljava/lang/Boolean;
    if-nez v0, :cond_1

    .line 952
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 953
    .local v1, protocol:Ljava/lang/String;
    const-string v2, "pop3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "imap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 954
    iget-object v2, p0, Lcom/android/email/Controller;->mLegacyControllerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    .end local v1           #protocol:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 953
    .restart local v1       #protocol:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isMessagingController(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .locals 2
    .parameter "account"

    .prologue
    .line 945
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 946
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-virtual {p0, v0, v1}, Lcom/android/email/Controller;->isMessagingController(J)Z

    move-result v0

    goto :goto_0
.end method

.method public loadAttachment(JJJ)V
    .locals 12
    .parameter "attachmentId"
    .parameter "messageId"
    .parameter "accountId"

    .prologue
    .line 886
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v9

    .line 887
    .local v9, attachInfo:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-nez v9, :cond_0

    .line 909
    .end local v9           #attachInfo:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :goto_0
    return-void

    .line 891
    .restart local v9       #attachInfo:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_0
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v1, v9}, Lcom/android/emailcommon/utility/Utility;->attachmentExists(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 894
    iget-object v9, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    .end local v9           #attachInfo:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    monitor-enter v9

    .line 895
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 896
    .local v0, listener:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const/4 v8, 0x0

    move-wide/from16 v2, p5

    move-wide v4, p3

    move-wide v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_1

    .line 901
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v11           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 898
    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 899
    .restart local v0       #listener:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const/16 v8, 0x64

    move-wide/from16 v2, p5

    move-wide v4, p3

    move-wide v6, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/Controller$Result;->loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJI)V

    goto :goto_2

    .line 901
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    :cond_2
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 906
    .end local v11           #i$:Ljava/util/Iterator;
    .restart local v9       #attachInfo:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_3
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 907
    .local v10, cv:Landroid/content/ContentValues;
    const-string v1, "flags"

    iget v2, v9, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    or-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 908
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v9, v1, v10}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto :goto_0
.end method

.method public loadMessageForView(J)V
    .locals 12
    .parameter "messageId"

    .prologue
    const/4 v5, 0x0

    .line 411
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForMessage(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v9

    .line 412
    .local v9, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v9, :cond_1

    .line 415
    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 416
    .local v10, uri:Landroid/net/Uri;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 417
    .local v7, cv:Landroid/content/ContentValues;
    const-string v1, "flagLoaded"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 418
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v10, v7, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 419
    const-string v1, "Email"

    const-string v4, "Unexpected loadMessageForView() for service-based message."

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getAccountIdForMessageId(Landroid/content/Context;J)J

    move-result-wide v2

    .line 421
    .local v2, accountId:J
    iget-object v11, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v11

    .line 422
    :try_start_0
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/Controller$Result;

    .line 423
    .local v0, listener:Lcom/android/email/Controller$Result;
    const/4 v1, 0x0

    const/16 v6, 0x64

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/email/Controller$Result;->loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V

    goto :goto_0

    .line 425
    .end local v0           #listener:Lcom/android/email/Controller$Result;
    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    .end local v2           #accountId:J
    .end local v7           #cv:Landroid/content/ContentValues;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #uri:Landroid/net/Uri;
    :goto_1
    return-void

    .line 428
    :cond_1
    new-instance v1, Lcom/android/email/Controller$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/email/Controller$4;-><init>(Lcom/android/email/Controller;J)V

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public loadMessageFromUri(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 10
    .parameter "uri"

    .prologue
    const/4 v9, 0x0

    .line 249
    invoke-virtual {p0}, Lcom/android/email/Controller;->getAttachmentMailbox()Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v8

    .line 250
    .local v8, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    const/4 v6, 0x0

    .line 251
    .local v6, c:Landroid/database/Cursor;
    if-nez v8, :cond_1

    move-object v2, v9

    .line 287
    :cond_0
    :goto_0
    return-object v2

    .line 253
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .line 254
    .local v7, is:Ljava/io/InputStream;
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mimeType"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contentUri=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 260
    :try_start_1
    new-instance v1, Lcom/android/email/mail/store/Pop3Store$Pop3Message;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "__attachment_message__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;-><init>(Ljava/lang/String;Lcom/android/email/mail/store/Pop3Store$Pop3Folder;)V

    .line 262
    .local v1, pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "application/eml"

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 264
    invoke-virtual {v1, v7}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->parseWithoutConvertInputStream(Ljava/io/InputStream;)V

    .line 269
    :goto_1
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    .line 270
    .local v0, msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    const-wide/16 v2, 0x0

    iget-wide v4, v8, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    invoke-static/range {v0 .. v5}, Lcom/android/email/LegacyConversions;->updateMessageFields(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/mail/Message;JJ)Z

    .line 272
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 274
    iget-object v2, p0, Lcom/android/email/Controller;->mLegacyController:Lcom/android/email/MessagingController;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/android/email/MessagingController;->copyOneMessageToProvider(Lcom/android/emailcommon/mail/Message;Lcom/android/emailcommon/provider/EmailContent$Message;ILandroid/content/Context;)V

    .line 277
    iget-object v2, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 283
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 284
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 266
    .end local v0           #msg:Lcom/android/emailcommon/provider/EmailContent$Message;
    :cond_2
    :try_start_2
    invoke-virtual {v1, v7}, Lcom/android/email/mail/store/Pop3Store$Pop3Message;->parse(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 278
    .end local v1           #pop3Message:Lcom/android/email/mail/store/Pop3Store$Pop3Message;
    :catch_0
    move-exception v2

    .line 283
    :goto_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 284
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v7           #is:Ljava/io/InputStream;
    :cond_3
    :goto_3
    move-object v2, v9

    .line 287
    goto/16 :goto_0

    .line 281
    :catch_1
    move-exception v2

    .line 283
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 284
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 283
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    .line 284
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    .line 279
    .restart local v7       #is:Ljava/io/InputStream;
    :catch_2
    move-exception v2

    goto :goto_2
.end method

.method public loadMoreMessages(J)V
    .locals 1
    .parameter "mailboxId"

    .prologue
    .line 649
    new-instance v0, Lcom/android/email/Controller$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/Controller$7;-><init>(Lcom/android/email/Controller;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 675
    return-void
.end method

.method public moveMessage([JJ)Landroid/os/AsyncTask;
    .locals 1
    .parameter "messageIds"
    .parameter "newMailboxId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JJ)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 779
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 780
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 782
    :cond_1
    new-instance v0, Lcom/android/email/Controller$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/Controller$9;-><init>(Lcom/android/email/Controller;[JJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public removeResultCallback(Lcom/android/email/Controller$Result;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    monitor-enter v0

    .line 181
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/android/email/Controller$Result;->setRegistered(Z)V

    .line 182
    iget-object v1, p0, Lcom/android/email/Controller;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 183
    monitor-exit v0

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetVisibleLimits()V
    .locals 1

    .prologue
    .line 607
    new-instance v0, Lcom/android/email/Controller$6;

    invoke-direct {v0, p0}, Lcom/android/email/Controller$6;-><init>(Lcom/android/email/Controller;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 639
    return-void
.end method

.method public saveToMailbox(Lcom/android/emailcommon/provider/EmailContent$Message;I)V
    .locals 5
    .parameter "message"
    .parameter "mailboxType"

    .prologue
    .line 445
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 446
    .local v0, accountId:J
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v2

    .line 447
    .local v2, mailboxId:J
    iput-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 448
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/android/emailcommon/provider/EmailContent$Message;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 449
    return-void
.end method

.method public sendMeetingResponse(JI)V
    .locals 4
    .parameter "messageId"
    .parameter "response"

    .prologue
    .line 863
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForMessage(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 864
    .local v1, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v1, :cond_0

    .line 867
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/android/emailcommon/service/IEmailService;->sendMeetingResponse(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    :cond_0
    :goto_0
    return-void

    .line 868
    :catch_0
    move-exception v0

    .line 871
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "onDownloadAttachment"

    const-string v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendMessage(JJ)V
    .locals 10
    .parameter "messageId"
    .parameter "accountId"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    .line 531
    iget-object v5, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 532
    .local v3, resolver:Landroid/content/ContentResolver;
    cmp-long v5, p3, v8

    if-nez v5, :cond_0

    .line 533
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->lookupAccountForMessage(J)J

    move-result-wide p3

    .line 535
    :cond_0
    cmp-long v5, p3, v8

    if-nez v5, :cond_1

    .line 553
    :goto_0
    return-void

    .line 544
    :cond_1
    const/4 v5, 0x4

    invoke-virtual {p0, p3, p4, v5}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v1

    .line 545
    .local v1, outboxId:J
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 546
    .local v0, cv:Landroid/content/ContentValues;
    const-string v5, "mailboxKey"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 549
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 550
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v3, v4, v0, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 552
    invoke-virtual {p0, p3, p4}, Lcom/android/email/Controller;->sendPendingMessages(J)V

    goto :goto_0
.end method

.method public sendPendingMessages(J)V
    .locals 7
    .parameter "accountId"

    .prologue
    .line 577
    iget-object v4, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    const/4 v5, 0x4

    invoke-static {v4, p1, p2, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v1

    .line 579
    .local v1, outboxId:J
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    .line 598
    :goto_0
    return-void

    .line 584
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v3

    .line 585
    .local v3, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v3, :cond_1

    .line 588
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v3, v1, v2, v4}, Lcom/android/emailcommon/service/IEmailService;->startSync(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 589
    :catch_0
    move-exception v0

    .line 592
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "updateMailbox"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 596
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->sendPendingMessagesSmtp(J)V

    goto :goto_0
.end method

.method public serviceCheckMail(JJJ)V
    .locals 9
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "tag"

    .prologue
    .line 338
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v8

    .line 339
    .local v8, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v8, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/email/Controller;->mLegacyListener:Lcom/android/email/Controller$LegacyListener;

    iget-object v1, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/email/Controller$LegacyListener;->checkMailFinished(Landroid/content/Context;JJJ)V

    .line 359
    :goto_0
    return-void

    .line 353
    :cond_0
    new-instance v0, Lcom/android/email/Controller$2;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Controller$2;-><init>(Lcom/android/email/Controller;JJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public serviceLogging(I)V
    .locals 5
    .parameter "debugFlags"

    .prologue
    .line 296
    iget-object v2, p0, Lcom/android/email/Controller;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/Controller;->mServiceCallback:Lcom/android/email/Controller$ServiceCallback;

    invoke-static {v2, v3}, Lcom/android/email/ExchangeUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v1

    .line 298
    .local v1, service:Lcom/android/emailcommon/service/IEmailService;
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/emailcommon/service/IEmailService;->setLogging(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v0

    .line 302
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "setLogging"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setMessageFavorite(JZ)Landroid/os/AsyncTask;
    .locals 1
    .parameter "messageId"
    .parameter "isFavorite"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 822
    const-string v0, "flagFavorite"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/email/Controller;->setMessageBoolean(JLjava/lang/String;Z)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public setMessageRead(JZ)Landroid/os/AsyncTask;
    .locals 1
    .parameter "messageId"
    .parameter "isRead"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 810
    const-string v0, "flagRead"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/email/Controller;->setMessageBoolean(JLjava/lang/String;Z)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public setProviderContext(Landroid/content/Context;)V
    .locals 0
    .parameter "providerContext"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/android/email/Controller;->mProviderContext:Landroid/content/Context;

    .line 157
    return-void
.end method

.method public updateMailbox(JJZ)V
    .locals 8
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "userRequest"

    .prologue
    .line 370
    invoke-direct {p0, p1, p2}, Lcom/android/email/Controller;->getServiceForAccount(J)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v7

    .line 371
    .local v7, service:Lcom/android/emailcommon/service/IEmailService;
    if-eqz v7, :cond_0

    .line 374
    :try_start_0
    invoke-interface {v7, p3, p4, p5}, Lcom/android/emailcommon/service/IEmailService;->startSync(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v6

    .line 378
    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "updateMailbox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 382
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_0
    new-instance v0, Lcom/android/email/Controller$3;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/Controller$3;-><init>(Lcom/android/email/Controller;JJ)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public updateMailboxList(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 310
    new-instance v0, Lcom/android/email/Controller$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/Controller$1;-><init>(Lcom/android/email/Controller;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 329
    return-void
.end method
