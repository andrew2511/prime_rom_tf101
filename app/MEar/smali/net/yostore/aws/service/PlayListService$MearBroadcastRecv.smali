.class public Lnet/yostore/aws/service/PlayListService$MearBroadcastRecv;
.super Landroid/content/BroadcastReceiver;
.source "PlayListService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/service/PlayListService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MearBroadcastRecv"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/service/PlayListService;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/service/PlayListService;)V
    .locals 0
    .parameter

    .prologue
    .line 759
    iput-object p1, p0, Lnet/yostore/aws/service/PlayListService$MearBroadcastRecv;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 762
    const-string v1, "PlayListService"

    const-string v2, "MearBroadcastRecv-onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 766
    const-string v1, "noConnectivity"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 767
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 769
    .local v0, ni:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 771
    :cond_0
    iget-object v1, p0, Lnet/yostore/aws/service/PlayListService$MearBroadcastRecv;->this$0:Lnet/yostore/aws/service/PlayListService;

    invoke-virtual {v1}, Lnet/yostore/aws/service/PlayListService;->pauseDownload()V

    .line 772
    iget-object v1, p0, Lnet/yostore/aws/service/PlayListService$MearBroadcastRecv;->this$0:Lnet/yostore/aws/service/PlayListService;

    const v2, 0x7f02004e

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lnet/yostore/aws/service/PlayListService;->updateNotification(ILjava/lang/CharSequence;)V

    .line 775
    .end local v0           #ni:Landroid/net/NetworkInfo;
    :cond_1
    return-void
.end method
