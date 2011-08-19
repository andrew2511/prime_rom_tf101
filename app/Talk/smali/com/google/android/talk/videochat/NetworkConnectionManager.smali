.class public Lcom/google/android/talk/videochat/NetworkConnectionManager;
.super Ljava/lang/Object;
.source "NetworkConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/videochat/NetworkConnectionManager$MobileHipriRunnable;
    }
.end annotation


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMobileHipriRunnable:Lcom/google/android/talk/videochat/NetworkConnectionManager$MobileHipriRunnable;

.field private mRequestHipri:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/android/talk/videochat/NetworkConnectionManager;->mContext:Landroid/content/Context;

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/NetworkConnectionManager;->mHandler:Landroid/os/Handler;

    .line 35
    iget-object v0, p0, Lcom/google/android/talk/videochat/NetworkConnectionManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/talk/videochat/NetworkConnectionManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/videochat/NetworkConnectionManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/talk/videochat/NetworkConnectionManager;->requestMobileHipriNetwork()V

    return-void
.end method

.method private getRequestHipri()Z
    .locals 1

    .prologue
    .line 73
    monitor-enter p0

    .line 74
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/NetworkConnectionManager;->mRequestHipri:Z

    monitor-exit p0

    return v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 99
    const-string v0, "Talk:videochat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NetConMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method private requestMobileHipriNetwork()V
    .locals 5

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/android/talk/videochat/NetworkConnectionManager;->getRequestHipri()Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/NetworkConnectionManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    const-string v3, "enableHIPRI"

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 88
    .local v0, result:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### requestMobileHipriNetwork: startUsingNetworkFeature, result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/talk/videochat/NetworkConnectionManager;->log(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/google/android/talk/videochat/NetworkConnectionManager;->mMobileHipriRunnable:Lcom/google/android/talk/videochat/NetworkConnectionManager$MobileHipriRunnable;

    if-nez v1, :cond_1

    .line 93
    new-instance v1, Lcom/google/android/talk/videochat/NetworkConnectionManager$MobileHipriRunnable;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/NetworkConnectionManager$MobileHipriRunnable;-><init>(Lcom/google/android/talk/videochat/NetworkConnectionManager;)V

    iput-object v1, p0, Lcom/google/android/talk/videochat/NetworkConnectionManager;->mMobileHipriRunnable:Lcom/google/android/talk/videochat/NetworkConnectionManager$MobileHipriRunnable;

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/google/android/talk/videochat/NetworkConnectionManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/talk/videochat/NetworkConnectionManager;->mMobileHipriRunnable:Lcom/google/android/talk/videochat/NetworkConnectionManager$MobileHipriRunnable;

    const-wide/16 v3, 0x61a8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private setRequestHipri(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/talk/videochat/NetworkConnectionManager;->mRequestHipri:Z

    .line 69
    monitor-exit p0

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public startUsingMobileHipriIfOnMobileNetwork()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 40
    iget-object v2, p0, Lcom/google/android/talk/videochat/NetworkConnectionManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 41
    .local v0, netInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    move v1, v2

    .line 43
    .local v1, type:I
    :goto_0
    sparse-switch v1, :sswitch_data_0

    .line 53
    :cond_0
    :goto_1
    return-void

    .line 41
    .end local v1           #type:I
    :cond_1
    const/4 v2, -0x1

    move v1, v2

    goto :goto_0

    .line 46
    .restart local v1       #type:I
    :sswitch_0
    iget-object v2, p0, Lcom/google/android/talk/videochat/NetworkConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gtalk_use_hipri"

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-direct {p0, v4}, Lcom/google/android/talk/videochat/NetworkConnectionManager;->setRequestHipri(Z)V

    .line 49
    invoke-direct {p0}, Lcom/google/android/talk/videochat/NetworkConnectionManager;->requestMobileHipriNetwork()V

    goto :goto_1

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public stopUsingMobileHipri()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "##### stopUsingMobileHipri: stop request for mobile hipri"

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/NetworkConnectionManager;->log(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/talk/videochat/NetworkConnectionManager;->setRequestHipri(Z)V

    .line 60
    iget-object v0, p0, Lcom/google/android/talk/videochat/NetworkConnectionManager;->mMobileHipriRunnable:Lcom/google/android/talk/videochat/NetworkConnectionManager$MobileHipriRunnable;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/android/talk/videochat/NetworkConnectionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/talk/videochat/NetworkConnectionManager;->mMobileHipriRunnable:Lcom/google/android/talk/videochat/NetworkConnectionManager$MobileHipriRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/videochat/NetworkConnectionManager;->mMobileHipriRunnable:Lcom/google/android/talk/videochat/NetworkConnectionManager$MobileHipriRunnable;

    .line 64
    :cond_0
    return-void
.end method
