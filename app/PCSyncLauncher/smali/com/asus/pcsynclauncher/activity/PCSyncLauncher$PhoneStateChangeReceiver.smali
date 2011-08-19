.class Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PhoneStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PCSyncLauncher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneStateChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;


# direct methods
.method constructor <init>(Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    iput-object p1, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PhoneStateChangeReceiver;->this$0:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 384
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, extraState:Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PhoneStateChangeReceiver;->this$0:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;

    invoke-static {v1}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->access$200(Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;)Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    iget-object v2, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PhoneStateChangeReceiver;->this$0:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;

    invoke-static {v2}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->access$200(Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;)Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 388
    iget-object v1, p0, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PhoneStateChangeReceiver;->this$0:Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;

    invoke-static {v1}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;->access$200(Lcom/asus/pcsynclauncher/activity/PCSyncLauncher;)Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;->access$300(Lcom/asus/pcsynclauncher/activity/PCSyncLauncher$PCSyncConnectionTask;)V

    .line 392
    .end local v0           #extraState:Ljava/lang/String;
    :cond_0
    return-void
.end method
