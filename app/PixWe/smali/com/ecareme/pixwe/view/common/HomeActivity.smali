.class public Lcom/ecareme/pixwe/view/common/HomeActivity;
.super Landroid/app/Activity;
.source "HomeActivity.java"


# static fields
.field private static final CHECK_STORAGE:I = 0x0

.field private static final HANDLE_INTENT:I = 0x1

.field private static final NUM_STORAGE_CHECKS:I = 0x19

.field public static final REVIEW_ACTION:Ljava/lang/String; = "com.ecareme.pixwe.action.REVIEW"

.field private static final TAG:Ljava/lang/String; = "Gallery"


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

.field private mRenderView:Lcom/ecareme/pixwe/media/RenderView;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field pixweDataSource:Lcom/ecareme/pixwe/aws/PixWeDataSource;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mApp:Lcom/ecareme/pixwe/app/App;

    .line 48
    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mAccountsEnabled:Ljava/util/HashMap;

    .line 52
    iput-boolean v1, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mDockSlideshow:Z

    .line 54
    iput-boolean v1, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mImageManagerHasStorageAfterDelay:Z

    .line 62
    new-instance v0, Lcom/ecareme/pixwe/view/common/HomeActivity$1;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/view/common/HomeActivity$1;-><init>(Lcom/ecareme/pixwe/view/common/HomeActivity;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->handler:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/view/common/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->checkStorage()V

    return-void
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/view/common/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->initializeDataSource()V

    return-void
.end method

.method private checkStorage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 77
    iget v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mNumRetries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mNumRetries:I

    .line 78
    invoke-static {}, Lcom/ecareme/pixwe/media/ImageManager;->hasStorage()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mImageManagerHasStorageAfterDelay:Z

    .line 79
    iget-boolean v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mImageManagerHasStorageAfterDelay:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mNumRetries:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_1

    .line 80
    iget v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mNumRetries:I

    if-ne v0, v3, :cond_0

    .line 81
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/ecareme/pixwe/app/App;->showToast(Ljava/lang/String;I)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private initializeDataSource()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    const/4 v13, 0x1

    .line 323
    iget-boolean v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mImageManagerHasStorageAfterDelay:Z

    .line 325
    .local v0, hasStorage:Z
    new-instance v4, Lcom/ecareme/pixwe/media/LocalDataSource;

    sget-object v10, Lcom/ecareme/pixwe/media/LocalDataSource;->URI_ALL_MEDIA:Ljava/lang/String;

    invoke-direct {v4, p0, v10, v12}, Lcom/ecareme/pixwe/media/LocalDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 333
    .local v4, localDataSource:Lcom/ecareme/pixwe/media/LocalDataSource;
    new-instance v10, Lcom/ecareme/pixwe/aws/PixWeDataSource;

    invoke-direct {v10, p0}, Lcom/ecareme/pixwe/aws/PixWeDataSource;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->pixweDataSource:Lcom/ecareme/pixwe/aws/PixWeDataSource;

    .line 336
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->isPickIntent()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-direct {p0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->isViewIntent()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-direct {p0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->isReviewIntent()Z

    move-result v10

    if-nez v10, :cond_1

    .line 338
    invoke-virtual {v4, v13, v13}, Lcom/ecareme/pixwe/media/LocalDataSource;->setMimeFilter(ZZ)V

    .line 339
    if-eqz v0, :cond_0

    .line 341
    iget-object v10, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    iget-object v11, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->pixweDataSource:Lcom/ecareme/pixwe/aws/PixWeDataSource;

    invoke-virtual {v10, v11}, Lcom/ecareme/pixwe/media/GridLayer;->setDataSource(Lcom/ecareme/pixwe/media/DataSource;)V

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->isPickIntent()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 346
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 347
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 348
    invoke-virtual {v3, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 349
    .local v8, type:Ljava/lang/String;
    if-nez v8, :cond_2

    .line 351
    const-string v8, "image/*"

    .line 353
    :cond_2
    invoke-direct {p0, v8}, Lcom/ecareme/pixwe/view/common/HomeActivity;->isImageType(Ljava/lang/String;)Z

    move-result v1

    .line 354
    .local v1, includeImages:Z
    invoke-direct {p0, v8}, Lcom/ecareme/pixwe/view/common/HomeActivity;->isVideoType(Ljava/lang/String;)Z

    move-result v2

    .line 355
    .local v2, includeVideos:Z
    invoke-virtual {v4, v1, v2}, Lcom/ecareme/pixwe/media/LocalDataSource;->setMimeFilter(ZZ)V

    .line 356
    if-eqz v1, :cond_4

    .line 357
    if-eqz v0, :cond_3

    .line 358
    iget-object v10, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    iget-object v11, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->pixweDataSource:Lcom/ecareme/pixwe/aws/PixWeDataSource;

    invoke-virtual {v10, v11}, Lcom/ecareme/pixwe/media/GridLayer;->setDataSource(Lcom/ecareme/pixwe/media/DataSource;)V

    .line 365
    :cond_3
    :goto_1
    iget-object v10, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v10, v13}, Lcom/ecareme/pixwe/media/GridLayer;->setPickIntent(Z)V

    .line 366
    if-eqz v0, :cond_0

    .line 367
    iget-object v10, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f060017

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v13}, Lcom/ecareme/pixwe/app/App;->showToast(Ljava/lang/String;I)V

    goto :goto_0

    .line 363
    :cond_4
    iget-object v10, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v10, v4}, Lcom/ecareme/pixwe/media/GridLayer;->setDataSource(Lcom/ecareme/pixwe/media/DataSource;)V

    goto :goto_1

    .line 372
    .end local v1           #includeImages:Z
    .end local v2           #includeVideos:Z
    .end local v3           #intent:Landroid/content/Intent;
    .end local v8           #type:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 373
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 374
    .local v9, uri:Landroid/net/Uri;
    const-string v10, "slideshow"

    invoke-virtual {v3, v10, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 375
    .local v7, slideshow:Z
    new-instance v6, Lcom/ecareme/pixwe/media/LocalDataSource;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, p0, v10, v13}, Lcom/ecareme/pixwe/media/LocalDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 377
    .local v6, singleDataSource:Lcom/ecareme/pixwe/media/LocalDataSource;
    invoke-virtual {v6, v13, v13}, Lcom/ecareme/pixwe/media/LocalDataSource;->setMimeFilter(ZZ)V

    .line 379
    if-eqz v0, :cond_6

    .line 380
    new-instance v5, Lcom/ecareme/pixwe/media/ConcatenatedDataSource;

    const/4 v10, 0x0

    invoke-direct {v5, v6, v10}, Lcom/ecareme/pixwe/media/ConcatenatedDataSource;-><init>(Lcom/ecareme/pixwe/media/DataSource;Lcom/ecareme/pixwe/media/DataSource;)V

    .line 381
    .local v5, singleCombinedDataSource:Lcom/ecareme/pixwe/media/ConcatenatedDataSource;
    iget-object v10, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v10, v5}, Lcom/ecareme/pixwe/media/GridLayer;->setDataSource(Lcom/ecareme/pixwe/media/DataSource;)V

    .line 385
    .end local v5           #singleCombinedDataSource:Lcom/ecareme/pixwe/media/ConcatenatedDataSource;
    :cond_6
    iget-object v10, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-static {v11, v9}, Lcom/ecareme/pixwe/media/Utils;->getBucketNameFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v13, v11}, Lcom/ecareme/pixwe/media/GridLayer;->setViewIntent(ZLjava/lang/String;)V

    .line 387
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->isReviewIntent()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 388
    iget-object v10, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v10, v13}, Lcom/ecareme/pixwe/media/GridLayer;->setEnterSelectionMode(Z)V

    .line 391
    :cond_7
    invoke-virtual {v6}, Lcom/ecareme/pixwe/media/LocalDataSource;->isSingleImage()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 392
    iget-object v10, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v10, v12}, Lcom/ecareme/pixwe/media/GridLayer;->setSingleImage(Z)V

    goto/16 :goto_0

    .line 393
    :cond_8
    if-eqz v7, :cond_0

    .line 394
    iget-object v10, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v10, v13}, Lcom/ecareme/pixwe/media/GridLayer;->setSingleImage(Z)V

    .line 395
    iget-object v10, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v10}, Lcom/ecareme/pixwe/media/GridLayer;->startSlideshow()V

    goto/16 :goto_0
