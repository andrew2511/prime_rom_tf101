.class Lcom/layar/data/layer/LayerHandler$1;
.super Ljava/lang/Object;
.source "LayerHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/data/layer/LayerHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/data/layer/LayerHandler;


# direct methods
.method constructor <init>(Lcom/layar/data/layer/LayerHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/data/layer/LayerHandler$1;->this$0:Lcom/layar/data/layer/LayerHandler;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 236
    iget-object v3, p0, Lcom/layar/data/layer/LayerHandler$1;->this$0:Lcom/layar/data/layer/LayerHandler;

    iget-object v3, v3, Lcom/layar/data/layer/LayerHandler;->mLayerManager:Lcom/layar/data/layer/LayerManager;

    iget-object v3, v3, Lcom/layar/data/layer/LayerManager;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v3}, Lcom/layar/util/SensorHelper;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    .line 237
    .local v1, current:Landroid/location/Location;
    if-nez v1, :cond_1

    .line 238
    iget-object v3, p0, Lcom/layar/data/layer/LayerHandler$1;->this$0:Lcom/layar/data/layer/LayerHandler;

    iget-object v3, v3, Lcom/layar/data/layer/LayerHandler;->mStatus:Lcom/layar/util/StatusHelper;

    iget-object v4, p0, Lcom/layar/data/layer/LayerHandler$1;->this$0:Lcom/layar/data/layer/LayerHandler;

    iget-object v4, v4, Lcom/layar/data/layer/LayerHandler;->mContext:Landroid/content/Context;

    const v5, 0x7f0900f8

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/layar/util/StatusHelper;->setStatus(Ljava/lang/CharSequence;)V

    .line 239
    const-wide/16 v3, 0xbb8

    invoke-static {p0, v3, v4}, Lcom/layar/App;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v3, p0, Lcom/layar/data/layer/LayerHandler$1;->this$0:Lcom/layar/data/layer/LayerHandler;

    invoke-static {v3}, Lcom/layar/data/layer/LayerHandler;->access$1(Lcom/layar/data/layer/LayerHandler;)Lcom/layar/data/layer/LayerHandler$GetPOITask;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 244
    iget-object v3, p0, Lcom/layar/data/layer/LayerHandler$1;->this$0:Lcom/layar/data/layer/LayerHandler;

    invoke-static {v3}, Lcom/layar/data/layer/LayerHandler;->access$1(Lcom/layar/data/layer/LayerHandler;)Lcom/layar/data/layer/LayerHandler$GetPOITask;

    move-result-object v3

    invoke-virtual {v3}, Lcom/layar/data/layer/LayerHandler$GetPOITask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v3, v4, :cond_0

    .line 249
    :cond_2
    iget-object v3, p0, Lcom/layar/data/layer/LayerHandler$1;->this$0:Lcom/layar/data/layer/LayerHandler;

    invoke-virtual {v3}, Lcom/layar/data/layer/LayerHandler;->getCurrentLayer()Lcom/layar/data/layer/Layer20;

    move-result-object v2

    .line 250
    .local v2, layer:Lcom/layar/data/layer/Layer20;
    if-eqz v2, :cond_3

    .line 257
    iget-boolean v3, v2, Lcom/layar/data/layer/Layer20;->replaceFilters:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v2, Lcom/layar/data/layer/Layer20;->showFilterOnLaunch:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/layar/data/layer/LayerHandler$1;->this$0:Lcom/layar/data/layer/LayerHandler;

    iget-boolean v3, v3, Lcom/layar/data/layer/LayerHandler;->mustShowFilters:Z

    if-eqz v3, :cond_4

    .line 258
    iget-object v3, p0, Lcom/layar/data/layer/LayerHandler$1;->this$0:Lcom/layar/data/layer/LayerHandler;

    iget-object v3, v3, Lcom/layar/data/layer/LayerHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/layar/data/layer/LayerHelper;->showAuthPage(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V

    .line 281
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/layar/data/layer/LayerHandler$1;->this$0:Lcom/layar/data/layer/LayerHandler;

    new-instance v4, Lcom/layar/data/layer/LayerHandler$GetPOITask;

    iget-object v5, p0, Lcom/layar/data/layer/LayerHandler$1;->this$0:Lcom/layar/data/layer/LayerHandler;

    iget-object v6, p0, Lcom/layar/data/layer/LayerHandler$1;->this$0:Lcom/layar/data/layer/LayerHandler;

    invoke-static {v6}, Lcom/layar/data/layer/LayerHandler;->access$2(Lcom/layar/data/layer/LayerHandler;)Lcom/layar/data/DownloadListener;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/layar/data/layer/LayerHandler$GetPOITask;-><init>(Lcom/layar/data/layer/LayerHandler;Lcom/layar/data/DownloadListener;)V

    invoke-static {v3, v4}, Lcom/layar/data/layer/LayerHandler;->access$3(Lcom/layar/data/layer/LayerHandler;Lcom/layar/data/layer/LayerHandler$GetPOITask;)V

    .line 282
    iget-object v3, p0, Lcom/layar/data/layer/LayerHandler$1;->this$0:Lcom/layar/data/layer/LayerHandler;

    invoke-static {v3}, Lcom/layar/data/layer/LayerHandler;->access$1(Lcom/layar/data/layer/LayerHandler;)Lcom/layar/data/layer/LayerHandler$GetPOITask;

    move-result-object v3

    iget-object v4, p0, Lcom/layar/data/layer/LayerHandler$1;->this$0:Lcom/layar/data/layer/LayerHandler;

    invoke-static {v4}, Lcom/layar/data/layer/LayerHandler;->access$4(Lcom/layar/data/layer/LayerHandler;)Lcom/layar/data/layer/LayerRefresher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/layar/data/layer/LayerRefresher;->getQueryString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/layar/data/layer/LayerHandler$GetPOITask;->setQueryParams(Ljava/lang/String;)V

    .line 283
    iget-object v3, p0, Lcom/layar/data/layer/LayerHandler$1;->this$0:Lcom/layar/data/layer/LayerHandler;

    invoke-static {v3}, Lcom/layar/data/layer/LayerHandler;->access$4(Lcom/layar/data/layer/LayerHandler;)Lcom/layar/data/layer/LayerRefresher;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/layar/data/layer/LayerRefresher;->setQueryString(Ljava/lang/String;)V

    .line 284
    iget-object v3, p0, Lcom/layar/data/layer/LayerHandler$1;->this$0:Lcom/layar/data/layer/LayerHandler;

    invoke-static {v3}, Lcom/layar/data/layer/LayerHandler;->access$1(Lcom/layar/data/layer/LayerHandler;)Lcom/layar/data/layer/LayerHandler$GetPOITask;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/layar/data/layer/LayerHandler$GetPOITask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 259
    :cond_4
    iget-boolean v3, v2, Lcom/layar/data/layer/Layer20;->authRequired:Z

    if-eqz v3, :cond_3

    .line 260
    invoke-static {}, Lcom/layar/util/CookieStore;->get()Lcom/layar/util/CookieStore;

    move-result-object v3

    iget-object v4, v2, Lcom/layar/data/layer/Layer20;->poiDomainURL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/layar/util/CookieStore;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, cookies:Ljava/lang/String;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 262
    :cond_5
    iget-boolean v3, v2, Lcom/layar/data/layer/Layer20;->triedAuthOnce:Z

    if-eqz v3, :cond_6

    .line 266
    iget-object v3, p0, Lcom/layar/data/layer/LayerHandler$1;->this$0:Lcom/layar/data/layer/LayerHandler;

    iget-object v3, v3, Lcom/layar/data/layer/LayerHandler;->mStatus:Lcom/layar/util/StatusHelper;

    iget-object v4, p0, Lcom/layar/data/layer/LayerHandler$1;->this$0:Lcom/layar/data/layer/LayerHandler;

    iget-object v4, v4, Lcom/layar/data/layer/LayerHandler;->mContext:Landroid/content/Context;

    .line 267
    const v5, 0x7f0900f9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 266
    invoke-virtual {v3, v4}, Lcom/layar/util/StatusHelper;->setStatus(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 272
    :cond_6
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/layar/data/layer/Layer20;->triedAuthOnce:Z

    .line 273
    iget-object v3, p0, Lcom/layar/data/layer/LayerHandler$1;->this$0:Lcom/layar/data/layer/LayerHandler;

    iget-object v3, v3, Lcom/layar/data/layer/LayerHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/layar/data/layer/LayerHelper;->showAuthPage(Landroid/content/Context;Lcom/layar/data/layer/Layer20;)V

    goto/16 :goto_0
.end method
