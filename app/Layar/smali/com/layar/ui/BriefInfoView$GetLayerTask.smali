.class Lcom/layar/ui/BriefInfoView$GetLayerTask;
.super Landroid/os/AsyncTask;
.source "BriefInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/ui/BriefInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetLayerTask"
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
.field private mAction:Lcom/layar/data/PoiAction;

.field private final mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/layar/ui/BriefInfoView;


# direct methods
.method public constructor <init>(Lcom/layar/ui/BriefInfoView;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "name"

    .prologue
    .line 477
    iput-object p1, p0, Lcom/layar/ui/BriefInfoView$GetLayerTask;->this$0:Lcom/layar/ui/BriefInfoView;

    .line 475
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 473
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/ui/BriefInfoView$GetLayerTask;->mAction:Lcom/layar/data/PoiAction;

    .line 476
    iput-object p2, p0, Lcom/layar/ui/BriefInfoView$GetLayerTask;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/layar/data/layer/Layer20;
    .locals 2
    .parameter "params"

    .prologue
    .line 486
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView$GetLayerTask;->this$0:Lcom/layar/ui/BriefInfoView;

    invoke-virtual {v0}, Lcom/layar/ui/BriefInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/layar/data/layer/LayerManager;->getLayerManager(Landroid/content/Context;)Lcom/layar/data/layer/LayerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/ui/BriefInfoView$GetLayerTask;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerManager;->getLayer(Ljava/lang/String;)Lcom/layar/data/layer/LayerManager$LayerResponse;

    move-result-object v0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager$LayerResponse;->layer:Lcom/layar/data/layer/Layer20;

    return-object v0
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/ui/BriefInfoView$GetLayerTask;->doInBackground([Ljava/lang/Void;)Lcom/layar/data/layer/Layer20;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/layar/data/layer/Layer20;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 490
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 491
    invoke-virtual {p0}, Lcom/layar/ui/BriefInfoView$GetLayerTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    :goto_0
    return-void

    .line 494
    :cond_0
    monitor-enter p0

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView$GetLayerTask;->this$0:Lcom/layar/ui/BriefInfoView;

    invoke-static {v0}, Lcom/layar/ui/BriefInfoView;->access$2(Lcom/layar/ui/BriefInfoView;)Lcom/layar/ui/SmartDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView$GetLayerTask;->this$0:Lcom/layar/ui/BriefInfoView;

    invoke-static {v0}, Lcom/layar/ui/BriefInfoView;->access$2(Lcom/layar/ui/BriefInfoView;)Lcom/layar/ui/SmartDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/layar/ui/SmartDialog;->dismiss()V

    .line 497
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView$GetLayerTask;->this$0:Lcom/layar/ui/BriefInfoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/layar/ui/BriefInfoView;->access$3(Lcom/layar/ui/BriefInfoView;Lcom/layar/ui/SmartDialog;)V

    .line 500
    :cond_1
    if-eqz p1, :cond_2

    .line 501
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView$GetLayerTask;->this$0:Lcom/layar/ui/BriefInfoView;

    invoke-virtual {v0, p1}, Lcom/layar/ui/BriefInfoView;->initLayer(Lcom/layar/data/layer/Layer20;)V

    .line 502
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView$GetLayerTask;->mAction:Lcom/layar/data/PoiAction;

    if-eqz v0, :cond_2

    .line 503
    invoke-static {}, Lcom/layar/ui/BriefInfoView;->access$4()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAction"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v0, p0, Lcom/layar/ui/BriefInfoView$GetLayerTask;->this$0:Lcom/layar/ui/BriefInfoView;

    invoke-static {v0}, Lcom/layar/ui/BriefInfoView;->access$5(Lcom/layar/ui/BriefInfoView;)Lcom/layar/ui/ActionsMenu$ActionsMenuListener;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/ui/BriefInfoView$GetLayerTask;->mAction:Lcom/layar/data/PoiAction;

    iget-object v2, p0, Lcom/layar/ui/BriefInfoView$GetLayerTask;->this$0:Lcom/layar/ui/BriefInfoView;

    invoke-static {v2}, Lcom/layar/ui/BriefInfoView;->access$6(Lcom/layar/ui/BriefInfoView;)Lcom/layar/data/layer/Layer20;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/layar/ui/ActionsMenu$ActionsMenuListener;->onAction(Lcom/layar/data/PoiAction;Lcom/layar/data/layer/Layer20;)V

    .line 494
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/layar/data/layer/Layer20;

    invoke-virtual {p0, p1}, Lcom/layar/ui/BriefInfoView$GetLayerTask;->onPostExecute(Lcom/layar/data/layer/Layer20;)V

    return-void
.end method

.method public setAction(Lcom/layar/data/PoiAction;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 480
    monitor-enter p0

    .line 481
    :try_start_0
    iput-object p1, p0, Lcom/layar/ui/BriefInfoView$GetLayerTask;->mAction:Lcom/layar/data/PoiAction;

    .line 480
    monitor-exit p0

    .line 483
    return-void

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
