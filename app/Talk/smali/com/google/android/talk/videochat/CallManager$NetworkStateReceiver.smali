.class Lcom/google/android/talk/videochat/CallManager$NetworkStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateReceiver"
.end annotation


# instance fields
.field private mConnected:Z

.field final synthetic this$0:Lcom/google/android/talk/videochat/CallManager;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/videochat/CallManager;)V
    .locals 1
    .parameter

    .prologue
    .line 1788
    iput-object p1, p0, Lcom/google/android/talk/videochat/CallManager$NetworkStateReceiver;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1790
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/CallManager$NetworkStateReceiver;->mConnected:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/videochat/CallManager;Lcom/google/android/talk/videochat/CallManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1788
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/CallManager$NetworkStateReceiver;-><init>(Lcom/google/android/talk/videochat/CallManager;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/talk/videochat/CallManager$NetworkStateReceiver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1788
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/CallManager$NetworkStateReceiver;->mConnected:Z

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1794
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 1796
    .local v0, info:Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    .line 1825
    :cond_0
    :goto_0
    return-void

    .line 1800
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_2

    .line 1801
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/talk/videochat/CallManager$NetworkStateReceiver;->mConnected:Z

    goto :goto_0

    .line 1803
    :cond_2
    const-string v1, "talk:videochat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new connection state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    iget-boolean v1, p0, Lcom/google/android/talk/videochat/CallManager$NetworkStateReceiver;->mConnected:Z

    if-eqz v1, :cond_0

    .line 1806
    const-string v1, "talk:videochat"

    const-string v2, "We lost our connection. Give it some time to recover then  terminate the call if it can\'t."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/talk/videochat/CallManager$NetworkStateReceiver;->mConnected:Z

    .line 1811
    iget-object v1, p0, Lcom/google/android/talk/videochat/CallManager$NetworkStateReceiver;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v1}, Lcom/google/android/talk/videochat/CallManager;->access$1400(Lcom/google/android/talk/videochat/CallManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/talk/videochat/CallManager$NetworkStateReceiver$1;

    invoke-direct {v2, p0}, Lcom/google/android/talk/videochat/CallManager$NetworkStateReceiver$1;-><init>(Lcom/google/android/talk/videochat/CallManager$NetworkStateReceiver;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
