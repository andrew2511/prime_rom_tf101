.class public Lnet/yostore/aws/service/PlayerService$MearBroadcastRecv;
.super Landroid/content/BroadcastReceiver;
.source "PlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/service/PlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MearBroadcastRecv"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/service/PlayerService;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/service/PlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 1105
    iput-object p1, p0, Lnet/yostore/aws/service/PlayerService$MearBroadcastRecv;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1109
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$MearBroadcastRecv;->this$0:Lnet/yostore/aws/service/PlayerService;

    invoke-static {v2}, Lnet/yostore/aws/service/PlayerService;->access$8(Lnet/yostore/aws/service/PlayerService;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$MearBroadcastRecv;->this$0:Lnet/yostore/aws/service/PlayerService;

    iget-boolean v2, v2, Lnet/yostore/aws/service/PlayerService;->phonePlayerSW:Z

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1110
    :cond_0
    const-string v2, "noConnectivity"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1111
    .local v0, down:Z
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 1113
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1114
    :cond_1
    iget-object v2, p0, Lnet/yostore/aws/service/PlayerService$MearBroadcastRecv;->this$0:Lnet/yostore/aws/service/PlayerService;

    const-string v3, "Please turn on the network!"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1116
    .end local v0           #down:Z
    .end local v1           #ni:Landroid/net/NetworkInfo;
    :cond_2
    return-void
.end method
