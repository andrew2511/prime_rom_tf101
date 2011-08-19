.class Lcom/layar/Main$LoadLayerTask;
.super Landroid/os/AsyncTask;
.source "Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadLayerTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/Main$LoadLayerTask$OpenLayer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Lcom/layar/data/layer/LayerManager$LayerResponse;",
        ">;"
    }
.end annotation


# instance fields
.field layername:Ljava/lang/String;

.field newVersion:Lcom/layar/util/UpdateHelper$Version;

.field final synthetic this$0:Lcom/layar/Main;

.field uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Lcom/layar/Main;)V
    .locals 1
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/layar/Main$LoadLayerTask;->this$0:Lcom/layar/Main;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/Main$LoadLayerTask;->newVersion:Lcom/layar/util/UpdateHelper$Version;

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/Main;Lcom/layar/Main$LoadLayerTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/layar/Main$LoadLayerTask;-><init>(Lcom/layar/Main;)V

    return-void
.end method

.method static synthetic access$3(Lcom/layar/Main$LoadLayerTask;)Lcom/layar/Main;
    .locals 1
    .parameter

    .prologue
    .line 308
    iget-object v0, p0, Lcom/layar/Main$LoadLayerTask;->this$0:Lcom/layar/Main;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Lcom/layar/data/layer/LayerManager$LayerResponse;
    .locals 5
    .parameter "params"

    .prologue
    .line 320
    iget-object v2, p0, Lcom/layar/Main$LoadLayerTask;->this$0:Lcom/layar/Main;

    invoke-static {v2}, Lcom/layar/Main;->access$4(Lcom/layar/Main;)Lcom/layar/util/UpdateHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layar/util/UpdateHelper;->shouldCheck()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/layar/Main$LoadLayerTask;->this$0:Lcom/layar/Main;

    invoke-static {v2}, Lcom/layar/Main;->access$4(Lcom/layar/Main;)Lcom/layar/util/UpdateHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/layar/util/UpdateHelper;->checkUpdate()Lcom/layar/util/UpdateHelper$Version;

    move-result-object v2

    iput-object v2, p0, Lcom/layar/Main$LoadLayerTask;->newVersion:Lcom/layar/util/UpdateHelper$Version;

    .line 323
    :cond_0
    const/4 v2, 0x0

    aget-object v2, p1, v2

    iput-object v2, p0, Lcom/layar/Main$LoadLayerTask;->uri:Landroid/net/Uri;

    .line 324
    iget-object v2, p0, Lcom/layar/Main$LoadLayerTask;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, scheme:Ljava/lang/String;
    const-string v2, "layar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "layarshare"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 326
    :cond_1
    iget-object v2, p0, Lcom/layar/Main$LoadLayerTask;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/layar/Main$LoadLayerTask;->layername:Ljava/lang/String;

    .line 327
    iget-object v2, p0, Lcom/layar/Main$LoadLayerTask;->uri:Landroid/net/Uri;

    const-string v3, "action"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 330
    iget-object v2, p0, Lcom/layar/Main$LoadLayerTask;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 331
    .local v1, uriBuilder:Landroid/net/Uri$Builder;
    const-string v2, "action"

    const-string v3, "refresh"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 332
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/layar/Main$LoadLayerTask;->uri:Landroid/net/Uri;

    .line 337
    .end local v1           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/layar/Main$LoadLayerTask;->layername:Ljava/lang/String;

    const-string v3, "/"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/layar/Main$LoadLayerTask;->layername:Ljava/lang/String;

    .line 338
    iget-object v2, p0, Lcom/layar/Main$LoadLayerTask;->this$0:Lcom/layar/Main;

    invoke-static {v2}, Lcom/layar/Main;->access$5(Lcom/layar/Main;)Lcom/layar/data/layer/LayerManager;

    move-result-object v2

    iget-object v3, p0, Lcom/layar/Main$LoadLayerTask;->layername:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/layar/data/layer/LayerManager;->getLayer(Ljava/lang/String;)Lcom/layar/data/layer/LayerManager$LayerResponse;

    move-result-object v2

    return-object v2

    .line 335
    :cond_3
    iget-object v2, p0, Lcom/layar/Main$LoadLayerTask;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/open/"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/layar/Main$LoadLayerTask;->layername:Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/layar/Main$LoadLayerTask;->doInBackground([Landroid/net/Uri;)Lcom/layar/data/layer/LayerManager$LayerResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/layar/data/layer/LayerManager$LayerResponse;)V
    .locals 8
    .parameter "result"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 343
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 344
    iget-object v1, p1, Lcom/layar/data/layer/LayerManager$LayerResponse;->layer:Lcom/layar/data/layer/Layer20;

    .line 346
    .local v1, layer:Lcom/layar/data/layer/Layer20;
    if-nez v1, :cond_0

    .line 347
    iget-object v2, p0, Lcom/layar/Main$LoadLayerTask;->this$0:Lcom/layar/Main;

    const v3, 0x7f0900ea

    invoke-virtual {v2, v3}, Lcom/layar/Main;->updateMessageText(I)V

    .line 350
    iget-object v2, p0, Lcom/layar/Main$LoadLayerTask;->this$0:Lcom/layar/Main;

    invoke-static {v2}, Lcom/layar/Main;->access$6(Lcom/layar/Main;)V

    .line 389
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v2, p0, Lcom/layar/Main$LoadLayerTask;->this$0:Lcom/layar/Main;

    const v3, 0x7f0900f4

    invoke-virtual {v2, v3}, Lcom/layar/Main;->updateMessageText(I)V

    .line 353
    iget-object v2, p0, Lcom/layar/Main$LoadLayerTask;->this$0:Lcom/layar/Main;

    invoke-static {v2}, Lcom/layar/Main;->access$5(Lcom/layar/Main;)Lcom/layar/data/layer/LayerManager;

    move-result-object v2

    iget-object v2, v2, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/layar/Main$LoadLayerTask;->uri:Landroid/net/Uri;

    invoke-virtual {v2, v1, v6, v3, v4}, Lcom/layar/data/layer/LayerHandler;->setCurrentLayer(Lcom/layar/data/layer/Layer20;ZLjava/lang/String;Landroid/net/Uri;)V

    .line 354
    iget-object v2, p0, Lcom/layar/Main$LoadLayerTask;->uri:Landroid/net/Uri;

    const-string v3, "action"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, "refresh"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    iget-object v2, p0, Lcom/layar/Main$LoadLayerTask;->this$0:Lcom/layar/Main;

    invoke-static {v2}, Lcom/layar/Main;->access$5(Lcom/layar/Main;)Lcom/layar/data/layer/LayerManager;

    move-result-object v2

    iget-object v2, v2, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    iget-object v3, p0, Lcom/layar/Main$LoadLayerTask;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/layar/data/layer/LayerHandler;->forcePOIUpdate(ZLjava/lang/String;)V

    .line 360
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/layar/Main$LoadLayerTask;->newVersion:Lcom/layar/util/UpdateHelper$Version;

    if-eqz v2, :cond_3

    .line 362
    iget-object v2, p0, Lcom/layar/Main$LoadLayerTask;->this$0:Lcom/layar/Main;

    new-instance v3, Lcom/layar/ui/SmartDialog$Builder;

    iget-object v4, p0, Lcom/layar/Main$LoadLayerTask;->this$0:Lcom/layar/Main;

    iget-object v5, p0, Lcom/layar/Main$LoadLayerTask;->newVersion:Lcom/layar/util/UpdateHelper$Version;

    iget-object v5, v5, Lcom/layar/util/UpdateHelper$Version;->features:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v7}, Lcom/layar/ui/SmartDialog$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 363
    invoke-virtual {v3, v6}, Lcom/layar/ui/SmartDialog$Builder;->setRotation(I)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v3

    .line 364
    const v4, 0x7f0900db

    invoke-virtual {v3, v4}, Lcom/layar/ui/SmartDialog$Builder;->setTitle(I)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v3

    .line 365
    const v4, 0x7f0900dc

    new-instance v5, Lcom/layar/Main$LoadLayerTask$1;

    invoke-direct {v5, p0}, Lcom/layar/Main$LoadLayerTask$1;-><init>(Lcom/layar/Main$LoadLayerTask;)V

    invoke-virtual {v3, v4, v5}, Lcom/layar/ui/SmartDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v3

    .line 376
    const v4, 0x7f0900dd

    new-instance v5, Lcom/layar/Main$LoadLayerTask$2;

    invoke-direct {v5, p0, v1}, Lcom/layar/Main$LoadLayerTask$2;-><init>(Lcom/layar/Main$LoadLayerTask;Lcom/layar/data/layer/Layer20;)V

    invoke-virtual {v3, v4, v5}, Lcom/layar/ui/SmartDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v3

    .line 383
    invoke-virtual {v3}, Lcom/layar/ui/SmartDialog$Builder;->build()Lcom/layar/ui/SmartDialog;

    move-result-object v3

    .line 362
    invoke-static {v2, v3}, Lcom/layar/Main;->access$7(Lcom/layar/Main;Landroid/app/Dialog;)V

    .line 384
    iget-object v2, p0, Lcom/layar/Main$LoadLayerTask;->this$0:Lcom/layar/Main;

    invoke-static {v2}, Lcom/layar/Main;->access$8(Lcom/layar/Main;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 357
    :cond_2
    if-eqz v0, :cond_1

    const-string v2, "update"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 358
    iget-object v2, p0, Lcom/layar/Main$LoadLayerTask;->this$0:Lcom/layar/Main;

    invoke-static {v2}, Lcom/layar/Main;->access$5(Lcom/layar/Main;)Lcom/layar/data/layer/LayerManager;

    move-result-object v2

    iget-object v2, v2, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    iget-object v3, p0, Lcom/layar/Main$LoadLayerTask;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Lcom/layar/data/layer/LayerHandler;->forcePOIUpdate(ZLjava/lang/String;)V

    goto :goto_1

    .line 386
    :cond_3
    invoke-virtual {p0, v1}, Lcom/layar/Main$LoadLayerTask;->start(Lcom/layar/data/layer/Layer20;)V

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/layar/data/layer/LayerManager$LayerResponse;

    invoke-virtual {p0, p1}, Lcom/layar/Main$LoadLayerTask;->onPostExecute(Lcom/layar/data/layer/LayerManager$LayerResponse;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/layar/Main$LoadLayerTask;->this$0:Lcom/layar/Main;

    const v1, 0x7f090091

    invoke-virtual {v0, v1}, Lcom/layar/Main;->updateMessageText(I)V

    .line 316
    return-void
.end method

.method public start(Lcom/layar/data/layer/Layer20;)V
    .locals 4
    .parameter "layer"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 392
    iget-object v0, p0, Lcom/layar/Main$LoadLayerTask;->this$0:Lcom/layar/Main;

    new-instance v1, Lcom/layar/Main$LoadLayerTask$OpenLayer;

    invoke-direct {v1, p0, v3}, Lcom/layar/Main$LoadLayerTask$OpenLayer;-><init>(Lcom/layar/Main$LoadLayerTask;Lcom/layar/Main$LoadLayerTask$OpenLayer;)V

    invoke-static {v0, p1, v3, v1}, Lcom/layar/data/layer/LayerHelper;->checkStatus(Landroid/content/Context;Lcom/layar/data/layer/Layer20;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/layar/Main$LoadLayerTask;->this$0:Lcom/layar/Main;

    invoke-static {v0, v2}, Lcom/layar/Main;->access$9(Lcom/layar/Main;Z)V

    .line 407
    :goto_0
    return-void

    .line 396
    :cond_0
    invoke-static {p1}, Lcom/layar/data/layer/LayerHelper;->isFree(Lcom/layar/data/layer/Layer20;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/layar/Main$LoadLayerTask;->this$0:Lcom/layar/Main;

    invoke-static {v0}, Lcom/layar/Main;->access$10(Lcom/layar/Main;)V

    goto :goto_0

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/layar/Main$LoadLayerTask;->this$0:Lcom/layar/Main;

    invoke-static {v0}, Lcom/layar/Main;->access$5(Lcom/layar/Main;)Lcom/layar/data/layer/LayerManager;

    move-result-object v0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    iget-boolean v0, v0, Lcom/layar/data/layer/LayerHandler;->mustShowFilters:Z

    if-eqz v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/layar/Main$LoadLayerTask;->this$0:Lcom/layar/Main;

    invoke-static {v0, p1, v2}, Lcom/layar/data/layer/LayerHelper;->onSettingsButtonClicked(Landroid/content/Context;Lcom/layar/data/layer/Layer20;Z)V

    .line 402
    iget-object v0, p0, Lcom/layar/Main$LoadLayerTask;->this$0:Lcom/layar/Main;

    invoke-static {v0}, Lcom/layar/Main;->access$5(Lcom/layar/Main;)Lcom/layar/data/layer/LayerManager;

    move-result-object v0

    iget-object v0, v0, Lcom/layar/data/layer/LayerManager;->layerHandler:Lcom/layar/data/layer/LayerHandler;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/layar/data/layer/LayerHandler;->mustShowFilters:Z

    .line 403
    iget-object v0, p0, Lcom/layar/Main$LoadLayerTask;->this$0:Lcom/layar/Main;

    invoke-virtual {v0}, Lcom/layar/Main;->finish()V

    goto :goto_0

    .line 405
    :cond_2
    iget-object v0, p0, Lcom/layar/Main$LoadLayerTask;->this$0:Lcom/layar/Main;

    invoke-static {v0}, Lcom/layar/Main;->access$3(Lcom/layar/Main;)V

    goto :goto_0
.end method
