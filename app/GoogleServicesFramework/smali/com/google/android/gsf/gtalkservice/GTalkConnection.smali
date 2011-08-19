.class public Lcom/google/android/gsf/gtalkservice/GTalkConnection;
.super Ljava/lang/Object;
.source "GTalkConnection.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/PacketSender;
.implements Lorg/jivesoftware/smack/ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/GTalkConnection$SpecialConnectionEvent;,
        Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionClosedEvent;,
        Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionMadeEvent;,
        Lcom/google/android/gsf/gtalkservice/GTalkConnection$PendingConnectEvent;,
        Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionStateEvent;,
        Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionEvent;,
        Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionLifeCycle;,
        Lcom/google/android/gsf/gtalkservice/GTalkConnection$ClearWakeLockTimer;,
        Lcom/google/android/gsf/gtalkservice/GTalkConnection$WorkerHandler;,
        Lcom/google/android/gsf/gtalkservice/GTalkConnection$MissingAuthTokenError;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/gsf/gtalkservice/Account;

.field private mAccountId:J

.field private mAccountIdFilter:Lorg/jivesoftware/smack/filter/AccountIdFilter;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAuthExpiredCount:I

.field private mCapabilities:I

.field private mClearWakeLockTimer:Lcom/google/android/gsf/gtalkservice/GTalkConnection$ClearWakeLockTimer;

.field private mClearWakeLockTimerFiredCount:I

.field private mConnection:Lorg/jivesoftware/smack/XMPPConnection;

.field private mConnectionClosedLock:Ljava/lang/Object;

.field private mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

.field private mConnectionDurations:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionLifeCycle;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionStartTime:J

.field private mConnectionWrapper:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionLifeCycle;

.field private mDefaultImSession:Lcom/google/android/gtalkservice/IImSession;

.field private mDelayedLoginCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gsf/gtalkservice/DelayedLogin;",
            ">;"
        }
    .end annotation
.end field

.field private mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

.field private mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;

.field private mImSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mIsMainConnection:Z

.field private mJid:Ljava/lang/String;

.field private mJidResource:Ljava/lang/String;

.field private mLastConnectAttemptTs:J

.field private mLastConnectionAttemptSuccessful:Z

.field private mLastDataMessageReceivedTs:J

.field private mLastLoginAttemptTimeStamp:J

.field mNetworkState:Landroid/net/NetworkInfo$State;

.field private mNumConnectionsAttempted:Ljava/lang/Integer;

.field private mNumConnectionsMade:Ljava/lang/Integer;

.field private mOpened:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPresence:Lcom/google/android/gtalkservice/Presence;

.field private mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

.field private mRmqManager:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;

.field private mServerAddress:Ljava/lang/String;

.field private mServiceHandler:Landroid/os/Handler;

.field private mSessionsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

.field private mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

.field private mSettingsObserver:Ljava/util/Observer;

.field private mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

.field private mShowMobileIndicator:Z

.field private mSimpleWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mUserBareAddress:Ljava/lang/String;

