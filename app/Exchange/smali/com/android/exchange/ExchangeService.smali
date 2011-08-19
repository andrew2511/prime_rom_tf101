.class public Lcom/android/exchange/ExchangeService;
.super Landroid/app/Service;
.source "ExchangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/ExchangeService$ConnectivityReceiver;,
        Lcom/android/exchange/ExchangeService$EasSyncStatusObserver;,
        Lcom/android/exchange/ExchangeService$SyncError;,
        Lcom/android/exchange/ExchangeService$SyncStatus;,
        Lcom/android/exchange/ExchangeService$SyncedMessageObserver;,
        Lcom/android/exchange/ExchangeService$MailboxObserver;,
        Lcom/android/exchange/ExchangeService$CalendarObserver;,
        Lcom/android/exchange/ExchangeService$AccountObserver;,
        Lcom/android/exchange/ExchangeService$AccountList;,
        Lcom/android/exchange/ExchangeService$ServiceCallbackWrapper;
    }
.end annotation


# static fields
.field protected static INSTANCE:Lcom/android/exchange/ExchangeService;

.field private static final sCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

.field private static sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

.field private static volatile sClientConnectionManagerShutdownCount:I

.field public static sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

.field public static sConnectivityHold:Z

.field public static final sConnectivityLock:Ljava/lang/Object;

.field private static sDeviceId:Ljava/lang/String;

.field private static sServiceThread:Ljava/lang/Thread;

.field private static volatile sStartingUp:Z

.field private static volatile sStop:Z

.field private static final sSyncLock:Ljava/lang/Object;


# instance fields
.field public final mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

.field private mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

.field private volatile mBackgroundData:Z

.field private mBackgroundDataSettingReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

.field private final mBinder:Lcom/android/emailcommon/service/IEmailService$Stub;

.field private mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/exchange/ExchangeService$CalendarObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/emailcommon/service/IEmailServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivityReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mKicked:Z

.field private mMailboxObserver:Lcom/android/exchange/ExchangeService$MailboxObserver;

.field private mNextWaitReason:Ljava/lang/String;

.field private mPendingIntents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/exchange/AbstractSyncService;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusChangeListener:Ljava/lang/Object;

.field mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/exchange/ExchangeService$SyncError;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncStatusObserver:Lcom/android/exchange/ExchangeService$EasSyncStatusObserver;

.field private mSyncedMessageObserver:Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    .line 187
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    .line 188
    sput-boolean v1, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z

    .line 221
    sput-object v2, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    .line 223
    sput-object v2, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    .line 225
    sput-object v2, Lcom/android/exchange/ExchangeService;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 227
    sput v1, Lcom/android/exchange/ExchangeService;->sClientConnectionManagerShutdownCount:I

    .line 229
    sput-boolean v1, Lcom/android/exchange/ExchangeService;->sStartingUp:Z

    .line 230
    sput-boolean v1, Lcom/android/exchange/ExchangeService;->sStop:Z

    .line 256
    new-instance v0, Lcom/android/exchange/ExchangeService$1;

    invoke-direct {v0}, Lcom/android/exchange/ExchangeService$1;-><init>()V

    sput-object v0, Lcom/android/exchange/ExchangeService;->sCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    .line 1129
    new-instance v0, Lcom/android/exchange/ExchangeService$4;

    invoke-direct {v0}, Lcom/android/exchange/ExchangeService$4;-><init>()V

    sput-object v0, Lcom/android/exchange/ExchangeService;->sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    .line 194
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    .line 201
    iput-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 203
    new-instance v0, Lcom/android/exchange/ExchangeService$AccountList;

    invoke-direct {v0}, Lcom/android/exchange/ExchangeService$AccountList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    .line 206
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mHandler:Landroid/os/Handler;

    .line 214
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    .line 238
    iput-object v1, p0, Lcom/android/exchange/ExchangeService;->mConnectivityReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    .line 239
    iput-object v1, p0, Lcom/android/exchange/ExchangeService;->mBackgroundDataSettingReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mBackgroundData:Z

    .line 243
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 333
    new-instance v0, Lcom/android/exchange/ExchangeService$2;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$2;-><init>(Lcom/android/exchange/ExchangeService;)V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mBinder:Lcom/android/emailcommon/service/IEmailService$Stub;

    .line 1534
    return-void
.end method

