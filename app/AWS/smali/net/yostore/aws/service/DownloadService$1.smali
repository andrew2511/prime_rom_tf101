.class Lnet/yostore/aws/service/DownloadService$1;
.super Lnet/yostore/aws/service/DownloadServiceInterface$Stub;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/service/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/service/DownloadService;


# direct methods
.method constructor <init>(Lnet/yostore/aws/service/DownloadService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/service/DownloadService$1;->this$0:Lnet/yostore/aws/service/DownloadService;

    .line 126
    invoke-direct {p0}, Lnet/yostore/aws/service/DownloadServiceInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addDownloadItem(Lnet/yostore/aws/sqlite/entity/DownloadItem;)Z
    .locals 1
    .parameter "di"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService$1;->this$0:Lnet/yostore/aws/service/DownloadService;

    invoke-static {v0}, Lnet/yostore/aws/service/DownloadService;->access$1(Lnet/yostore/aws/service/DownloadService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/yostore/aws/sqlite/helper/DownloadQueueHelper;->insertDownloadItem(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/DownloadItem;)V

    .line 160
    const/4 v0, 0x1

    return v0
.end method

.method public addDownloadItemList(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/sqlite/entity/DownloadItem;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 146
    .local p1, diList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/sqlite/entity/DownloadItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 148
    .local v1, items:Ljava/util/Iterator;,"Ljava/util/Iterator<Lnet/yostore/aws/sqlite/entity/DownloadItem;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    const/4 v2, 0x1

    return v2

    .line 149
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/yostore/aws/sqlite/entity/DownloadItem;

    .line 150
    .local v0, di:Lnet/yostore/aws/sqlite/entity/DownloadItem;
    iget-object v2, p0, Lnet/yostore/aws/service/DownloadService$1;->this$0:Lnet/yostore/aws/service/DownloadService;

    invoke-static {v2}, Lnet/yostore/aws/service/DownloadService;->access$1(Lnet/yostore/aws/service/DownloadService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lnet/yostore/aws/sqlite/helper/DownloadQueueHelper;->insertDownloadItem(Landroid/content/Context;Lnet/yostore/aws/sqlite/entity/DownloadItem;)V

    goto :goto_0
.end method

.method public clearNotification()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService$1;->this$0:Lnet/yostore/aws/service/DownloadService;

    invoke-static {v0}, Lnet/yostore/aws/service/DownloadService;->access$0(Lnet/yostore/aws/service/DownloadService;)Landroid/app/NotificationManager;

    move-result-object v0

    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 133
    return-void
.end method

.method public pauseDownload()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService$1;->this$0:Lnet/yostore/aws/service/DownloadService;

    invoke-static {v0}, Lnet/yostore/aws/service/DownloadService;->access$4(Lnet/yostore/aws/service/DownloadService;)V

    .line 185
    return-void
.end method

.method public resetService()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService$1;->this$0:Lnet/yostore/aws/service/DownloadService;

    invoke-virtual {v0}, Lnet/yostore/aws/service/DownloadService;->onDestroy()V

    .line 140
    return-void
.end method

.method public restartDownload()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService$1;->this$0:Lnet/yostore/aws/service/DownloadService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/yostore/aws/service/DownloadService;->access$3(Lnet/yostore/aws/service/DownloadService;Z)V

    .line 176
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService$1;->this$0:Lnet/yostore/aws/service/DownloadService;

    invoke-static {v0}, Lnet/yostore/aws/service/DownloadService;->access$4(Lnet/yostore/aws/service/DownloadService;)V

    .line 178
    return-void
.end method

.method public startDownload()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 167
    sget-boolean v0, Lnet/yostore/aws/service/DownloadService;->isDownLoading:Z

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lnet/yostore/aws/service/DownloadService$1;->this$0:Lnet/yostore/aws/service/DownloadService;

    invoke-static {v0}, Lnet/yostore/aws/service/DownloadService;->access$2(Lnet/yostore/aws/service/DownloadService;)V

    .line 169
    :cond_0
    return-void
.end method
