.class Lcom/google/android/maps/NetworkConnectivityListener;
.super Ljava/lang/Object;
.source "MapActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/maps/NetworkConnectivityListener$1;,
        Lcom/google/android/maps/NetworkConnectivityListener$State;,
        Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Handler;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFailover:Z

.field private mListening:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mOtherNetworkInfo:Landroid/net/NetworkInfo;

.field private mReason:Ljava/lang/String;

.field private mReceiver:Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

.field private mState:Lcom/google/android/maps/NetworkConnectivityListener$State;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    .line 153
    sget-object v0, Lcom/google/android/maps/NetworkConnectivityListener$State;->UNKNOWN:Lcom/google/android/maps/NetworkConnectivityListener$State;

    iput-object v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mState:Lcom/google/android/maps/NetworkConnectivityListener$State;

    .line 154
    new-instance v0, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;-><init>(Lcom/google/android/maps/NetworkConnectivityListener;Lcom/google/android/maps/NetworkConnectivityListener$1;)V

    iput-object v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mReceiver:Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/maps/NetworkConnectivityListener;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mListening:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/maps/NetworkConnectivityListener;)Lcom/google/android/maps/NetworkConnectivityListener$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mState:Lcom/google/android/maps/NetworkConnectivityListener$State;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/maps/NetworkConnectivityListener;Lcom/google/android/maps/NetworkConnectivityListener$State;)Lcom/google/android/maps/NetworkConnectivityListener$State;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mState:Lcom/google/android/maps/NetworkConnectivityListener$State;

    return-object p1
.end method

.method static synthetic access$202(Lcom/google/android/maps/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/android/maps/NetworkConnectivityListener;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$402(Lcom/google/android/maps/NetworkConnectivityListener;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/google/android/maps/NetworkConnectivityListener;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mIsFailover:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/maps/NetworkConnectivityListener;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public getState()Lcom/google/android/maps/NetworkConnectivityListener$State;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mState:Lcom/google/android/maps/NetworkConnectivityListener$State;

    return-object v0
.end method

.method public registerHandler(Landroid/os/Handler;I)V
    .registers 5
    .parameter "target"
    .parameter "what"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-void
.end method

.method public declared-synchronized startListening(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 162
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mListening:Z

    if-nez v1, :cond_19

    .line 163
    iput-object p1, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mContext:Landroid/content/Context;

    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 166
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mReceiver:Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mListening:Z
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 170
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_19
    monitor-exit p0

    return-void

    .line 162
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized stopListening()V
    .registers 3

    .prologue
    .line 176
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mListening:Z

    if-eqz v0, :cond_1e

    .line 177
    iget-object v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mReceiver:Lcom/google/android/maps/NetworkConnectivityListener$ConnectivityBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mContext:Landroid/content/Context;

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mIsFailover:Z

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mReason:Ljava/lang/String;

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mListening:Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 185
    :cond_1e
    monitor-exit p0

    return-void

    .line 176
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterHandler(Landroid/os/Handler;)V
    .registers 3
    .parameter "target"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/maps/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    return-void
.end method
