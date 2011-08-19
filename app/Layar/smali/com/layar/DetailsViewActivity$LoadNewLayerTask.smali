.class Lcom/layar/DetailsViewActivity$LoadNewLayerTask;
.super Landroid/os/AsyncTask;
.source "DetailsViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/DetailsViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadNewLayerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Lcom/layar/data/layer/LayerManager$LayerResponse;",
        ">;",
        "Landroid/content/DialogInterface$OnCancelListener;"
    }
.end annotation


# instance fields
.field dialog:Landroid/app/ProgressDialog;

.field layerManager:Lcom/layar/data/layer/LayerManager;

.field final synthetic this$0:Lcom/layar/DetailsViewActivity;

.field uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Lcom/layar/DetailsViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/layar/DetailsViewActivity$LoadNewLayerTask;->this$0:Lcom/layar/DetailsViewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/DetailsViewActivity;Lcom/layar/DetailsViewActivity$LoadNewLayerTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/layar/DetailsViewActivity$LoadNewLayerTask;-><init>(Lcom/layar/DetailsViewActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Lcom/layar/data/layer/LayerManager$LayerResponse;
    .locals 2
    .parameter "args"

    .prologue
    .line 374
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/layar/DetailsViewActivity$LoadNewLayerTask;->uri:Landroid/net/Uri;

    .line 375
    iget-object v0, p0, Lcom/layar/DetailsViewActivity$LoadNewLayerTask;->this$0:Lcom/layar/DetailsViewActivity;

    invoke-static {v0}, Lcom/layar/data/layer/LayerManager;->getLayerManager(Landroid/content/Context;)Lcom/layar/data/layer/LayerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/DetailsViewActivity$LoadNewLayerTask;->layerManager:Lcom/layar/data/layer/LayerManager;

    .line 377
    iget-object v0, p0, Lcom/layar/DetailsViewActivity$LoadNewLayerTask;->layerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v1, p0, Lcom/layar/DetailsViewActivity$LoadNewLayerTask;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/layar/data/layer/LayerManager;->getLayer(Ljava/lang/String;)Lcom/layar/data/layer/LayerManager$LayerResponse;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/layar/DetailsViewActivity$LoadNewLayerTask;->doInBackground([Landroid/net/Uri;)Lcom/layar/data/layer/LayerManager$LayerResponse;

    move-result-object v0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 408
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/layar/DetailsViewActivity$LoadNewLayerTask;->cancel(Z)Z

    .line 409
    return-void
.end method

.method protected onPostExecute(Lcom/layar/data/layer/LayerManager$LayerResponse;)V
    .locals 6
    .parameter "response"

    .prologue
    const/4 v5, 0x1

    .line 391
    iget-object v1, p0, Lcom/layar/DetailsViewActivity$LoadNewLayerTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 392
    iget v1, p1, Lcom/layar/data/layer/LayerManager$LayerResponse;->responseCode:I

    if-nez v1, :cond_1

    .line 393
    iget-object v0, p1, Lcom/layar/data/layer/LayerManager$LayerResponse;->layer:Lcom/layar/data/layer/Layer20;

    .line 394
    .local v0, result:Lcom/layar/data/layer/Layer20;
    if-eqz v0, :cond_0

    .line 395
    iget-object v1, p0, Lcom/layar/DetailsViewActivity$LoadNewLayerTask;->layerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v1, v1, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/layar/DetailsViewActivity$LoadNewLayerTask;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v5, v2, v3}, Lcom/layar/data/layer/LayerHandler;->setCurrentLayer(Lcom/layar/data/layer/Layer20;ZLjava/lang/String;Landroid/net/Uri;)V

    .line 398
    iget-object v1, p0, Lcom/layar/DetailsViewActivity$LoadNewLayerTask;->this$0:Lcom/layar/DetailsViewActivity;

    invoke-static {v1}, Lcom/layar/data/layer/LayerHelper;->openCurrentLayer(Landroid/content/Context;)V

    .line 399
    iget-object v1, p0, Lcom/layar/DetailsViewActivity$LoadNewLayerTask;->this$0:Lcom/layar/DetailsViewActivity;

    invoke-virtual {v1}, Lcom/layar/DetailsViewActivity;->finish()V

    .line 404
    .end local v0           #result:Lcom/layar/data/layer/Layer20;
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/layar/DetailsViewActivity$LoadNewLayerTask;->this$0:Lcom/layar/DetailsViewActivity;

    iget-object v1, v1, Lcom/layar/DetailsViewActivity;->helper:Lcom/layar/ActivityHelper;

    iget v2, p1, Lcom/layar/data/layer/LayerManager$LayerResponse;->responseCode:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/layar/ActivityHelper;->downloadErrorHandling(IZIZ)Z

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/layar/data/layer/LayerManager$LayerResponse;

    invoke-virtual {p0, p1}, Lcom/layar/DetailsViewActivity$LoadNewLayerTask;->onPostExecute(Lcom/layar/data/layer/LayerManager$LayerResponse;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 382
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/layar/DetailsViewActivity$LoadNewLayerTask;->this$0:Lcom/layar/DetailsViewActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/DetailsViewActivity$LoadNewLayerTask;->dialog:Landroid/app/ProgressDialog;

    .line 383
    iget-object v0, p0, Lcom/layar/DetailsViewActivity$LoadNewLayerTask;->dialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/layar/DetailsViewActivity$LoadNewLayerTask;->this$0:Lcom/layar/DetailsViewActivity;

    invoke-virtual {v1}, Lcom/layar/DetailsViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v0, p0, Lcom/layar/DetailsViewActivity$LoadNewLayerTask;->dialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 385
    iget-object v0, p0, Lcom/layar/DetailsViewActivity$LoadNewLayerTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 386
    iget-object v0, p0, Lcom/layar/DetailsViewActivity$LoadNewLayerTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 387
    return-void
.end method