.end method

.method private isImageType(Ljava/lang/String;)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 281
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
    .line 266
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 267
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
    .line 276
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 277
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
    .line 285
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
    .line 271
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 272
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

    .line 124
    iput v1, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mNumRetries:I

    .line 125
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 126
    .local v0, checkStorage:Landroid/os/Message;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 127
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 128
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 290
    packed-switch p1, :pswitch_data_0

    .line 313
    :goto_0
    return-void

    .line 310
    :pswitch_0
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->initializeDataSource()V

    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 228
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 229
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridLayer;->markDirty(I)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/RenderView;->requestRender()V

    .line 234
    :cond_1
    const-string v0, "Gallery"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    new-instance v0, Lcom/ecareme/pixwe/app/App;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/app/App;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mApp:Lcom/ecareme/pixwe/app/App;

    .line 93
    invoke-static {}, Lcom/ecareme/pixwe/media/ImageManager;->hasStorage()Z

    move-result v7

    .line 94
    .local v7, imageManagerHasStorage:Z
    const/4 v9, 0x0

    .line 95
    .local v9, slideshowIntent:Z
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->isViewIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 97
    .local v6, extras:Landroid/os/Bundle;
    if-eqz v6, :cond_0

    .line 98
    const-string v0, "slideshow"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 101
    .end local v6           #extras:Landroid/os/Bundle;
    :cond_0
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->isViewIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v9, :cond_2

    .line 102
    if-nez v7, :cond_1

    .line 103
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 104
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->finish()V

    .line 121
    :goto_0
    return-void

    .line 106
    :cond_1
    new-instance v8, Lcom/ecareme/pixwe/wallpaper/Slideshow;

    invoke-direct {v8, p0}, Lcom/ecareme/pixwe/wallpaper/Slideshow;-><init>(Landroid/content/Context;)V

    .line 107
    .local v8, slideshow:Lcom/ecareme/pixwe/wallpaper/Slideshow;
    new-instance v0, Lcom/ecareme/pixwe/wallpaper/RandomDataSource;

    invoke-direct {v0}, Lcom/ecareme/pixwe/wallpaper/RandomDataSource;-><init>()V

    invoke-virtual {v8, v0}, Lcom/ecareme/pixwe/wallpaper/Slideshow;->setDataSource(Lcom/ecareme/pixwe/wallpaper/Slideshow$DataSource;)V

    .line 108
    invoke-virtual {p0, v8}, Lcom/ecareme/pixwe/view/common/HomeActivity;->setContentView(Landroid/view/View;)V

    .line 109
    iput-boolean v2, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mDockSlideshow:Z

    goto :goto_0

    .line 113
    .end local v8           #slideshow:Lcom/ecareme/pixwe/wallpaper/Slideshow;
    :cond_2
    new-instance v0, Lcom/ecareme/pixwe/media/RenderView;

    invoke-direct {v0, p0}, Lcom/ecareme/pixwe/media/RenderView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    .line 114
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

    iget-object v5, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ecareme/pixwe/media/GridLayer;-><init>(Landroid/content/Context;IILcom/ecareme/pixwe/media/LayoutInterface;Lcom/ecareme/pixwe/media/RenderView;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    .line 115
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->setRootLayer(Lcom/ecareme/pixwe/media/RootLayer;)V

    .line 116
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->setContentView(Landroid/view/View;)V

    .line 118
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->sendInitialMessage()V

    .line 120
    const-string v0, "Gallery"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 203
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/view/common/HomeActivity;->setContentView(I)V

    .line 206
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 207
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridLayer;->getDataSource()Lcom/ecareme/pixwe/media/DataSource;

    move-result-object v0

    .line 211
    .local v0, dataSource:Lcom/ecareme/pixwe/media/DataSource;
    if-eqz v0, :cond_0

    .line 212
    invoke-interface {v0}, Lcom/ecareme/pixwe/media/DataSource;->shutdown()V

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridLayer;->shutdown()V

    .line 216
    .end local v0           #dataSource:Lcom/ecareme/pixwe/media/DataSource;
    :cond_1
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    if-eqz v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/RenderView;->shutdown()V

    .line 218
    iput-object v3, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    .line 220
    :cond_2
    iput-object v3, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    .line 221
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/app/App;->shutdown()V

    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 223
    const-string v1, "Gallery"

    const-string v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 239
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    if-eqz v1, :cond_2

    .line 240
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    invoke-virtual {v1, p1, p2}, Lcom/ecareme/pixwe/media/RenderView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 241
    .local v0, rtnVal:Z
    if-nez v0, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->finish()V

    move v1, v2

    .line 261
    .end local v0           #rtnVal:Z
    :goto_0
    return v1

    .line 258
    .restart local v0       #rtnVal:Z
    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    .line 261
    .end local v0           #rtnVal:Z
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/RenderView;->handleLowMemory()V

    .line 320
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/view/common/HomeActivity;->setIntent(Landroid/content/Intent;)V

    .line 133
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    invoke-direct {p0}, Lcom/ecareme/pixwe/view/common/HomeActivity;->sendInitialMessage()V

    .line 137
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 175
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/RenderView;->onPause()V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 181
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 184
    :cond_2
    sget-object v0, Lcom/ecareme/pixwe/media/LocalDataSource;->sThumbnailCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/DiskCache;->flush()V

    .line 185
    sget-object v0, Lcom/ecareme/pixwe/media/LocalDataSource;->sThumbnailCacheVideo:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/DiskCache;->flush()V

    .line 186
    sget-object v0, Lcom/ecareme/pixwe/aws/PixWeDataSource;->sThumbnailCache:Lcom/ecareme/pixwe/media/DiskCache;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/DiskCache;->flush()V

    .line 187
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/app/App;->onPause()V

    .line 188
    return-void
.end method

.method public onRestart()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 142
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 152
    const/4 v1, 0x0

    sput-boolean v1, Lcom/ecareme/pixwe/media/GridLayer;->UPLOAD_MODE:Z

    .line 153
    iget-boolean v1, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mDockSlideshow:Z

    if-eqz v1, :cond_2

    .line 154
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 159
    :cond_0
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/view/common/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 160
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0xa

    const-string v2, "GridView.Slideshow.All"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 161
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 170
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_1
    :goto_0
    return-void

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    if-eqz v1, :cond_3

    .line 165
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mRenderView:Lcom/ecareme/pixwe/media/RenderView;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/RenderView;->onResume()V

    .line 167
    :cond_3
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/app/App;->isPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mApp:Lcom/ecareme/pixwe/app/App;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/app/App;->onResume()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 147
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 192
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 193
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/ecareme/pixwe/view/common/HomeActivity;->mGridLayer:Lcom/ecareme/pixwe/media/GridLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/GridLayer;->stop()V

    .line 197
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/ecareme/pixwe/cache/CacheService;->startCache(Landroid/content/Context;Z)V

    .line 198
    return-void
.end method
