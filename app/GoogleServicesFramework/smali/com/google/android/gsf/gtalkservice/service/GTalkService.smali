.class public Lcom/google/android/gsf/gtalkservice/service/GTalkService;
.super Landroid/app/Service;
.source "GTalkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/service/GTalkService$9;,
        Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;,
        Lcom/google/android/gsf/gtalkservice/service/GTalkService$WorkerThread;
    }
.end annotation


# static fields
.field private static final ACCOUNT_PROJECTION:[Ljava/lang/String;

.field private static final ACCOUNT_SETTINGS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

.field private mAirplaneModeTurnedOffTimeStamp:J

.field private mAirplaneModeTurnedOnTimeStamp:J

.field private mAuthTokenFetcher:Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

.field private mAutoSyncEnabled:Z

.field private mBackgroundDataEnabled:Z

.field private mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mControlAutoConnectUsingAutoSync:Z

.field private mDeviceStorageLow:Z

.field private final mGTalkServiceBinder:Lcom/google/android/gtalkservice/IGTalkService$Stub;

.field private mHandler:Landroid/os/Handler;

.field private mInMobileHipriorityMode:Z

.field private mIpcLock:Ljava/lang/Object;

.field private mPendingGservicesChange:Z

.field private mRawStanzaProvidersManager:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;

.field private mReconnectManager:Lcom/google/android/gsf/gtalkservice/ReconnectManager;

.field private mSendIdleAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

.field private mSessionsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

.field private mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

.field private mShouldThrottleReconnect:Z

.field private mStatusBarNotifier:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

.field private mTimeSinceServiceOnCreate:J

.field private mUserIsIdle:Z

.field private mWifiDisconnectedTimeStamp:J

.field private mWorkerLooper:Landroid/os/Looper;

.field private mXMPPConnection:Lorg/jivesoftware/smack/XMPPConnection;

.field private mXMPPConnectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mXMPPConnectionWriteLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 102
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "username"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 110
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "account_id"

    aput-object v1, v0, v2

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "value"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->ACCOUNT_SETTINGS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 838
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mBackgroundDataEnabled:Z

    .line 151
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mIpcLock:Ljava/lang/Object;

    .line 152
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 153
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    .line 154
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    .line 158
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 159
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnectionLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnectionWriteLock:Ljava/util/concurrent/locks/Lock;

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mPendingGservicesChange:Z

    .line 169
    new-instance v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$1;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    .line 1946
    new-instance v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$8;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mGTalkServiceBinder:Lcom/google/android/gtalkservice/IGTalkService$Stub;

    .line 839
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/GTalkConnection;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->refreshAuthToken(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setIsUserIdle(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->sendDeviceIdleStatusForConnections(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/Alarm;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSendIdleAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/Alarm;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSendIdleAlarm()Lcom/google/android/gsf/gtalkservice/Alarm;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getIdleTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->pollAutoSyncSetting()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setBackgroundDataWithLock(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleConnectivityChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleAirplaneModeChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mPendingGservicesChange:Z

    return p1
.end method

.method static synthetic access$2100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-static {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/Account;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createConnection(Lcom/google/android/gsf/gtalkservice/Account;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getAllSessionUsernames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createConnectionAndLogin(Lcom/google/android/gsf/gtalkservice/Account;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->deleteObsoleteAccounts()V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isBackgroundDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logoutAllSessions()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->autoSignIn()V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingCreateGTalkConnection(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mConnections:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->initializeConnection()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->resetOnGservicesChange()V

    return-void
.end method

.method static synthetic access$702(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mWorkerLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAuthTokenFetcher:Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

    return-object v0
.end method

.method private autoSignIn()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1202
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    const-string v3, "last_login_state=1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1208
    if-nez v6, :cond_1

    .line 1209
    const-string v0, "autoSignIn"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logEmptyCursor(Ljava/lang/String;)V

    .line 1240
    :cond_0
    :goto_0
    return-void

    .line 1212
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/TalkContract$AccountSettings;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->ACCOUNT_SETTINGS_PROJECTION:[Ljava/lang/String;

    const-string v3, "name=\"gtalk_auto_connect\""

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1220
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1221
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1222
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1223
    invoke-direct {p0, v2, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getAutoLoginForAccount(ILandroid/database/Cursor;)Z

    move-result v3

    .line 1224
    sget-boolean v4, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v4, :cond_3

    const-string v4, "GTalkService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "autoSignIn: login for accountId: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " username: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " keep signed in: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :cond_3
    if-eqz v3, :cond_2

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isValidAccount(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1229
    int-to-long v2, v2

    invoke-direct {p0, v2, v3, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->login(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1232
    :catch_0
    move-exception v1

    .line 1233
    :try_start_1
    const-string v2, "GTalkService"

    const-string v3, "autoSignIn caught "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1235
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1236
    if-eqz v0, :cond_0

    .line 1237
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1235
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1236
    if-eqz v0, :cond_0

    .line 1237
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1235
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1236
    if-eqz v0, :cond_5

    .line 1237
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
.end method

.method private blockingCreateGTalkConnection(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1459
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getDeviceStorageLow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1460
    const-string v0, "GTalkService"

    const-string v1, "blockingCreateGTalkConnection failed due to low storage!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 1558
    :goto_0
    return-object v0

    .line 1464
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1473
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1474
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v0, :cond_1

    .line 1475
    const-string v0, "GTalkService"

    const-string v3, "blockingCreateGTalkConnection: empty username, use first account"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingGetFirstAccount(Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    move-object v3, v0

    .line 1485
    :goto_1
    if-eqz v3, :cond_6

    .line 1486
    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1487
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v0, :cond_2

    .line 1488
    const-string v0, "GTalkService"

    const-string v4, "blockingCreateGTalkConnection: async fetch auth token..."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAuthTokenFetcher:Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/android/gsf/gtalkservice/service/GTalkService$7;

    invoke-direct {v5, p0, v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$7;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;)V

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->blockingFetch(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Ljava/lang/String;

    move-result-object v0

    .line 1530
    if-eqz v0, :cond_4

    .line 1531
    sget-boolean v4, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v4, :cond_3

    .line 1532
    const-string v4, "GTalkService"

    const-string v5, "blockingCreateGTalkConnection: authToken fetched, login..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    :cond_3
    invoke-virtual {v3, v0}, Lcom/google/android/gsf/gtalkservice/Account;->setAuthToken(Ljava/lang/String;)V

    .line 1535
    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    .line 1537
    if-eqz v0, :cond_4

    .line 1538
    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->login()V

    .line 1543
    :cond_4
    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createConnection(Lcom/google/android/gsf/gtalkservice/Account;)Lcom/google/android/gtalkservice/IGTalkConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1555
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1482
    :cond_5
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingGetAccount(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    .line 1545
    :cond_6
    const-string v0, "GTalkService"

    const-string v3, "blockingCreateGTalkConnection: account is null!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->reconcileGTalkAccount(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v6

    goto :goto_2

    .line 1552
    :catch_0
    move-exception v0

    .line 1553
    :try_start_2
    const-string v3, "GTalkService"

    const-string v4, "blockingCreateGTalkConnection: caught "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1555
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v0, v6

    .line 1556
    goto/16 :goto_0

    .line 1555
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private blockingGetAccount(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Lcom/google/android/gsf/gtalkservice/Account;
    .locals 4
    .parameter "username"
    .parameter "callback"

    .prologue
    .line 754
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isValidAccount(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 755
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "blockingGetAccount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a valid account"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/4 v1, 0x0

    .line 769
    :goto_0
    return-object v1

    .line 759
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountManager:Landroid/accounts/AccountManager;

    new-instance v2, Landroid/accounts/Account;

    const-string v3, "com.google"

    invoke-direct {v2, p1, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "ac2dm"

    invoke-virtual {v1, v2, v3}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 762
    .local v0, token:Ljava/lang/String;
    if-eqz p2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 763
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v1, :cond_1

    .line 764
    const-string v1, "GTalkService"

    const-string v2, "blockingGetAccount: peek auth token returned null, fetch it"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAuthTokenFetcher:Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;->blockingFetch(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Ljava/lang/String;

    move-result-object v0

    .line 769
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v1

    goto :goto_0
.end method

.method private checkThrottleReconnect(I)V
    .locals 6
    .parameter

    .prologue
    .line 1801
    if-eqz p1, :cond_1

    .line 1823
    :cond_0
    :goto_0
    return-void

    .line 1805
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1809
    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mWifiDisconnectedTimeStamp:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1815
    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAirplaneModeTurnedOffTimeStamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1819
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v0, :cond_2

    .line 1820
    const-string v0, "GTalkService"

    const-string v1, "checkThrottleReconnect: set mShouldThrottleReconnect to true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mShouldThrottleReconnect:Z

    goto :goto_0
.end method

.method private createAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/Account;
    .locals 8
    .parameter "username"
    .parameter "token"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 819
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v2, :cond_0

    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createAccount: user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 822
    const-string v2, "GTalkService"

    const-string v3, "createConnection: empty username."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 834
    :goto_0
    return-object v2

    .line 826
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3, v6, v7}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 828
    .local v0, androidId:J
    cmp-long v2, v0, v6

    if-nez v2, :cond_2

    .line 829
    const/16 v2, 0x9

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 830
    const-string v2, "GTalkService"

    const-string v3, "createAccount: get ANDROID_ID returned 0!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 831
    goto :goto_0

    .line 834
    :cond_2
    invoke-static {v0, v1}, Lcom/google/android/gsf/MobileConnectionSettings;->getDeviceId(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, p2, v2}, Lcom/google/android/gsf/gtalkservice/Account;->createAccountFromSettings(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v2

    goto :goto_0
.end method

.method private createConnection(Lcom/google/android/gsf/gtalkservice/Account;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1366
    if-nez p1, :cond_1

    .line 1367
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "GTalkService"

    const-string v1, "createConnection: null account, bail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v2

    .line 1455
    :goto_0
    return-object v0

    .line 1372
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getPort()I

    move-result v0

    if-gez v0, :cond_3

    .line 1373
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "GTalkService"

    const-string v1, "createConnection: rejected: port is negative"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v0, v2

    .line 1374
    goto :goto_0

    .line 1378
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isBackgroundDataEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1379
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v0, :cond_4

    const-string v0, "GTalkService"

    const-string v1, "createConnection: rejected: background data is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v0, v2

    .line 1380
    goto :goto_0

    .line 1385
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 1403
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1405
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->internalGetConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v1

    .line 1406
    if-eqz v1, :cond_7

    .line 1407
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v0, :cond_6

    const-string v0, "GTalkService"

    const-string v2, "createConnection: (1) connection already exists,returning existing session"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1413
    :cond_6
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v1

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1419
    new-instance v1, Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mWorkerLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;Landroid/os/Looper;)V

    .line 1420
    new-instance v2, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;

    invoke-direct {v2, v1, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;-><init>(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    .line 1422
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1424
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->internalGetConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v3

    .line 1425
    if-eqz v3, :cond_8

    .line 1426
    const-string v0, "GTalkService"

    const-string v2, "createConnection(check #2): connection exists, drop newly created connection"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->closeSettingsQueryMap()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1444
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v3

    goto :goto_0

    .line 1413
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 1433
    :cond_8
    :try_start_2
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v3, :cond_9

    const-string v3, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createConnection: create new GTalk connection for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    :cond_9
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 1436
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1438
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    .line 1439
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->addConnection(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)V

    .line 1440
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getInitialDelay()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 1441
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->resetReconnectionTimer(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1444
    :cond_a
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1448
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1449
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->login()V

    :goto_1
    move-object v0, v2

    .line 1455
    goto/16 :goto_0

    .line 1444
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 1451
    :cond_b
    const-string v0, "GTalkService"

    const-string v3, "createConnection: missing account.authToken..."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setConnectionError(I)V

    goto :goto_1
.end method

.method private createConnectionAndLogin(Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1306
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createConnectionAndLogin for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1310
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createConnection(Lcom/google/android/gsf/gtalkservice/Account;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;

    .line 1314
    if-nez v0, :cond_3

    .line 1363
    :cond_1
    :goto_1
    return-void

    .line 1307
    :cond_2
    const-string v0, " null acct"

    goto :goto_0

    .line 1317
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    .line 1323
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    .line 1324
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1325
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1326
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setAccount(Lcom/google/android/gsf/gtalkservice/Account;)V

    .line 1327
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v1, :cond_4

    .line 1328
    const-string v1, "GTalkService"

    const-string v2, "createConnAndLogin: auth token changed, reconnect..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    :cond_4
    invoke-virtual {v0, v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setConnectionError(I)V

    .line 1334
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->isSessionOpen()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1340
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->resetReconnectionTimer(Z)V

    .line 1342
    invoke-virtual {v0, v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->retryConnection(Z)V

    goto :goto_1

    .line 1344
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->login()V

    goto :goto_1

    .line 1349
    :cond_6
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;

    invoke-direct {v2, p0, p1, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$6;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method private deleteAccount(Ljava/lang/String;)V
    .locals 6
    .parameter "username"

    .prologue
    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 801
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 805
    .local v2, selectionArgs:[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 806
    const-string v3, "username"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    .end local v2           #selectionArgs:[Ljava/lang/String;
    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 810
    .restart local v2       #selectionArgs:[Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 812
    .local v1, selection:Ljava/lang/String;
    const-string v3, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[GTalkService] delete Talk account(s) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_1

    move-object v5, p1

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 816
    return-void

    .line 812
    :cond_1
    const-string v5, " because there is no account in AcctMgr"

    goto :goto_0
.end method

.method private deleteObsoleteAccounts()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 697
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v10

    .line 700
    .local v10, systemAccounts:[Landroid/accounts/Account;
    array-length v6, v10

    .line 702
    .local v6, accountCount:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 703
    .local v11, whereClauseSB:Ljava/lang/StringBuilder;
    if-lez v6, :cond_0

    new-array v0, v6, [Ljava/lang/String;

    move-object v4, v0

    .line 704
    .local v4, selectionArgs:[Ljava/lang/String;
    :goto_0
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v6, :cond_2

    .line 705
    aget-object v0, v10, v9

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v9

    .line 706
    const/4 v0, 0x1

    sub-int v0, v6, v0

    if-ne v9, v0, :cond_1

    .line 707
    const-string v0, "username!=?"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v9           #i:I
    :cond_0
    move-object v4, v5

    .line 703
    goto :goto_0

    .line 709
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v9       #i:I
    :cond_1
    const-string v0, "username!=? AND "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 712
    :cond_2
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 716
    .local v3, whereClause:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 722
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_3

    .line 723
    const-string v0, "deleteObsoleteAccounts"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logEmptyCursor(Ljava/lang/String;)V

    .line 739
    :goto_3
    return-void

    .line 727
    :cond_3
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 729
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 732
    .local v8, deleteCount:I
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 733
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteObsoleteAccounts: # accounts deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    .end local v8           #deleteCount:I
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private ensureRouteOverMobileHipriNetworkInterface()Z
    .locals 5

    .prologue
    .line 1846
    const/4 v2, 0x1

    .line 1847
    .local v2, retVal:Z
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1849
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;

    .line 1850
    .local v0, connectionWrapper:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->ensureRouteOverMobileHipriNetworkInterface()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 1852
    const/4 v2, 0x0

    goto :goto_0

    .line 1856
    .end local v0           #connectionWrapper:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
    :cond_1
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1858
    return v2

    .line 1856
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method private getAllSessionUsernames()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1596
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 1598
    .local v2, users:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1600
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;

    .line 1601
    .local v0, connection:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1604
    .end local v0           #connection:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1607
    return-object v2
.end method

.method private getAutoLoginForAccount(ILandroid/database/Cursor;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1244
    if-nez p2, :cond_0

    move v0, v3

    .line 1262
    :goto_0
    return v0

    .line 1250
    :cond_0
    const/4 v0, -0x1

    :try_start_0
    invoke-interface {p2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1251
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1252
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1253
    if-ne p1, v0, :cond_1

    .line 1254
    const-string v0, "true"

    const/4 v1, 0x2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1259
    :catch_0
    move-exception v0

    .line 1260
    const-string v1, "GTalkService"

    const-string v2, "getAutoLoginForAccount caught "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method private getConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 3
    .parameter "user"

    .prologue
    .line 1562
    const/4 v0, 0x0

    .line 1564
    .local v0, retVal:Lcom/google/android/gtalkservice/IGTalkConnection;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1566
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->internalGetConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1568
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1571
    return-object v0

    .line 1568
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method private getDeviceStorageLow()Z
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mIpcLock:Ljava/lang/Object;

    monitor-enter v0

    .line 367
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mDeviceStorageLow:Z

    monitor-exit v0

    return v1

    .line 368
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getIdleTimeout()J
    .locals 4

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gtalk_idle_timeout_ms"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getImSessionFromIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/ImSession;
    .locals 11
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    .line 965
    const-string v7, "username"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 967
    .local v6, username:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 968
    const-string v7, "GTalkService"

    const-string v8, "getImSessionFromIntent: missing username"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v10

    .line 992
    :goto_0
    return-object v7

    .line 973
    :cond_0
    const/4 v5, 0x0

    .line 975
    .local v5, remoteSession:Lcom/google/android/gtalkservice/IImSession;
    :try_start_0
    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mGTalkServiceBinder:Lcom/google/android/gtalkservice/IGTalkService$Stub;

    invoke-virtual {v7, v6}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->getConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;

    move-result-object v1

    .line 976
    .local v1, conn:Lcom/google/android/gtalkservice/IGTalkConnection;
    if-eqz v1, :cond_1

    .line 977
    move-object v0, v1

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;

    move-object v2, v0

    .line 978
    .local v2, connWrapper:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->getDefaultImSession()Lcom/google/android/gtalkservice/IImSession;

    move-result-object v5

    .line 981
    .end local v2           #connWrapper:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
    :cond_1
    if-nez v5, :cond_2

    .line 982
    const-string v7, "GTalkService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getImSessionFromIntent: cannot find session for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v10

    .line 983
    goto :goto_0

    .line 986
    :cond_2
    move-object v0, v5

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;

    move-object v4, v0

    .line 987
    .local v4, imSessionWrapper:Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;
    iget-object v7, v4, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->mSession:Lcom/google/android/gsf/gtalkservice/ImSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 988
    .end local v1           #conn:Lcom/google/android/gtalkservice/IGTalkConnection;
    .end local v4           #imSessionWrapper:Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 989
    .local v3, ex:Landroid/os/RemoteException;
    const-string v7, "GTalkService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getImSessionFromIntent: caught "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v10

    .line 992
    goto :goto_0
.end method

.method private getSendIdleAlarm()Lcom/google/android/gsf/gtalkservice/Alarm;
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSendIdleAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    if-nez v0, :cond_0

    .line 323
    new-instance v0, Lcom/google/android/gsf/gtalkservice/Alarm;

    const-string v1, "GTALK_IDLE_ALARM"

    new-instance v2, Lcom/google/android/gsf/gtalkservice/service/GTalkService$3;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$3;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gsf/gtalkservice/Alarm;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSendIdleAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    .line 331
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSendIdleAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    const-string v1, "com.google.android.intent.action.SEND_IDLE"

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Alarm;->setAction(Ljava/lang/String;)V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSendIdleAlarm:Lcom/google/android/gsf/gtalkservice/Alarm;

    return-object v0
.end method

.method private handleAirplaneModeChanged(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    .line 1862
    const-string v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1863
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v1, :cond_0

    .line 1864
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAirplaneModeChanged: airplaneModeOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    :cond_0
    if-eqz v0, :cond_1

    .line 1870
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAirplaneModeTurnedOnTimeStamp:J

    .line 1871
    iput-wide v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAirplaneModeTurnedOffTimeStamp:J

    .line 1876
    :goto_0
    return-void

    .line 1873
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAirplaneModeTurnedOffTimeStamp:J

    .line 1874
    iput-wide v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAirplaneModeTurnedOnTimeStamp:J

    goto :goto_0
.end method

.method private handleConnectivityChanged(Landroid/content/Intent;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1646
    const-string v0, "noConnectivity"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1649
    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1651
    const-string v1, "otherNetwork"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 1654
    const-string v3, "reason"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1655
    const-string v4, "isFailover"

    invoke-virtual {p1, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1658
    const-string v5, "GTalkService"

    invoke-static {v5, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1659
    const-string v5, "GTalkService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "##### handleConnectivityChanged: connected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v2, :cond_2

    move v7, v9

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    const-string v5, "GTalkService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    networkInfo.type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    const-string v5, "GTalkService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    networkInfo.state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    const-string v5, "GTalkService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    networkInfo2.type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    const-string v5, "GTalkService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    networkInfo2.state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    const-string v1, "GTalkService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    const-string v1, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    isFailover="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    const-string v1, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    mInMobileHipriorityMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mInMobileHipriorityMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    :cond_0
    if-nez v0, :cond_7

    .line 1716
    :cond_1
    :goto_5
    return-void

    :cond_2
    move v7, v8

    .line 1659
    goto/16 :goto_0

    .line 1660
    :cond_3
    const-string v7, "unknown"

    goto/16 :goto_1

    .line 1662
    :cond_4
    const-string v7, "unknown"

    goto/16 :goto_2

    .line 1664
    :cond_5
    const-string v7, "unknown"

    goto/16 :goto_3

    .line 1666
    :cond_6
    const-string v1, "unknown"

    goto :goto_4

    .line 1677
    :cond_7
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 1678
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 1682
    iput-boolean v8, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mShouldThrottleReconnect:Z

    .line 1684
    sget-object v4, Lcom/google/android/gsf/gtalkservice/service/GTalkService$9;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :cond_8
    move v0, v8

    move v2, v8

    .line 1712
    :goto_6
    if-eqz v0, :cond_1

    .line 1713
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    iget-boolean v4, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mShouldThrottleReconnect:Z

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->networkStateChanged(Landroid/net/NetworkInfo$State;IZZ)V

    goto :goto_5

    .line 1686
    :pswitch_0
    invoke-direct {p0, v0, v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleNetworkConnected(Landroid/net/NetworkInfo;I)Z

    move-result v0

    move v2, v8

    .line 1687
    goto :goto_6

    .line 1691
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleNetworkDisconnected(I)V

    .line 1693
    if-eqz v2, :cond_9

    .line 1694
    const-string v0, "GTalkService"

    const-string v2, "lost connectivity, notify"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAirplaneModeTurnedOnTimeStamp:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x4e20

    cmp-long v0, v4, v6

    if-gez v0, :cond_a

    move v0, v9

    move v2, v9

    .line 1700
    goto :goto_6

    .line 1702
    :cond_9
    const-string v0, "GTalkService"

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1703
    const-string v0, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleConnectivityChanged: drop notification for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    move v2, v8

    goto :goto_6

    :cond_a
    move v0, v9

    move v2, v8

    goto :goto_6

    .line 1684
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private handleNetworkConnected(Landroid/net/NetworkInfo;I)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1726
    .line 1728
    packed-switch p2, :pswitch_data_0

    .line 1746
    if-ne p2, v2, :cond_0

    .line 1748
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mWifiDisconnectedTimeStamp:J

    .line 1751
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->checkThrottleReconnect(I)V

    .line 1754
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mInMobileHipriorityMode:Z

    if-eqz v0, :cond_5

    .line 1757
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1759
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;

    .line 1760
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1761
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GTalkService] handleConnectivityChanged: in MOBILE_HIPRI, ignore CONNECTED for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    .line 1769
    :goto_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1772
    if-eqz v0, :cond_2

    .line 1774
    const-string v1, "GTalkService"

    const-string v2, "[GTalkService] handleConnectivityChanged: in MOBILE_HIPRI, but not connected! notify network state CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    iput-boolean v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mInMobileHipriorityMode:Z

    .line 1784
    :cond_2
    :goto_1
    return v0

    .line 1730
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->ensureRouteOverMobileHipriNetworkInterface()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mInMobileHipriorityMode:Z

    .line 1731
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mInMobileHipriorityMode:Z

    if-eqz v0, :cond_3

    .line 1732
    const-string v0, "GTalkService"

    const-string v1, "[GTalkService] handleNetworkConnected for TYPE_MOBILE_HIPRI: set MOBILE_HIPRI=true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    goto :goto_1

    .line 1735
    :cond_3
    const-string v0, "GTalkService"

    const-string v1, "[GTalkService] handleNetworkConnected for TYPE_MOBILE_HIPRI: mInMobileHipriorityMode=false, ensureRouteOverMobileHipriNetworkInterface() failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 1743
    goto :goto_1

    .line 1769
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    .line 1728
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method private handleNetworkDisconnected(I)V
    .locals 3
    .parameter

    .prologue
    .line 1826
    sparse-switch p1, :sswitch_data_0

    .line 1843
    :cond_0
    :goto_0
    return-void

    .line 1831
    :sswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mWifiDisconnectedTimeStamp:J

    goto :goto_0

    .line 1835
    :sswitch_1
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mInMobileHipriorityMode:Z

    if-eqz v0, :cond_0

    .line 1836
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GTalkService] handleNetworkDisconnected: networkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", set MOBILE_HIPRI to false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mInMobileHipriorityMode:Z

    goto :goto_0

    .line 1826
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method private handlePackageInstalled()V
    .locals 2

    .prologue
    .line 956
    const-string v1, "handlePackageInstalled: re-initialize providers"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 957
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->createNewInstance()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v0

    .line 958
    .local v0, providerMgr:Lorg/jivesoftware/smack/provider/ProviderManager;
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->initializeProviders(Lorg/jivesoftware/smack/provider/ProviderManager;)V

    .line 961
    invoke-static {v0}, Lorg/jivesoftware/smack/provider/ProviderManager;->setDefault(Lorg/jivesoftware/smack/provider/ProviderManager;)V

    .line 962
    return-void
.end method

.method private handleSendIqStanzaIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 996
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getImSessionFromIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/ImSession;

    move-result-object v0

    .line 997
    .local v0, session:Lcom/google/android/gsf/gtalkservice/ImSession;
    if-nez v0, :cond_0

    .line 998
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendXmppFailed(Landroid/content/Intent;)V

    .line 1003
    :goto_0
    return-void

    .line 1002
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/ImSession;->sendIqStanza(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleSendMessageStanzaIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1006
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getImSessionFromIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/ImSession;

    move-result-object v0

    .line 1007
    .local v0, session:Lcom/google/android/gsf/gtalkservice/ImSession;
    if-nez v0, :cond_0

    .line 1008
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendXmppFailed(Landroid/content/Intent;)V

    .line 1013
    :goto_0
    return-void

    .line 1012
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/ImSession;->sendMessageStanza(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleSendPresenceStanzaIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1016
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getImSessionFromIntent(Landroid/content/Intent;)Lcom/google/android/gsf/gtalkservice/ImSession;

    move-result-object v0

    .line 1017
    .local v0, session:Lcom/google/android/gsf/gtalkservice/ImSession;
    if-nez v0, :cond_0

    .line 1018
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendXmppFailed(Landroid/content/Intent;)V

    .line 1023
    :goto_0
    return-void

    .line 1022
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/ImSession;->sendPresenceStanza(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleSendXmppFailed(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1026
    const-string v0, "invalid_account"

    invoke-static {p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->processSendFailed(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1028
    return-void
.end method

.method private initProviders()V
    .locals 2

    .prologue
    .line 1266
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "GTalkService"

    const-string v1, "##### initProviders #####"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :cond_0
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getDefault()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v0

    .line 1269
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->initializeProviders(Lorg/jivesoftware/smack/provider/ProviderManager;)V

    .line 1270
    return-void
.end method

.method private initRawXmlProviders(Lorg/jivesoftware/smack/provider/ProviderManager;)V
    .locals 3
    .parameter

    .prologue
    .line 1282
    const-string v0, "session"

    const-string v1, "http://www.google.com/session"

    new-instance v2, Lcom/google/android/gsf/gtalkservice/extensions/SessionStanzaProvider;

    invoke-direct {v2}, Lcom/google/android/gsf/gtalkservice/extensions/SessionStanzaProvider;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addRawXmlIqProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/provider/IQProvider;)V

    .line 1285
    const-string v0, "query"

    const-string v1, "google:jingleinfo"

    new-instance v2, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQueryProvider;

    invoke-direct {v2}, Lcom/google/android/gsf/gtalkservice/extensions/JingleInfoQueryProvider;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addRawXmlIqProvider(Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/provider/IQProvider;)V

    .line 1289
    new-instance v0, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;-><init>(Landroid/content/Context;Lorg/jivesoftware/smack/provider/ProviderManager;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mRawStanzaProvidersManager:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;

    .line 1290
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mRawStanzaProvidersManager:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->searchProvidersFromIntent()V

    .line 1291
    return-void
.end method

.method private initializeConnection()V
    .locals 2

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    new-instance v1, Lcom/google/android/gsf/gtalkservice/service/GTalkService$4;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$4;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->access$1300(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;Ljava/lang/Runnable;)V

    .line 1084
    return-void
.end method

.method private initializeProviders(Lorg/jivesoftware/smack/provider/ProviderManager;)V
    .locals 0
    .parameter "providerMgr"

    .prologue
    .line 1273
    invoke-virtual {p1}, Lorg/jivesoftware/smack/provider/ProviderManager;->initializeBuiltInProviders()V

    .line 1274
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->initRawXmlProviders(Lorg/jivesoftware/smack/provider/ProviderManager;)V

    .line 1275
    return-void
.end method

.method private internalGetConnectionForUser(Ljava/lang/String;)Lcom/google/android/gtalkservice/IGTalkConnection;
    .locals 3
    .parameter

    .prologue
    .line 1576
    const/4 v0, 0x0

    .line 1578
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;

    .line 1579
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->getUsername()Ljava/lang/String;

    move-result-object v2

    .line 1581
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1582
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v0, :cond_1

    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalGetConnectionForUser: found conn for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, p0

    .line 1588
    :cond_2
    return-object v0
.end method

.method private isBackgroundDataEnabled()Z
    .locals 1

    .prologue
    .line 1926
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mBackgroundDataEnabled:Z

    return v0
.end method

.method private isValidAccount(Ljava/lang/String;)Z
    .locals 7
    .parameter "username"

    .prologue
    .line 681
    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 683
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 684
    .local v0, account:Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 685
    const/4 v5, 0x1

    .line 688
    .end local v0           #account:Landroid/accounts/Account;
    :goto_1
    return v5

    .line 683
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 688
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 1943
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GTalkService."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    return-void
.end method

.method private logEmptyCursor(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2087
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GTalkService] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": empty cursor, possibly low memory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    return-void
.end method

.method private login(JLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1184
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mGTalkServiceBinder:Lcom/google/android/gtalkservice/IGTalkService$Stub;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    .line 1185
    if-nez v0, :cond_1

    .line 1186
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "login: no imSession for account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 1189
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingGetAccount(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 1190
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->createConnectionAndLogin(Lcom/google/android/gsf/gtalkservice/Account;)V

    .line 1198
    :goto_0
    return-void

    .line 1194
    :cond_1
    const/4 v1, 0x1

    invoke-interface {v0, p3, v1}, Lcom/google/android/gtalkservice/IImSession;->login(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1195
    :catch_0
    move-exception v0

    .line 1196
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to login "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private logoutAllSessions()V
    .locals 2

    .prologue
    .line 1611
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "GTalkService"

    const-string v1, "logoutAllSessions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1617
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mConnections:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1619
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1623
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;

    .line 1624
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->logout()V

    goto :goto_0

    .line 1619
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 1626
    :cond_1
    return-void
.end method

.method private pollAutoSyncSetting()V
    .locals 1

    .prologue
    .line 1918
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAutoSyncEnabled:Z

    .line 1919
    return-void
.end method

.method private reconcileGTalkAccount(Ljava/lang/String;)V
    .locals 3
    .parameter "username"

    .prologue
    .line 780
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reconcileGTalkAccount for username="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_0
    if-nez p1, :cond_2

    .line 784
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingGetFirstAccountUsername()Ljava/lang/String;

    move-result-object p1

    .line 785
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 795
    :cond_1
    :goto_0
    return-void

    .line 789
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isValidAccount(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 794
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->deleteAccount(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private refreshAuthToken(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)V
    .locals 5
    .parameter "connection"

    .prologue
    .line 232
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 233
    .local v0, account:Lcom/google/android/gsf/gtalkservice/Account;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, username:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, oldToken:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/gsf/gtalkservice/Account;->setAuthToken(Ljava/lang/String;)V

    .line 242
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/google/android/gsf/gtalkservice/service/GTalkService$2;

    invoke-direct {v4, p0, v2, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$2;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 253
    return-void
.end method

.method private removeProviders()V
    .locals 2

    .prologue
    .line 1294
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "GTalkService"

    const-string v1, "##### removeProviders #####"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    :cond_0
    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getDefault()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v0

    .line 1297
    invoke-virtual {v0}, Lorg/jivesoftware/smack/provider/ProviderManager;->removeBuiltInProviders()V

    .line 1298
    invoke-virtual {v0}, Lorg/jivesoftware/smack/provider/ProviderManager;->removeRawXmlIqProviders()V

    .line 1299
    return-void
.end method

.method private resetOnGservicesChange()V
    .locals 4

    .prologue
    .line 1090
    new-instance v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService$5;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$5;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    .line 1165
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getAutoConnectUsingAutoSync()Z

    move-result v1

    .line 1169
    iget-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mControlAutoConnectUsingAutoSync:Z

    if-eq v2, v1, :cond_1

    .line 1170
    iput-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mControlAutoConnectUsingAutoSync:Z

    .line 1172
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v1, :cond_0

    .line 1173
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "useAutoSync="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mControlAutoConnectUsingAutoSync:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", audit connections..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    invoke-static {v1, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->access$1300(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;Ljava/lang/Runnable;)V

    .line 1180
    :goto_0
    return-void

    .line 1177
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private sendDeviceIdleStatusForConnections(Z)V
    .locals 4
    .parameter "idle"

    .prologue
    .line 355
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 357
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;

    .line 358
    .local v0, connWrapper:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendDeviceIdleStatus(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 361
    .end local v0           #connWrapper:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 363
    return-void
.end method

.method private setBackgroundDataWithLock(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1932
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mBackgroundDataEnabled:Z

    .line 1933
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v0, :cond_0

    .line 1934
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackgroundDataWithLock: mBackgroundDataEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mBackgroundDataEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1938
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1940
    return-void

    .line 1938
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private setDeviceStorageLow(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mIpcLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mDeviceStorageLow:Z

    .line 374
    monitor-exit v0

    .line 375
    return-void

    .line 374
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setIsUserIdle(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 349
    monitor-enter p0

    .line 350
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mUserIsIdle:Z

    .line 351
    monitor-exit p0

    .line 352
    return-void

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startConnectionIfNeeded()V
    .locals 2

    .prologue
    .line 940
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 942
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 943
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v0, :cond_0

    .line 944
    const-string v0, "GTalkService"

    const-string v1, "onStartCommand: found 0 connections, force audit connections..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->access$1300(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 950
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 952
    return-void

    .line 950
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public blockingGetFirstAccount(Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Lcom/google/android/gsf/gtalkservice/Account;
    .locals 2
    .parameter "callback"

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingGetFirstAccountUsername()Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, username:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 669
    const/4 v1, 0x0

    .line 671
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->blockingGetAccount(Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher$FetchFailedCallback;)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v1

    goto :goto_0
.end method

.method public blockingGetFirstAccountUsername()Ljava/lang/String;
    .locals 3

    .prologue
    .line 647
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.google"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 649
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 650
    const/4 v1, 0x0

    .line 652
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public doXMPPConnectionWriteLock()V
    .locals 1

    .prologue
    .line 2100
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnectionWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2101
    return-void
.end method

.method public doXMPPConnectionWriteUnlock()V
    .locals 1

    .prologue
    .line 2104
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnectionWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2105
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 18
    .parameter "fd"
    .parameter "out"
    .parameter "args"

    .prologue
    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    move-object v13, v0

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 259
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getDeviceStorageLow()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 260
    const-string v13, ""

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 261
    const-string v13, "----- DEVICE STORAGE IS LOW -----"

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    const-string v13, ""

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mTimeSinceServiceOnCreate:J

    move-wide v15, v0

    sub-long/2addr v13, v15

    const-wide/16 v15, 0x3e8

    div-long v7, v13, v15

    .line 266
    .local v7, elapsed:J
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "android_id"

    const-wide/16 v15, 0x0

    invoke-static/range {v13 .. v16}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 268
    .local v3, androidId:J
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Time since service creation: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v7, v8}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "aid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-wide/16 v14, 0x0

    cmp-long v14, v3, v14

    if-nez v14, :cond_3

    const-string v14, "(INVALID AID!!!)"

    :goto_0
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MobileHipri: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mInMobileHipriorityMode:Z

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 272
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "User idle timeout: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getIdleTimeout()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "s"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "User idle: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isUserIdle()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Use AutoSync setting: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mControlAutoConnectUsingAutoSync:Z

    move v14, v0

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Protocol version: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-byte v14, Lorg/jivesoftware/smack/XMPPConnection;->CURRENT_VERSION:B

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Number of connections: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mConnections:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 278
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSendIdleAlarm()Lcom/google/android/gsf/gtalkservice/Alarm;

    move-result-object v2

    .line 279
    .local v2, alarm:Lcom/google/android/gsf/gtalkservice/Alarm;
    if-eqz v2, :cond_1

    .line 280
    const-string v13, ""

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    const-string v13, "------------------------"

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    move-object v0, v2

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/Alarm;->dump(Ljava/io/PrintWriter;)V

    .line 285
    :cond_1
    const-string v13, ""

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    const-string v13, "------------------------"

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->dump(Ljava/io/PrintWriter;)V

    .line 289
    const-string v13, ""

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    const-string v13, "------------------------"

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getRawStanzaProvidersManager()Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;->dump(Ljava/io/PrintWriter;)V

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getXMPPConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v12

    .line 294
    .local v12, xmppConnection:Lorg/jivesoftware/smack/XMPPConnection;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 295
    const-string v13, ""

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    const-string v13, "------------------------"

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    move-object v0, v12

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->dump(Ljava/io/PrintWriter;)V

    .line 298
    const-string v13, "GTalkService"

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 299
    move-object v0, v12

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->dumpVerbose(Ljava/io/PrintWriter;)V

    .line 303
    :cond_2
    const/4 v9, 0x1

    .line 304
    .local v9, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mConnections:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    move v10, v9

    .end local v9           #i:I
    .local v10, i:I
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;

    .line 305
    .local v6, connection:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
    const-string v13, ""

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v6}, Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;->getGTalkConnection()Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    move-result-object v5

    .line 308
    .local v5, conn:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "connection #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v9, v10, 0x1

    .end local v10           #i:I
    .restart local v9       #i:I
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    const-string v13, "------------------------"

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->dump(Ljava/io/PrintWriter;)V

    move v10, v9

    .line 311
    .end local v9           #i:I
    .restart local v10       #i:I
    goto :goto_1

    .line 269
    .end local v2           #alarm:Lcom/google/android/gsf/gtalkservice/Alarm;
    .end local v5           #conn:Lcom/google/android/gsf/gtalkservice/GTalkConnection;
    .end local v6           #connection:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;
    .end local v10           #i:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #xmppConnection:Lorg/jivesoftware/smack/XMPPConnection;
    :cond_3
    const-string v14, ""

    goto/16 :goto_0

    .line 313
    .restart local v2       #alarm:Lcom/google/android/gsf/gtalkservice/Alarm;
    .restart local v10       #i:I
    .restart local v11       #i$:Ljava/util/Iterator;
    .restart local v12       #xmppConnection:Lorg/jivesoftware/smack/XMPPConnection;
    :cond_4
    const-string v13, ""

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    const-string v13, "------------------------"

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 315
    invoke-static/range {p2 .. p2}, Lcom/google/android/gsf/gtalkservice/usagegauge/UsageGauge;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    move-object v13, v0

    invoke-interface {v13}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 319
    return-void

    .line 317
    .end local v2           #alarm:Lcom/google/android/gsf/gtalkservice/Alarm;
    .end local v3           #androidId:J
    .end local v7           #elapsed:J
    .end local v10           #i:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #xmppConnection:Lorg/jivesoftware/smack/XMPPConnection;
    :catchall_0
    move-exception v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v13
.end method

.method getAutoConnectUsingAutoSync()Z
    .locals 3

    .prologue
    .line 1913
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gtalk_connect_on_auto_sync"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2083
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getRawStanzaProvidersManager()Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;
    .locals 1

    .prologue
    .line 2112
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mRawStanzaProvidersManager:Lcom/google/android/gsf/gtalkservice/RawStanzaProvidersManager;

    return-object v0
.end method

.method public getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;
    .locals 1

    .prologue
    .line 2108
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mReconnectManager:Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    return-object v0
.end method

.method public getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;
    .locals 1

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mStatusBarNotifier:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    return-object v0
.end method

.method public getXMPPConnection()Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1

    .prologue
    .line 2091
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnection:Lorg/jivesoftware/smack/XMPPConnection;

    return-object v0
.end method

.method public handleDeviceStorageLow()V
    .locals 2

    .prologue
    .line 378
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 379
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setDeviceStorageLow(Z)V

    .line 380
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->access$1300(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;Ljava/lang/Runnable;)V

    .line 381
    return-void
.end method

.method public handleDeviceStorageOk()V
    .locals 2

    .prologue
    .line 384
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 385
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setDeviceStorageLow(Z)V

    .line 386
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;->access$1300(Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;Ljava/lang/Runnable;)V

    .line 387
    return-void
.end method

.method public handleGservicesSettingChanged()V
    .locals 4

    .prologue
    .line 390
    monitor-enter p0

    .line 391
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mPendingGservicesChange:Z

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mPendingGservicesChange:Z

    .line 397
    :cond_0
    monitor-exit p0

    .line 398
    return-void

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isAutoSyncEnabled()Z
    .locals 1

    .prologue
    .line 1922
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAutoSyncEnabled:Z

    return v0
.end method

.method public isUserIdle()Z
    .locals 1

    .prologue
    .line 343
    monitor-enter p0

    .line 344
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mUserIsIdle:Z

    monitor-exit p0

    return v0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter

    .prologue
    .line 1049
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :cond_0
    const-class v0, Lcom/google/android/gtalkservice/IGTalkService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1054
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mGTalkServiceBinder:Lcom/google/android/gtalkservice/IGTalkService$Stub;

    .line 1057
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 843
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/LogTag;->queryLoggingLevel()V

    .line 845
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v3, :cond_0

    const-string v3, "GTalkService"

    const-string v4, "### onCreate ###"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_0
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 849
    new-instance v3, Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    invoke-direct {v3, p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mReconnectManager:Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    .line 850
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mReconnectManager:Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(Z)V

    .line 852
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mTimeSinceServiceOnCreate:J

    .line 854
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountManager:Landroid/accounts/AccountManager;

    .line 856
    new-instance v3, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

    const-string v4, "ac2dm"

    invoke-direct {v3, p0, v4}, Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAuthTokenFetcher:Lcom/google/android/gsf/gtalkservice/AuthTokenFetcher;

    .line 858
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mConnections:Ljava/util/ArrayList;

    .line 859
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 860
    new-instance v3, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    invoke-direct {v3, p0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mStatusBarNotifier:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    .line 862
    new-instance v3, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    invoke-direct {v3, p0, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    iput-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    .line 866
    new-instance v2, Lcom/google/android/gsf/gtalkservice/service/GTalkService$WorkerThread;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$WorkerThread;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;)V

    .line 867
    .local v2, thread:Lcom/google/android/gsf/gtalkservice/service/GTalkService$WorkerThread;
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService$WorkerThread;->start()V

    .line 868
    :goto_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mWorkerLooper:Landroid/os/Looper;

    if-nez v3, :cond_1

    .line 869
    monitor-enter p0

    .line 871
    const-wide/16 v3, 0x2

    :try_start_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 877
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getAutoConnectUsingAutoSync()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mControlAutoConnectUsingAutoSync:Z

    .line 878
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->pollAutoSyncSetting()V

    .line 880
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->initProviders()V

    .line 882
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 883
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 884
    const-string v3, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 885
    const-string v3, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 886
    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 887
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 888
    const-string v3, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 889
    const-string v3, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 890
    const-string v3, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 893
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 896
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 898
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    invoke-virtual {p0, v3, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 900
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 901
    .local v1, manager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setBackgroundDataWithLock(Z)V

    .line 903
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isBackgroundDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 904
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->initializeConnection()V

    .line 906
    :cond_2
    return-void

    .line 872
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    .end local v1           #manager:Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1032
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "GTalkService"

    const-string v1, "### onDestroy ###"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_0
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 1035
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->logoutAllSessions()V

    .line 1036
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mHandler:Landroid/os/Handler;

    .line 1038
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mAccountsAndSettingsMonitor:Lcom/google/android/gsf/gtalkservice/service/GTalkService$AccountsAndSettingsMonitor;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1040
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mStatusBarNotifier:Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->onServiceDestroyed()V

    .line 1042
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->removeProviders()V

    .line 1044
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mWorkerLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1045
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 1071
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 1073
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    const-string v0, "GTalkService"

    const-string v1, "onRebind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 910
    if-eqz p1, :cond_0

    .line 911
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 912
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.google.android.gtalkservice.IGTalkService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 913
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->startConnectionIfNeeded()V

    .line 925
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 914
    .restart local v0       #action:Ljava/lang/String;
    :cond_1
    const-string v1, "com.google.android.gtalkservice.intent.SEND_IQ_STANZA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 915
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendIqStanzaIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 916
    :cond_2
    const-string v1, "com.google.android.gtalkservice.intent.SEND_MESSAGE_STANZA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 917
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendMessageStanzaIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 918
    :cond_3
    const-string v1, "com.google.android.gtalkservice.intent.SEND_PRESENCE_STANZA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 919
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handleSendPresenceStanzaIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 920
    :cond_4
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 921
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->handlePackageInstalled()V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .parameter

    .prologue
    .line 1062
    const-string v0, "GTalkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    const-string v0, "GTalkService"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 1066
    const/4 v0, 0x1

    return v0
.end method

.method public removeConnection(Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;)V
    .locals 2
    .parameter "connection"

    .prologue
    .line 1629
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1631
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1633
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1643
    return-void

    .line 1633
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public setXMPPConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .parameter

    .prologue
    .line 2095
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setXMPPConnection: connection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->log(Ljava/lang/String;)V

    .line 2096
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mXMPPConnection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 2097
    return-void
.end method

.method public shouldTryToConnect()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1892
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isBackgroundDataEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 1908
    :goto_0
    return v0

    .line 1898
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getDeviceStorageLow()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1899
    goto :goto_0

    .line 1904
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->mControlAutoConnectUsingAutoSync:Z

    if-eqz v0, :cond_2

    .line 1905
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isAutoSyncEnabled()Z

    move-result v0

    goto :goto_0

    .line 1908
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
