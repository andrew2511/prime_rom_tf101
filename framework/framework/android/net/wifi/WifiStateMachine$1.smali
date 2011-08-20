.class Landroid/net/wifi/WifiStateMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .registers 2
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$1;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 542
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$1;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$000(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 543
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 544
    const-string v0, "WifiStateMachine"

    const-string v1, "mAdHocWakeLock.acquire(60000);"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_15
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$1;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAdHocWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 546
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$1;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v1, 0x1005c

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 548
    :cond_29
    return-void
.end method
