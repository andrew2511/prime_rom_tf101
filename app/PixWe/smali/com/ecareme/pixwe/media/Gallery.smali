.class public final Lcom/ecareme/pixwe/media/Gallery;
.super Landroid/app/Activity;
.source "Gallery.java"


# static fields
.field private static final CHECK_STORAGE:I = 0x0

.field private static final GET_PICASA_ACCOUNT_STATUS:I = 0x1

.field private static final HANDLE_INTENT:I = 0x1

.field private static final NUM_STORAGE_CHECKS:I = 0x19

.field public static final REVIEW_ACTION:Ljava/lang/String; = "com.ecareme.pixwe.media.action.REVIEW"

.field private static final TAG:Ljava/lang/String; = "Gallery"

.field private static final UPDATE_PICASA_ACCOUNT_STATUS:I = 0x2


# instance fields
.field private final handler:Landroid/os/Handler;

.field private mAccountsEnabled:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mApp:Lcom/ecareme/pixwe/app/App;

.field private mDockSlideshow:Z

.field private mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

.field private mImageManagerHasStorageAfterDelay:Z

.field private mNumRetries:I

.field private mPicasaAccountThread:Landroid/os/HandlerThread;

.field private mPicasaHandler:Landroid/os/Handler;

.field private mRenderView:Lcom/ecareme/pixwe/media/RenderView;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    iput-object v2, p0, Lcom/ecareme/pixwe/media/Gallery;->mApp:Lcom/ecareme/pixwe/app/App;

    .line 48
    iput-object v2, p0, Lcom/ecareme/pixwe/media/Gallery;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mAccountsEnabled:Ljava/util/HashMap;

    .line 52
    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mDockSlideshow:Z

    .line 54
    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mImageManagerHasStorageAfterDelay:Z

    .line 55
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PicasaAccountMonitor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mPicasaAccountThread:Landroid/os/HandlerThread;

    .line 56
    iput-object v2, p0, Lcom/ecareme/pixwe/media/Gallery;->mPicasaHandler:Landroid/os/Handler;

    .line 65
    new-instance v0, Lcom/ecareme/pixwe/media/Gallery$1;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/media/Gallery$1;-><init>(Lcom/ecareme/pixwe/media/Gallery;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->handler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/media/Gallery;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Gallery;->checkStorage()V

    return-void
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/media/Gallery;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Gallery;->initializeDataSource()V

    return-void
.end method

.method private checkStorage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 80
    iget v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mNumRetries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mNumRetries:I

    .line 81
    invoke-static {}, Lcom/ecareme/pixwe/media/ImageManager;->hasStorage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mImageManagerHasStorageAfterDelay:Z

    .line 82
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mImageManagerHasStorageAfterDelay:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mNumRetries:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_1

    .line 83
    iget v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mNumRetries:I

    if-ne v0, v3, :cond_0

    .line 84
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/ecareme/pixwe/app/App;->showToast(Ljava/lang/String;I)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private initializeDataSource()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 332
    iget-boolean v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mImageManagerHasStorageAfterDelay:Z

    .line 334
    .local v1, hasStorage:Z
    new-instance v5, Lcom/ecareme/pixwe/media/LocalDataSource;

    sget-object v10, Lcom/ecareme/pixwe/media/LocalDataSource;->URI_ALL_MEDIA:Ljava/lang/String;

    invoke-direct {v5, p0, v10, v12}, Lcom/ecareme/pixwe/media/LocalDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 335
    .local v5, localDataSource:Lcom/ecareme/pixwe/media/LocalDataSource;
    new-instance v0, Lcom/ecareme/pixwe/media/ConcatenatedDataSource;

    const/4 v10, 0x0

    invoke-direct {v0, v5, v10}, Lcom/ecareme/pixwe/media/ConcatenatedDataSource;-><init>(Lcom/ecareme/pixwe/media/DataSource;Lcom/ecareme/pixwe/media/DataSource;)V

    .line 338
    .local v0, combinedDataSource:Lcom/ecareme/pixwe/media/ConcatenatedDataSource;
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Gallery;->isPickIntent()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Gallery;->isViewIntent()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Gallery;->isReviewIntent()Z

    move-result v10

    if-nez v10, :cond_1

    .line 339
    invoke-virtual {v5, v13, v13}, Lcom/ecareme/pixwe/media/LocalDataSource;->setMimeFilter(ZZ)V

    .line 340
    if-eqz v1, :cond_0

    .line 341
    iget-object v10, p0, Lcom/ecareme/pixwe/media/Gallery;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v10, v0}, Lcom/ecareme/pixwe/media/GridLayer;->setDataSource(Lcom/ecareme/pixwe/media/DataSource;)V

    .line 398
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/ecareme/pixwe/media/Gallery;->mPicasaHandler:Landroid/os/Handler;

    invoke-virtual {v10, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 399
    return-void

    .line 345
    :cond_1
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Gallery;->isPickIntent()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 346
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 347
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_0

    .line 348
    invoke-virtual {v4, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 349
    .local v8, type:Ljava/lang/String;
    if-nez v8, :cond_2

    .line 351
    const-string v8, "image/*"

    .line 353
    :cond_2
    invoke-direct {p0, v8}, Lcom/ecareme/pixwe/media/Gallery;->isImageType(Ljava/lang/String;)Z

    move-result v2

    .line 354
    .local v2, includeImages:Z
    invoke-direct {p0, v8}, Lcom/ecareme/pixwe/media/Gallery;->isVideoType(Ljava/lang/String;)Z

    move-result v3

    .line 355
    .local v3, includeVideos:Z
    invoke-virtual {v5, v2, v3}, Lcom/ecareme/pixwe/media/LocalDataSource;->setMimeFilter(ZZ)V

    .line 356
    if-eqz v2, :cond_4

    .line 357
    if-eqz v1, :cond_3

    .line 358
    iget-object v10, p0, Lcom/ecareme/pixwe/media/Gallery;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v10, v0}, Lcom/ecareme/pixwe/media/GridLayer;->setDataSource(Lcom/ecareme/pixwe/media/DataSource;)V

    .line 365
    :cond_3
    :goto_1
    iget-object v10, p0, Lcom/ecareme/pixwe/media/Gallery;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v10, v13}, Lcom/ecareme/pixwe/media/GridLayer;->setPickIntent(Z)V

    .line 366
    if-eqz v1, :cond_0

    .line 367
    iget-object v10, p0, Lcom/ecareme/pixwe/media/Gallery;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f060017

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v13}, Lcom/ecareme/pixwe/app/App;->showToast(Ljava/lang/String;I)V

    goto :goto_0

    .line 363
    :cond_4
    iget-object v10, p0, Lcom/ecareme/pixwe/media/Gallery;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v10, v5}, Lcom/ecareme/pixwe/media/GridLayer;->setDataSource(Lcom/ecareme/pixwe/media/DataSource;)V

    goto :goto_1

    .line 371
    .end local v2           #includeImages:Z
    .end local v3           #includeVideos:Z
    .end local v4           #intent:Landroid/content/Intent;
    .end local v8           #type:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 372
    .restart local v4       #intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 373
    .local v9, uri:Landroid/net/Uri;
    const-string v10, "slideshow"

    invoke-virtual {v4, v10, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 374
    .local v7, slideshow:Z
    new-instance v6, Lcom/ecareme/pixwe/media/LocalDataSource;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, p0, v10, v13}, Lcom/ecareme/pixwe/media/LocalDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 376
    .local v6, singleDataSource:Lcom/ecareme/pixwe/media/LocalDataSource;
    invoke-virtual {v6, v13, v13}, Lcom/ecareme/pixwe/media/LocalDataSource;->setMimeFilter(ZZ)V

    .line 384
    iget-object v10, p0, Lcom/ecareme/pixwe/media/Gallery;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/Gallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v9}, Lcom/ecareme/pixwe/media/Utils;->getBucketNameFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v13, v11}, Lcom/ecareme/pixwe/media/GridLayer;->setViewIntent(ZLjava/lang/String;)V

    .line 386
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Gallery;->isReviewIntent()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 387
    iget-object v10, p0, Lcom/ecareme/pixwe/media/Gallery;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v10, v13}, Lcom/ecareme/pixwe/media/GridLayer;->setEnterSelectionMode(Z)V

    .line 390
    :cond_6
    invoke-virtual {v6}, Lcom/ecareme/pixwe/media/LocalDataSource;->isSingleImage()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 391
    iget-object v10, p0, Lcom/ecareme/pixwe/media/Gallery;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v10, v12}, Lcom/ecareme/pixwe/media/GridLayer;->setSingleImage(Z)V

    goto/16 :goto_0

    .line 392
    :cond_7
    if-eqz v7, :cond_0

    .line 393
    iget-object v10, p0, Lcom/ecareme/pixwe/media/Gallery;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v10, v13}, Lcom/ecareme/pixwe/media/GridLayer;->setSingleImage(Z)V

    .line 394
    iget-object v10, p0, Lcom/ecareme/pixwe/media/Gallery;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v10}, Lcom/ecareme/pixwe/media/GridLayer;->startSlideshow()V

    goto/16 :goto_0