.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/Account;Landroid/os/Looper;)V
    .locals 3
    .parameter "service"
    .parameter "account"
    .parameter "workerLooper"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ClearWakeLockTimer;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ClearWakeLockTimer;-><init>(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Lcom/google/android/gsf/gtalkservice/GTalkConnection$1;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mClearWakeLockTimer:Lcom/google/android/gsf/gtalkservice/GTalkConnection$ClearWakeLockTimer;

    .line 168
    iput-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mNumConnectionsMade:Ljava/lang/Integer;

    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mNumConnectionsAttempted:Ljava/lang/Integer;

    .line 177
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionDurations:Ljava/util/Vector;

    .line 181
    iput-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mLastConnectionAttemptSuccessful:Z

    .line 196
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSessionsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 197
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSessionsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    .line 198
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSessionsLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    .line 199
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionClosedLock:Ljava/lang/Object;

    .line 213
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mNetworkState:Landroid/net/NetworkInfo$State;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionHistory:Ljava/util/ArrayList;

    .line 224
    iput v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAuthExpiredCount:I

    .line 236
    new-instance v0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$1;-><init>(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSettingsObserver:Ljava/util/Observer;

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mImSessions:Ljava/util/ArrayList;

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mDelayedLoginCallbacks:Ljava/util/ArrayList;

    .line 361
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .line 362
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mContext:Landroid/content/Context;

    .line 363
    invoke-virtual {p1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mServiceHandler:Landroid/os/Handler;

    .line 364
    new-instance v0, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;-><init>(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Lcom/google/android/gsf/gtalkservice/GTalkConnection;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    .line 365
    new-instance v0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$WorkerHandler;

    invoke-direct {v0, p0, p3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$WorkerHandler;-><init>(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mWorkerHandler:Landroid/os/Handler;

    .line 367
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setAccount(Lcom/google/android/gsf/gtalkservice/Account;)V

    .line 369
    new-instance v0, Lorg/jivesoftware/smack/filter/AccountIdFilter;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/filter/AccountIdFilter;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccountIdFilter:Lorg/jivesoftware/smack/filter/AccountIdFilter;

    .line 370
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->init()V

    .line 371
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mShowMobileIndicator:Z

    return v0
.end method

.method static synthetic access$1008(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mClearWakeLockTimerFiredCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mClearWakeLockTimerFiredCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mShowMobileIndicator:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 103
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionStartTime:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionLifeCycle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionLifeCycle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mCapabilities:I

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/gsf/gtalkservice/GTalkConnection;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput p1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mCapabilities:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logconn(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->doConnect()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->doLogout()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->doRequestRoster()Z

    move-result v0

    return v0
.end method

.method private addConnectionClosedEvent(I)V
    .locals 9
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    .line 2659
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addConnectionClosedEvent: mError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 2661
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionHistory:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2662
    :try_start_0
    new-instance v1, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionClosedEvent;

    invoke-direct {v1, p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionClosedEvent;-><init>(I)V

    .line 2664
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionLifeCycle;

    invoke-virtual {v2, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionLifeCycle;->appendConnectionEvent(Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionEvent;)V

    .line 2665
    iget-wide v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionStartTime:J

    cmp-long v1, v1, v7

    if-nez v1, :cond_3

    move-wide v1, v7

    .line 2668
    :goto_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionLifeCycle;

    iput-wide v1, v3, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionLifeCycle;->mConnectionUptime:J

    .line 2670
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionLifeCycle;

    iget-wide v3, v3, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionLifeCycle;->mConnectionUptime:J

    cmp-long v3, v3, v7

    if-gtz v3, :cond_1

    .line 2671
    const-string v3, "GTalkService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "??? addConnectionClosedEvent: mConnectionUptime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionLifeCycle;

    iget-wide v5, v5, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionLifeCycle;->mConnectionUptime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    :cond_1
    new-instance v3, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionLifeCycle;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionLifeCycle;-><init>(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Lcom/google/android/gsf/gtalkservice/GTalkConnection$1;)V

    iput-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionLifeCycle;

    .line 2677
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionHistory:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionLifeCycle;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2679
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2680
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getMaxConnectionHistoryRecords()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 2681
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionHistory:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2688
    :cond_2
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v3

    .line 2689
    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getNetworkState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 2690
    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getNetworkType()I

    move-result v3

    .line 2692
    cmp-long v5, v1, v7

    if-lez v5, :cond_4

    .line 2693
    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    long-to-int v1, v1

    invoke-static {p1, v3, v1}, Lcom/google/android/gsf/gtalkservice/LogTag;->logConnectionClosed(III)V

    .line 2701
    :goto_1
    monitor-exit v0

    .line 2702
    return-void

    .line 2665
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionStartTime:J

    sub-long/2addr v1, v3

    goto :goto_0

    .line 2696
    :cond_4
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v2

    invoke-virtual {v4}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v3

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/gsf/gtalkservice/LogTag;->logConnectionEvent(IIII)V

    goto :goto_1

    .line 2701
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private addConnectionDuration()V
    .locals 7

    .prologue
    .line 2084
    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 2092
    :goto_0
    return-void

    .line 2088
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionDurations:Ljava/util/Vector;

    monitor-enter v2

    .line 2089
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionStartTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long v0, v3, v5

    .line 2090
    .local v0, duration:J
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionDurations:Ljava/util/Vector;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2091
    monitor-exit v2

    goto :goto_0

    .end local v0           #duration:J
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private addConnectionEvent(I)V
    .locals 8
    .parameter

    .prologue
    .line 2617
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v1

    .line 2618
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getNetworkState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 2620
    packed-switch p1, :pswitch_data_0

    .line 2645
    :pswitch_0
    new-instance v0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionStateEvent;

    invoke-direct {v0, p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionStateEvent;-><init>(I)V

    .line 2649
    :goto_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionHistory:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2650
    :try_start_0
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addConnectionEvent: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 2651
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionLifeCycle;

    invoke-virtual {v2, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionLifeCycle;->appendConnectionEvent(Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionEvent;)V

    .line 2652
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2654
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionError()I

    move-result v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gsf/gtalkservice/LogTag;->logConnectionEvent(IIII)V

    .line 2656
    return-void

    .line 2623
    :pswitch_1
    new-instance v0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$PendingConnectEvent;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionError()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getNetworkType()I

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getLastNetworkAvailable()Z

    move-result v5

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->getReconnectTime()J

    move-result-wide v6

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$PendingConnectEvent;-><init>(IILandroid/net/NetworkInfo$State;IZJ)V

    goto :goto_0

    .line 2631
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 2633
    new-instance v1, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionMadeEvent;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getDefaultImSessionImpl()Lcom/google/android/gsf/gtalkservice/ImSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/ImSession;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getHostIpAddress()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, p1, v2, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionMadeEvent;-><init>(ILcom/google/android/gtalkservice/Presence;Ljava/lang/String;)V

    move-object v0, v1

    .line 2636
    goto :goto_0

    .line 2633
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 2639
    :pswitch_3
    new-instance v0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionMadeEvent;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getDefaultImSessionImpl()Lcom/google/android/gsf/gtalkservice/ImSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/ImSession;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionMadeEvent;-><init>(ILcom/google/android/gtalkservice/Presence;Ljava/lang/String;)V

    goto :goto_0

    .line 2652
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2620
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private asyncCloseConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .parameter

    .prologue
    .line 1907
    new-instance v0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$3;

    const-string v1, "close-XMPP-connection"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$3;-><init>(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Ljava/lang/String;Lorg/jivesoftware/smack/XMPPConnection;)V

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$3;->start()V

    .line 1912
    return-void
.end method

.method private broadcastConnected(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1170
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GTALK_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1171
    const-string v1, "account"

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1172
    const-string v1, "resource"

    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1174
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1175
    return-void
.end method

.method private broadcastDisconnected(I)V
    .locals 3
    .parameter

    .prologue
    .line 1179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GTALK_DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1180
    const-string v1, "account"

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1181
    const-string v1, "err"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1182
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1183
    return-void
.end method

.method private bumpConnectionCount()V
    .locals 2

    .prologue
    .line 2069
    monitor-enter p0

    .line 2070
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mNumConnectionsMade:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mNumConnectionsMade:Ljava/lang/Integer;

    .line 2071
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2072
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connections made: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mNumConnectionsMade:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logconn(Ljava/lang/String;)V

    .line 2073
    :cond_0
    return-void

    .line 2071
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private bumpConnectionsAttemptedCount()V
    .locals 2

    .prologue
    .line 2076
    monitor-enter p0

    .line 2077
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mNumConnectionsAttempted:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mNumConnectionsAttempted:Ljava/lang/Integer;

    .line 2078
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2079
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attempt connection #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mNumConnectionsAttempted:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logconn(Ljava/lang/String;)V

    .line 2080
    :cond_0
    return-void

    .line 2078
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private callDelayedLoginCallbacks(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 2
    .parameter

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mDelayedLoginCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1230
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 1231
    const-string v1, "call delayed login callbacks..."

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logconn(Ljava/lang/String;)V

    .line 1234
    :cond_0
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 1235
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mDelayedLoginCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/DelayedLogin;

    .line 1236
    invoke-interface {v0, p1}, Lcom/google/android/gsf/gtalkservice/DelayedLogin;->setupConnectionListeners(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 1237
    invoke-interface {v0}, Lcom/google/android/gsf/gtalkservice/DelayedLogin;->login()V

    .line 1238
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mDelayedLoginCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1234
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 1240
    :cond_1
    return-void
.end method

.method private cancelReconnectAlarm()V
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->cancelReconnectAlarm()V

    .line 957
    return-void
.end method

.method private checkConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1996
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1997
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected to server"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1999
    :cond_0
    return-void
.end method

.method private clearAllPresenceRecords()V
    .locals 2

    .prologue
    .line 1300
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    move-result-object v0

    .line 1301
    .local v0, rosterHandler:Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->clearAllPresenceRecords()V

    .line 1302
    return-void
.end method

.method private clearHeartbeatAlarm()V
    .locals 1

    .prologue
    .line 986
    monitor-enter p0

    .line 987
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->clearAlarm()V

    .line 991
    :cond_0
    monitor-exit p0

    .line 992
    return-void

    .line 991
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private clearReconnectAlarm()V
    .locals 1

    .prologue
    .line 951
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->cancelReconnectAlarm()V

    .line 952
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->clearReconnectAlarm()V

    .line 953
    return-void
.end method

.method private computeJIDResource()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0xc

    .line 2812
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2814
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 2815
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 2816
    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    .line 2817
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    .line 2818
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 2820
    if-le v2, v5, :cond_1

    .line 2821
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2829
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2830
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2822
    :cond_1
    if-ge v2, v5, :cond_0

    .line 2823
    sub-int v2, v5, v2

    move v3, v6

    .line 2824
    :goto_0
    if-ge v3, v2, :cond_0

    .line 2825
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2824
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private connectionStateChanged(I)V
    .locals 13
    .parameter "state"

    .prologue
    const/4 v12, 0x1

    .line 1128
    const/4 v8, 0x0

    .line 1129
    .local v8, singleSession:Lcom/google/android/gtalkservice/IImSession;
    const/4 v6, 0x0

    .line 1131
    .local v6, sessionsCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gtalkservice/IImSession;>;"
    iget-object v11, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mImSessions:Ljava/util/ArrayList;

    monitor-enter v11

    .line 1132
    :try_start_0
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mImSessions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1142
    .local v9, size:I
    if-gt v9, v12, :cond_1

    .line 1145
    monitor-exit v11

    .line 1166
    :cond_0
    :goto_0
    return-void

    .line 1146
    :cond_1
    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 1148
    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mImSessions:Ljava/util/ArrayList;

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/google/android/gtalkservice/IImSession;

    move-object v8, v0

    .line 1152
    :goto_1
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1154
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v2

    .line 1155
    .local v2, connState:I
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionError()I

    move-result v1

    .line 1157
    .local v1, connError:I
    if-eqz v8, :cond_3

    .line 1158
    move-object v0, v8

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->getSessionImpl()Lcom/google/android/gsf/gtalkservice/ImSession;

    move-result-object v4

    .line 1159
    .local v4, imSession:Lcom/google/android/gsf/gtalkservice/ImSession;
    invoke-virtual {v4, v2, v1}, Lcom/google/android/gsf/gtalkservice/ImSession;->hostSessionConnectionStateChanged(II)V

    goto :goto_0

    .line 1150
    .end local v1           #connError:I
    .end local v2           #connState:I
    .end local v4           #imSession:Lcom/google/android/gsf/gtalkservice/ImSession;
    :cond_2
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mImSessions:Ljava/util/ArrayList;

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .end local v6           #sessionsCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gtalkservice/IImSession;>;"
    .local v7, sessionsCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gtalkservice/IImSession;>;"
    move-object v6, v7

    .end local v7           #sessionsCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gtalkservice/IImSession;>;"
    .restart local v6       #sessionsCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gtalkservice/IImSession;>;"
    goto :goto_1

    .line 1152
    .end local v9           #size:I
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 1161
    .restart local v1       #connError:I
    .restart local v2       #connState:I
    .restart local v9       #size:I
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gtalkservice/IImSession;

    .line 1162
    .local v5, session:Lcom/google/android/gtalkservice/IImSession;
    check-cast v5, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;

    .end local v5           #session:Lcom/google/android/gtalkservice/IImSession;
    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->getSessionImpl()Lcom/google/android/gsf/gtalkservice/ImSession;

    move-result-object v4

    .line 1163
    .restart local v4       #imSession:Lcom/google/android/gsf/gtalkservice/ImSession;
    invoke-virtual {v4, v2, v1}, Lcom/google/android/gsf/gtalkservice/ImSession;->hostSessionConnectionStateChanged(II)V

    goto :goto_2
.end method

.method private constructException(Ljava/lang/String;)Ljava/lang/IllegalStateException;
    .locals 3
    .parameter "message"

    .prologue
    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "user="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 791
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    if-eqz p1, :cond_2

    .line 796
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    :cond_0
    :goto_0
    const-string v1, ", mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 806
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v1, :cond_1

    .line 807
    const-string v1, ", mConnection.isConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 811
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 797
    :cond_2
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    if-nez v1, :cond_0

    .line 798
    const-string v1, "mConnection=null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private doConnect()V
    .locals 14

    .prologue
    .line 1531
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    .line 1532
    const/4 v2, 0x0

    .line 1535
    const/4 v3, 0x0

    .line 1536
    const/4 v4, 0x0

    .line 1539
    const-string v5, ""

    .line 1540
    const/4 v6, 0x0

    .line 1541
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v7

    .line 1545
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mLastConnectionAttemptSuccessful:Z

    .line 1547
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setConnectionError(I)V

    .line 1549
    const/16 v1, 0x4e20

    invoke-static {v1}, Lorg/jivesoftware/smack/SmackConfiguration;->setPacketReplyTimeout(I)V

    .line 1552
    const/4 v1, 0x0

    invoke-static {v1}, Lorg/jivesoftware/smack/SmackConfiguration;->setKeepAliveInterval(I)V

    .line 1556
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v8

    .line 1557
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Account;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    .line 1558
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1559
    const-string v0, "doConnect: EMPTY AUTH-TOKEN, cannot make connection!"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logconn(Ljava/lang/String;)V

    .line 1560
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    new-instance v1, Lcom/google/android/gsf/gtalkservice/GTalkConnection$MissingAuthTokenError;

    const/16 v8, 0x190

    const-string v9, "empty auth-token"

    invoke-direct {v1, p0, v8, v9}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$MissingAuthTokenError;-><init>(Lcom/google/android/gsf/gtalkservice/GTalkConnection;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Lorg/jivesoftware/smack/packet/XMPPError;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1614
    :catch_0
    move-exception v0

    move-object v1, v5

    .line 1616
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->getWrappedThrowable()Ljava/lang/Throwable;

    move-result-object v5

    .line 1617
    instance-of v8, v5, Ljava/net/UnknownHostException;

    if-eqz v8, :cond_6

    .line 1618
    const/4 v4, 0x3

    .line 1619
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doConnect: caught "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logw(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move v0, v4

    .line 1643
    :goto_1
    if-eqz v6, :cond_e

    .line 1644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doConnect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") cancel doConnect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 1687
    :cond_0
    :goto_3
    return-void

    .line 1563
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-static {v1, v7, v8, v9}, Lcom/google/android/gsf/gtalkservice/Account;->createAccountFromSettings(Lcom/google/android/gsf/gtalkservice/service/GTalkService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v1

    .line 1566
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Account;->getHost()Ljava/lang/String;

    move-result-object v8

    .line 1567
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Account;->getPort()I

    move-result v9

    .line 1568
    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Account;->getDomain()Ljava/lang/String;

    move-result-object v10

    .line 1570
    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    .line 1573
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getJidResource()Ljava/lang/String;

    move-result-object v1

    .line 1574
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1575
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "empty JID resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1631
    :catch_1
    move-exception v0

    move-object v1, v5

    .line 1636
    :goto_4
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doConnect("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ") caught "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logw(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1638
    const/4 v0, 0x2

    .line 1643
    if-eqz v6, :cond_13

    .line 1644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doConnect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") cancel doConnect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1579
    :cond_2
    :try_start_4
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v11

    .line 1580
    invoke-virtual {v11}, Lcom/google/android/gtalkservice/ConnectionState;->isLoggedIn()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doConnect: acct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", current conn_state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1583
    const/4 v0, 0x1

    .line 1643
    if-eqz v0, :cond_19

    .line 1644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doConnect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") cancel doConnect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1588
    :cond_3
    :try_start_5
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getXMPPConnection()Lorg/jivesoftware/smack/XMPPConnection;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v2

    .line 1589
    if-eqz v2, :cond_4

    :try_start_6
    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v11

    if-nez v11, :cond_5

    .line 1591
    :cond_4
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mIsMainConnection:Z

    .line 1593
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "doConnect: making main connection for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logconn(Ljava/lang/String;)V

    .line 1595
    invoke-direct {p0, v8, v9, v10}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->makeXmppConnection(Ljava/lang/String;ILjava/lang/String;)Lorg/jivesoftware/smack/XMPPConnection;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result-object v2

    .line 1598
    :try_start_7
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->doXMPPConnectionWriteLock()V

    .line 1599
    invoke-virtual {v0, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setXMPPConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1601
    :try_start_8
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->doXMPPConnectionWriteUnlock()V

    .line 1604
    invoke-direct {p0, v2, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->login(Lorg/jivesoftware/smack/XMPPConnection;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-result-object v0

    move-object v1, v2

    .line 1612
    :goto_5
    const/4 v2, 0x3

    :try_start_9
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setConnectionState(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_9 .. :try_end_9} :catch_b
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 1643
    if-eqz v6, :cond_1e

    .line 1644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doConnect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") cancel doConnect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1601
    :catchall_0
    move-exception v1

    :try_start_a
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->doXMPPConnectionWriteUnlock()V

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 1639
    :catch_2
    move-exception v0

    move-object v1, v5

    .line 1640
    :goto_6
    :try_start_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doConnect("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ") caught "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1641
    const/16 v0, 0xa

    .line 1643
    if-eqz v6, :cond_16

    .line 1644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doConnect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") cancel doConnect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1606
    :cond_5
    const/4 v0, 0x0

    :try_start_c
    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mIsMainConnection:Z

    .line 1608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doConnect: use existing connection for "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logconn(Ljava/lang/String;)V

    .line 1609
    invoke-direct {p0, v2, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->loginUseExistingConnection(Lorg/jivesoftware/smack/XMPPConnection;Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    move-result-object v0

    move-object v1, v2

    goto/16 :goto_5

    .line 1620
    :cond_6
    :try_start_d
    instance-of v5, v5, Ljava/io/IOException;

    if-eqz v5, :cond_7

    .line 1621
    const/4 v4, 0x2

    .line 1622
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doConnect: caught "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logw(Ljava/lang/String;)V

    move v0, v4

    goto/16 :goto_1

    .line 1624
    :cond_7
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->getXMPPError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    .line 1625
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "xmppError = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->loge(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 1627
    if-nez v3, :cond_21

    .line 1628
    const/16 v0, 0xa

    goto/16 :goto_1

    .line 1654
    :cond_8
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->updateAuthErrorStats(I)V

    .line 1659
    :try_start_e
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->connectionEstablished(Ljava/lang/String;)V

    .line 1661
    iget-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mIsMainConnection:Z

    if-eqz v1, :cond_9

    .line 1663
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(Z)V

    .line 1666
    :cond_9
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v1, :cond_a

    .line 1667
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doConnect: DONE. JID received from server = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logconn(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_3

    .line 1643
    :cond_a
    :goto_7
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v5

    move v13, v4

    move-object v4, v2

    move v2, v13

    :goto_8
    if-eqz v6, :cond_b

    .line 1644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doConnect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") cancel doConnect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1648
    :cond_b
    if-nez v2, :cond_c

    if-eqz v3, :cond_8

    .line 1649
    :cond_c
    invoke-direct {p0, v2, v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->handleDoConnectError(ILorg/jivesoftware/smack/packet/XMPPError;)V

    goto/16 :goto_3

    .line 1670
    :catch_3
    move-exception v1

    .line 1671
    const-string v2, "GTalkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectionEstablished for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - caught "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    iget-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mIsMainConnection:Z

    if-eqz v1, :cond_d

    .line 1675
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(Z)V

    .line 1680
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v1

    .line 1681
    invoke-virtual {v1}, Lcom/google/android/gtalkservice/ConnectionState;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1682
    const-string v1, "doConnect: reset connection state to PENDING"

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 1683
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setConnectionState(I)V

    goto :goto_7

    .line 1648
    :cond_e
    if-nez v0, :cond_f

    if-eqz v3, :cond_10

    .line 1649
    :cond_f
    invoke-direct {p0, v0, v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->handleDoConnectError(ILorg/jivesoftware/smack/packet/XMPPError;)V

    goto/16 :goto_3

    .line 1654
    :cond_10
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->updateAuthErrorStats(I)V

    .line 1659
    :try_start_f
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->connectionEstablished(Ljava/lang/String;)V

    .line 1661
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mIsMainConnection:Z

    if-eqz v0, :cond_11

    .line 1663
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(Z)V

    .line 1666
    :cond_11
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v0, :cond_0

    .line 1667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doConnect: DONE. JID received from server = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logconn(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_3

    .line 1670
    :catch_4
    move-exception v0

    .line 1671
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectionEstablished for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mIsMainConnection:Z

    if-eqz v0, :cond_12

    .line 1675
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(Z)V

    .line 1680
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v0

    .line 1681
    invoke-virtual {v0}, Lcom/google/android/gtalkservice/ConnectionState;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1682
    const-string v0, "doConnect: reset connection state to PENDING"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 1683
    :goto_9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setConnectionState(I)V

    goto/16 :goto_3

    .line 1648
    :cond_13
    if-nez v0, :cond_f

    if-nez v3, :cond_f

    .line 1654
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->updateAuthErrorStats(I)V

    .line 1659
    :try_start_10
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->connectionEstablished(Ljava/lang/String;)V

    .line 1661
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mIsMainConnection:Z

    if-eqz v0, :cond_14

    .line 1663
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(Z)V

    .line 1666
    :cond_14
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v0, :cond_0

    .line 1667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doConnect: DONE. JID received from server = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logconn(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_5

    goto/16 :goto_3

    .line 1670
    :catch_5
    move-exception v0

    .line 1671
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectionEstablished for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mIsMainConnection:Z

    if-eqz v0, :cond_15

    .line 1675
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(Z)V

    .line 1680
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v0

    .line 1681
    invoke-virtual {v0}, Lcom/google/android/gtalkservice/ConnectionState;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1682
    const-string v0, "doConnect: reset connection state to PENDING"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    goto :goto_9

    .line 1648
    :cond_16
    if-nez v0, :cond_f

    if-nez v3, :cond_f

    .line 1654
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->updateAuthErrorStats(I)V

    .line 1659
    :try_start_11
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->connectionEstablished(Ljava/lang/String;)V

    .line 1661
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mIsMainConnection:Z

    if-eqz v0, :cond_17

    .line 1663
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(Z)V

    .line 1666
    :cond_17
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v0, :cond_0

    .line 1667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doConnect: DONE. JID received from server = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logconn(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_6

    goto/16 :goto_3

    .line 1670
    :catch_6
    move-exception v0

    .line 1671
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectionEstablished for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mIsMainConnection:Z

    if-eqz v0, :cond_18

    .line 1675
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(Z)V

    .line 1680
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v0

    .line 1681
    invoke-virtual {v0}, Lcom/google/android/gtalkservice/ConnectionState;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1682
    const-string v0, "doConnect: reset connection state to PENDING"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1648
    :cond_19
    if-nez v4, :cond_1a

    if-eqz v3, :cond_1b

    .line 1649
    :cond_1a
    invoke-direct {p0, v4, v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->handleDoConnectError(ILorg/jivesoftware/smack/packet/XMPPError;)V

    goto/16 :goto_3

    .line 1654
    :cond_1b
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->updateAuthErrorStats(I)V

    .line 1659
    :try_start_12
    invoke-virtual {p0, v5}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->connectionEstablished(Ljava/lang/String;)V

    .line 1661
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mIsMainConnection:Z

    if-eqz v0, :cond_1c

    .line 1663
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(Z)V

    .line 1666
    :cond_1c
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v0, :cond_0

    .line 1667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doConnect: DONE. JID received from server = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    throw v2

    move-result-object v1

    throw v0

    move-result-object v0

    throw v0

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logconn(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_7

    goto/16 :goto_3

    .line 1670
    :catch_7
    move-exception v0

    .line 1671
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectionEstablished for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mIsMainConnection:Z

    if-eqz v0, :cond_1d

    .line 1675
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(Z)V

    .line 1680
    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v0

    .line 1681
    invoke-virtual {v0}, Lcom/google/android/gtalkservice/ConnectionState;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1682
    const-string v0, "doConnect: reset connection state to PENDING"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1648
    :cond_1e
    if-nez v4, :cond_1a

    if-nez v3, :cond_1a

    .line 1654
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->updateAuthErrorStats(I)V

    .line 1659
    :try_start_13
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->connectionEstablished(Ljava/lang/String;)V

    .line 1661
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mIsMainConnection:Z

    if-eqz v0, :cond_1f

    .line 1663
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(Z)V

    .line 1666
    :cond_1f
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v0, :cond_0

    .line 1667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doConnect: DONE. JID received from server = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logconn(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_8

    goto/16 :goto_3

    .line 1670
    :catch_8
    move-exception v0

    .line 1671
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectionEstablished for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mIsMainConnection:Z

    if-eqz v0, :cond_20

    .line 1675
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(Z)V

    .line 1680
    :cond_20
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v0

    .line 1681
    invoke-virtual {v0}, Lcom/google/android/gtalkservice/ConnectionState;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1682
    const-string v0, "doConnect: reset connection state to PENDING"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 1643
    :catchall_2
    move-exception v0

    move-object v1, v5

    move v13, v4

    move-object v4, v2

    move v2, v13

    goto/16 :goto_8

    :catchall_3
    move-exception v2

    move-object v13, v2

    move v2, v4

    move-object v4, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_8

    :catchall_4
    move-exception v0

    move v13, v4

    move-object v4, v2

    move v2, v13

    goto/16 :goto_8

    .line 1639
    :catch_9
    move-exception v2

    move-object v13, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_6

    .line 1631
    :catch_a
    move-exception v2

    move-object v13, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_4

    .line 1614
    :catch_b
    move-exception v2

    move-object v13, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_0

    :cond_21
    move v0, v4

    goto/16 :goto_1
.end method

.method private doLogout()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 622
    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mOpened:Z

    .line 624
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setConnectionError(I)V

    .line 625
    invoke-virtual {p0, v1, v1, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->closeConnection(ZZZ)V

    .line 628
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->onLoggedOut()V

    .line 629
    return-void
.end method

.method private doRequestRoster()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1272
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->usePostAuthBatchQuery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1273
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->requestBatchQuery(Z)Z

    move-result v0

    .line 1277
    :goto_0
    return v0

    .line 1276
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->requestRosterAndSendInitialPresence()V

    move v0, v1

    .line 1277
    goto :goto_0
.end method

.method private ensurePresenceHandlerLoginState()V
    .locals 2

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    move-result-object v0

    .line 1306
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->isLoggedIn()Z

    move-result v1

    .line 1307
    if-nez v1, :cond_0

    .line 1308
    const-string v1, "ensurePresenceHandlerLoginState: call RosterListenerImpl.onLoggedIn"

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 1309
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->onLoggedIn()V

    .line 1311
    :cond_0
    return-void
.end method

.method private getJidResourceFromSettings()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2769
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getJidResource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMaxConnectionHistoryRecords()I
    .locals 2

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccount()Lcom/google/android/gsf/gtalkservice/Account;

    move-result-object v0

    .line 714
    .local v0, acct:Lcom/google/android/gsf/gtalkservice/Account;
    if-nez v0, :cond_0

    .line 715
    const/16 v1, 0xa

    .line 718
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getMaxConnectionHistoryRecords()I

    move-result v1

    goto :goto_0
.end method

.method private handleDoConnectError(ILorg/jivesoftware/smack/packet/XMPPError;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1822
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 1824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDoConnectError for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", xmppError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 1829
    if-eqz p2, :cond_8

    .line 1830
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->translateXMPPError(Lorg/jivesoftware/smack/packet/XMPPError;)I

    move-result v0

    .line 1831
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "run: translateXMPPError => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 1836
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->updateAuthErrorStats(I)V

    .line 1837
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->reachedRetryThresholdForAuthExpiration()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1839
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setConnectionError(I)V

    .line 1840
    const/4 v2, 0x1

    if-nez v1, :cond_5

    :goto_1
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->closeConnection(ZZZ)V

    .line 1848
    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    if-nez v1, :cond_2

    .line 1851
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->requestToRefreshAuthToken()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1856
    :cond_2
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugWakeLock:Z

    if-eqz v0, :cond_3

    .line 1857
    const-string v0, "handleDoConnectError: connection failed, release wakelock"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 1862
    :cond_3
    if-eqz v1, :cond_4

    .line 1863
    const-string v0, "handleDoConnectError: repeated AUTH_EXPIRED failures, stop retrying."

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logw(Ljava/lang/String;)V

    .line 1864
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getGTalkService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->notifyAuthError(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 1866
    invoke-direct {p0, v6}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->updateAuthErrorStats(I)V

    .line 1868
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->releaseAsyncWakeLock()V

    .line 1870
    return-void

    :cond_5
    move v3, v6

    .line 1840
    goto :goto_1

    .line 1856
    :catchall_0
    move-exception v0

    move v1, v6

    :goto_2
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugWakeLock:Z

    if-eqz v2, :cond_6

    .line 1857
    const-string v2, "handleDoConnectError: connection failed, release wakelock"

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 1862
    :cond_6
    if-eqz v1, :cond_7

    .line 1863
    const-string v1, "handleDoConnectError: repeated AUTH_EXPIRED failures, stop retrying."

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logw(Ljava/lang/String;)V

    .line 1864
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getGTalkService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getStatusBarNotifier()Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gsf/gtalkservice/service/StatusBarNotifier;->notifyAuthError(Ljava/lang/String;JLcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;)V

    .line 1866
    invoke-direct {p0, v6}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->updateAuthErrorStats(I)V

    .line 1868
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->releaseAsyncWakeLock()V

    .line 1856
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_8
    move v0, p1

    goto :goto_0
.end method

.method private init()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x3

    const/4 v2, 0x1

    .line 378
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAlarmManager:Landroid/app/AlarmManager;

    .line 379
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 382
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mPowerManager:Landroid/os/PowerManager;

    .line 384
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "GTALK_ASYNC_CONN"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 387
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "GTALK_CONN"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSimpleWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 389
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSimpleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 391
    new-instance v0, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mWorkerHandler:Landroid/os/Handler;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;-><init>(Landroid/content/ContentResolver;ZJLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    .line 400
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getShowMobileIndicator(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mShowMobileIndicator:Z

    .line 401
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getCapabilities()I

    move-result v0

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mCapabilities:I

    .line 402
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->addObserver(Ljava/util/Observer;)V

    .line 404
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->isAccountLastOnline(Landroid/content/ContentResolver;J)Z

    move-result v6

    .line 406
    .local v6, available:Z
    new-instance v0, Lcom/google/android/gtalkservice/Presence;

    sget-object v1, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getCapabilities()I

    move-result v3

    invoke-direct {v0, v6, v1, v13, v3}, Lcom/google/android/gtalkservice/Presence;-><init>(ZLcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mPresence:Lcom/google/android/gtalkservice/Presence;

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: initialized presence to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mPresence:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v1}, Lcom/google/android/gtalkservice/Presence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mPresence:Lcom/google/android/gtalkservice/Presence;

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->ensurePresenceHandlerLoginState()V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getUseRmq2()Z

    move-result v11

    .line 417
    .local v11, useRmq2:Z
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getSupportRmqAndRmq2()Z

    move-result v10

    .line 419
    .local v10, supportRmqAndRmq2:Z
    if-eqz v11, :cond_2

    .line 420
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getRmq2IncludeStreamId()Z

    move-result v8

    .line 422
    .local v8, includeStreamId:Z
    const-string v0, "Rmq"

    invoke-static {v0, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: use RMQ2 protocol: includeStreamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 426
    :cond_1
    new-instance v0, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v3

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;-><init>(Lcom/google/android/gsf/gtalkservice/PacketSender;Landroid/content/ContentResolver;J)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    .line 428
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    invoke-static {v8}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->setIncludeStreamId(Z)V

    .line 429
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->setRmq2Manager(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;)V

    .line 432
    .end local v8           #includeStreamId:Z
    :cond_2
    if-eqz v11, :cond_3

    if-eqz v10, :cond_5

    .line 433
    :cond_3
    const-string v0, "Rmq"

    invoke-static {v0, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 434
    const-string v0, "init: use RMQ protocol"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 436
    :cond_4
    new-instance v0, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;-><init>(Lcom/google/android/gsf/gtalkservice/PacketSender;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mRmqManager:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;

    .line 437
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mRmqManager:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->setRmqManager(Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;)V

    .line 441
    :cond_5
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getImSession(Z)Lcom/google/android/gtalkservice/IImSession;

    move-result-object v7

    .line 443
    .local v7, imSession:Lcom/google/android/gtalkservice/IImSession;
    monitor-enter p0

    .line 444
    :try_start_0
    iput-object v7, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mDefaultImSession:Lcom/google/android/gtalkservice/IImSession;

    .line 445
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: created defaultImSession "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mDefaultImSession:Lcom/google/android/gtalkservice/IImSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 449
    :cond_6
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->init(Landroid/os/Handler;)V

    .line 451
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionHistory:Ljava/util/ArrayList;

    monitor-enter v0

    .line 452
    :try_start_1
    new-instance v1, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionLifeCycle;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionLifeCycle;-><init>(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Lcom/google/android/gsf/gtalkservice/GTalkConnection$1;)V

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionLifeCycle;

    .line 453
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionHistory:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionLifeCycle;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 456
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setConnectionState(I)V

    .line 458
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getJidResourceFromSettings()Ljava/lang/String;

    move-result-object v9

    .line 459
    .local v9, jidResource:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 460
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->computeJIDResource()Ljava/lang/String;

    move-result-object v9

    .line 462
    :cond_7
    invoke-virtual {p0, v9}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setJidResource(Ljava/lang/String;)V

    .line 463
    return-void

    .line 445
    .end local v9           #jidResource:Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 454
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private initHeartbeatAlarm()V
    .locals 3

    .prologue
    .line 961
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getActiveHeartbeatInterval()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getIdleHeartbeatInterval()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getSyncHeartbeatInterval()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getNosyncHeartbeatInterval()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getHeartbeatAckTimeout()I

    move-result v0

    if-lez v0, :cond_0

    .line 967
    new-instance v0, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;-><init>(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/google/android/gsf/gtalkservice/GTalkConnection;)V

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;

    .line 972
    :cond_0
    return-void
.end method

.method private internalGetImSession()Lcom/google/android/gtalkservice/IImSession;
    .locals 5

    .prologue
    .line 2242
    const/4 v1, 0x0

    .line 2244
    .local v1, retVal:Lcom/google/android/gtalkservice/IImSession;
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2246
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mImSessions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2247
    .local v2, session:Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;
    move-object v1, v2

    .line 2251
    .end local v2           #session:Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;
    :cond_0
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2254
    return-object v1

    .line 2251
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2394
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    return-void
.end method

.method private logconn(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2410
    const-string v0, "GTalkService/c"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2402
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    return-void
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2406
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2407
    return-void
.end method

.method private login(Lorg/jivesoftware/smack/XMPPConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v3

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v4

    .line 1728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    .line 1729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/Account;->getLoginSettings()Ljava/util/Map;

    move-result-object v18

    .line 1731
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 1736
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mContext:Landroid/content/Context;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "gtalk_compress2"

    const/4 v7, 0x0

    invoke-static {v2, v5, v7}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 1740
    const/4 v2, 0x1

    if-ne v15, v2, :cond_0

    .line 1741
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/XMPPConnection;->getConnectionConfiguration()Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setCompressionEnabled(Z)V

    .line 1744
    :cond_0
    const/4 v2, 0x0

    .line 1745
    const/4 v5, 0x0

    .line 1746
    const-wide/16 v7, -0x1

    .line 1747
    const/4 v9, 0x0

    .line 1748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/android/gsf/gtalkservice/Account;->getRmqAckInterval()I

    move-result v12

    .line 1750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-object v10, v0

    if-eqz v10, :cond_5

    .line 1751
    const/4 v5, 0x1

    .line 1752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-object v9, v0

    invoke-virtual {v9, v12}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->setAckingInterval(I)V

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->processAndRetrieveInitialS2dIds()Ljava/util/List;

    move-result-object v9

    move-object v11, v9

    move v10, v5

    .line 1756
    :goto_0
    if-eqz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/Account;->getSupportRmqAndRmq2()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1757
    :cond_1
    const/4 v2, 0x1

    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mRmqManager:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;

    move-object v5, v0

    invoke-virtual {v5, v12}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->setAckingInterval(I)V

    .line 1759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mRmqManager:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->getLastReceivedRmqIdFromServer()J

    move-result-wide v7

    move-wide/from16 v19, v7

    move-wide/from16 v8, v19

    move v7, v2

    .line 1763
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->initHeartbeatAlarm()V

    .line 1765
    const/4 v2, 0x0

    .line 1766
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->shouldUploadHeartbeatStat()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->getHeartbeatStat()Lorg/jivesoftware/smack/packet/HeartbeatStat;

    move-result-object v2

    .line 1768
    const-string v5, "GTalkService/c"

    const/4 v12, 0x3

    invoke-static {v5, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1769
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Heartbeat stat uploaded: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v17, v2

    .line 1773
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v13

    .line 1775
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "login: username="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", account_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logconn(Ljava/lang/String;)V

    .line 1776
    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    invoke-virtual/range {v2 .. v18}, Lorg/jivesoftware/smack/XMPPConnection;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJZLjava/util/List;ZJIZLorg/jivesoftware/smack/packet/HeartbeatStat;Ljava/util/Map;)V

    .line 1791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;

    move-object v2, v0

    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/XMPPConnection;->getHeartbeatConfig()Lorg/jivesoftware/smack/packet/HeartbeatConfig;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->initStat(Lorg/jivesoftware/smack/packet/HeartbeatConfig;)V

    .line 1792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "login successful for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logconn(Ljava/lang/String;)V

    .line 1796
    invoke-virtual/range {p1 .. p1}, Lorg/jivesoftware/smack/XMPPConnection;->getUser()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_3
    move-object/from16 v17, v2

    goto :goto_2

    :cond_4
    move-wide/from16 v19, v7

    move-wide/from16 v8, v19

    move v7, v2

    goto/16 :goto_1

    :cond_5
    move-object v11, v9

    move v10, v5

    goto/16 :goto_0
.end method

.method private loginUseExistingConnection(Lorg/jivesoftware/smack/XMPPConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1801
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 1802
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getAuthToken()Ljava/lang/String;

    move-result-object v2

    .line 1804
    invoke-virtual {p1, p0}, Lorg/jivesoftware/smack/XMPPConnection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    .line 1805
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 1809
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v4

    .line 1811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindAccount: username="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", account_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logconn(Ljava/lang/String;)V

    move-object v0, p1

    move-object v3, p2

    .line 1812
    invoke-virtual/range {v0 .. v5}, Lorg/jivesoftware/smack/XMPPConnection;->bindAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 1817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind successful for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", serverJid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logconn(Ljava/lang/String;)V

    .line 1818
    return-object v0
.end method

.method private logw(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 2398
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    return-void
.end method

.method private makeXmppConnection(Ljava/lang/String;ILjava/lang/String;)Lorg/jivesoftware/smack/XMPPConnection;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    .prologue
    .line 1691
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-gez p2, :cond_1

    .line 1692
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EMPTY HOSTNAME or INVALID PORT("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), cannot make connection!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->loge(Ljava/lang/String;)V

    .line 1693
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mLastConnectionAttemptSuccessful:Z

    .line 1694
    new-instance v0, Lorg/jivesoftware/smack/XMPPException;

    new-instance v1, Ljava/net/UnknownHostException;

    const-string v2, "empty hostname/invalid port"

    invoke-direct {v1, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 1698
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gtalk_ssl_handshake_timeout_ms"

    const v2, 0xea60

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1702
    const-string v0, "GTalkService/c"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeXmppConnection: sslhandshake timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logconn(Ljava/lang/String;)V

    .line 1707
    :cond_2
    new-instance v0, Landroid/net/SSLSessionCache;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/net/SSLSessionCache;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v0}, Landroid/net/SSLCertificateSocketFactory;->getDefault(ILandroid/net/SSLSessionCache;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    .line 1710
    new-instance v0, Lorg/jivesoftware/smack/SSLXMPPConnection;

    const/4 v4, 0x1

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/jivesoftware/smack/SSLXMPPConnection;-><init>(Ljava/lang/String;IIZLjava/lang/String;Ljavax/net/SocketFactory;)V

    .line 1714
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/SSLXMPPConnection;->setDefaultAccountId(J)V

    .line 1715
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->bumpConnectionsAttemptedCount()V

    .line 1716
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSimpleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/SSLXMPPConnection;->setWakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 1717
    invoke-virtual {v0}, Lorg/jivesoftware/smack/SSLXMPPConnection;->connect()V

    .line 1721
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x64

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/SSLXMPPConnection;->setLocalConnectionId(I)V

    .line 1722
    return-object v0
.end method

.method private reachedRetryThresholdForAuthExpiration()Z
    .locals 3

    .prologue
    .line 2734
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gtalk_max_retries_for_auth_expired"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2737
    iget v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAuthExpiredCount:I

    if-lt v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestBatchQuery(Z)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1317
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;-><init>()V

    .line 1319
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->setIsOnline(Z)V

    .line 1320
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->setAccountId(J)V

    .line 1322
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getGTalkService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isUserIdle()Z

    move-result v1

    .line 1323
    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->setDeviceIdle(Z)V

    .line 1325
    if-nez p1, :cond_0

    .line 1326
    invoke-virtual {p0, v0, v6}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z

    move-result v0

    .line 1398
    :goto_0
    return v0

    .line 1329
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setupOnlinePacketListeners()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1332
    const-string v0, "requestBatchQuery: setupOnlinePacketListeners failed, bail"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    move v0, v6

    .line 1333
    goto :goto_0

    .line 1336
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/RosterManager;

    move-result-object v2

    .line 1337
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getShowMobileIndicator()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->setShowMobileIndicator(Z)V

    .line 1338
    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/RosterManager;->getRosterEtag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->setRosterEtag(Ljava/lang/String;)V

    .line 1339
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getOtrManager()Lcom/google/android/gsf/gtalkservice/OtrManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/OtrManager;->getOtrEtag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->setOtrEtag(Ljava/lang/String;)V

    .line 1340
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->setSharedStatusVersion(I)V

    .line 1341
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->setVCardQUeryStanzaId(Ljava/lang/String;)V

    .line 1342
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getCapabilities()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->setCapabilities(I)V

    .line 1344
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getVCardManager()Lcom/google/android/gsf/gtalkservice/VCardMgr;

    move-result-object v2

    .line 1345
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v3

    .line 1346
    invoke-virtual {v2, v3}, Lcom/google/android/gsf/gtalkservice/VCardMgr;->getStoredAvatarHashForContact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1347
    invoke-virtual {v0, v4}, Lcom/google/android/gsf/gtalkservice/extensions/PostAuthBatchQuery;->setAvatarHash(Ljava/lang/String;)V

    .line 1348
    invoke-virtual {v2, v3}, Lcom/google/android/gsf/gtalkservice/VCardMgr;->addToNotificationMap(Ljava/lang/String;)V

    .line 1351
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v4

    new-instance v5, Lcom/google/android/gsf/gtalkservice/GTalkConnection$2;

    invoke-direct {v5, p0, v3, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$2;-><init>(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Ljava/lang/String;Lcom/google/android/gsf/gtalkservice/VCardMgr;)V

    invoke-virtual {v4, v0, v5}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->sendPacket(Lorg/jivesoftware/smack/packet/IQ;Lcom/google/android/gsf/gtalkservice/IQPacketHandler;)Z

    move-result v0

    .line 1382
    if-nez v0, :cond_2

    .line 1383
    const-string v0, "GTalkService"

    const-string v1, "requestBatchQuery: FAILED TO SEND BATCH QUERY!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 1384
    goto :goto_0

    .line 1389
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getShowAwayOnIdle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1390
    invoke-virtual {p0, v7}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendDeviceIdleStatus(Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1391
    const-string v0, "GTalkService"

    const-string v1, "requestBatchQuery: failed to send device idle status"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 1392
    goto/16 :goto_0

    .line 1396
    :cond_3
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v0, :cond_4

    const-string v0, "requestBatchQuery: setConnectionState(ONLINE)"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logconn(Ljava/lang/String;)V

    .line 1397
    :cond_4
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setConnectionState(I)V

    move v0, v7

    .line 1398
    goto/16 :goto_0
.end method

.method private requestRosterAndSendInitialPresence()V
    .locals 1

    .prologue
    .line 1411
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setupOnlinePacketListeners()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1414
    const-string v0, "requestRosterAndSendInitialPresence: setupOnlinePacketListeners failed, bail"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 1438
    :goto_0
    return-void

    .line 1418
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/RosterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/RosterManager;->requestRoster()Z

    .line 1423
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->requestSharedPresence()V

    .line 1426
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendInitialPresence()V

    .line 1429
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getDefaultImSessionImpl()Lcom/google/android/gsf/gtalkservice/ImSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ImSession;->loadVCard()V

    .line 1432
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getOtrManager()Lcom/google/android/gsf/gtalkservice/OtrManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/OtrManager;->queryStatus()V

    .line 1434
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v0, :cond_1

    .line 1435
    const-string v0, "requestRosterAndSendInitialPresence: setConnectionState(ONLINE)"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logconn(Ljava/lang/String;)V

    .line 1437
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setConnectionState(I)V

    goto :goto_0
.end method

.method private requestSharedPresence()V
    .locals 3

    .prologue
    .line 1490
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;-><init>(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    .line 1491
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setTo(Ljava/lang/String;)V

    .line 1492
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gsf/gtalkservice/extensions/SharedStatus;->setAccountId(J)V

    .line 1494
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "request shared presence status"

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 1495
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendPacketOverMcsConnection(Lorg/jivesoftware/smack/packet/Packet;)Z

    .line 1496
    return-void
.end method

.method private saveJidResourceToSettings(Ljava/lang/String;)V
    .locals 1
    .parameter "jidResource"

    .prologue
    .line 2773
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setJidResource(Ljava/lang/String;)V

    .line 2774
    return-void
.end method

.method private sendConnectionClosedMessage(II)V
    .locals 3
    .parameter "connectionId"
    .parameter "error"

    .prologue
    .line 1985
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mWorkerHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 1993
    :goto_0
    return-void

    .line 1989
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mWorkerHandler:Landroid/os/Handler;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1990
    .local v0, msg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1991
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 1992
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendInitialPresence()V
    .locals 5

    .prologue
    .line 1466
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getDefaultImSessionImpl()Lcom/google/android/gsf/gtalkservice/ImSession;

    move-result-object v0

    .line 1467
    .local v0, imSession:Lcom/google/android/gsf/gtalkservice/ImSession;
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getIntendedPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v1

    .line 1468
    .local v1, intendedPresence:Lcom/google/android/gtalkservice/Presence;
    invoke-virtual {v1}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v2

    .line 1470
    .local v2, isAvailable:Z
    new-instance v3, Lcom/google/android/gtalkservice/Presence;

    invoke-direct {v3}, Lcom/google/android/gtalkservice/Presence;-><init>()V

    .line 1471
    .local v3, presence:Lcom/google/android/gtalkservice/Presence;
    invoke-virtual {v3, v2}, Lcom/google/android/gtalkservice/Presence;->setAvailable(Z)V

    .line 1478
    if-eqz v2, :cond_0

    .line 1479
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getGTalkService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->isUserIdle()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1480
    sget-object v4, Lcom/google/android/gtalkservice/Presence$Show;->AWAY:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v3, v4}, Lcom/google/android/gtalkservice/Presence;->setShow(Lcom/google/android/gtalkservice/Presence$Show;)V

    .line 1485
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getCapabilities()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gtalkservice/Presence;->setCapabilities(I)V

    .line 1486
    invoke-virtual {v0, v3}, Lcom/google/android/gsf/gtalkservice/ImSession;->sendPresence(Lcom/google/android/gtalkservice/Presence;)V

    .line 1487
    return-void

    .line 1482
    :cond_1
    sget-object v4, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v3, v4}, Lcom/google/android/gtalkservice/Presence;->setShow(Lcom/google/android/gtalkservice/Presence$Show;)V

    goto :goto_0
.end method

.method private sendRosterRequestIfAsked()Z
    .locals 2

    .prologue
    .line 1282
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getDefaultImSessionImpl()Lcom/google/android/gsf/gtalkservice/ImSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/ImSession;->getIntendedPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v0

    .line 1284
    .local v0, intendedPresence:Lcom/google/android/gtalkservice/Presence;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1285
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->ensurePresenceHandlerLoginState()V

    .line 1286
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->clearAllPresenceRecords()V

    .line 1287
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->doRequestRoster()Z

    move-result v1

    .line 1296
    :goto_0
    return v1

    .line 1291
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->usePostAuthBatchQuery()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1292
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->requestBatchQuery(Z)Z

    move-result v1

    goto :goto_0

    .line 1295
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendInitialPresence()V

    .line 1296
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 659
    monitor-enter p0

    .line 660
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    .line 661
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 666
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mIsMainConnection:Z

    if-eqz v0, :cond_2

    .line 669
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    if-eqz v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->setRmq2Manager(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;)V

    .line 674
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mRmqManager:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mRmqManager:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 677
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mRmqManager:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->setRmqManager(Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;)V

    .line 679
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getDataMessageManager()Lcom/google/android/gsf/gtalkservice/DataMessageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 682
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/ChatMgr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 684
    :cond_3
    return-void

    .line 661
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setJid(Ljava/lang/String;)V
    .locals 0
    .parameter "jid"

    .prologue
    .line 695
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mJid:Ljava/lang/String;

    .line 696
    return-void
.end method

.method private setReconnectAlarm()V
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->setReconnectAlarm()V

    .line 948
    return-void
.end method

.method private setServerAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "addr"

    .prologue
    .line 704
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mServerAddress:Ljava/lang/String;

    .line 705
    return-void
.end method

.method private setUserBareAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "user"

    .prologue
    .line 708
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mUserBareAddress:Ljava/lang/String;

    .line 709
    return-void
.end method

.method private setupOnlinePacketListeners()Z
    .locals 2

    .prologue
    .line 1441
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 1442
    .local v0, connection:Lorg/jivesoftware/smack/XMPPConnection;
    if-nez v0, :cond_0

    .line 1445
    const/4 v1, 0x0

    .line 1457
    :goto_0
    return v1

    .line 1448
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterManager()Lcom/google/android/gsf/gtalkservice/RosterManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/gtalkservice/RosterManager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 1449
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getSubscriptionManager()Lcom/google/android/gsf/gtalkservice/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/gtalkservice/SubscriptionManager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 1450
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getOtrManager()Lcom/google/android/gsf/gtalkservice/OtrManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/gtalkservice/OtrManager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 1451
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getVCardManager()Lcom/google/android/gsf/gtalkservice/VCardMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/gtalkservice/VCardMgr;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 1452
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getVideoChatSessionManager()Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/gtalkservice/VideoChatSessionManager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 1453
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRawStanzaSendReceiveManager()Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/gtalkservice/RawStanzaSendReceiveManager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 1455
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getDefaultImSessionImpl()Lcom/google/android/gsf/gtalkservice/ImSession;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/gtalkservice/ImSession;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 1457
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private shouldUploadHeartbeatStat()Z
    .locals 1

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;

    if-eqz v0, :cond_0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private startHeartbeatAlarm(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 975
    monitor-enter p0

    .line 976
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->setConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 979
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->startAlarm()V

    .line 980
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->setHeartbeatAlarm(Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;)V

    .line 982
    :cond_0
    monitor-exit p0

    .line 983
    return-void

    .line 982
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private translateXMPPError(Lorg/jivesoftware/smack/packet/XMPPError;)I
    .locals 3
    .parameter "xmppError"

    .prologue
    .line 1190
    const/4 v0, 0x0

    .line 1191
    .local v0, error:I
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/XMPPError;->getCode()I

    move-result v1

    .line 1193
    .local v1, errorCode:I
    if-eqz v1, :cond_0

    .line 1194
    const/16 v2, 0x190

    if-lt v1, v2, :cond_2

    const/16 v2, 0x197

    if-gt v1, v2, :cond_2

    .line 1198
    instance-of v2, p1, Lcom/google/android/gsf/gtalkservice/GTalkConnection$MissingAuthTokenError;

    if-eqz v2, :cond_1

    .line 1199
    const/4 v0, 0x4

    .line 1214
    :cond_0
    :goto_0
    return v0

    .line 1201
    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    .line 1203
    :cond_2
    const/16 v2, 0x1f4

    if-eq v1, v2, :cond_3

    const/16 v2, 0x1f6

    if-lt v1, v2, :cond_4

    const/16 v2, 0x1f8

    if-gt v1, v2, :cond_4

    .line 1204
    :cond_3
    const/4 v0, 0x7

    goto :goto_0

    .line 1206
    :cond_4
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->pollNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1207
    const/4 v0, 0x1

    goto :goto_0

    .line 1209
    :cond_5
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private updateAuthErrorStats(I)V
    .locals 1
    .parameter "error"

    .prologue
    .line 2726
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 2727
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAuthExpiredCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAuthExpiredCount:I

    .line 2731
    :cond_0
    :goto_0
    return-void

    .line 2728
    :cond_1
    if-nez p1, :cond_0

    .line 2729
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAuthExpiredCount:I

    goto :goto_0
.end method

.method private usePostAuthBatchQuery()Z
    .locals 3

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gtalk_use_batch_query"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public acquireAsyncWakeLock()V
    .locals 4

    .prologue
    .line 522
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 523
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 524
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mClearWakeLockTimer:Lcom/google/android/gsf/gtalkservice/GTalkConnection$ClearWakeLockTimer;

    const-wide/32 v2, 0x11170

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 527
    return-void

    .line 524
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public acquireSimpleWakeLock(Ljava/lang/String;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSimpleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 509
    const-string v0, "GTalkService/wake"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acquireWakeLock: token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wakelock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSimpleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 512
    :cond_0
    return-void
.end method

.method public addConnectionEvent(Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionEvent;)V
    .locals 2
    .parameter

    .prologue
    .line 2705
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addConnectionEvent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 2707
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionHistory:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2708
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mCurrentConnectionCycle:Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionLifeCycle;

    invoke-virtual {v1, p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionLifeCycle;->appendConnectionEvent(Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionEvent;)V

    .line 2709
    monitor-exit v0

    .line 2710
    return-void

    .line 2709
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public asyncUpdateAccountStatus()V
    .locals 3

    .prologue
    .line 639
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mWorkerHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 645
    :goto_0
    return-void

    .line 643
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mWorkerHandler:Landroid/os/Handler;

    const/16 v2, 0x190

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 644
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public clearStats()V
    .locals 1

    .prologue
    .line 2178
    monitor-enter p0

    .line 2179
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mNumConnectionsMade:Ljava/lang/Integer;

    .line 2180
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mNumConnectionsAttempted:Ljava/lang/Integer;

    .line 2181
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionDurations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 2182
    monitor-exit p0

    .line 2183
    return-void

    .line 2182
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public closeConnection(ZZZ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1880
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 1881
    const-string v1, "GTalkService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1882
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeConnection for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", notify="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", xmppConn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logconn(Ljava/lang/String;)V

    .line 1886
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionError()I

    move-result v1

    .line 1887
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getLocalConnectionId()I

    move-result v2

    .line 1892
    :goto_0
    invoke-virtual {p0, v2, v1, p1, p2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->connectionClosed(IIZZ)V

    .line 1894
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mIsMainConnection:Z

    if-eqz v1, :cond_1

    .line 1895
    if-eqz p3, :cond_3

    .line 1899
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->asyncCloseConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 1904
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v3

    .line 1887
    goto :goto_0

    .line 1901
    :cond_3
    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/XMPPConnection;->close(Z)V

    goto :goto_1
.end method

.method public closeSettingsQueryMap()V
    .locals 3

    .prologue
    .line 2834
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 2835
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mWorkerHandler:Landroid/os/Handler;

    const/16 v2, 0x258

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2836
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2838
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public connect()Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 875
    invoke-static {}, Lcom/google/android/gsf/gtalkservice/LogTag;->queryLoggingLevel()V

    .line 878
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->cancelReconnectAlarm()V

    .line 880
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mLastConnectAttemptTs:J

    .line 882
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v0

    .line 883
    .local v0, connectionState:Lcom/google/android/gtalkservice/ConnectionState;
    invoke-virtual {v0}, Lcom/google/android/gtalkservice/ConnectionState;->getState()I

    move-result v2

    if-lt v2, v6, :cond_0

    .line 884
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect: acct="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current conn state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    move v2, v5

    .line 924
    :goto_0
    return v2

    .line 891
    :cond_0
    invoke-virtual {p0, v6}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setConnectionState(I)V

    .line 893
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->pollNetworkAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 894
    const-string v2, "connect: network unavailable, set state=PENDING, err=NO_NETWORK"

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 904
    invoke-virtual {p0, v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setConnectionError(I)V

    .line 905
    invoke-virtual {p0, v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setConnectionState(I)V

    move v2, v5

    .line 906
    goto :goto_0

    .line 909
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect: acct="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 911
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugWakeLock:Z

    if-eqz v2, :cond_2

    .line 912
    const-string v2, "connect: acquire wakelock, async connect..."

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logconn(Ljava/lang/String;)V

    .line 917
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->acquireAsyncWakeLock()V

    .line 919
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v2, :cond_3

    .line 920
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mWorkerHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 921
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v1           #msg:Landroid/os/Message;
    :cond_3
    move v2, v4

    .line 924
    goto :goto_0
.end method

.method public connectionClosed(I)V
    .locals 1
    .parameter "connectionId"

    .prologue
    .line 1981
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionError()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendConnectionClosedMessage(II)V

    .line 1982
    return-void
.end method

.method public connectionClosed(IIZ)V
    .locals 1
    .parameter "connectionId"
    .parameter "error"
    .parameter "notify"

    .prologue
    .line 995
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->connectionClosed(IIZZ)V

    .line 996
    return-void
.end method

.method public connectionClosed(IIZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1012
    new-instance v0, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;

    const-string v1, "connectionClosed"

    invoke-direct {v0, v1}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;-><init>(Ljava/lang/String;)V

    .line 1018
    const-string v1, "connectionClosed"

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->acquireSimpleWakeLock(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 1023
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->wakeLockAcquired()V

    .line 1027
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionClosedLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1031
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v3

    .line 1032
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/jivesoftware/smack/XMPPConnection;->getLocalConnectionId()I

    move-result v3

    .line 1034
    :goto_0
    if-eq p1, v3, :cond_2

    .line 1035
    const-string v4, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1036
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connectionClosed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", old conn(id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "), new connection id is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", ignore"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 1039
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1116
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 1117
    const-string v0, "connectionClosed"

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->releaseSimpleWakeLock(Ljava/lang/String;)V

    .line 1119
    :goto_1
    return-void

    :cond_1
    move v3, v5

    .line 1032
    goto :goto_0

    .line 1042
    :cond_2
    :try_start_2
    const-string v3, "GTalkService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1043
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectionClosed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", connId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/google/android/gtalkservice/ConnectionError;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 1048
    :cond_3
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 1049
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setConnectionError(I)V

    .line 1051
    iget-boolean v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mIsMainConnection:Z

    if-eqz v3, :cond_7

    .line 1053
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->reportInetCondition(Z)V

    .line 1056
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mIsMainConnection:Z

    .line 1059
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getXMPPConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    .line 1060
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection;->getLocalConnectionId()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-ne v1, p1, :cond_4

    .line 1063
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->doXMPPConnectionWriteLock()V

    .line 1064
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->setXMPPConnection(Lorg/jivesoftware/smack/XMPPConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1066
    :try_start_4
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->doXMPPConnectionWriteUnlock()V

    .line 1074
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getRosterHandler()Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/android/gsf/gtalkservice/RosterListenerImpl;->setRosterFetched(Z)V

    .line 1076
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->clearHeartbeatAlarm()V

    .line 1078
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->addConnectionDuration()V

    .line 1079
    invoke-direct {p0, p2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->addConnectionClosedEvent(I)V

    .line 1081
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->isSessionOpen()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {p2}, Lcom/google/android/gtalkservice/ConnectionError;->isAuthenticationError(I)Z

    move-result v1

    if-nez v1, :cond_8

    if-eqz p4, :cond_8

    .line 1084
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setConnectionState(I)V

    move v1, v6

    .line 1090
    :goto_3
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionStartTime:J

    .line 1091
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1104
    if-eqz v1, :cond_5

    .line 1105
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->retryConnection(Z)V

    .line 1110
    :cond_5
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getChatManager()Lcom/google/android/gsf/gtalkservice/ChatMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/ChatMgr;->rejoinRoomsForGroupChats()V

    .line 1112
    if-eqz p3, :cond_6

    .line 1113
    invoke-direct {p0, p2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->broadcastDisconnected(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1116
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 1117
    const-string v0, "connectionClosed"

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->releaseSimpleWakeLock(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1066
    :catchall_0
    move-exception v1

    :try_start_6
    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v3}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->doXMPPConnectionWriteUnlock()V

    throw v1

    .line 1091
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1116
    :catchall_2
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/WakeLockDiagnostics;->timeElapsedSinceWakelockAcquired()J

    .line 1117
    const-string v0, "connectionClosed"

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->releaseSimpleWakeLock(Ljava/lang/String;)V

    throw v1

    .line 1070
    :cond_7
    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectionClosed for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mainConnection=false"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1087
    :cond_8
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setConnectionState(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move v1, v5

    goto :goto_3
.end method

.method public connectionClosedOnError(ILjava/lang/Exception;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    .line 1924
    const-string v0, "GTalkService"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectionClosedOnError for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 1928
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionError()I

    move-result v0

    .line 1932
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 1935
    instance-of v1, p2, Lorg/jivesoftware/smack/XMPPException;

    if-eqz v1, :cond_4

    .line 1936
    check-cast p2, Lorg/jivesoftware/smack/XMPPException;

    .line 1937
    invoke-virtual {p2}, Lorg/jivesoftware/smack/XMPPException;->getXMPPError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    .line 1938
    invoke-virtual {p2}, Lorg/jivesoftware/smack/XMPPException;->getWrappedThrowable()Ljava/lang/Throwable;

    move-result-object v2

    .line 1940
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectionClosedOnError: xmppError = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logconn(Ljava/lang/String;)V

    .line 1943
    :cond_1
    if-eqz v1, :cond_3

    .line 1944
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->translateXMPPError(Lorg/jivesoftware/smack/packet/XMPPError;)I

    move-result v0

    .line 1967
    :cond_2
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendConnectionClosedMessage(II)V

    .line 1968
    return-void

    .line 1946
    :cond_3
    invoke-virtual {p2}, Lorg/jivesoftware/smack/XMPPException;->getStreamError()Lorg/jivesoftware/smack/packet/StreamError;

    move-result-object v1

    .line 1947
    if-eqz v1, :cond_2

    .line 1948
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/StreamError;->getCode()Ljava/lang/String;

    move-result-object v1

    .line 1949
    const-string v2, "host-unknown"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v5

    .line 1950
    goto :goto_0

    .line 1954
    :cond_4
    instance-of v0, p2, Ljava/io/IOException;

    if-nez v0, :cond_5

    instance-of v0, p2, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;

    if-eqz v0, :cond_6

    .line 1956
    :cond_5
    const/4 v0, 0x2

    goto :goto_0

    .line 1959
    :cond_6
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public connectionEstablished(Ljava/lang/String;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 2007
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionStartTime:J

    .line 2009
    const-string v0, "GTalkService/c"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectionEstablished for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConnectionStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 2014
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 2016
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->checkConnection()V

    .line 2017
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->bumpConnectionCount()V

    .line 2019
    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setServerAddress(Ljava/lang/String;)V

    .line 2022
    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 2023
    const-string v1, "GTalkService"

    const-string v2, "connectionEstablished:got username with no domain - should not happen."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2027
    :goto_0
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setJid(Ljava/lang/String;)V

    .line 2028
    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setUserBareAddress(Ljava/lang/String;)V

    .line 2031
    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->parseResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2032
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setJidResource(Ljava/lang/String;)V

    .line 2034
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mLastConnectionAttemptSuccessful:Z

    .line 2035
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->broadcastConnected(Ljava/lang/String;)V

    .line 2041
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getIQPacketManager()Lcom/google/android/gsf/gtalkservice/IQPacketManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/gtalkservice/IQPacketManager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 2042
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getHttpResponseManager()Lcom/google/android/gsf/gtalkservice/HttpResponseManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gsf/gtalkservice/HttpResponseManager;->initConnection(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 2044
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->checkConnection()V

    .line 2047
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendRosterRequestIfAsked()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2048
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sending roster request failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2063
    :catchall_0
    move-exception v0

    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugWakeLock:Z

    if-eqz v1, :cond_1

    const-string v1, "connectionEstablished: release wakelock"

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 2064
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->releaseAsyncWakeLock()V

    .line 2063
    throw v0

    .line 2051
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->checkConnection()V

    .line 2054
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->callDelayedLoginCallbacks(Lorg/jivesoftware/smack/XMPPConnection;)V

    .line 2058
    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->startHeartbeatAlarm(Lorg/jivesoftware/smack/XMPPConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2063
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugWakeLock:Z

    if-eqz v0, :cond_3

    const-string v0, "connectionEstablished: release wakelock"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 2064
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->releaseAsyncWakeLock()V

    .line 2066
    return-void

    :cond_4
    move-object v1, p1

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v5, 0x3e8

    .line 2287
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getUseRmq2()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2288
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/Account;->getSupportRmqAndRmq2()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2289
    const-string v0, "RMQ: 1+2"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2297
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Host: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Account;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Account;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getJid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/Account;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->isSessionOpen()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "open"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2303
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getDefaultImSessionImpl()Lcom/google/android/gsf/gtalkservice/ImSession;

    move-result-object v0

    .line 2304
    if-eqz v0, :cond_0

    .line 2305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gtalkservice/ConnectionState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connection error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getConnectionError()Lcom/google/android/gtalkservice/ConnectionError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gtalkservice/ConnectionError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2307
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Presence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gtalkservice/Presence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intended presence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getIntendedPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gtalkservice/Presence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2310
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getSharedPresence()Lcom/google/android/gtalkservice/Presence;

    move-result-object v0

    .line 2311
    if-eqz v0, :cond_0

    .line 2312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save shared presence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/Presence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2316
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2318
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;

    if-eqz v0, :cond_1

    .line 2319
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2320
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->dump(Ljava/io/PrintWriter;)V

    .line 2323
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2324
    const-string v0, "c2dm"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2325
    const-string v0, "------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2326
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mLastDataMessageReceivedTs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 2327
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 2328
    iget-wide v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mLastDataMessageReceivedTs:J

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 2330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mLastDataMessageReceivedTs:J

    sub-long/2addr v1, v3

    div-long/2addr v1, v5

    .line 2331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last c2dm msg received at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%H:%M:%S"

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ago)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2337
    :goto_2
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2338
    const-string v0, "Connection stats"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2339
    const-string v0, "------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connections made/attempts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getNumberOfConnectionsMade()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getNumberOfConnectionsAttempted()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2343
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2345
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection uptime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnectionUptime()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last server activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getLastActivityFromServerTime()J

    move-result-wide v3

    sub-long v3, v0, v3

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last device activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getLastActivityToServerTime()J

    move-result-wide v3

    sub-long/2addr v0, v3

    div-long/2addr v0, v5

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2359
    :goto_3
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2361
    const-string v0, "Wakelocks"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2362
    const-string v0, "------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GTALK_ASYNC_CONN wakelock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GTALK_CONN wakelock "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSimpleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2366
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getDataMessageManager()Lcom/google/android/gsf/gtalkservice/DataMessageManager;

    move-result-object v0

    .line 2367
    if-eqz v0, :cond_2

    .line 2368
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/DataMessageManager;->getWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 2369
    if-eqz v0, :cond_2

    .line 2370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GOOGLE_DATA_MESSAGING wakelock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2374
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClearWakeLockTimer fired count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mClearWakeLockTimerFiredCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2375
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2377
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionHistory:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2378
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    neg-int v1, v1

    add-int/lit8 v1, v1, 0x1

    .line 2379
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionLifeCycle;

    .line 2380
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "conn #("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "):"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2381
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionLifeCycle;->dump(Ljava/io/PrintWriter;)V

    .line 2382
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v4

    goto :goto_4

    .line 2291
    :cond_3
    const-string v0, "RMQ: 2"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2294
    :cond_4
    const-string v0, "RMQ: 1"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2300
    :cond_5
    const-string v1, "closed"

    goto/16 :goto_1

    .line 2334
    :cond_6
    const-string v0, "Never received a c2dm msg!"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2355
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last connect attempt time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mLastConnectAttemptTs:J

    sub-long/2addr v0, v3

    div-long/2addr v0, v5

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2384
    :cond_8
    :try_start_1
    monitor-exit v0

    .line 2385
    return-void

    .line 2384
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public ensureRouteOverMobileHipriNetworkInterface()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 758
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    .line 779
    :goto_0
    return v2

    .line 764
    :cond_0
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/XMPPConnection;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 765
    .local v0, addrBytes:[B
    const/4 v2, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    aget-byte v3, v0, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 770
    .local v1, ipAddr:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--- requestRouteToHost for TYPE_MOBILE_HIPRI, ipAddr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 773
    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 775
    const-string v2, "requestRouteToHost: failed!"

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    move v2, v4

    .line 776
    goto :goto_0

    :cond_1
    move v2, v5

    .line 779
    goto :goto_0
.end method

.method public forceCloseConnection()V
    .locals 3

    .prologue
    .line 632
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 633
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mWorkerHandler:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 634
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 636
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public getAccount()Lcom/google/android/gsf/gtalkservice/Account;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    return-object v0
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 1186
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccountId:J

    return-wide v0
.end method

.method public getAccountIdFilter()Lorg/jivesoftware/smack/filter/AccountIdFilter;
    .locals 1

    .prologue
    .line 2841
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccountIdFilter:Lorg/jivesoftware/smack/filter/AccountIdFilter;

    return-object v0
.end method

.method public getCapabilities()I
    .locals 1

    .prologue
    .line 2749
    iget v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mCapabilities:I

    return v0
.end method

.method public getConnection()Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1

    .prologue
    .line 653
    monitor-enter p0

    .line 654
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    monitor-exit p0

    return-object v0

    .line 655
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConnectionError()I
    .locals 1

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getDefaultImSessionImpl()Lcom/google/android/gsf/gtalkservice/ImSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getConnectionError()Lcom/google/android/gtalkservice/ConnectionError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/ConnectionError;->getError()I

    move-result v0

    return v0
.end method

.method public getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;
    .locals 1

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getDefaultImSessionImpl()Lcom/google/android/gsf/gtalkservice/ImSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/ImSession;->getConnectionState()Lcom/google/android/gtalkservice/ConnectionState;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionUptime()I
    .locals 4

    .prologue
    .line 2145
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2146
    const/4 v0, 0x0

    .line 2149
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDefaultImSession()Lcom/google/android/gtalkservice/IImSession;
    .locals 1

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mDefaultImSession:Lcom/google/android/gtalkservice/IImSession;

    return-object v0
.end method

.method public getDefaultImSessionImpl()Lcom/google/android/gsf/gtalkservice/ImSession;
    .locals 1

    .prologue
    .line 2262
    iget-object p0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mDefaultImSession:Lcom/google/android/gtalkservice/IImSession;

    .end local p0
    check-cast p0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->getSessionImpl()Lcom/google/android/gsf/gtalkservice/ImSession;

    move-result-object v0

    return-object v0
.end method

.method public getGTalkService()Lcom/google/android/gsf/gtalkservice/service/GTalkService;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    return-object v0
.end method

.method public getHeartbeatInterval()J
    .locals 2

    .prologue
    .line 2761
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getHeartbeatInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public getImSession(Z)Lcom/google/android/gtalkservice/IImSession;
    .locals 2
    .parameter

    .prologue
    .line 2216
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->internalGetImSession()Lcom/google/android/gtalkservice/IImSession;

    move-result-object v0

    .line 2217
    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 2237
    :cond_0
    :goto_0
    return-object v0

    .line 2221
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/ImSession;->createImSession(Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;)Lcom/google/android/gsf/gtalkservice/ImSession;

    move-result-object v0

    .line 2223
    if-nez v0, :cond_2

    .line 2224
    const-string v0, "create IM session returned null!"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->loge(Ljava/lang/String;)V

    .line 2225
    const/4 v0, 0x0

    goto :goto_0

    .line 2228
    :cond_2
    new-instance v1, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;

    invoke-direct {v1, v0}, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;-><init>(Lcom/google/android/gsf/gtalkservice/ImSession;)V

    .line 2230
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2232
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mImSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2234
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v1

    .line 2237
    goto :goto_0

    .line 2234
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSessionsWriteLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public getImSessionForAccountId(J)Lcom/google/android/gtalkservice/IImSession;
    .locals 5
    .parameter

    .prologue
    .line 2192
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 2193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountId must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2196
    :cond_0
    const/4 v1, 0x0

    .line 2198
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2200
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mImSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;

    .line 2201
    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/service/ImSessionWrapper;->getAccountId()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    .line 2203
    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    .line 2209
    :goto_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 2212
    return-object v0

    .line 2209
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSessionsReadLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getJid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mJid:Ljava/lang/String;

    return-object v0
.end method

.method public getJidResource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2777
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mJidResource:Ljava/lang/String;

    return-object v0
.end method

.method public getLastActivityFromServerTime()J
    .locals 2

    .prologue
    .line 2157
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    if-nez v0, :cond_1

    .line 2158
    :cond_0
    const-wide/16 v0, -0x1

    .line 2160
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getLastActivityFromServerTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getLastActivityToServerTime()J
    .locals 2

    .prologue
    .line 2168
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnection:Lorg/jivesoftware/smack/XMPPConnection;

    if-nez v0, :cond_1

    .line 2169
    :cond_0
    const-wide/16 v0, -0x1

    .line 2171
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getLastActivityToServerTime()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getLastConnectionAttemptSuccessful()Z
    .locals 1

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mLastConnectionAttemptSuccessful:Z

    return v0
.end method

.method public getNumberOfConnectionsAttempted()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 2110
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mNumConnectionsAttempted:Ljava/lang/Integer;

    monitor-enter v1

    .line 2111
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mNumConnectionsAttempted:Ljava/lang/Integer;

    .line 2112
    .local v0, numConnections:Ljava/lang/Integer;
    monitor-exit v1

    .line 2113
    return-object v0

    .line 2112
    .end local v0           #numConnections:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getNumberOfConnectionsMade()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 2102
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mNumConnectionsMade:Ljava/lang/Integer;

    monitor-enter v1

    .line 2103
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mNumConnectionsMade:Ljava/lang/Integer;

    .line 2104
    .local v0, numConnections:Ljava/lang/Integer;
    monitor-exit v1

    .line 2105
    return-object v0

    .line 2104
    .end local v0           #numConnections:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getPresence()Lcom/google/android/gtalkservice/Presence;
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mPresence:Lcom/google/android/gtalkservice/Presence;

    return-object v0
.end method

.method getServerAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mServerAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionContext()Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    return-object v0
.end method

.method public getSettingsMap()Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    return-object v0
.end method

.method public getShowAwayOnIdle()Z
    .locals 1

    .prologue
    .line 2745
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getShowAwayOnIdle()Z

    move-result v0

    return v0
.end method

.method public getShowMobileIndicator()Z
    .locals 1

    .prologue
    .line 2741
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mShowMobileIndicator:Z

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mUserBareAddress:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 739
    .local v0, connection:Lorg/jivesoftware/smack/XMPPConnection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isLastConnectionWasOfMinimumDuration()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 544
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionDurations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    .line 545
    .end local p0
    :goto_0
    return v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionDurations:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x78

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMainConnection()Z
    .locals 1

    .prologue
    .line 1527
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mIsMainConnection:Z

    return v0
.end method

.method public isSessionOpen()Z
    .locals 1

    .prologue
    .line 783
    iget-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mOpened:Z

    return v0
.end method

.method public login()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 557
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebugConnection:Z

    if-eqz v2, :cond_0

    const-string v2, "login"

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logconn(Ljava/lang/String;)V

    .line 558
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 560
    .local v0, now:J
    new-instance v2, Lcom/google/android/gsf/gtalkservice/GTalkConnection$SpecialConnectionEvent;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$SpecialConnectionEvent;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->addConnectionEvent(Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionEvent;)V

    .line 564
    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 566
    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mLastLoginAttemptTimeStamp:J

    .line 569
    iput-boolean v4, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mOpened:Z

    .line 571
    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mLastLoginAttemptTimeStamp:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 572
    iget-wide v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mLastLoginAttemptTimeStamp:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 573
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "too many login attempts, delay connecting"

    invoke-direct {p0, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logw(Ljava/lang/String;)V

    .line 574
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->retryConnection(Z)V

    .line 580
    :goto_0
    return-void

    .line 579
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->connect()Z

    goto :goto_0
.end method

.method public logout()V
    .locals 3

    .prologue
    .line 584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### logout for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 586
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->clearReconnectAlarm()V

    .line 587
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->clearHeartbeatAlarm()V

    .line 589
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->closeSettingsQueryMap()V

    .line 591
    new-instance v1, Lcom/google/android/gsf/gtalkservice/GTalkConnection$SpecialConnectionEvent;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$SpecialConnectionEvent;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->addConnectionEvent(Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionEvent;)V

    .line 595
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 597
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 598
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mWorkerHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 599
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 603
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setConnectionState(I)V

    .line 606
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mWorkerHandler:Landroid/os/Handler;

    .line 616
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionWrapper:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->removeConnection(Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;)V

    .line 617
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mGTalkService:Lcom/google/android/gsf/gtalkservice/service/GTalkService;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/service/GTalkService;->getReconnectManager()Lcom/google/android/gsf/gtalkservice/ReconnectManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/gsf/gtalkservice/ReconnectManager;->removeConnection(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)V

    .line 618
    return-void

    .line 610
    :cond_0
    const-string v1, "GTalkService"

    const-string v2, "##### logout: mWorkerHandler is already null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyLastDataMessageReceived()V
    .locals 2

    .prologue
    .line 2283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mLastDataMessageReceivedTs:J

    .line 2284
    return-void
.end method

.method onImSessionLoggedOut()V
    .locals 0

    .prologue
    .line 2267
    return-void
.end method

.method public releaseAsyncWakeLock()V
    .locals 2

    .prologue
    .line 530
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0

    .line 531
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAsyncConnWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 534
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mServiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mClearWakeLockTimer:Lcom/google/android/gsf/gtalkservice/GTalkConnection$ClearWakeLockTimer;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 537
    return-void

    .line 534
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public releaseSimpleWakeLock(Ljava/lang/String;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSimpleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 516
    const-string v0, "GTalkService/wake"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseWakeLock: token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wakelock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSimpleWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 519
    :cond_0
    return-void
.end method

.method public requestRoster()V
    .locals 7

    .prologue
    .line 1257
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getDefaultImSessionImpl()Lcom/google/android/gsf/gtalkservice/ImSession;

    move-result-object v1

    new-instance v2, Lcom/google/android/gtalkservice/Presence;

    const/4 v3, 0x1

    sget-object v4, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getCapabilities()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gtalkservice/Presence;-><init>(ZLcom/google/android/gtalkservice/Presence$Show;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gsf/gtalkservice/ImSession;->setPresence(Lcom/google/android/gtalkservice/Presence;)Z

    .line 1264
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mWorkerHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1266
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mWorkerHandler:Landroid/os/Handler;

    const/16 v2, 0x2bc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1267
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1269
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public requestToRefreshAuthToken()V
    .locals 2

    .prologue
    .line 1873
    const-string v0, "requestToRefreshAuthToken: send EVENT_REFRESH_AUTH_TOKEN msg"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 1874
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mServiceHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1875
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1876
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1877
    return-void
.end method

.method public retryConnection(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 928
    if-eqz p1, :cond_1

    .line 929
    const-string v0, "GTalkService/c"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    const-string v0, "retryConnection now"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logconn(Ljava/lang/String;)V

    .line 932
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->connect()Z

    .line 944
    :goto_0
    return-void

    .line 934
    :cond_1
    const-string v0, "GTalkService/c"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 935
    const-string v0, "retryConnection later"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->logconn(Ljava/lang/String;)V

    .line 940
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setReconnectAlarm()V

    .line 942
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setConnectionState(I)V

    goto :goto_0
.end method

.method public sendDeviceIdleStatus(Z)Z
    .locals 3
    .parameter

    .prologue
    .line 2270
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v0, :cond_0

    .line 2271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDeviceIdleStatus for account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", idle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 2274
    :cond_0
    new-instance v0, Lcom/google/android/gsf/gtalkservice/extensions/Idle;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/extensions/Idle;-><init>()V

    .line 2275
    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/extensions/Idle;->setIdle(Z)V

    .line 2276
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getShowAwayOnIdle()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/gtalkservice/extensions/Idle;->setSendAwayPresenceWhenIdle(Z)V

    .line 2278
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z

    move-result v0

    return v0
.end method

.method public sendHeartbeatToServer()Z
    .locals 2

    .prologue
    .line 1499
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1500
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not connected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1503
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;

    if-nez v0, :cond_1

    .line 1504
    const-string v0, "sendHeartbeatToServer: heartbeat alarm not set for this GTalkConnection"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 1505
    const/4 v0, 0x0

    .line 1509
    :goto_0
    return v0

    .line 1508
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mHeartbeatAlarm:Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkHeartbeatAlarm;->sendHeartbeatToServer()V

    .line 1509
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public sendHttpRequest([BLcom/google/android/gtalkservice/IHttpRequestCallback;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2714
    :try_start_0
    new-instance v0, Lorg/jivesoftware/smack/packet/HttpRequest;

    invoke-direct {v0, p1}, Lorg/jivesoftware/smack/packet/HttpRequest;-><init>([B)V

    .line 2715
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionContext:Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;

    invoke-virtual {v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnectionContext;->getHttpResponseManager()Lcom/google/android/gsf/gtalkservice/HttpResponseManager;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/HttpRequest;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gsf/gtalkservice/HttpResponseManager;->addPending(Ljava/lang/String;Lcom/google/android/gtalkservice/IHttpRequestCallback;)V

    .line 2716
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v1, :cond_0

    .line 2717
    const-string v1, "GTalkService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "req is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/HttpRequest;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2719
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2723
    :goto_0
    return-void

    .line 2720
    :catch_0
    move-exception v0

    .line 2721
    const-string v1, "GTalkService"

    const-string v2, "caught exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendPacket(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 1
    .parameter "packet"

    .prologue
    .line 815
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z

    move-result v0

    return v0
.end method

.method public sendPacket(Lorg/jivesoftware/smack/packet/Packet;Z)Z
    .locals 3
    .parameter "packet"
    .parameter "storeInRmq"

    .prologue
    .line 820
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getAccountId()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lorg/jivesoftware/smack/packet/Packet;->setAccountId(J)V

    .line 821
    if-eqz p2, :cond_1

    .line 823
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    if-eqz v1, :cond_0

    .line 824
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mRmq2Manager:Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;

    invoke-virtual {v1, p1}, Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;->send(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v0

    .line 832
    .local v0, retVal:Z
    :goto_0
    return v0

    .line 826
    .end local v0           #retVal:Z
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mRmqManager:Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;

    invoke-virtual {v1, p1}, Lcom/google/android/gsf/gtalkservice/rmq/RmqManager;->send(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v0

    .restart local v0       #retVal:Z
    goto :goto_0

    .line 829
    .end local v0           #retVal:Z
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->sendPacketOverMcsConnection(Lorg/jivesoftware/smack/packet/Packet;)Z

    move-result v0

    .restart local v0       #retVal:Z
    goto :goto_0
.end method

.method public sendPacketOverMcsConnection(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 6
    .parameter "packet"

    .prologue
    .line 845
    const/4 v3, 0x0

    .line 846
    .local v3, retVal:Z
    const/4 v2, 0x0

    .line 847
    .local v2, exception:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    .line 848
    .local v0, connection:Lorg/jivesoftware/smack/XMPPConnection;
    if-eqz v0, :cond_1

    .line 850
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    const/4 v3, 0x1

    .line 859
    :goto_0
    if-eqz v2, :cond_0

    const-string v4, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 860
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send packet "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 863
    :cond_0
    return v3

    .line 852
    :catch_0
    move-exception v1

    .line 853
    .local v1, ex:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->constructException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v2

    .line 854
    goto :goto_0

    .line 856
    .end local v1           #ex:Ljava/lang/IllegalStateException;
    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->constructException(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v2

    goto :goto_0
.end method

.method public setAccount(Lcom/google/android/gsf/gtalkservice/Account;)V
    .locals 6
    .parameter "account"

    .prologue
    .line 470
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    .line 472
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccount:Lcom/google/android/gsf/gtalkservice/Account;

    invoke-virtual {v4}, Lcom/google/android/gsf/gtalkservice/Account;->getUsername()Ljava/lang/String;

    move-result-object v3

    .line 476
    .local v3, username:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 477
    .local v1, jid:Ljava/lang/StringBuilder;
    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getJidResource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setJid(Ljava/lang/String;)V

    .line 484
    invoke-direct {p0, v3}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->setUserBareAddress(Ljava/lang/String;)V

    .line 486
    iget-object v4, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 489
    .local v2, resolver:Landroid/content/ContentResolver;
    :try_start_0
    invoke-static {v2, v3}, Lcom/google/android/gsf/gtalkservice/DatabaseHelper;->addAccountIfNotExist(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mAccountId:J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_0
    return-void

    .line 490
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 491
    .local v0, ex:Landroid/database/SQLException;
    const-string v4, "GTalkService"

    const-string v5, "addAccountIfNotExist caught "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setConnectionError(I)V
    .locals 1
    .parameter "error"

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getDefaultImSessionImpl()Lcom/google/android/gsf/gtalkservice/ImSession;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/gtalkservice/ImSession;->setConnectionError(I)Z

    .line 748
    return-void
.end method

.method public setConnectionState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->getDefaultImSessionImpl()Lcom/google/android/gsf/gtalkservice/ImSession;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gsf/gtalkservice/ImSession;->setConnectionState(I)Z

    move-result v0

    .line 723
    .local v0, changed:Z
    if-eqz v0, :cond_0

    .line 724
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->addConnectionEvent(I)V

    .line 726
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->connectionStateChanged(I)V

    .line 727
    return-void
.end method

.method public setHeartbeatInterval(J)V
    .locals 1
    .parameter "interval"

    .prologue
    .line 2765
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setHeartbeatInterval(J)V

    .line 2766
    return-void
.end method

.method public setJidResource(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 2781
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mJidResource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2789
    :cond_0
    :goto_0
    return-void

    .line 2785
    :cond_1
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "### setJidResource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->log(Ljava/lang/String;)V

    .line 2787
    :cond_2
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mJidResource:Ljava/lang/String;

    .line 2788
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->saveJidResourceToSettings(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPresence(Lcom/google/android/gtalkservice/Presence;)V
    .locals 0
    .parameter "presence"

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mPresence:Lcom/google/android/gtalkservice/Presence;

    .line 1248
    return-void
.end method

.method public setSessionWrapper(Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;)V
    .locals 0
    .parameter "wrapper"

    .prologue
    .line 496
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mConnectionWrapper:Lcom/google/android/gsf/gtalkservice/service/GTalkConnectionWrapper;

    .line 497
    return-void
.end method

.method public setUploadHeartbeatStat(Z)V
    .locals 1
    .parameter "uploadStat"

    .prologue
    .line 2757
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->mSettingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->setUploadHeartbeatStat(Z)V

    .line 2758
    return-void
.end method
