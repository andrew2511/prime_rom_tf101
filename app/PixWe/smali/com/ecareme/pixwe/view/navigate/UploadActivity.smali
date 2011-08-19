.class public Lcom/ecareme/pixwe/view/navigate/UploadActivity;
.super Landroid/app/Activity;
.source "UploadActivity.java"


# static fields
.field private static final CHECK_STORAGE:I = 0x0

.field private static final GET_PICASA_ACCOUNT_STATUS:I = 0x1

.field private static final HANDLE_INTENT:I = 0x1

.field private static final NUM_STORAGE_CHECKS:I = 0x19

.field public static final REVIEW_ACTION:Ljava/lang/String; = "com.ecareme.pixwe.action.REVIEW"

.field private static final TAG:Ljava/lang/String; = "Gallery"

.field private static final UPDATE_PICASA_ACCOUNT_STATUS:I = 0x2


# instance fields
.field private final handler:Landroid/os/Handler;

.field private mApp:Lcom/ecareme/pixwe/app/App;

.field private mDockSlideshow:Z

.field private mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

.field private mImageManagerHasStorageAfterDelay:Z

.field private mNumRetries:I

.field private mRenderView:Lcom/ecareme/pixwe/media/RenderView;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mApp:Lcom/ecareme/pixwe/app/App;

    .line 45
    iput-object v1, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    .line 48
    iput-boolean v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mDockSlideshow:Z

    .line 50
    iput-boolean v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mImageManagerHasStorageAfterDelay:Z

    .line 59
    new-instance v0, Lcom/ecareme/pixwe/view/navigate/UploadActivity$1;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity$1;-><init>(Lcom/ecareme/pixwe/view/navigate/UploadActivity;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->handler:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/view/navigate/UploadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->checkStorage()V

    return-void
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/view/navigate/UploadActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->initializeDataSource()V

    return-void
.end method

.method private checkStorage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 74
    iget v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mNumRetries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mNumRetries:I

    .line 75
    invoke-static {}, Lcom/ecareme/pixwe/media/ImageManager;->hasStorage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mImageManagerHasStorageAfterDelay:Z

    .line 76
    iget-boolean v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mImageManagerHasStorageAfterDelay:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mNumRetries:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_1

    .line 77
    iget v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mNumRetries:I

    if-ne v0, v3, :cond_0

    .line 78
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/ecareme/pixwe/app/App;->showToast(Ljava/lang/String;I)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private initializeDataSource()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 308
    iget-boolean v1, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mImageManagerHasStorageAfterDelay:Z

    .line 310
    .local v1, hasStorage:Z
    new-instance v5, Lcom/ecareme/pixwe/media/LocalDataSource;

    sget-object v10, Lcom/ecareme/pixwe/media/LocalDataSource;->URI_ALL_MEDIA:Ljava/lang/String;

    invoke-direct {v5, p0, v10, v12}, Lcom/ecareme/pixwe/media/LocalDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 311
    .local v5, localDataSource:Lcom/ecareme/pixwe/media/LocalDataSource;
    new-instance v0, Lcom/ecareme/pixwe/media/ConcatenatedDataSource;

    const/4 v10, 0x0

    invoke-direct {v0, v5, v10}, Lcom/ecareme/pixwe/media/ConcatenatedDataSource;-><init>(Lcom/ecareme/pixwe/media/DataSource;Lcom/ecareme/pixwe/media/DataSource;)V

    .line 314
    .local v0, combinedDataSource:Lcom/ecareme/pixwe/media/ConcatenatedDataSource;
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->isPickIntent()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-direct {p0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->isViewIntent()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-direct {p0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->isReviewIntent()Z

    move-result v10

    if-nez v10, :cond_1

    .line 315
    invoke-virtual {v5, v13, v13}, Lcom/ecareme/pixwe/media/LocalDataSource;->setMimeFilter(ZZ)V

    .line 316
    if-eqz v1, :cond_0

    .line 317
    iget-object v10, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v10, v0}, Lcom/ecareme/pixwe/media/GridLayer;->setDataSource(Lcom/ecareme/pixwe/media/DataSource;)V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->isPickIntent()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 322
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 323
    .local v4, intent:Landroid/content/Intent;
    if-eqz v4, :cond_0

    .line 324
    invoke-virtual {v4, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 325
    .local v8, type:Ljava/lang/String;
    if-nez v8, :cond_2

    .line 327
    const-string v8, "image/*"

    .line 329
    :cond_2
    invoke-direct {p0, v8}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->isImageType(Ljava/lang/String;)Z

    move-result v2

    .line 330
    .local v2, includeImages:Z
    invoke-direct {p0, v8}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->isVideoType(Ljava/lang/String;)Z

    move-result v3

    .line 331
    .local v3, includeVideos:Z
    invoke-virtual {v5, v2, v3}, Lcom/ecareme/pixwe/media/LocalDataSource;->setMimeFilter(ZZ)V

    .line 332
    if-eqz v2, :cond_4

    .line 333
    if-eqz v1, :cond_3

    .line 334
    iget-object v10, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v10, v0}, Lcom/ecareme/pixwe/media/GridLayer;->setDataSource(Lcom/ecareme/pixwe/media/DataSource;)V

    .line 341
    :cond_3
    :goto_1
    iget-object v10, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v10, v13}, Lcom/ecareme/pixwe/media/GridLayer;->setPickIntent(Z)V

    .line 342
    if-eqz v1, :cond_0

    .line 343
    iget-object v10, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f060017

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v13}, Lcom/ecareme/pixwe/app/App;->showToast(Ljava/lang/String;I)V

    goto :goto_0

    .line 339
    :cond_4
    iget-object v10, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v10, v5}, Lcom/ecareme/pixwe/media/GridLayer;->setDataSource(Lcom/ecareme/pixwe/media/DataSource;)V

    goto :goto_1

    .line 348
    .end local v2           #includeImages:Z
    .end local v3           #includeVideos:Z
    .end local v4           #intent:Landroid/content/Intent;
    .end local v8           #type:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 349
    .restart local v4       #intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 350
    .local v9, uri:Landroid/net/Uri;
    const-string v10, "slideshow"

    invoke-virtual {v4, v10, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 351
    .local v7, slideshow:Z
    new-instance v6, Lcom/ecareme/pixwe/media/LocalDataSource;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, p0, v10, v13}, Lcom/ecareme/pixwe/media/LocalDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 353
    .local v6, singleDataSource:Lcom/ecareme/pixwe/media/LocalDataSource;
    invoke-virtual {v6, v13, v13}, Lcom/ecareme/pixwe/media/LocalDataSource;->setMimeFilter(ZZ)V

    .line 362
    iget-object v10, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v9}, Lcom/ecareme/pixwe/media/Utils;->getBucketNameFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v13, v11}, Lcom/ecareme/pixwe/media/GridLayer;->setViewIntent(ZLjava/lang/String;)V

    .line 364
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->isReviewIntent()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 365
    iget-object v10, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v10, v13}, Lcom/ecareme/pixwe/media/GridLayer;->setEnterSelectionMode(Z)V

    .line 368
    :cond_6
    invoke-virtual {v6}, Lcom/ecareme/pixwe/media/LocalDataSource;->isSingleImage()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 369
    iget-object v10, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v10, v12}, Lcom/ecareme/pixwe/media/GridLayer;->setSingleImage(Z)V

    goto/16 :goto_0

    .line 370
    :cond_7
    if-eqz v7, :cond_0

    .line 371
    iget-object v10, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v10, v13}, Lcom/ecareme/pixwe/media/GridLayer;->setSingleImage(Z)V

    .line 372
    iget-object v10, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v10}, Lcom/ecareme/pixwe/media/GridLayer;->startSlideshow()V

    goto/16 :goto_0