.method static synthetic access$000(Lcom/android/exchange/ExchangeService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mCallbackList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/exchange/ExchangeService;->sCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/exchange/ExchangeService;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    return-void
.end method

.method static synthetic access$1100()V
    .locals 0

    .prologue
    .line 108
    invoke-static {}, Lcom/android/exchange/ExchangeService;->shutdownConnectionManager()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/exchange/ExchangeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mBackgroundData:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/exchange/ExchangeService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/android/exchange/ExchangeService;->mBackgroundData:Z

    return p1
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 108
    sget-boolean v0, Lcom/android/exchange/ExchangeService;->sStartingUp:Z

    return v0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    sput-boolean p0, Lcom/android/exchange/ExchangeService;->sStartingUp:Z

    return p0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 108
    sget-boolean v0, Lcom/android/exchange/ExchangeService;->sStop:Z

    return v0
.end method

.method static synthetic access$1402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    sput-boolean p0, Lcom/android/exchange/ExchangeService;->sStop:Z

    return p0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    sput-object p0, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1600()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/exchange/ExchangeService;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/exchange/ExchangeService;->setAlarm(JJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/exchange/ExchangeService;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/ExchangeService;->stopAccountSyncs(JZ)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-static {p0, p1}, Lcom/android/exchange/ExchangeService;->collectEasAccounts(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/exchange/ExchangeService;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/exchange/ExchangeService;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/ExchangeService;->stopPing(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/exchange/ExchangeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->checkPIMSyncSettings()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/exchange/ExchangeService;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 108
    invoke-direct {p0, p1}, Lcom/android/exchange/ExchangeService;->runAccountReconcilerSync(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method private acquireWakeLock(J)V
    .locals 6
    .parameter "id"

    .prologue
    .line 1296
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v2

    .line 1297
    :try_start_0
    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1298
    .local v0, lock:Ljava/lang/Boolean;
    if-nez v0, :cond_1

    .line 1299
    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_0

    .line 1300
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/exchange/ExchangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1301
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "MAIL_SERVICE"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1302
    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1305
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_0
    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    :cond_1
    monitor-exit v2

    .line 1308
    return-void

    .line 1307
    .end local v0           #lock:Ljava/lang/Boolean;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static alert(Landroid/content/Context;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1412
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1413
    invoke-static {}, Lcom/android/exchange/ExchangeService;->checkExchangeServiceServiceRunning()V

    .line 1414
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    .line 1415
    const-string v0, "ExchangeService alert"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1416
    const-string v0, "ping ExchangeService"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 1465
    :cond_0
    :goto_0
    return-void

    .line 1417
    :cond_1
    if-nez v0, :cond_2

    .line 1418
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/exchange/ExchangeService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 1420
    :cond_2
    iget-object v1, v0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/exchange/AbstractSyncService;

    .line 1421
    if-eqz p0, :cond_0

    .line 1424
    const-string v1, "ExchangeService Alert: "

    .line 1425
    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    if-eqz v2, :cond_3

    .line 1426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1428
    :cond_3
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/exchange/ExchangeService$5;

    invoke-direct {v3, v0, p1, p2, p0}, Lcom/android/exchange/ExchangeService$5;-><init>(Lcom/android/exchange/ExchangeService;JLcom/android/exchange/AbstractSyncService;)V

    invoke-direct {v2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static alwaysLog(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 1099
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-nez v0, :cond_0

    .line 1100
    const-string v0, "ExchangeService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :goto_0
    return-void

    .line 1102
    :cond_0
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static callback()Lcom/android/emailcommon/service/IEmailServiceCallback;
    .locals 1

    .prologue
    .line 909
    sget-object v0, Lcom/android/exchange/ExchangeService;->sCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    return-object v0
.end method

.method static checkExchangeServiceServiceRunning()V
    .locals 3

    .prologue
    .line 1875
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1876
    if-nez v0, :cond_1

    .line 1881
    :cond_0
    :goto_0
    return-void

    .line 1877
    :cond_1
    sget-object v1, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 1878
    const-string v1, "!!! checkExchangeServiceServiceRunning; starting service..."

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1879
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/exchange/ExchangeService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/android/exchange/ExchangeService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private checkMailboxes()J
    .locals 20

    .prologue
    .line 2076
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2077
    sget-object v6, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2078
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 2079
    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v4

    .line 2080
    if-nez v4, :cond_0

    .line 2081
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2101
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2085
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 2086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/exchange/AbstractSyncService;

    .line 2087
    if-eqz v5, :cond_2

    iget-object v8, v5, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    if-nez v8, :cond_3

    .line 2088
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    goto :goto_1

    .line 2091
    :cond_3
    iget-object v8, v5, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->isAlive()Z

    move-result v8

    .line 2092
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Deleted mailbox: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v5, v5, Lcom/android/exchange/AbstractSyncService;->mMailboxName:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2093
    if-eqz v8, :cond_4

    .line 2094
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/exchange/ExchangeService;->stopManualSync(J)V

    goto :goto_1

    .line 2096
    :cond_4
    const-string v5, "Removing from serviceMap"

    invoke-static {v5}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2097
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    goto :goto_1

    .line 2101
    :cond_5
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2103
    const-wide/32 v10, 0xdbba0

    .line 2104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    move-object v4, v0

    if-nez v4, :cond_6

    .line 2109
    const-string v4, "mAccountObserver null; service died??"

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    move-wide v4, v10

    .line 2267
    :goto_2
    return-wide v4

    .line 2112
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/ExchangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/exchange/ExchangeService$AccountObserver;->getSyncableEasMailboxWhere()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 2117
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v6

    move-wide v7, v10

    .line 2119
    :cond_7
    :goto_3
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 2120
    const/4 v4, 0x0

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2122
    sget-object v11, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2123
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    move-object v4, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/exchange/AbstractSyncService;

    .line 2124
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2125
    if-nez v4, :cond_15

    .line 2127
    const/4 v4, 0x5

    :try_start_4
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 2131
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/exchange/ExchangeService;->mBackgroundData:Z

    move v4, v0

    if-nez v4, :cond_8

    const/4 v4, 0x4

    if-ne v11, v4, :cond_7

    .line 2135
    :cond_8
    const/4 v4, 0x4

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v14, v4

    invoke-static {v14, v15}, Lcom/android/exchange/ExchangeService;->getAccountById(J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v4

    .line 2137
    if-eqz v4, :cond_7

    .line 2140
    new-instance v14, Landroid/accounts/Account;

    iget-object v15, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v16, "com.android.exchange"

    invoke-direct/range {v14 .. v16}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    const/16 v15, 0x42

    if-eq v11, v15, :cond_9

    const/16 v15, 0x41

    if-ne v11, v15, :cond_d

    .line 2146
    :cond_9
    if-eqz v6, :cond_7

    .line 2151
    const/16 v15, 0x42

    if-ne v11, v15, :cond_c

    .line 2152
    const-string v15, "com.android.contacts"

    .line 2162
    :cond_a
    :goto_4
    invoke-static {v14, v15}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 2166
    const/16 v14, 0x41

    if-ne v11, v14, :cond_b

    iget-wide v14, v4, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    move-object/from16 v0, p0

    move-wide v1, v14

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/ExchangeService;->isCalendarEnabled(J)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2181
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v4, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/exchange/ExchangeService$SyncError;

    .line 2182
    if-eqz v4, :cond_f

    .line 2184
    iget-boolean v14, v4, Lcom/android/exchange/ExchangeService$SyncError;->fatal:Z

    if-nez v14, :cond_7

    .line 2185
    iget-wide v14, v4, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    cmp-long v14, v12, v14

    if-gez v14, :cond_e

    .line 2188
    iget-wide v9, v4, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    add-long v14, v12, v7

    cmp-long v9, v9, v14

    if-gez v9, :cond_7

    .line 2189
    iget-wide v7, v4, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    sub-long/2addr v7, v12

    .line 2190
    const-string v4, "Release hold"

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_3

    .line 2265
    :catchall_1
    move-exception v4

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v4

    .line 2124
    :catchall_2
    move-exception v4

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v4

    .line 2154
    :cond_c
    const-string v15, "com.android.calendar"

    .line 2155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v16, v0

    move-object v0, v4

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_a

    .line 2158
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/exchange/ExchangeService;->registerCalendarObserver(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto :goto_4

    .line 2170
    :cond_d
    const/4 v4, 0x6

    if-eq v11, v4, :cond_7

    .line 2173
    const/16 v4, 0x40

    if-ge v11, v4, :cond_b

    const-string v4, "com.android.email.provider"

    invoke-static {v14, v4}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_3

    .line 2195
    :cond_e
    const-wide/16 v14, 0x0

    iput-wide v14, v4, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    .line 2200
    :cond_f
    const/16 v4, 0x9

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v14, v4

    .line 2201
    const-wide/16 v16, -0x2

    cmp-long v4, v14, v16

    if-nez v4, :cond_10

    .line 2202
    const-class v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-static {v5, v4}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 2203
    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v9

    move-object v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/ExchangeService;->requestSync(Lcom/android/emailcommon/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V

    goto/16 :goto_3

    .line 2204
    :cond_10
    const/4 v4, 0x4

    if-ne v11, v4, :cond_11

    .line 2205
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/exchange/ExchangeService;->hasSendableMessages(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2206
    const-class v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-static {v5, v4}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 2207
    new-instance v9, Lcom/android/exchange/EasOutboxService;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/EasOutboxService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/ExchangeService;->startServiceThread(Lcom/android/exchange/AbstractSyncService;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    goto/16 :goto_3

    .line 2209
    :cond_11
    const-wide/16 v16, 0x0

    cmp-long v4, v14, v16

    if-lez v4, :cond_7

    const-wide/16 v16, 0x5a0

    cmp-long v4, v14, v16

    if-gtz v4, :cond_7

    .line 2210
    const/16 v4, 0xa

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 2211
    sub-long v16, v12, v16

    .line 2212
    const-wide/16 v18, 0x0

    cmp-long v4, v16, v18

    if-gez v4, :cond_1c

    .line 2213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WHOA! lastSync in the future for mailbox: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2214
    const-wide/32 v9, 0xea60

    mul-long/2addr v9, v14

    .line 2216
    :goto_5
    const-wide/32 v16, 0xea60

    mul-long v14, v14, v16

    sub-long v9, v14, v9

    .line 2217
    const/4 v4, 0x1

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2218
    const-wide/16 v14, 0x0

    cmp-long v11, v9, v14

    if-gtz v11, :cond_12

    .line 2219
    const-class v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-static {v5, v4}, Lcom/android/emailcommon/provider/EmailContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    .line 2220
    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v9

    move-object v3, v10

    invoke-direct {v0, v1, v2, v3}, Lcom/android/exchange/ExchangeService;->requestSync(Lcom/android/emailcommon/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V

    goto/16 :goto_3

    .line 2221
    :cond_12
    cmp-long v11, v9, v7

    if-gez v11, :cond_14

    .line 2223
    sget-boolean v7, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v7, :cond_13

    .line 2224
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Next sync for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v14, 0x3e8

    div-long v14, v9, v14

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "s"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2226
    :cond_13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Scheduled sync, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;

    move-wide v7, v9

    goto/16 :goto_3

    .line 2227
    :cond_14
    sget-boolean v11, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v11, :cond_7

    .line 2228
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Next sync for "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, " in "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v14, 0x3e8

    div-long/2addr v9, v14

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "s"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2232
    :cond_15
    iget-object v11, v4, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    .line 2234
    if-eqz v11, :cond_17

    invoke-virtual {v11}, Ljava/lang/Thread;->isAlive()Z

    move-result v11

    if-nez v11, :cond_17

    .line 2235
    sget-boolean v4, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v4, :cond_16

    .line 2236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Dead thread, mailbox released: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v11, 0x1

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2239
    :cond_16
    move-object/from16 v0, p0

    move-wide v1, v9

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    .line 2241
    const-wide/16 v9, 0xbb8

    cmp-long v4, v7, v9

    if-lez v4, :cond_7

    .line 2242
    const-wide/16 v7, 0xbb8

    .line 2243
    const-string v4, "Clean up dead thread(s)"

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;

    goto/16 :goto_3

    .line 2246
    :cond_17
    iget-wide v9, v4, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 2247
    const-wide/16 v14, 0x0

    cmp-long v11, v9, v14

    if-lez v11, :cond_7

    .line 2248
    sub-long v14, v9, v12

    .line 2249
    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-gtz v11, :cond_18

    .line 2250
    const-wide/16 v9, 0x0

    iput-wide v9, v4, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 2251
    invoke-virtual {v4}, Lcom/android/exchange/AbstractSyncService;->alarm()Z

    goto/16 :goto_3

    .line 2252
    :cond_18
    const-wide/16 v16, 0x0

    cmp-long v4, v9, v16

    if-lez v4, :cond_7

    cmp-long v4, v14, v7

    if-gez v4, :cond_7

    .line 2253
    const-wide/32 v9, 0xa1220

    cmp-long v4, v14, v9

    if-gez v4, :cond_1a

    .line 2254
    const-wide/16 v7, 0xfa

    cmp-long v4, v14, v7

    if-gez v4, :cond_19

    const-wide/16 v7, 0xfa

    .line 2255
    :goto_6
    const-string v4, "Sync data change"

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;

    goto/16 :goto_3

    :cond_19
    move-wide v7, v14

    .line 2254
    goto :goto_6

    .line 2257
    :cond_1a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Illegal timeToRequest: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_3

    .line 2265
    :cond_1b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-wide v4, v7

    .line 2267
    goto/16 :goto_2

    :cond_1c
    move-wide/from16 v9, v16

    goto/16 :goto_5
.end method

.method private checkPIMSyncSettings()V
    .locals 5

    .prologue
    .line 1525
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    monitor-enter v1

    .line 1526
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    invoke-virtual {v0}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1527
    const/16 v3, 0x42

    const-string v4, "com.android.contacts"

    invoke-direct {p0, v0, v3, v4}, Lcom/android/exchange/ExchangeService;->updatePIMSyncSettings(Lcom/android/emailcommon/provider/EmailContent$Account;ILjava/lang/String;)V

    .line 1528
    const/16 v3, 0x41

    const-string v4, "com.android.calendar"

    invoke-direct {p0, v0, v3, v4}, Lcom/android/exchange/ExchangeService;->updatePIMSyncSettings(Lcom/android/emailcommon/provider/EmailContent$Account;ILjava/lang/String;)V

    .line 1529
    const/4 v3, 0x0

    const-string v4, "com.android.email.provider"

    invoke-direct {p0, v0, v3, v4}, Lcom/android/exchange/ExchangeService;->updatePIMSyncSettings(Lcom/android/emailcommon/provider/EmailContent$Account;ILjava/lang/String;)V

    goto :goto_0

    .line 1531
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1532
    return-void
.end method

.method private clearAlarm(J)V
    .locals 5
    .parameter "id"

    .prologue
    .line 1343
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    monitor-enter v2

    .line 1344
    :try_start_0
    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 1345
    .local v1, pi:Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 1346
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/android/exchange/ExchangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1347
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1349
    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    :cond_0
    monitor-exit v2

    .line 1352
    return-void

    .line 1351
    .end local v1           #pi:Landroid/app/PendingIntent;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private clearAlarms()V
    .locals 5

    .prologue
    .line 1372
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/android/exchange/ExchangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1373
    .local v0, alarmManager:Landroid/app/AlarmManager;
    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    monitor-enter v3

    .line 1374
    :try_start_0
    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 1375
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 1378
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #pi:Landroid/app/PendingIntent;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1377
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1378
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1379
    return-void
.end method

.method public static clearWatchdogAlarm(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 1398
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1399
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 1400
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/ExchangeService;->clearAlarm(J)V

    .line 1402
    :cond_0
    return-void
.end method

.method private static collectEasAccounts(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;
    .locals 11
    .parameter "context"
    .parameter "accounts"

    .prologue
    const/4 v3, 0x0

    .line 480
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 483
    .local v7, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 484
    const/4 v0, 0x6

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 485
    .local v9, hostAuthId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-lez v0, :cond_0

    .line 486
    invoke-static {p0, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v8

    .line 487
    .local v8, ha:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-eqz v8, :cond_0

    iget-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    const-string v1, "eas"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    new-instance v6, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v6}, Lcom/android/emailcommon/provider/EmailContent$Account;-><init>()V

    .line 489
    .local v6, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-virtual {v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Account;->restore(Landroid/database/Cursor;)V

    .line 491
    iput-object v8, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 492
    invoke-virtual {p1, v6}, Lcom/android/exchange/ExchangeService$AccountList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 497
    .end local v6           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v8           #ha:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .end local v9           #hostAuthId:J
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 499
    return-object p1
.end method

.method public static deleteAccountPIMData(J)V
    .locals 5
    .parameter "accountId"

    .prologue
    .line 534
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 535
    .local v1, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v1, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    const/16 v4, 0x42

    invoke-static {v1, p0, p1, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 538
    .local v2, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v2, :cond_2

    .line 539
    new-instance v3, Lcom/android/exchange/EasSyncService;

    invoke-direct {v3, v1, v2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 540
    .local v3, service:Lcom/android/exchange/EasSyncService;
    new-instance v0, Lcom/android/exchange/adapter/ContactsSyncAdapter;

    invoke-direct {v0, v3}, Lcom/android/exchange/adapter/ContactsSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 541
    .local v0, adapter:Lcom/android/exchange/adapter/ContactsSyncAdapter;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/ContactsSyncAdapter;->wipe()V

    .line 543
    .end local v0           #adapter:Lcom/android/exchange/adapter/ContactsSyncAdapter;
    .end local v3           #service:Lcom/android/exchange/EasSyncService;
    :cond_2
    const/16 v4, 0x41

    invoke-static {v1, p0, p1, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 545
    if-eqz v2, :cond_0

    .line 546
    new-instance v3, Lcom/android/exchange/EasSyncService;

    invoke-direct {v3, v1, v2}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 547
    .restart local v3       #service:Lcom/android/exchange/EasSyncService;
    new-instance v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-direct {v0, v3}, Lcom/android/exchange/adapter/CalendarSyncAdapter;-><init>(Lcom/android/exchange/EasSyncService;)V

    .line 548
    .local v0, adapter:Lcom/android/exchange/adapter/CalendarSyncAdapter;
    invoke-virtual {v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->wipe()V

    goto :goto_0
.end method

.method public static done(Lcom/android/exchange/AbstractSyncService;)V
    .locals 12
    .parameter

    .prologue
    const/4 v8, 0x2

    .line 2457
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2458
    if-nez v1, :cond_0

    .line 2520
    :goto_0
    return-void

    .line 2459
    :cond_0
    sget-object v2, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2460
    :try_start_0
    iget-wide v3, p0, Lcom/android/exchange/AbstractSyncService;->mMailboxId:J

    .line 2461
    iget-object v5, v1, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2462
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/ExchangeService$SyncError;

    .line 2463
    invoke-direct {v1, v3, v4}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    .line 2464
    iget v6, p0, Lcom/android/exchange/AbstractSyncService;->mExitStatus:I

    .line 2465
    invoke-static {v1, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v7

    .line 2466
    if-nez v7, :cond_1

    monitor-exit v2

    goto :goto_0

    .line 2519
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2468
    :cond_1
    if-eq v6, v8, :cond_3

    .line 2469
    :try_start_1
    iget-wide v8, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    .line 2470
    invoke-static {v1, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v10

    .line 2471
    if-nez v10, :cond_2

    monitor-exit v2

    goto :goto_0

    .line 2472
    :cond_2
    const/4 v11, 0x2

    invoke-virtual {v1, v1, v11, v10}, Lcom/android/exchange/ExchangeService;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/EmailContent$Account;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-eqz v10, :cond_3

    .line 2475
    :try_start_2
    new-instance v10, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct {v10, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v8, v9}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifyLoginSucceeded(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2483
    :cond_3
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 2518
    :goto_2
    :try_start_3
    const-string v0, "sync completed"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 2519
    monitor-exit v2

    goto :goto_0

    .line 2485
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/AbstractSyncService;->hasPendingRequests()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2488
    :cond_4
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2490
    const-class v0, Lcom/android/exchange/ExchangeService;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2491
    const/4 v1, 0x0

    :try_start_4
    sput v1, Lcom/android/exchange/ExchangeService;->sClientConnectionManagerShutdownCount:I

    .line 2492
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1

    .line 2496
    :pswitch_1
    if-eqz v0, :cond_5

    .line 2497
    invoke-virtual {v0}, Lcom/android/exchange/ExchangeService$SyncError;->escalate()V

    .line 2498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " held for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdDelay:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 2500
    :cond_5
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/android/exchange/ExchangeService$SyncError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v6, v4}, Lcom/android/exchange/ExchangeService$SyncError;-><init>(Lcom/android/exchange/ExchangeService;IZ)V

    invoke-virtual {v5, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " added to syncErrorMap, hold for 15s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 2507
    :pswitch_2
    :try_start_6
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct {v0, v1}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-virtual {v0, v7, v8}, Lcom/android/emailcommon/service/AccountServiceProxy;->notifyLoginFailed(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 2515
    :goto_3
    :pswitch_3
    :try_start_7
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Lcom/android/exchange/ExchangeService$SyncError;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v6, v4}, Lcom/android/exchange/ExchangeService$SyncError;-><init>(Lcom/android/exchange/ExchangeService;IZ)V

    invoke-virtual {v5, v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 2509
    :catch_0
    move-exception v0

    goto :goto_3

    .line 2477
    :catch_1
    move-exception v8

    goto/16 :goto_1

    .line 2483
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public static getAccountById(J)Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 3
    .parameter "accountId"

    .prologue
    .line 913
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 914
    .local v1, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v1, :cond_0

    .line 915
    iget-object v0, v1, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    .line 916
    .local v0, accountList:Lcom/android/exchange/ExchangeService$AccountList;
    monitor-enter v0

    .line 917
    :try_start_0
    invoke-virtual {v0, p0, p1}, Lcom/android/exchange/ExchangeService$AccountList;->getById(J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    monitor-exit v0

    .line 920
    .end local v0           #accountList:Lcom/android/exchange/ExchangeService$AccountList;
    :goto_0
    return-object v2

    .line 918
    .restart local v0       #accountList:Lcom/android/exchange/ExchangeService$AccountList;
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 920
    .end local v0           #accountList:Lcom/android/exchange/ExchangeService$AccountList;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 1136
    const-class v3, Lcom/android/exchange/ExchangeService;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/android/exchange/ExchangeService;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-nez v4, :cond_1

    .line 1139
    sget v4, Lcom/android/exchange/ExchangeService;->sClientConnectionManagerShutdownCount:I

    if-le v4, v5, :cond_0

    .line 1140
    const-string v4, "Shutting down process to unblock threads"

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1141
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 1144
    :cond_0
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 1145
    .local v1, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1147
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    invoke-static {}, Lcom/android/exchange/SSLSocketFactory;->getSocketFactory()Lcom/android/exchange/SSLSocketFactory;

    move-result-object v6

    const/16 v7, 0x1bb

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1150
    new-instance v2, Lcom/android/exchange/SSLSocketFactory;

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/emailcommon/utility/SSLUtils;->getSSLSocketFactory(Z)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/exchange/SSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 1151
    .local v2, sf:Lcom/android/exchange/SSLSocketFactory;
    sget-object v4, Lcom/android/exchange/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v2, v4}, Lcom/android/exchange/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 1153
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "httpts"

    const/16 v6, 0x1bb

    invoke-direct {v4, v5, v2, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 1155
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1156
    .local v0, params:Lorg/apache/http/params/HttpParams;
    const-string v4, "http.conn-manager.max-total"

    const/16 v5, 0x19

    invoke-interface {v0, v4, v5}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 1157
    const-string v4, "http.conn-manager.max-per-route"

    sget-object v5, Lcom/android/exchange/ExchangeService;->sConnPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;

    invoke-interface {v0, v4, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 1158
    new-instance v4, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v4, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    sput-object v4, Lcom/android/exchange/ExchangeService;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    .line 1161
    .end local v0           #params:Lorg/apache/http/params/HttpParams;
    .end local v1           #registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v2           #sf:Lcom/android/exchange/SSLSocketFactory;
    :cond_1
    sget-object v4, Lcom/android/exchange/ExchangeService;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v4

    .line 1136
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2551
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1114
    sget-object v0, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1116
    :try_start_0
    new-instance v0, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct {v0, p0}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/emailcommon/service/AccountServiceProxy;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    .line 1117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received deviceId from Email app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1121
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/exchange/ExchangeService;->sDeviceId:Ljava/lang/String;

    return-object v0

    .line 1118
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getEasAccountSelector()Ljava/lang/String;
    .locals 2

    .prologue
    .line 935
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 936
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    if-eqz v1, :cond_0

    .line 937
    iget-object v1, v0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    invoke-virtual {v1}, Lcom/android/exchange/ExchangeService$AccountObserver;->getAccountKeyWhere()Ljava/lang/String;

    move-result-object v1

    .line 939
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getStatusChangeCount(Ljava/lang/String;)I
    .locals 3
    .parameter "status"

    .prologue
    .line 2543
    const/4 v2, 0x5

    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2544
    .local v1, s:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2546
    .end local v1           #s:Ljava/lang/String;
    :goto_0
    return v2

    .line 2545
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 2546
    .local v0, e:Ljava/lang/RuntimeException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getStatusType(Ljava/lang/String;)I
    .locals 2
    .parameter "status"

    .prologue
    .line 2528
    if-nez p0, :cond_0

    .line 2529
    const/4 v0, -0x1

    .line 2531
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private hasSendableMessages(Landroid/database/Cursor;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2058
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    const-string v3, "mailboxKey=? and (syncServerId is null or syncServerId!=1)"

    new-array v4, v8, [Ljava/lang/String;

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2063
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2064
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/utility/Utility;->hasUnloadedAttachments(Landroid/content/Context;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 2069
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 2071
    :goto_0
    return v0

    .line 2069
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 2071
    goto :goto_0
.end method

.method private isCalendarEnabled(J)Z
    .locals 6
    .parameter "accountId"

    .prologue
    const/4 v5, 0x1

    .line 768
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/ExchangeService$CalendarObserver;

    .line 769
    .local v0, observer:Lcom/android/exchange/ExchangeService$CalendarObserver;
    if-eqz v0, :cond_1

    .line 770
    iget-wide v1, v0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mSyncEvents:J

    const-wide/16 v3, 0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    move v1, v5

    .line 774
    :goto_0
    return v1

    .line 770
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v5

    .line 774
    goto :goto_0
.end method

.method static isSyncable(Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Z
    .locals 2
    .parameter "m"

    .prologue
    .line 2280
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v1, 0x100

    if-lt v0, v1, :cond_1

    .line 2282
    :cond_0
    const/4 v0, 0x0

    .line 2284
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static kick(Ljava/lang/String;)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 2412
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2413
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 2414
    monitor-enter v0

    .line 2416
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, v0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    .line 2417
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2418
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2420
    :cond_0
    sget-object v1, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 2421
    sget-object v1, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2422
    :try_start_1
    sget-object v2, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 2423
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2425
    :cond_1
    return-void

    .line 2418
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2423
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 1086
    const-string v0, "ExchangeService"

    invoke-static {v0, p0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 1090
    sget-boolean v0, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v0, :cond_0

    .line 1091
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    sget-boolean v0, Lcom/android/exchange/Eas;->FILE_LOG:Z

    if-eqz v0, :cond_0

    .line 1093
    invoke-static {p0, p1}, Lcom/android/exchange/utility/FileLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    :cond_0
    return-void
.end method

.method private logSyncHolds()V
    .locals 12

    .prologue
    .line 972
    sget-boolean v7, Lcom/android/exchange/Eas;->USER_LOG:Z

    if-eqz v7, :cond_2

    .line 973
    const-string v7, "Sync holds:"

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 974
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 975
    .local v5, time:J
    iget-object v7, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 976
    .local v3, mailboxId:J
    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v2

    .line 977
    .local v2, m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v2, :cond_1

    .line 978
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mailbox "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " no longer exists"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 980
    :cond_1
    iget-object v7, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/ExchangeService$SyncError;

    .line 981
    .local v0, error:Lcom/android/exchange/ExchangeService$SyncError;
    if-eqz v0, :cond_0

    .line 982
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Mailbox "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", error = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Lcom/android/exchange/ExchangeService$SyncError;->reason:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", fatal = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v0, Lcom/android/exchange/ExchangeService$SyncError;->fatal:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 984
    iget-wide v7, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 985
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Hold ends in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    sub-long/2addr v8, v5

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "s"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 991
    .end local v0           #error:Lcom/android/exchange/ExchangeService$SyncError;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v3           #mailboxId:J
    .end local v5           #time:J
    :cond_2
    return-void
.end method

.method public static pingStatus(J)I
    .locals 7
    .parameter "mailboxId"

    .prologue
    const/4 v6, 0x0

    .line 2346
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2347
    .local v1, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v1, :cond_0

    move v2, v6

    .line 2361
    :goto_0
    return v2

    .line 2349
    :cond_0
    iget-object v2, v1, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2350
    const/4 v2, 0x1

    goto :goto_0

    .line 2353
    :cond_1
    iget-object v2, v1, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/ExchangeService$SyncError;

    .line 2354
    .local v0, error:Lcom/android/exchange/ExchangeService$SyncError;
    if-eqz v0, :cond_3

    .line 2355
    iget-boolean v2, v0, Lcom/android/exchange/ExchangeService$SyncError;->fatal:Z

    if-eqz v2, :cond_2

    .line 2356
    const/4 v2, 0x3

    goto :goto_0

    .line 2357
    :cond_2
    iget-wide v2, v0, Lcom/android/exchange/ExchangeService$SyncError;->holdEndTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 2358
    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    move v2, v6

    .line 2361
    goto :goto_0
.end method

.method public static reconcileAccounts(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1052
    new-instance v0, Lcom/android/exchange/ExchangeService$3;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$3;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 1060
    return-void
.end method

.method private registerCalendarObserver(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 5
    .parameter "account"

    .prologue
    .line 737
    new-instance v0, Lcom/android/exchange/ExchangeService$CalendarObserver;

    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/exchange/ExchangeService$CalendarObserver;-><init>(Lcom/android/exchange/ExchangeService;Landroid/os/Handler;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 738
    .local v0, observer:Lcom/android/exchange/ExchangeService$CalendarObserver;
    iget-wide v1, v0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mCalendarId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 740
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Calendar$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, v0, Lcom/android/exchange/ExchangeService$CalendarObserver;->mCalendarId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 745
    :cond_0
    return-void
.end method

.method private releaseMailbox(J)V
    .locals 2
    .parameter "mailboxId"

    .prologue
    .line 2048
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2049
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/ExchangeService;->releaseWakeLock(J)V

    .line 2050
    return-void
.end method

.method public static releaseSecurityHold(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 998
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 999
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 1000
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/exchange/ExchangeService;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/EmailContent$Account;)Z

    .line 1003
    :cond_0
    return-void
.end method

.method private releaseSyncHoldsImpl(Landroid/content/Context;ILcom/android/emailcommon/provider/EmailContent$Account;)Z
    .locals 10
    .parameter "context"
    .parameter "reason"
    .parameter "account"

    .prologue
    .line 1019
    const/4 v1, 0x0

    .line 1020
    .local v1, holdWasReleased:Z
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1021
    .local v4, mailboxId:J
    if-eqz p3, :cond_1

    .line 1022
    invoke-static {p1, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v3

    .line 1023
    .local v3, m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-nez v3, :cond_2

    .line 1024
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    .end local v3           #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_1
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/ExchangeService$SyncError;

    .line 1030
    .local v0, error:Lcom/android/exchange/ExchangeService$SyncError;
    if-eqz v0, :cond_0

    iget v6, v0, Lcom/android/exchange/ExchangeService$SyncError;->reason:I

    if-ne v6, p2, :cond_0

    .line 1031
    iget-object v6, p0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    const/4 v1, 0x1

    goto :goto_0

    .line 1025
    .end local v0           #error:Lcom/android/exchange/ExchangeService$SyncError;
    .restart local v3       #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    :cond_2
    iget-wide v6, v3, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    iget-wide v8, p3, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    goto :goto_0

    .line 1035
    .end local v3           #m:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v4           #mailboxId:J
    :cond_3
    return v1
.end method

.method private releaseWakeLock(J)V
    .locals 4
    .parameter "id"

    .prologue
    .line 1311
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v1

    .line 1312
    :try_start_0
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1313
    .local v0, lock:Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    .line 1314
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1316
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    .line 1317
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1319
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1324
    :cond_1
    monitor-exit v1

    .line 1325
    return-void

    .line 1324
    .end local v0           #lock:Ljava/lang/Boolean;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static reloadFolderList(Landroid/content/Context;JZ)V
    .locals 9
    .parameter "context"
    .parameter "accountId"
    .parameter "force"

    .prologue
    .line 1223
    sget-object v6, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1224
    .local v6, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v6, :cond_0

    .line 1278
    .end local p0
    .end local p1
    .end local p3
    :goto_0
    return-void

    .line 1225
    .restart local p0
    .restart local p1
    .restart local p3
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-wide/16 v7, 0x44

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1231
    .local v1, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1232
    sget-object v3, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1233
    :try_start_1
    new-instance v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    invoke-direct {v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;-><init>()V

    .line 1234
    .local v2, mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-virtual {v2, v1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restore(Landroid/database/Cursor;)V

    .line 1235
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 1236
    .local v0, acct:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_2

    .line 1237
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->reloadFolderListFailed(J)V

    .line 1238
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1276
    .end local v0           #acct:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v2           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local p0
    .end local p1
    .end local p3
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1240
    .restart local v0       #acct:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v2       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local p0
    .restart local p1
    .restart local p3
    :cond_2
    :try_start_2
    iget-object v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mSyncKey:Ljava/lang/String;

    .line 1242
    .local v0, syncKey:Ljava/lang/String;
    if-nez p3, :cond_4

    if-eqz v0, :cond_3

    const-string p3, "0"

    .end local p3
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1243
    :cond_3
    invoke-static {p1, p2}, Lcom/android/exchange/ExchangeService;->reloadFolderListFailed(J)V

    .line 1244
    monitor-exit v3

    goto :goto_1

    .line 1273
    .end local v0           #syncKey:Ljava/lang/String;
    .end local v2           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local p0
    .end local p1
    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1276
    :catchall_1
    move-exception p0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p0

    .line 1248
    .restart local v0       #syncKey:Ljava/lang/String;
    .restart local v2       #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local p0
    .restart local p1
    :cond_4
    :try_start_4
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 1249
    .local p3, cv:Landroid/content/ContentValues;
    const-string v0, "syncInterval"

    .end local v0           #syncKey:Ljava/lang/String;
    const/4 v4, -0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1250
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .end local p0
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "accountKey=? and type!=68 and syncInterval IN (-3,-2)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    .end local p1
    aput-object p1, v5, v7

    invoke-virtual {p0, v0, p3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1253
    const-string p0, "Set push/ping boxes to push/hold"

    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1255
    iget-wide p0, v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    .line 1256
    .local p0, id:J
    iget-object p2, v6, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .end local p3           #cv:Landroid/content/ContentValues;
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/exchange/AbstractSyncService;

    .line 1258
    .local p2, svc:Lcom/android/exchange/AbstractSyncService;
    if-eqz p2, :cond_6

    .line 1259
    invoke-virtual {p2}, Lcom/android/exchange/AbstractSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1260
    :try_start_5
    invoke-virtual {p2}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 1262
    iget-object p2, p2, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    .line 1263
    .local p2, thread:Ljava/lang/Thread;
    if-eqz p2, :cond_5

    .line 1264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .end local v2           #mailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (Stopped)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1265
    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 1267
    :cond_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1269
    :try_start_6
    invoke-direct {v6, p0, p1}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    .line 1271
    const-string p0, "reload folder list"

    .end local p0           #id:J
    invoke-static {p0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 1273
    .end local p2           #thread:Ljava/lang/Thread;
    :cond_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 1267
    :catchall_2
    move-exception p0

    :try_start_7
    monitor-exit p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method private static reloadFolderListFailed(J)V
    .locals 3
    .parameter "accountId"

    .prologue
    .line 1215
    :try_start_0
    invoke-static {}, Lcom/android/exchange/ExchangeService;->callback()Lcom/android/emailcommon/service/IEmailServiceCallback;

    move-result-object v0

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/android/emailcommon/service/IEmailServiceCallback;->syncMailboxListStatus(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    :goto_0
    return-void

    .line 1217
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static removeFromSyncErrorMap(J)V
    .locals 3
    .parameter "mailboxId"

    .prologue
    .line 2444
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2445
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 2446
    iget-object v1, v0, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2448
    :cond_0
    return-void
.end method

.method private requestSync(Lcom/android/emailcommon/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V
    .locals 8
    .parameter "m"
    .parameter "reason"
    .parameter "req"

    .prologue
    .line 1633
    sget-boolean v3, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    sget-boolean v3, Lcom/android/exchange/ExchangeService;->sStop:Z

    if-eqz v3, :cond_2

    .line 1634
    :cond_0
    sget-boolean v3, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 1637
    :try_start_0
    sget-object v3, Lcom/android/exchange/ExchangeService;->sCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    iget-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    const/16 v6, 0x20

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxStatus(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1659
    :cond_1
    :goto_0
    return-void

    .line 1643
    :cond_2
    sget-object v4, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1644
    :try_start_1
    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-static {p0, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    .line 1645
    .local v1, acct:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v1, :cond_5

    .line 1647
    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/AbstractSyncService;

    .line 1648
    .local v2, service:Lcom/android/exchange/AbstractSyncService;
    if-nez v2, :cond_5

    .line 1649
    new-instance v2, Lcom/android/exchange/EasSyncService;

    .end local v2           #service:Lcom/android/exchange/AbstractSyncService;
    invoke-direct {v2, p0, p1}, Lcom/android/exchange/EasSyncService;-><init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 1650
    .restart local v2       #service:Lcom/android/exchange/AbstractSyncService;
    move-object v0, v2

    check-cast v0, Lcom/android/exchange/EasSyncService;

    move-object v3, v0

    iget-boolean v3, v3, Lcom/android/exchange/EasSyncService;->mIsValid:Z

    if-nez v3, :cond_3

    monitor-exit v4

    goto :goto_0

    .line 1658
    .end local v1           #acct:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v2           #service:Lcom/android/exchange/AbstractSyncService;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1651
    .restart local v1       #acct:Lcom/android/emailcommon/provider/EmailContent$Account;
    .restart local v2       #service:Lcom/android/exchange/AbstractSyncService;
    :cond_3
    :try_start_2
    iput p2, v2, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 1652
    if-eqz p3, :cond_4

    .line 1653
    invoke-virtual {v2, p3}, Lcom/android/exchange/EasSyncService;->addRequest(Lcom/android/exchange/Request;)V

    .line 1655
    :cond_4
    invoke-direct {p0, v2, p1}, Lcom/android/exchange/ExchangeService;->startServiceThread(Lcom/android/exchange/AbstractSyncService;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V

    .line 1658
    .end local v2           #service:Lcom/android/exchange/AbstractSyncService;
    :cond_5
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1639
    .end local v1           #acct:Lcom/android/emailcommon/provider/EmailContent$Account;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private runAccountReconcilerSync(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1066
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v4, "com.android.exchange"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1071
    .local v1, accountMgrList:[Landroid/accounts/Account;
    new-instance v3, Lcom/android/exchange/ExchangeService$AccountList;

    invoke-direct {v3}, Lcom/android/exchange/ExchangeService$AccountList;-><init>()V

    invoke-static {p1, v3}, Lcom/android/exchange/ExchangeService;->collectEasAccounts(Landroid/content/Context;Lcom/android/exchange/ExchangeService$AccountList;)Lcom/android/exchange/ExchangeService$AccountList;

    move-result-object v0

    .line 1072
    .local v0, accountList:Lcom/android/exchange/ExchangeService$AccountList;
    const-string v3, "Reconciling accounts..."

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {p1, v0, v1, v3}, Lcom/android/emailcommon/utility/AccountReconciler;->reconcileAccounts(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;Landroid/content/ContentResolver;)Z

    move-result v2

    .line 1076
    .local v2, accountsDeleted:Z
    if-eqz v2, :cond_0

    .line 1078
    :try_start_0
    new-instance v3, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-direct {v3, p1}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/android/emailcommon/service/AccountServiceProxy;->accountDeleted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1083
    :cond_0
    :goto_0
    return-void

    .line 1079
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static runAsleep(JJ)V
    .locals 1
    .parameter "id"
    .parameter "millis"

    .prologue
    .line 1390
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1391
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 1392
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/exchange/ExchangeService;->setAlarm(JJ)V

    .line 1393
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/ExchangeService;->releaseWakeLock(J)V

    .line 1395
    :cond_0
    return-void
.end method

.method public static runAwake(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 1382
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1383
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 1384
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/ExchangeService;->acquireWakeLock(J)V

    .line 1385
    invoke-direct {v0, p0, p1}, Lcom/android/exchange/ExchangeService;->clearAlarm(J)V

    .line 1387
    :cond_0
    return-void
.end method

.method public static sendMessageRequest(Lcom/android/exchange/Request;)V
    .locals 4
    .parameter

    .prologue
    .line 2321
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2322
    if-nez v0, :cond_1

    .line 2336
    :cond_0
    :goto_0
    return-void

    .line 2323
    :cond_1
    iget-wide v1, p0, Lcom/android/exchange/Request;->mMessageId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 2324
    if-eqz v1, :cond_0

    .line 2327
    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 2328
    iget-object v0, v0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 2330
    if-nez v0, :cond_2

    .line 2331
    const/4 v0, 0x7

    invoke-static {v1, v2, v0, p0}, Lcom/android/exchange/ExchangeService;->startManualSync(JILcom/android/exchange/Request;)V

    .line 2332
    const-string v0, "part request"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto :goto_0

    .line 2334
    :cond_2
    invoke-virtual {v0, p0}, Lcom/android/exchange/AbstractSyncService;->addRequest(Lcom/android/exchange/Request;)V

    goto :goto_0
.end method

.method public static serviceRequest(JI)V
    .locals 2
    .parameter "mailboxId"
    .parameter "reason"

    .prologue
    .line 2271
    const-wide/16 v0, 0x1388

    invoke-static {p0, p1, v0, v1, p2}, Lcom/android/exchange/ExchangeService;->serviceRequest(JJI)V

    .line 2272
    return-void
.end method

.method public static serviceRequest(JJI)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2288
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2289
    if-nez v0, :cond_1

    .line 2303
    :cond_0
    :goto_0
    return-void

    .line 2290
    :cond_1
    invoke-static {v0, p0, p1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v1

    .line 2291
    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->isSyncable(Lcom/android/emailcommon/provider/EmailContent$Mailbox;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2293
    :try_start_0
    iget-object v0, v0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 2294
    if-eqz v0, :cond_2

    .line 2295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    iput-wide v1, v0, Lcom/android/exchange/AbstractSyncService;->mRequestTime:J

    .line 2296
    const-string v0, "service request"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2300
    :catch_0
    move-exception v0

    .line 2301
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2298
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, p4, v0}, Lcom/android/exchange/ExchangeService;->startManualSync(JILcom/android/exchange/Request;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private setAlarm(JJ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1355
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    monitor-enter v1

    .line 1356
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 1357
    if-nez v0, :cond_0

    .line 1358
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/exchange/MailboxAlarmReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1359
    const-string v2, "mailbox"

    invoke-virtual {v0, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Box"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1361
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1362
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mPendingIntents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/android/exchange/ExchangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 1365
    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    add-long/2addr v3, p3

    invoke-virtual {p0, v2, v3, v4, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1368
    :cond_0
    monitor-exit v1

    .line 1369
    return-void

    .line 1368
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setWatchdogAlarm(JJ)V
    .locals 1
    .parameter "id"
    .parameter "millis"

    .prologue
    .line 1405
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1406
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 1407
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/exchange/ExchangeService;->setAlarm(JJ)V

    .line 1409
    :cond_0
    return-void
.end method

.method private shutdown()V
    .locals 3

    .prologue
    .line 1989
    sget-object v0, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1991
    :try_start_0
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-eqz v1, :cond_7

    .line 1992
    const-string v1, "ExchangeService shutting down..."

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1995
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->stopServiceThreads()V

    .line 1998
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mConnectivityReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    if-eqz v1, :cond_0

    .line 1999
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mConnectivityReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    invoke-virtual {p0, v1}, Lcom/android/exchange/ExchangeService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2001
    :cond_0
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mBackgroundDataSettingReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    if-eqz v1, :cond_1

    .line 2002
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mBackgroundDataSettingReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    invoke-virtual {p0, v1}, Lcom/android/exchange/ExchangeService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2006
    :cond_1
    invoke-virtual {p0}, Lcom/android/exchange/ExchangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2007
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mSyncedMessageObserver:Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

    if-eqz v2, :cond_2

    .line 2008
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mSyncedMessageObserver:Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2009
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/ExchangeService;->mSyncedMessageObserver:Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

    .line 2011
    :cond_2
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    if-eqz v2, :cond_3

    .line 2012
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2013
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    .line 2015
    :cond_3
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mMailboxObserver:Lcom/android/exchange/ExchangeService$MailboxObserver;

    if-eqz v2, :cond_4

    .line 2016
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mMailboxObserver:Lcom/android/exchange/ExchangeService$MailboxObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2017
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/ExchangeService;->mMailboxObserver:Lcom/android/exchange/ExchangeService$MailboxObserver;

    .line 2019
    :cond_4
    invoke-static {}, Lcom/android/exchange/ExchangeService;->unregisterCalendarObservers()V

    .line 2022
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mStatusChangeListener:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 2023
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mStatusChangeListener:Ljava/lang/Object;

    invoke-static {v1}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 2024
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/ExchangeService;->mStatusChangeListener:Ljava/lang/Object;

    .line 2025
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/exchange/ExchangeService;->mSyncStatusObserver:Lcom/android/exchange/ExchangeService$EasSyncStatusObserver;

    .line 2029
    :cond_5
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->clearAlarms()V

    .line 2032
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mWakeLocks:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2033
    :try_start_1
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_6

    .line 2034
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2035
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/exchange/ExchangeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2037
    :cond_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2039
    const/4 v1, 0x0

    :try_start_2
    sput-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2040
    const/4 v1, 0x0

    sput-object v1, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    .line 2041
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/exchange/ExchangeService;->sStop:Z

    .line 2042
    const-string v1, "Goodbye"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2044
    :cond_7
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2045
    return-void

    .line 2037
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 2044
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private static declared-synchronized shutdownConnectionManager()V
    .locals 2

    .prologue
    .line 1165
    const-class v0, Lcom/android/exchange/ExchangeService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/exchange/ExchangeService;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    if-eqz v1, :cond_0

    .line 1166
    const-string v1, "Shutting down ClientConnectionManager"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1167
    sget-object v1, Lcom/android/exchange/ExchangeService;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 1168
    sget v1, Lcom/android/exchange/ExchangeService;->sClientConnectionManagerShutdownCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/exchange/ExchangeService;->sClientConnectionManagerShutdownCount:I

    .line 1169
    const/4 v1, 0x0

    sput-object v1, Lcom/android/exchange/ExchangeService;->sClientConnectionManager:Lorg/apache/http/conn/ClientConnectionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1171
    :cond_0
    monitor-exit v0

    return-void

    .line 1165
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static startManualSync(JILcom/android/exchange/Request;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2365
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2366
    if-nez v1, :cond_0

    .line 2391
    :goto_0
    return-void

    .line 2367
    :cond_0
    sget-object v2, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2368
    :try_start_0
    iget-object v0, v1, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 2369
    if-nez v0, :cond_2

    .line 2370
    iget-object v0, v1, Lcom/android/exchange/ExchangeService;->mSyncErrorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2371
    invoke-static {v1, p0, p1}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 2372
    if-eqz v0, :cond_1

    .line 2373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting sync for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2374
    invoke-direct {v1, v0, p2, p3}, Lcom/android/exchange/ExchangeService;->requestSync(Lcom/android/emailcommon/provider/EmailContent$Mailbox;ILcom/android/exchange/Request;)V

    .line 2390
    :cond_1
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2378
    :cond_2
    const/4 v1, 0x5

    if-lt p2, v1, :cond_3

    .line 2379
    :try_start_1
    iput p2, v0, Lcom/android/exchange/AbstractSyncService;->mSyncReason:I

    .line 2382
    :cond_3
    iget-boolean v0, v0, Lcom/android/exchange/AbstractSyncService;->mStop:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 2384
    :try_start_2
    sget-object v0, Lcom/android/exchange/ExchangeService;->sCallbackProxy:Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, p1, v1, v3}, Lcom/android/emailcommon/service/IEmailServiceCallback$Stub;->syncMailboxStatus(JII)V

    .line 2385
    const-string v0, "startManualSync svc is stopped"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 2386
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private startServiceThread(Lcom/android/exchange/AbstractSyncService;Lcom/android/emailcommon/provider/EmailContent$Mailbox;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 1594
    if-nez p2, :cond_0

    .line 1607
    :goto_0
    return-void

    .line 1595
    :cond_0
    sget-object v0, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1596
    :try_start_0
    iget-object v1, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    .line 1597
    iget-object v2, p1, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v2, v2, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    .line 1598
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1599
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting thread for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " in account "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1600
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1601
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mId:J

    invoke-static {v1, v2}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 1603
    iget-object v1, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    const-string v2, "__eas"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1604
    iget-wide v1, p2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    invoke-direct {p0, v1, v2}, Lcom/android/exchange/ExchangeService;->stopPing(J)V

    .line 1606
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static stopAccountSyncs(J)V
    .locals 2
    .parameter "acctId"

    .prologue
    .line 1174
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1175
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 1176
    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/exchange/ExchangeService;->stopAccountSyncs(JZ)V

    .line 1178
    :cond_0
    return-void
.end method

.method private stopAccountSyncs(JZ)V
    .locals 9
    .parameter "acctId"
    .parameter "includeAccountMailbox"

    .prologue
    .line 1181
    sget-object v6, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1182
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1183
    .local v1, deletedBoxes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v7, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1184
    .local v3, mid:Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {p0, v7, v8}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 1185
    .local v0, box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    if-eqz v0, :cond_0

    .line 1186
    iget-wide v7, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    cmp-long v7, v7, p1

    if-nez v7, :cond_0

    .line 1187
    if-nez p3, :cond_1

    iget v7, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mType:I

    const/16 v8, 0x44

    if-ne v7, v8, :cond_1

    .line 1189
    iget-object v7, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/exchange/AbstractSyncService;

    .line 1190
    .local v4, svc:Lcom/android/exchange/AbstractSyncService;
    if-eqz v4, :cond_0

    .line 1191
    invoke-virtual {v4}, Lcom/android/exchange/AbstractSyncService;->stop()V

    goto :goto_0

    .line 1210
    .end local v0           #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v1           #deletedBoxes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #mid:Ljava/lang/Long;
    .end local v4           #svc:Lcom/android/exchange/AbstractSyncService;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1195
    .restart local v0       #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .restart local v1       #deletedBoxes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #mid:Ljava/lang/Long;
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/exchange/AbstractSyncService;

    .line 1196
    .restart local v4       #svc:Lcom/android/exchange/AbstractSyncService;
    if-eqz v4, :cond_2

    .line 1197
    invoke-virtual {v4}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 1198
    iget-object v5, v4, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    .line 1199
    .local v5, t:Ljava/lang/Thread;
    if-eqz v5, :cond_2

    .line 1200
    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 1203
    .end local v5           #t:Ljava/lang/Thread;
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1207
    .end local v0           #box:Lcom/android/emailcommon/provider/EmailContent$Mailbox;
    .end local v3           #mid:Ljava/lang/Long;
    .end local v4           #svc:Lcom/android/exchange/AbstractSyncService;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1208
    .restart local v3       #mid:Ljava/lang/Long;
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/android/exchange/ExchangeService;->releaseMailbox(J)V

    goto :goto_1

    .line 1210
    .end local v3           #mid:Ljava/lang/Long;
    :cond_4
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1211
    return-void
.end method

.method public static stopManualSync(J)V
    .locals 5
    .parameter

    .prologue
    .line 2395
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 2396
    if-nez v1, :cond_0

    .line 2406
    :goto_0
    return-void

    .line 2397
    :cond_0
    sget-object v2, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2398
    :try_start_0
    iget-object v0, v1, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 2399
    if-eqz v0, :cond_1

    .line 2400
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stopping sync for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/exchange/AbstractSyncService;->mMailboxName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 2401
    invoke-virtual {v0}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 2402
    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2403
    invoke-direct {v1, p0, p1}, Lcom/android/exchange/ExchangeService;->releaseWakeLock(J)V

    .line 2405
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static stopNonAccountMailboxSyncsForAccount(J)V
    .locals 2
    .parameter "acctId"

    .prologue
    .line 1288
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1289
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-eqz v0, :cond_0

    .line 1290
    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/exchange/ExchangeService;->stopAccountSyncs(JZ)V

    .line 1291
    const-string v1, "reload folder list"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 1293
    :cond_0
    return-void
.end method

.method private stopPing(J)V
    .locals 8
    .parameter

    .prologue
    .line 1615
    sget-object v1, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1616
    :try_start_0
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1617
    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v0

    .line 1618
    if-eqz v0, :cond_0

    .line 1619
    iget-object v5, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mServerId:Ljava/lang/String;

    .line 1620
    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mAccountKey:J

    cmp-long v0, v6, p1

    if-nez v0, :cond_0

    if-eqz v5, :cond_0

    const-string v0, "__eas"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1623
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/exchange/AbstractSyncService;

    .line 1624
    invoke-virtual {v0}, Lcom/android/exchange/AbstractSyncService;->reset()V

    goto :goto_0

    .line 1628
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1629
    return-void
.end method

.method private stopServiceThreads()V
    .locals 6

    .prologue
    .line 1662
    sget-object v2, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1663
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1666
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1667
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1682
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1671
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1672
    iget-object v1, p0, Lcom/android/exchange/ExchangeService;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/exchange/AbstractSyncService;

    .line 1673
    if-eqz v1, :cond_1

    .line 1674
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/exchange/AbstractSyncService;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/exchange/AbstractSyncService;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1675
    invoke-virtual {v1}, Lcom/android/exchange/AbstractSyncService;->stop()V

    .line 1676
    iget-object v4, v1, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    if-eqz v4, :cond_1

    .line 1677
    iget-object v1, v1, Lcom/android/exchange/AbstractSyncService;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1680
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/exchange/ExchangeService;->releaseWakeLock(J)V

    goto :goto_1

    .line 1682
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1683
    return-void
.end method

.method public static unregisterCalendarObservers()V
    .locals 5

    .prologue
    .line 751
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 752
    .local v0, exchangeService:Lcom/android/exchange/ExchangeService;
    if-nez v0, :cond_0

    .line 758
    :goto_0
    return-void

    .line 753
    :cond_0
    iget-object v3, v0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    .line 754
    .local v3, resolver:Landroid/content/ContentResolver;
    iget-object v4, v0, Lcom/android/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/exchange/ExchangeService$CalendarObserver;

    .line 755
    .local v2, observer:Lcom/android/exchange/ExchangeService$CalendarObserver;
    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_1

    .line 757
    .end local v2           #observer:Lcom/android/exchange/ExchangeService$CalendarObserver;
    :cond_1
    iget-object v4, v0, Lcom/android/exchange/ExchangeService;->mCalendarObservers:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_0
.end method

.method private updatePIMSyncSettings(Lcom/android/emailcommon/provider/EmailContent$Account;ILjava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 1474
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1475
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-static {p0, v1, v2, p2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v1

    .line 1478
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 1480
    new-instance v3, Landroid/accounts/Account;

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v5, "com.android.exchange"

    invoke-direct {v3, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    move-result-object v4

    .line 1485
    if-nez v4, :cond_1

    .line 1519
    :cond_0
    :goto_0
    return-void

    .line 1486
    :cond_1
    iget v5, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncInterval:I

    .line 1488
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v6

    .line 1489
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Master auto sync is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1491
    if-nez v6, :cond_2

    if-eqz p2, :cond_5

    :cond_2
    const/4 v6, 0x1

    .line 1493
    :goto_1
    invoke-static {v3, p3}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_7

    .line 1495
    if-eqz v6, :cond_6

    invoke-static {v3, p3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1496
    if-eq v5, v9, :cond_3

    if-lez v5, :cond_4

    .line 1497
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sync for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": push"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1498
    const-string v3, "syncInterval"

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1512
    :cond_4
    :goto_2
    const-string v3, "syncInterval"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1513
    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1, v0, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1515
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    invoke-direct {p0, v0, v1}, Lcom/android/exchange/ExchangeService;->stopPing(J)V

    .line 1516
    const-string v0, "sync settings change"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1491
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 1501
    :cond_6
    if-eq v5, v9, :cond_4

    .line 1502
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sync for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": manual"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1503
    const-string v3, "syncInterval"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 1506
    :cond_7
    if-eq v5, v9, :cond_4

    .line 1507
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sync for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": manual"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1508
    const-string v3, "syncInterval"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2
.end method

.method private waitForConnectivity()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 1686
    .line 1687
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/exchange/ExchangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1689
    :goto_0
    sget-boolean v2, Lcom/android/exchange/ExchangeService;->sStop:Z

    if-nez v2, :cond_0

    .line 1690
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1691
    if-eqz v2, :cond_1

    .line 1693
    if-eqz v1, :cond_0

    .line 1695
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v7, v0}, Lcom/android/exchange/ExchangeService;->releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/EmailContent$Account;)Z

    .line 1697
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->logSyncHolds()V

    .line 1724
    :cond_0
    return-void

    .line 1702
    :cond_1
    if-nez v1, :cond_2

    .line 1704
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->stopServiceThreads()V

    move v1, v7

    .line 1708
    :cond_2
    sget-object v2, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1709
    const-wide/16 v3, -0x1

    const-wide/32 v5, 0x93b48

    :try_start_0
    invoke-static {v3, v4, v5, v6}, Lcom/android/exchange/ExchangeService;->runAsleep(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1711
    :try_start_1
    const-string v3, "Connectivity lock..."

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1712
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z

    .line 1713
    sget-object v3, Lcom/android/exchange/ExchangeService;->sConnectivityLock:Ljava/lang/Object;

    const-wide/32 v4, 0x927c0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 1714
    const-string v3, "Connectivity lock released..."

    invoke-static {v3}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1718
    const/4 v3, 0x0

    :try_start_2
    sput-boolean v3, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z

    .line 1720
    :goto_1
    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 1721
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1718
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    sput-boolean v1, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z

    throw v0

    .line 1715
    :catch_0
    move-exception v3

    .line 1718
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/exchange/ExchangeService;->sConnectivityHold:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method maybeStartExchangeServiceThread()V
    .locals 3

    .prologue
    .line 1859
    sget-object v0, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1860
    :cond_0
    sget-object v0, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "protocol=\"eas\""

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 1861
    sget-object v0, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    if-nez v0, :cond_2

    const-string v0, "Starting thread..."

    :goto_0
    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1862
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "ExchangeService"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    .line 1863
    sput-object p0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    .line 1864
    sget-object v0, Lcom/android/exchange/ExchangeService;->sServiceThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1867
    :cond_1
    return-void

    .line 1861
    :cond_2
    const-string v0, "Restarting thread..."

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mBinder:Lcom/android/emailcommon/service/IEmailService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 1750
    new-instance v0, Lcom/android/exchange/ExchangeService$6;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$6;-><init>(Lcom/android/exchange/ExchangeService;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 1765
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1839
    const-string v0, "!!! EAS ExchangeService, onDestroy"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1841
    new-instance v0, Lcom/android/exchange/ExchangeService$8;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$8;-><init>(Lcom/android/exchange/ExchangeService;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 1854
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!!! EAS ExchangeService, onStartCommand, startingUp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/exchange/ExchangeService;->sStartingUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", running = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1771
    sget-boolean v0, Lcom/android/exchange/ExchangeService;->sStartingUp:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-nez v0, :cond_0

    .line 1772
    sput-boolean v2, Lcom/android/exchange/ExchangeService;->sStartingUp:Z

    .line 1773
    new-instance v0, Lcom/android/exchange/ExchangeService$7;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$7;-><init>(Lcom/android/exchange/ExchangeService;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 1834
    :cond_0
    return v2

    .line 1769
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method releaseSyncHolds(Landroid/content/Context;ILcom/android/emailcommon/provider/EmailContent$Account;)Z
    .locals 2
    .parameter "context"
    .parameter "reason"
    .parameter "account"

    .prologue
    .line 1013
    invoke-direct {p0, p1, p2, p3}, Lcom/android/exchange/ExchangeService;->releaseSyncHoldsImpl(Landroid/content/Context;ILcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v0

    .line 1014
    .local v0, holdWasReleased:Z
    const-string v1, "security release"

    invoke-static {v1}, Lcom/android/exchange/ExchangeService;->kick(Ljava/lang/String;)V

    .line 1015
    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1884
    sput-boolean v0, Lcom/android/exchange/ExchangeService;->sStop:Z

    .line 1885
    const-string v0, "ExchangeService thread running"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->alwaysLog(Ljava/lang/String;)V

    .line 1887
    sget-boolean v0, Lcom/android/exchange/Eas;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1888
    sput-boolean v1, Lcom/android/exchange/Eas;->USER_LOG:Z

    .line 1889
    sput-boolean v1, Lcom/android/exchange/Eas;->PARSER_LOG:Z

    .line 1890
    sput-boolean v1, Lcom/android/exchange/Eas;->FILE_LOG:Z

    .line 1893
    :cond_0
    invoke-static {p0}, Lcom/android/emailcommon/TempDirectory;->setTempDirectory(Landroid/content/Context;)V

    .line 1896
    sget-boolean v0, Lcom/android/exchange/Eas;->WAIT_DEBUG:Z

    if-eqz v0, :cond_1

    .line 1897
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 1902
    :cond_1
    sget-object v1, Lcom/android/exchange/ExchangeService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1903
    :try_start_0
    sget-object v0, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-eqz v0, :cond_2

    .line 1904
    invoke-virtual {p0}, Lcom/android/exchange/ExchangeService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    .line 1909
    new-instance v0, Lcom/android/exchange/ExchangeService$AccountObserver;

    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/exchange/ExchangeService$AccountObserver;-><init>(Lcom/android/exchange/ExchangeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    .line 1910
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Account;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mAccountObserver:Lcom/android/exchange/ExchangeService$AccountObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1911
    new-instance v0, Lcom/android/exchange/ExchangeService$MailboxObserver;

    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/exchange/ExchangeService$MailboxObserver;-><init>(Lcom/android/exchange/ExchangeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mMailboxObserver:Lcom/android/exchange/ExchangeService$MailboxObserver;

    .line 1912
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mMailboxObserver:Lcom/android/exchange/ExchangeService$MailboxObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1913
    new-instance v0, Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/exchange/ExchangeService$SyncedMessageObserver;-><init>(Lcom/android/exchange/ExchangeService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mSyncedMessageObserver:Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

    .line 1914
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/exchange/ExchangeService;->mSyncedMessageObserver:Lcom/android/exchange/ExchangeService$SyncedMessageObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1916
    new-instance v0, Lcom/android/exchange/ExchangeService$EasSyncStatusObserver;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$EasSyncStatusObserver;-><init>(Lcom/android/exchange/ExchangeService;)V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mSyncStatusObserver:Lcom/android/exchange/ExchangeService$EasSyncStatusObserver;

    .line 1917
    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mSyncStatusObserver:Lcom/android/exchange/ExchangeService$EasSyncStatusObserver;

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mStatusChangeListener:Ljava/lang/Object;

    .line 1922
    new-instance v0, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;-><init>(Lcom/android/exchange/ExchangeService;)V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mConnectivityReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    .line 1923
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mConnectivityReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/exchange/ExchangeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1926
    new-instance v0, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangeService$ConnectivityReceiver;-><init>(Lcom/android/exchange/ExchangeService;)V

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mBackgroundDataSettingReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    .line 1927
    iget-object v0, p0, Lcom/android/exchange/ExchangeService;->mBackgroundDataSettingReceiver:Lcom/android/exchange/ExchangeService$ConnectivityReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/exchange/ExchangeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1931
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/exchange/ExchangeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1933
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mBackgroundData:Z

    .line 1936
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->checkPIMSyncSettings()V

    .line 1940
    invoke-static {}, Lcom/android/exchange/ExchangeService;->getEasAccountSelector()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/exchange/provider/MailboxUtilities;->fixupUninitializedParentKeys(Landroid/content/Context;Ljava/lang/String;)V

    .line 1942
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1946
    :goto_0
    :try_start_1
    sget-boolean v0, Lcom/android/exchange/ExchangeService;->sStop:Z

    if-nez v0, :cond_a

    .line 1947
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lcom/android/exchange/ExchangeService;->runAwake(J)V

    .line 1948
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->waitForConnectivity()V

    .line 1949
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;

    .line 1950
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->checkMailboxes()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    .line 1952
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1953
    :try_start_3
    iget-boolean v2, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    if-nez v2, :cond_6

    .line 1954
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 1955
    const-string v0, "Negative wait? Setting to 1s"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    move-wide v0, v6

    .line 1958
    :cond_3
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-lez v2, :cond_5

    .line 1959
    iget-object v2, p0, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1960
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Next awake "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/ExchangeService;->mNextWaitReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V

    .line 1962
    :cond_4
    const-wide/16 v2, -0x1

    const-wide/16 v4, 0xbb8

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Lcom/android/exchange/ExchangeService;->runAsleep(JJ)V

    .line 1964
    :cond_5
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 1966
    :cond_6
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1971
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1972
    :try_start_5
    iget-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    if-eqz v0, :cond_7

    .line 1974
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    .line 1976
    :cond_7
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1980
    :catch_0
    move-exception v0

    .line 1981
    :try_start_7
    const-string v1, "ExchangeService"

    const-string v2, "RuntimeException in ExchangeService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1982
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1984
    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->shutdown()V

    throw v0

    .line 1942
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 1966
    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1

    .line 1967
    :catch_1
    move-exception v0

    .line 1969
    :try_start_b
    const-string v0, "ExchangeService interrupted"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 1971
    :try_start_c
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    .line 1972
    :try_start_d
    iget-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    if-eqz v0, :cond_8

    .line 1974
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    .line 1976
    :cond_8
    monitor-exit p0

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v0

    .line 1971
    :catchall_5
    move-exception v0

    monitor-enter p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    .line 1972
    :try_start_f
    iget-boolean v1, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    if-eqz v1, :cond_9

    .line 1974
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/exchange/ExchangeService;->mKicked:Z

    .line 1976
    :cond_9
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 1971
    :try_start_10
    throw v0

    .line 1979
    :cond_a
    const-string v0, "Shutdown requested"

    invoke-static {v0}, Lcom/android/exchange/ExchangeService;->log(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    .line 1984
    invoke-direct {p0}, Lcom/android/exchange/ExchangeService;->shutdown()V

    .line 1986
    return-void

    .line 1976
    :catchall_6
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0
.end method
