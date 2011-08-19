.class Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;
.super Landroid/os/AsyncTask;
.source "BaseLayersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/adapters/BaseLayersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final holder:Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;

.field final rlayer:Lcom/layar/data/layer/ResultLayer;

.field final synthetic this$0:Lcom/layar/adapters/BaseLayersAdapter;


# direct methods
.method public constructor <init>(Lcom/layar/adapters/BaseLayersAdapter;Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;)V
    .locals 1
    .parameter
    .parameter "holder"

    .prologue
    .line 352
    iput-object p1, p0, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->this$0:Lcom/layar/adapters/BaseLayersAdapter;

    .line 349
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 350
    iput-object p2, p0, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->holder:Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;

    .line 351
    iget-object v0, p2, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->rlayer:Lcom/layar/data/layer/ResultLayer;

    iput-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->rlayer:Lcom/layar/data/layer/ResultLayer;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 362
    iget-object v1, p0, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->rlayer:Lcom/layar/data/layer/ResultLayer;

    iget-object v1, v1, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    iget-object v1, v1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    const-string v2, "icon"

    invoke-static {v1, v2, v3}, Lcom/layar/data/ImageCache;->readLayerImage(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 363
    .local v0, icon:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 364
    iget-object v1, p0, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->rlayer:Lcom/layar/data/layer/ResultLayer;

    iget-object v1, v1, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    iget-object v1, v1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    const-string v2, "icon"

    invoke-static {v1, v2, v3}, Lcom/layar/data/ImageCache;->downloadLayerImage(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 367
    :cond_0
    if-nez v0, :cond_1

    .line 368
    iget-object v1, p0, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->rlayer:Lcom/layar/data/layer/ResultLayer;

    iget-object v1, v1, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    iget-object v1, v1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    const-string v2, "icon"

    invoke-static {v1, v2, v4}, Lcom/layar/data/ImageCache;->readLayerImage(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 369
    :cond_1
    if-nez v0, :cond_2

    .line 370
    iget-object v1, p0, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->rlayer:Lcom/layar/data/layer/ResultLayer;

    iget-object v1, v1, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    iget-object v1, v1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    const-string v2, "icon"

    invoke-static {v1, v2, v4}, Lcom/layar/data/ImageCache;->downloadLayerImage(Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 372
    :cond_2
    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 405
    monitor-enter p0

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->this$0:Lcom/layar/adapters/BaseLayersAdapter;

    iget-object v0, v0, Lcom/layar/adapters/BaseLayersAdapter;->helper:Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;

    iget-object v1, p0, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->holder:Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;

    iget-object v1, v1, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->rlayer:Lcom/layar/data/layer/ResultLayer;

    iget-object v1, v1, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    iget-object v1, v1, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->access$1(Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->this$0:Lcom/layar/adapters/BaseLayersAdapter;

    iget v1, v0, Lcom/layar/adapters/BaseLayersAdapter;->iconTaskCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/layar/adapters/BaseLayersAdapter;->iconTaskCount:I

    .line 405
    monitor-exit p0

    .line 409
    return-void

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "icon"

    .prologue
    const/4 v4, 0x1

    .line 377
    iget-object v2, p0, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->rlayer:Lcom/layar/data/layer/ResultLayer;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/layar/data/layer/ResultLayer;->icon:Ljava/lang/ref/SoftReference;

    .line 378
    iget-object v2, p0, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->rlayer:Lcom/layar/data/layer/ResultLayer;

    iput-boolean v4, v2, Lcom/layar/data/layer/ResultLayer;->initialized:Z

    .line 380
    iget-object v2, p0, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->holder:Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;

    iget-object v2, v2, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->rlayer:Lcom/layar/data/layer/ResultLayer;

    iget-object v3, p0, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->rlayer:Lcom/layar/data/layer/ResultLayer;

    if-ne v2, v3, :cond_0

    .line 381
    iget-object v2, p0, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->holder:Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;

    iget-object v2, v2, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->progress:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 382
    if-eqz p1, :cond_0

    .line 383
    iget-object v2, p0, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->holder:Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;

    iget-object v2, v2, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 386
    :cond_0
    monitor-enter p0

    .line 387
    :try_start_0
    iget-object v2, p0, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->this$0:Lcom/layar/adapters/BaseLayersAdapter;

    iget-object v2, v2, Lcom/layar/adapters/BaseLayersAdapter;->helper:Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;

    iget-object v3, p0, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->holder:Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;

    iget-object v3, v3, Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;->rlayer:Lcom/layar/data/layer/ResultLayer;

    iget-object v3, v3, Lcom/layar/data/layer/ResultLayer;->layer:Lcom/layar/data/layer/Layer20;

    iget-object v3, v3, Lcom/layar/data/layer/Layer20;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->access$1(Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;Ljava/lang/String;)V

    .line 388
    iget-object v2, p0, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->this$0:Lcom/layar/adapters/BaseLayersAdapter;

    iget v3, v2, Lcom/layar/adapters/BaseLayersAdapter;->iconTaskCount:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/layar/adapters/BaseLayersAdapter;->iconTaskCount:I

    .line 389
    iget-object v2, p0, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->this$0:Lcom/layar/adapters/BaseLayersAdapter;

    iget-object v2, v2, Lcom/layar/adapters/BaseLayersAdapter;->helper:Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;

    invoke-static {v2}, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->access$2(Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 390
    iget-object v2, p0, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->this$0:Lcom/layar/adapters/BaseLayersAdapter;

    iget v3, v2, Lcom/layar/adapters/BaseLayersAdapter;->iconTaskCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/layar/adapters/BaseLayersAdapter;->iconTaskCount:I

    .line 391
    iget-object v2, p0, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->this$0:Lcom/layar/adapters/BaseLayersAdapter;

    iget-object v2, v2, Lcom/layar/adapters/BaseLayersAdapter;->helper:Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;

    invoke-static {v2}, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->access$3(Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;)Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, layerName:Ljava/lang/String;
    iget-object v2, p0, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->this$0:Lcom/layar/adapters/BaseLayersAdapter;

    iget-object v2, v2, Lcom/layar/adapters/BaseLayersAdapter;->helper:Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;

    invoke-static {v2, v1}, Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;->access$4(Lcom/layar/adapters/BaseLayersAdapter$ViewHolderHelper;Ljava/lang/String;)Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;

    move-result-object v0

    .line 393
    .local v0, holder:Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;
    iget-object v2, p0, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->this$0:Lcom/layar/adapters/BaseLayersAdapter;

    new-instance v3, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;

    iget-object v4, p0, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->this$0:Lcom/layar/adapters/BaseLayersAdapter;

    invoke-direct {v3, v4, v0}, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;-><init>(Lcom/layar/adapters/BaseLayersAdapter;Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;)V

    iput-object v3, v2, Lcom/layar/adapters/BaseLayersAdapter;->mIconLoadTask:Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;

    .line 395
    iget-object v2, p0, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->this$0:Lcom/layar/adapters/BaseLayersAdapter;

    iget-object v2, v2, Lcom/layar/adapters/BaseLayersAdapter;->mIconLoadTask:Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 386
    .end local v0           #holder:Lcom/layar/adapters/BaseLayersAdapter$ViewHolder;
    .end local v1           #layerName:Ljava/lang/String;
    :goto_0
    monitor-exit p0

    .line 400
    return-void

    .line 397
    :cond_1
    iget-object v2, p0, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->this$0:Lcom/layar/adapters/BaseLayersAdapter;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/layar/adapters/BaseLayersAdapter;->mIconLoadTask:Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;

    goto :goto_0

    .line 386
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/layar/adapters/BaseLayersAdapter$GetIconTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 356
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 358
    return-void
.end method