.end method

.method private isImageType(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 293
    const-string v0, "*/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vnd.android.cursor.dir/image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "image/*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isPickIntent()Z
    .locals 2

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isReviewIntent()Z
    .locals 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.ecareme.pixwe.media.action.REVIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isVideoType(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 297
    const-string v0, "*/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vnd.android.cursor.dir/video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "video/*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isViewIntent()Z
    .locals 2

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private sendInitialMessage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 144
    iput v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mNumRetries:I

    .line 145
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 146
    .local v0, checkStorage:Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 147
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Gallery;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 148
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 302
    sparse-switch p1, :sswitch_data_0

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 304
    :sswitch_0
    if-ne p2, v1, :cond_0

    .line 305
    invoke-virtual {p0, p2, p3}, Lcom/ecareme/pixwe/media/Gallery;->setResult(ILandroid/content/Intent;)V

    .line 306
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/Gallery;->finish()V

    goto :goto_0

    .line 313
    :sswitch_1
    if-ne p2, v1, :cond_0

    .line 314
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, contentUri:Ljava/lang/String;
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 316
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v1, v0}, Lcom/ecareme/pixwe/media/GridLayer;->focusItem(Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x64 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 259
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 260
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridLayer;->markDirty(I)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/RenderView;->requestRender()V

    .line 265
    :cond_1
    const-string v0, "Gallery"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    new-instance v0, Lcom/ecareme/pixwe/app/App;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/app/App;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mApp:Lcom/ecareme/pixwe/app/App;

    .line 96
    invoke-static {}, Lcom/ecareme/pixwe/media/ImageManager;->hasStorage()Z

    move-result v7

    .line 97
    .local v7, imageManagerHasStorage:Z
    const/4 v9, 0x0

    .line 98
    .local v9, slideshowIntent:Z
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Gallery;->isViewIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 100
    .local v6, extras:Landroid/os/Bundle;
    if-eqz v6, :cond_0

    .line 101
    const-string v0, "slideshow"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 104
    .end local v6           #extras:Landroid/os/Bundle;
    :cond_0
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Gallery;->isViewIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/Gallery;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v9, :cond_2

    .line 105
    if-nez v7, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/Gallery;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 107
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/Gallery;->finish()V

    .line 141
    :goto_0
    return-void

    .line 109
    :cond_1
    new-instance v8, Lcom/ecareme/pixwe/wallpaper/Slideshow;

    invoke-direct {v8, p0}, Lcom/ecareme/pixwe/wallpaper/Slideshow;-><init>(Landroid/content/Context;)V

    .line 110
    .local v8, slideshow:Lcom/ecareme/pixwe/wallpaper/Slideshow;
    new-instance v0, Lcom/ecareme/pixwe/wallpaper/RandomDataSource;

    invoke-direct {v0}, Lcom/ecareme/pixwe/wallpaper/RandomDataSource;-><init>()V

    invoke-virtual {v8, v0}, Lcom/ecareme/pixwe/wallpaper/Slideshow;->setDataSource(Lcom/ecareme/pixwe/wallpaper/Slideshow$DataSource;)V

    .line 111
    invoke-virtual {p0, v8}, Lcom/ecareme/pixwe/media/Gallery;->setContentView(Landroid/view/View;)V

    .line 112
    iput-boolean v2, p0, Lcom/ecareme/pixwe/media/Gallery;->mDockSlideshow:Z

    goto :goto_0

    .line 116
    .end local v8           #slideshow:Lcom/ecareme/pixwe/wallpaper/Slideshow;
    :cond_2
    new-instance v0, Lcom/ecareme/pixwe/media/RenderView;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/media/RenderView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    .line 117
    new-instance v0, Lcom/ecareme/pixwe/media/GridLayer;

    const/high16 v1, 0x42c0

    sget v2, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v2

    float-to-int v2, v1

    const/high16 v1, 0x4290

    sget v3, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v3

    float-to-int v3, v1

    new-instance v4, Lcom/ecareme/pixwe/media/GridLayoutInterface;

    const/4 v1, 0x4

    invoke-direct {v4, v1}, Lcom/ecareme/pixwe/media/GridLayoutInterface;-><init>(I)V

    .line 118
    iget-object v5, p0, Lcom/ecareme/pixwe/media/Gallery;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ecareme/pixwe/media/GridLayer;-><init>(Landroid/content/Context;IILcom/ecareme/pixwe/media/LayoutInterface;Lcom/ecareme/pixwe/media/RenderView;)V

    .line 117
    iput-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    .line 119
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->setRootLayer(Lcom/ecareme/pixwe/media/RootLayer;)V

    .line 120
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/media/Gallery;->setContentView(Landroid/view/View;)V

    .line 122
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mPicasaAccountThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 123
    new-instance v0, Lcom/ecareme/pixwe/media/Gallery$2;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mPicasaAccountThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ecareme/pixwe/media/Gallery$2;-><init>(Lcom/ecareme/pixwe/media/Gallery;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mPicasaHandler:Landroid/os/Handler;

    .line 138
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Gallery;->sendInitialMessage()V

    .line 140
    const-string v0, "Gallery"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 230
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/media/Gallery;->setContentView(I)V

    .line 233
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Gallery;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 234
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Gallery;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mPicasaAccountThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 237
    iput-object v3, p0, Lcom/ecareme/pixwe/media/Gallery;->mPicasaAccountThread:Landroid/os/HandlerThread;

    .line 238
    iput-object v3, p0, Lcom/ecareme/pixwe/media/Gallery;->mPicasaHandler:Landroid/os/Handler;

    .line 240
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    if-eqz v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridLayer;->getDataSource()Lcom/ecareme/pixwe/media/DataSource;

    move-result-object v0

    .line 242
    .local v0, dataSource:Lcom/ecareme/pixwe/media/DataSource;
    if-eqz v0, :cond_0

    .line 243
    invoke-interface {v0}, Lcom/ecareme/pixwe/media/DataSource;->shutdown()V

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridLayer;->shutdown()V

    .line 247
    .end local v0           #dataSource:Lcom/ecareme/pixwe/media/DataSource;
    :cond_1
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    if-eqz v1, :cond_2

    .line 248
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/RenderView;->shutdown()V

    .line 249
    iput-object v3, p0, Lcom/ecareme/pixwe/media/Gallery;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    .line 251
    :cond_2
    iput-object v3, p0, Lcom/ecareme/pixwe/media/Gallery;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    .line 252
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/app/App;->shutdown()V

    .line 253
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 254
    const-string v1, "Gallery"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    invoke-virtual {v0, p1, p2}, Lcom/ecareme/pixwe/media/RenderView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 273
    :goto_0
    return v0

    .line 271
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 273
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/RenderView;->handleLowMemory()V

    .line 329
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/media/Gallery;->setIntent(Landroid/content/Intent;)V

    .line 153
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 154
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Gallery;->sendInitialMessage()V

    .line 157
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 198
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/RenderView;->onPause()V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 201
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 204
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 207
    :cond_2
    sget-object v0, Lcom/ecareme/pixwe/media/LocalDataSource;->sThumbnailCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/DiskCache;->flush()V

    .line 208
    sget-object v0, Lcom/ecareme/pixwe/media/LocalDataSource;->sThumbnailCacheVideo:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/DiskCache;->flush()V

    .line 210
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mPicasaHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mPicasaHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 212
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mPicasaHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 214
    :cond_3
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/app/App;->onPause()V

    .line 215
    return-void
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 162
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 172
    iget-boolean v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mDockSlideshow:Z

    if-eqz v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 178
    :cond_0
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/media/Gallery;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 179
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0xa

    const-string v2, "GridView.Slideshow.All"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 180
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 193
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_1
    :goto_0
    return-void

    .line 183
    :cond_2
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    if-eqz v1, :cond_3

    .line 184
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/RenderView;->onResume()V

    .line 186
    :cond_3
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/app/App;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mPicasaHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4

    .line 188
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mPicasaHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 189
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mPicasaHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 191
    :cond_4
    iget-object v1, p0, Lcom/ecareme/pixwe/media/Gallery;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/app/App;->onResume()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 167
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 220
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/ecareme/pixwe/media/Gallery;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/GridLayer;->stop()V

    .line 224
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/ecareme/pixwe/cache/CacheService;->startCache(Landroid/content/Context;Z)V

    .line 225
    return-void
.end method
