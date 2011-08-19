.class Lcom/google/android/talk/videochat/CallManager$WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateReceiver"
.end annotation


# instance fields
.field private mConnected:Z

.field final synthetic this$0:Lcom/google/android/talk/videochat/CallManager;


# direct methods
.method private constructor <init>(Lcom/google/android/talk/videochat/CallManager;)V
    .locals 1
    .parameter

    .prologue
    .line 1828
    iput-object p1, p0, Lcom/google/android/talk/videochat/CallManager$WifiStateReceiver;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1830
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/CallManager$WifiStateReceiver;->mConnected:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/talk/videochat/CallManager;Lcom/google/android/talk/videochat/CallManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1828
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/CallManager$WifiStateReceiver;-><init>(Lcom/google/android/talk/videochat/CallManager;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/android/talk/videochat/CallManager$WifiStateReceiver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1828
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/CallManager$WifiStateReceiver;->mConnected:Z

    return v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1834
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1835
    invoke-static {p1}, Lcom/google/android/talk/videochat/WifiPolicyUtils;->wifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1836
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/CallManager$WifiStateReceiver;->mConnected:Z

    .line 1837
    const-string v0, "talk:videochat"

    const-string v1, "wifi connected."

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    :cond_0
    :goto_0
    return-void

    .line 1840
    :cond_1
    const-string v0, "talk:videochat"

    const-string v1, "lost wifi connection"

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/CallManager$WifiStateReceiver;->mConnected:Z

    if-eqz v0, :cond_0

    .line 1843
    const-string v0, "talk:videochat"

    const-string v1, "We lost our wifi connection. Give it some time to recover then  terminate the call if it can\'t."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/CallManager$WifiStateReceiver;->mConnected:Z

    .line 1848
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager$WifiStateReceiver;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v0}, Lcom/google/android/talk/videochat/CallManager;->access$1400(Lcom/google/android/talk/videochat/CallManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/talk/videochat/CallManager$WifiStateReceiver$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/CallManager$WifiStateReceiver$1;-><init>(Lcom/google/android/talk/videochat/CallManager$WifiStateReceiver;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