.end method

.method private isImageType(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 269
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
    .line 254
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 255
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
    .line 264
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.ecareme.pixwe.action.REVIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isVideoType(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 273
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
    .line 259
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 260
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

    .line 125
    iput v1, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mNumRetries:I

    .line 126
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 127
    .local v0, checkStorage:Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 128
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 129
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

    .line 278
    sparse-switch p1, :sswitch_data_0

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 280
    :sswitch_0
    if-ne p2, v1, :cond_0

    .line 281
    invoke-virtual {p0, p2, p3}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->setResult(ILandroid/content/Intent;)V

    .line 282
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->finish()V

    goto :goto_0

    .line 289
    :sswitch_1
    if-ne p2, v1, :cond_0

    .line 290
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, contentUri:Ljava/lang/String;
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 292
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v1, v0}, Lcom/ecareme/pixwe/media/GridLayer;->focusItem(Ljava/lang/String;)V

    goto :goto_0

    .line 278
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
    .line 235
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 236
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridLayer;->markDirty(I)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/RenderView;->requestRender()V

    .line 241
    :cond_1
    const-string v0, "Gallery"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x1

    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    new-instance v0, Lcom/ecareme/pixwe/app/App;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/app/App;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mApp:Lcom/ecareme/pixwe/app/App;

    .line 90
    invoke-static {}, Lcom/ecareme/pixwe/media/ImageManager;->hasStorage()Z

    move-result v8

    .line 91
    .local v8, imageManagerHasStorage:Z
    const/4 v10, 0x0

    .line 92
    .local v10, slideshowIntent:Z
    const/4 v6, 0x0

    .line 93
    .local v6, AWSMnt:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 94
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->isViewIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 96
    .local v7, extras:Landroid/os/Bundle;
    if-eqz v7, :cond_0

    .line 97
    const-string v0, "slideshow"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 100
    .end local v7           #extras:Landroid/os/Bundle;
    :cond_0
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->isViewIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v10, :cond_2

    .line 101
    if-nez v8, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 103
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->finish()V

    .line 122
    :goto_0
    return-void

    .line 105
    :cond_1
    new-instance v9, Lcom/ecareme/pixwe/wallpaper/Slideshow;

    invoke-direct {v9, p0}, Lcom/ecareme/pixwe/wallpaper/Slideshow;-><init>(Landroid/content/Context;)V

    .line 106
    .local v9, slideshow:Lcom/ecareme/pixwe/wallpaper/Slideshow;
    new-instance v0, Lcom/ecareme/pixwe/wallpaper/RandomDataSource;

    invoke-direct {v0}, Lcom/ecareme/pixwe/wallpaper/RandomDataSource;-><init>()V

    invoke-virtual {v9, v0}, Lcom/ecareme/pixwe/wallpaper/Slideshow;->setDataSource(Lcom/ecareme/pixwe/wallpaper/Slideshow$DataSource;)V

    .line 107
    invoke-virtual {p0, v9}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->setContentView(Landroid/view/View;)V

    .line 108
    iput-boolean v11, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mDockSlideshow:Z

    goto :goto_0

    .line 112
    .end local v9           #slideshow:Lcom/ecareme/pixwe/wallpaper/Slideshow;
    :cond_2
    new-instance v0, Lcom/ecareme/pixwe/media/RenderView;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/media/RenderView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    .line 113
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

    iget-object v5, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ecareme/pixwe/media/GridLayer;-><init>(Landroid/content/Context;IILcom/ecareme/pixwe/media/LayoutInterface;Lcom/ecareme/pixwe/media/RenderView;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    .line 114
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/GridLayer;->getHud()Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HudLayer;->getPathBar()Lcom/ecareme/pixwe/media/PathBarLayer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/PathBarLayer;->changeLabel(Ljava/lang/String;)V

    .line 115
    sput-boolean v11, Lcom/ecareme/pixwe/media/GridLayer;->UPLOAD_MODE:Z

    .line 116
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->setRootLayer(Lcom/ecareme/pixwe/media/RootLayer;)V

    .line 117
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->setContentView(Landroid/view/View;)V

    .line 119
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->sendInitialMessage()V

    .line 121
    const-string v0, "Gallery"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 203
    const v2, 0x7f030007

    invoke-virtual {p0, v2}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->setContentView(I)V

    .line 206
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 207
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->handler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    if-eqz v2, :cond_1

    .line 210
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/GridLayer;->getDataSource()Lcom/ecareme/pixwe/media/DataSource;

    move-result-object v1

    .line 211
    .local v1, dataSource:Lcom/ecareme/pixwe/media/DataSource;
    if-eqz v1, :cond_0

    .line 212
    invoke-interface {v1}, Lcom/ecareme/pixwe/media/DataSource;->shutdown()V

    .line 214
    :cond_0
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/GridLayer;->shutdown()V

    .line 216
    .end local v1           #dataSource:Lcom/ecareme/pixwe/media/DataSource;
    :cond_1
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    if-eqz v2, :cond_2

    .line 217
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/RenderView;->shutdown()V

    .line 218
    iput-object v5, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    .line 220
    :cond_2
    iput-object v5, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    .line 221
    iget-object v2, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/app/App;->shutdown()V

    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 223
    sget-boolean v2, Lcom/ecareme/pixwe/PixWe;->isHomeNeedToUpdate:Z

    if-eqz v2, :cond_3

    .line 224
    sput-boolean v4, Lcom/ecareme/pixwe/PixWe;->isHomeNeedToUpdate:Z

    .line 226
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 227
    .local v0, _intent:Landroid/content/Intent;
    const/16 v2, 0xa

    invoke-virtual {p0, v2, v0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->setResult(ILandroid/content/Intent;)V

    .line 231
    .end local v0           #_intent:Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    invoke-virtual {v0, p1, p2}, Lcom/ecareme/pixwe/media/RenderView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 249
    :goto_0
    return v0

    .line 247
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 249
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/RenderView;->handleLowMemory()V

    .line 305
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->setIntent(Landroid/content/Intent;)V

    .line 134
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->sendInitialMessage()V

    .line 138
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 175
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/RenderView;->onPause()V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 181
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 184
    :cond_2
    sget-object v0, Lcom/ecareme/pixwe/media/LocalDataSource;->sThumbnailCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/DiskCache;->flush()V

    .line 185
    sget-object v0, Lcom/ecareme/pixwe/media/LocalDataSource;->sThumbnailCacheVideo:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/DiskCache;->flush()V

    .line 187
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/app/App;->onPause()V

    .line 188
    return-void
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 143
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 153
    iget-boolean v1, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mDockSlideshow:Z

    if-eqz v1, :cond_2

    .line 154
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 159
    :cond_0
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 160
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0xa

    const-string v2, "GridView.Slideshow.All"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 161
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 170
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_1
    :goto_0
    return-void

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    if-eqz v1, :cond_3

    .line 165
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/RenderView;->onResume()V

    .line 167
    :cond_3
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/app/App;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/app/App;->onResume()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 148
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 193
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/ecareme/pixwe/view/navigate/UploadActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/GridLayer;->stop()V

    .line 197
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/ecareme/pixwe/cache/CacheService;->startCache(Landroid/content/Context;Z)V

    .line 198
    return-void
.end method
