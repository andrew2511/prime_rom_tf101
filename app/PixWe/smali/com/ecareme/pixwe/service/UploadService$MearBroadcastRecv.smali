.class public Lcom/ecareme/pixwe/service/UploadService$MearBroadcastRecv;
.super Landroid/content/BroadcastReceiver;
.source "UploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/service/UploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MearBroadcastRecv"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ecareme/pixwe/service/UploadService;


# direct methods
.method public constructor <init>(Lcom/ecareme/pixwe/service/UploadService;)V
    .locals 0
    .parameter

    .prologue
    .line 806
    iput-object p1, p0, Lcom/ecareme/pixwe/service/UploadService$MearBroadcastRecv;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 810
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 811
    const-string v2, "noConnectivity"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 812
    .local v0, down:Z
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 814
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 816
    sget-boolean v2, Lcom/ecareme/pixwe/service/UploadService;->isNeedToDel:Z

    if-eqz v2, :cond_0

    .line 817
    iget-object v2, p0, Lcom/ecareme/pixwe/service/UploadService$MearBroadcastRecv;->this$0:Lcom/ecareme/pixwe/service/UploadService;

    invoke-static {v2}, Lcom/ecareme/pixwe/service/UploadService;->access$8(Lcom/ecareme/pixwe/service/UploadService;)V

    .line 820
    .end local v0           #down:Z
    .end local v1           #ni:Landroid/net/NetworkInfo;
    :cond_0
    return-void
.end method
