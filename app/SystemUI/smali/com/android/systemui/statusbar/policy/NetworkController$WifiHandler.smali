.class Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;
.super Landroid/os/Handler;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .parameter

    .prologue
    .line 556
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 559
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 578
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 561
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v1, -0x2

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 565
    :cond_1
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "Failed to connect to wifi"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 569
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    if-eq v0, v1, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    .line 571
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto :goto_0

    .line 559
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
