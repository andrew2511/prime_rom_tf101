.class public Lcom/google/android/gsf/login/NetworkMonitor;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/NetworkMonitor$Callback;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/google/android/gsf/login/NetworkMonitor$Callback;

.field private mCheckinSucceeded:Z

.field private mContext:Landroid/content/Context;

.field private mLastReported:Z

.field private mLoginService:Lcom/google/android/gsf/IGoogleLoginService;

.field private mNetworkConnected:Z

.field private final mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-string v0, "NetworkMonitor"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gsf/login/NetworkMonitor;->LOCAL_LOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gsf/login/NetworkMonitor$Callback;)V
    .locals 4
    .parameter "context"
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v2, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mContext:Landroid/content/Context;

    .line 56
    iput-object v2, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mCallback:Lcom/google/android/gsf/login/NetworkMonitor$Callback;

    .line 58
    iput-object v2, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mLoginService:Lcom/google/android/gsf/IGoogleLoginService;

    .line 59
    iput-boolean v1, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mNetworkConnected:Z

    .line 60
    iput-boolean v1, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mCheckinSucceeded:Z

    .line 61
    iput-boolean v1, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mLastReported:Z

    .line 127
    new-instance v1, Lcom/google/android/gsf/login/NetworkMonitor$2;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/login/NetworkMonitor$2;-><init>(Lcom/google/android/gsf/login/NetworkMonitor;)V

    iput-object v1, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    new-instance v1, Lcom/google/android/gsf/login/NetworkMonitor$3;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/login/NetworkMonitor$3;-><init>(Lcom/google/android/gsf/login/NetworkMonitor;)V

    iput-object v1, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 74
    iput-object p1, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mCallback:Lcom/google/android/gsf/login/NetworkMonitor$Callback;

    .line 76
    sget-boolean v1, Lcom/google/android/gsf/login/NetworkMonitor;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "NetworkMonitor"

    const-string v2, "Starting NetworkMonitor"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v1, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    sget-object v1, Lcom/google/android/gsf/GoogleLoginServiceConstants;->SERVICE_INTENT:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 87
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/google/android/gsf/login/NetworkMonitor$1;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/login/NetworkMonitor$1;-><init>(Lcom/google/android/gsf/login/NetworkMonitor;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/login/NetworkMonitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/android/gsf/login/NetworkMonitor;->onStateChanged()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/google/android/gsf/login/NetworkMonitor;->LOCAL_LOGV:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/gsf/login/NetworkMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mNetworkConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/gsf/login/NetworkMonitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mCheckinSucceeded:Z

    return v0
.end method

.method static synthetic access$302(Lcom/google/android/gsf/login/NetworkMonitor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mCheckinSucceeded:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/gsf/login/NetworkMonitor;)Lcom/google/android/gsf/IGoogleLoginService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mLoginService:Lcom/google/android/gsf/IGoogleLoginService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/gsf/login/NetworkMonitor;Lcom/google/android/gsf/IGoogleLoginService;)Lcom/google/android/gsf/IGoogleLoginService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mLoginService:Lcom/google/android/gsf/IGoogleLoginService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/gsf/login/NetworkMonitor;)Lcom/google/android/gsf/login/NetworkMonitor$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mCallback:Lcom/google/android/gsf/login/NetworkMonitor$Callback;

    return-object v0
.end method

.method private onStateChanged()V
    .locals 4

    .prologue
    .line 108
    sget-boolean v1, Lcom/google/android/gsf/login/NetworkMonitor;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "NetworkMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mNetworkConnected:Z

    if-eqz v3, :cond_3

    const-string v3, "UP"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Checkin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mCheckinSucceeded:Z

    if-eqz v3, :cond_4

    const-string v3, "HAS"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " succeeded, GLS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mLoginService:Lcom/google/android/gsf/IGoogleLoginService;

    if-eqz v3, :cond_5

    const-string v3, "IS"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " connected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mNetworkConnected:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mCheckinSucceeded:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mLoginService:Lcom/google/android/gsf/IGoogleLoginService;

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    move v0, v1

    .line 116
    .local v0, up:Z
    :goto_3
    iget-boolean v1, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mLastReported:Z

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mCallback:Lcom/google/android/gsf/login/NetworkMonitor$Callback;

    if-eqz v1, :cond_2

    .line 117
    iput-boolean v0, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mLastReported:Z

    if-eqz v0, :cond_7

    .line 118
    sget-boolean v1, Lcom/google/android/gsf/login/NetworkMonitor;->LOCAL_LOGV:Z

    if-eqz v1, :cond_1

    const-string v1, "NetworkMonitor"

    const-string v2, "Reporting network CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mCallback:Lcom/google/android/gsf/login/NetworkMonitor$Callback;

    invoke-interface {v1}, Lcom/google/android/gsf/login/NetworkMonitor$Callback;->onNetworkConnected()V

    .line 125
    :cond_2
    :goto_4
    return-void

    .line 109
    .end local v0           #up:Z
    :cond_3
    const-string v3, "DOWN"

    goto :goto_0

    :cond_4
    const-string v3, "has NOT"

    goto :goto_1

    :cond_5
    const-string v3, "is NOT"

    goto :goto_2

    .line 115
    :cond_6
    const/4 v1, 0x0

    move v0, v1

    goto :goto_3

    .line 121
    .restart local v0       #up:Z
    :cond_7
    sget-boolean v1, Lcom/google/android/gsf/login/NetworkMonitor;->LOCAL_LOGV:Z

    if-eqz v1, :cond_8

    const-string v1, "NetworkMonitor"

    const-string v2, "Reporting network DISCONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_8
    iget-object v1, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mCallback:Lcom/google/android/gsf/login/NetworkMonitor$Callback;

    invoke-interface {v1}, Lcom/google/android/gsf/login/NetworkMonitor$Callback;->onNetworkDisconnected()V

    goto :goto_4
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    iget-object v0, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 98
    iput-object v2, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mContext:Landroid/content/Context;

    .line 99
    iput-object v2, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mCallback:Lcom/google/android/gsf/login/NetworkMonitor$Callback;

    .line 100
    sget-boolean v0, Lcom/google/android/gsf/login/NetworkMonitor;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkMonitor"

    const-string v1, "Stopped NetworkMonitor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isNetworkConnected()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/google/android/gsf/login/NetworkMonitor;->mNetworkConnected:Z

    return v0
.end method
