.class Lcom/layar/data/layer/LayerHandler$RestoreTask;
.super Landroid/os/AsyncTask;
.source "LayerHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/data/layer/LayerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/layar/data/layer/Layer20;",
        ">;"
    }
.end annotation


# instance fields
.field private mLayerName:Ljava/lang/String;

.field final synthetic this$0:Lcom/layar/data/layer/LayerHandler;


# direct methods
.method public constructor <init>(Lcom/layar/data/layer/LayerHandler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "layerName"

    .prologue
    .line 992
    iput-object p1, p0, Lcom/layar/data/layer/LayerHandler$RestoreTask;->this$0:Lcom/layar/data/layer/LayerHandler;

    .line 990
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 991
    iput-object p2, p0, Lcom/layar/data/layer/LayerHandler$RestoreTask;->mLayerName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/layar/data/layer/Layer20;
    .locals 3
    .parameter "params"

    .prologue
    .line 995
    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler$RestoreTask;->mLayerName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 996
    const/4 v1, 0x0

    .line 1000
    :goto_0
    return-object v1

    .line 999
    :cond_0
    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler$RestoreTask;->this$0:Lcom/layar/data/layer/LayerHandler;

    iget-object v1, v1, Lcom/layar/data/layer/LayerHandler;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v2, p0, Lcom/layar/data/layer/LayerHandler$RestoreTask;->mLayerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/layar/data/layer/LayerManager;->getLayer(Ljava/lang/String;)Lcom/layar/data/layer/LayerManager$LayerResponse;

    move-result-object v0

    .line 1000
    .local v0, response:Lcom/layar/data/layer/LayerManager$LayerResponse;
    iget-object v1, v0, Lcom/layar/data/layer/LayerManager$LayerResponse;->layer:Lcom/layar/data/layer/Layer20;

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/data/layer/LayerHandler$RestoreTask;->doInBackground([Ljava/lang/Void;)Lcom/layar/data/layer/Layer20;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 1014
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1015
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler$RestoreTask;->this$0:Lcom/layar/data/layer/LayerHandler;

    invoke-static {v0}, Lcom/layar/data/layer/LayerHandler;->access$7(Lcom/layar/data/layer/LayerHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1016
    :try_start_0
    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler$RestoreTask;->this$0:Lcom/layar/data/layer/LayerHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/layar/data/layer/LayerHandler;->access$8(Lcom/layar/data/layer/LayerHandler;Lcom/layar/data/layer/LayerHandler$RestoreTask;)V

    .line 1015
    monitor-exit v0

    .line 1018
    return-void

    .line 1015
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onPostExecute(Lcom/layar/data/layer/Layer20;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1004
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1005
    iget-object v0, p0, Lcom/layar/data/layer/LayerHandler$RestoreTask;->this$0:Lcom/layar/data/layer/LayerHandler;

    invoke-static {v0}, Lcom/layar/data/layer/LayerHandler;->access$7(Lcom/layar/data/layer/LayerHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1006
    if-eqz p1, :cond_0

    .line 1007
    :try_start_0
    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler$RestoreTask;->this$0:Lcom/layar/data/layer/LayerHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/layar/data/layer/LayerHandler;->setCurrentLayer(Lcom/layar/data/layer/Layer20;Z)V

    .line 1008
    :cond_0
    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler$RestoreTask;->this$0:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v1}, Lcom/layar/data/layer/LayerHandler;->notifyLayersChanged()V

    .line 1009
    iget-object v1, p0, Lcom/layar/data/layer/LayerHandler$RestoreTask;->this$0:Lcom/layar/data/layer/LayerHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/layar/data/layer/LayerHandler;->access$8(Lcom/layar/data/layer/LayerHandler;Lcom/layar/data/layer/LayerHandler$RestoreTask;)V

    .line 1005
    monitor-exit v0

    .line 1011
    return-void

    .line 1005
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/layar/data/layer/Layer20;

    invoke-virtual {p0, p1}, Lcom/layar/data/layer/LayerHandler$RestoreTask;->onPostExecute(Lcom/layar/data/layer/Layer20;)V

    return-void
.end method
