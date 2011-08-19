.class public Lcom/android/gallery3d/app/PhotoPage;
.super Lcom/android/gallery3d/app/ActivityState;
.source "PhotoPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/FilmStripView$Listener;
.implements Lcom/android/gallery3d/ui/PhotoView$PhotoTapListener;
.implements Lcom/android/gallery3d/ui/UserInteractionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;,
        Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;,
        Lcom/android/gallery3d/app/PhotoPage$Model;
    }
.end annotation


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mApplication:Lcom/android/gallery3d/app/GalleryApp;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentIndex:I

.field private mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

.field private mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

.field private mFilmStripView:Lcom/android/gallery3d/ui/FilmStripView;

.field private mHandler:Landroid/os/Handler;

.field private mHasPhotoEditor:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsActive:Z

.field private mIsInteracting:Z

.field private mIsMenuVisible:Z

.field private mMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private mMenu:Landroid/view/Menu;

.field private mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

.field private mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

.field private mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

.field private mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

.field private mResultIntent:Landroid/content/Intent;

.field private mRootPane:Lcom/android/gallery3d/ui/GLView;

.field private mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mShowBars:Z

.field private mShowDetails:Z

.field private mStripHeight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mResultIntent:Landroid/content/Intent;

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 125
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/PhotoPage$1;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 571
    return-void
.end method

.method static synthetic access$002(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsMenuVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/gallery3d/app/PhotoPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/PhotoPage;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mResultIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/gallery3d/app/PhotoPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/data/MediaSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/PhotoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/FilmStripView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmStripView:Lcom/android/gallery3d/ui/FilmStripView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/PhotoPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mStripHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/PhotoPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/ui/DetailsWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/gallery3d/app/PhotoPage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasPhotoEditor:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/PhotoPage;)Lcom/android/gallery3d/app/PhotoPage$Model;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/data/MediaItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V

    return-void
.end method

.method private hideBars()V
    .locals 2

    .prologue
    .line 299
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-nez v1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 301
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->hide()V

    .line 302
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 303
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 304
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 305
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmStripView:Lcom/android/gallery3d/ui/FilmStripView;

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmStripView:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/FilmStripView;->hide()V

    goto :goto_0
.end method

.method private hideDetails()V
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    .line 443
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsWindow;->hide()V

    .line 444
    return-void
.end method

.method public static playVideo(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 4
    .parameter "activity"
    .parameter "uri"

    .prologue
    .line 489
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "video/*"

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 491
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 492
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 493
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const v2, 0x7f08002b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private refreshHidingMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 311
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 312
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsMenuVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsInteracting:Z

    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xdac

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 315
    :cond_0
    return-void
.end method

.method private showBars()V
    .locals 2

    .prologue
    .line 287
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 289
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->show()V

    .line 290
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 291
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 292
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 293
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmStripView:Lcom/android/gallery3d/ui/FilmStripView;

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmStripView:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/FilmStripView;->show()V

    goto :goto_0
.end method

.method private showDetails(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    .line 448
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    if-nez v0, :cond_0

    .line 449
    new-instance v0, Lcom/android/gallery3d/ui/DetailsWindow;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    new-instance v2, Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/app/PhotoPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/DetailsWindow;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/DetailsWindow$DetailsSource;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    .line 450
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    new-instance v1, Lcom/android/gallery3d/app/PhotoPage$5;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/PhotoPage$5;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/DetailsWindow;->setCloseListener(Lcom/android/gallery3d/ui/DetailsWindow$CloseListener;)V

    .line 455
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/DetailsWindow;->reloadDetails(I)V

    .line 458
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsWindow;->show()V

    .line 459
    return-void
.end method

.method private updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 4
    .parameter "photo"

    .prologue
    .line 264
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-ne v1, p1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    .line 266
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 268
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v1, :cond_2

    .line 269
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v2}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/DetailsWindow;->reloadDetails(I)V

    .line 271
    :cond_2
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getName()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, title:Ljava/lang/String;
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 273
    :cond_3
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/PhotoView;->showVideoPlayIcon(Z)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateMenuOperations()V
    .locals 2

    .prologue
    .line 278
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenu:Landroid/view/Menu;

    if-nez v1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v0

    .line 280
    .local v0, supportedOperations:I
    iget-boolean v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasPhotoEditor:Z

    if-nez v1, :cond_2

    .line 281
    and-int/lit16 v0, v0, -0x201

    .line 283
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenu:Landroid/view/Menu;

    invoke-static {v1, v0}, Lcom/android/gallery3d/ui/MenuExecutor;->updateMenuOperation(Landroid/view/Menu;I)V

    goto :goto_0
.end method


# virtual methods
.method protected onBackPressed()V
    .locals 4

    .prologue
    .line 345
    iget-boolean v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v2, :cond_0

    .line 346
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    .line 361
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-static {v2}, Lcom/android/gallery3d/ui/PositionRepository;->getInstance(Lcom/android/gallery3d/app/GalleryActivity;)Lcom/android/gallery3d/ui/PositionRepository;

    move-result-object v1

    .line 349
    .local v1, repository:Lcom/android/gallery3d/ui/PositionRepository;
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/PositionRepository;->clear()V

    .line 350
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_1

    .line 351
    new-instance v0, Lcom/android/gallery3d/ui/PositionRepository$Position;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/PositionRepository$Position;-><init>()V

    .line 352
    .local v0, position:Lcom/android/gallery3d/ui/PositionRepository$Position;
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, v0, Lcom/android/gallery3d/ui/PositionRepository$Position;->x:F

    .line 353
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iput v2, v0, Lcom/android/gallery3d/ui/PositionRepository$Position;->y:F

    .line 354
    const/high16 v2, -0x3b86

    iput v2, v0, Lcom/android/gallery3d/ui/PositionRepository$Position;->z:F

    .line 355
    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentPhoto:Lcom/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/ui/PositionRepository;->putPosition(Ljava/lang/Long;Lcom/android/gallery3d/ui/PositionRepository$Position;)V

    .line 359
    .end local v0           #position:Lcom/android/gallery3d/ui/PositionRepository$Position;
    :cond_1
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 22
    .parameter "data"
    .parameter "restoreState"

    .prologue
    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    move-object/from16 p2, v0

    .end local p2
    check-cast p2, Landroid/app/Activity;

    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Landroid/app/ActionBar;

    .line 154
    new-instance v5, Lcom/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/gallery3d/ui/SelectionManager;-><init>(Lcom/android/gallery3d/app/GalleryContext;Z)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 155
    new-instance v5, Lcom/android/gallery3d/ui/MenuExecutor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    move-object v7, v0

    invoke-direct {v5, v6, v7}, Lcom/android/gallery3d/ui/MenuExecutor;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    .line 157
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/PhotoPage;->mIntentFilter:Landroid/content/IntentFilter;

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mIntentFilter:Landroid/content/IntentFilter;

    move-object v5, v0

    const-string v6, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mIntentFilter:Landroid/content/IntentFilter;

    move-object v5, v0

    const-string v6, "package"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 160
    new-instance v5, Lcom/android/gallery3d/app/PhotoPage$2;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/app/PhotoPage$2;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/PhotoPage;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 168
    new-instance v5, Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/android/gallery3d/ui/PhotoView;-><init>(Lcom/android/gallery3d/app/GalleryActivity;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->setPhotoTapListener(Lcom/android/gallery3d/ui/PhotoView$PhotoTapListener;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    move-object/from16 p2, v0

    check-cast p2, Landroid/app/Activity;

    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p2

    check-cast p2, Lcom/android/gallery3d/app/GalleryApp;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    .line 173
    const-string v5, "media-set-path"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 174
    .local v21, setPathString:Ljava/lang/String;
    const-string v5, "media-item-path"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v8

    .line 176
    .local v8, itemPath:Lcom/android/gallery3d/data/Path;
    if-eqz v21, :cond_1

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    move-object v5, v0

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 178
    const-string v5, "index-hint"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    move-object v5, v0

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/gallery3d/data/MediaSet;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    move-object v5, v0

    if-nez v5, :cond_0

    .line 182
    const-string v5, "PhotoPage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to restore "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    new-instance v4, Lcom/android/gallery3d/app/PhotoDataAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    move v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/gallery3d/app/PhotoDataAdapter;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaSet;Lcom/android/gallery3d/data/Path;I)V

    .line 186
    .local v4, pda:Lcom/android/gallery3d/app/PhotoDataAdapter;
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/ui/PhotoView;->setModel(Lcom/android/gallery3d/ui/PhotoView$Model;)V

    .line 189
    const/16 v12, 0xc

    .line 190
    .local v12, topMargin:I
    const/4 v13, 0x0

    .line 191
    .local v13, midMargin:I
    const/4 v14, 0x2

    .line 192
    .local v14, bottomMargin:I
    const/16 v15, 0x38

    .line 193
    .local v15, contentSize:I
    const/16 v16, 0x30

    .line 194
    .local v16, thumbSize:I
    const/16 v17, 0xa

    .line 195
    .local v17, barSize:I
    const/16 v18, 0xa

    .line 196
    .local v18, gripSize:I
    const/16 v19, 0x60

    .line 197
    .local v19, gripWidth:I
    add-int v5, v12, v15

    add-int/lit8 v5, v13, 0x44

    add-int/lit8 v5, v17, 0x44

    add-int/lit8 v5, v14, 0x4e

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery3d/app/PhotoPage;->mStripHeight:I

    .line 200
    new-instance v9, Lcom/android/gallery3d/ui/FilmStripView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    move-object v11, v0

    invoke-direct/range {v9 .. v19}, Lcom/android/gallery3d/ui/FilmStripView;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/data/MediaSet;IIIIIIII)V

    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/PhotoPage;->mFilmStripView:Lcom/android/gallery3d/ui/FilmStripView;

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mFilmStripView:Lcom/android/gallery3d/ui/FilmStripView;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mFilmStripView:Lcom/android/gallery3d/ui/FilmStripView;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/FilmStripView;->setListener(Lcom/android/gallery3d/ui/FilmStripView$Listener;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mFilmStripView:Lcom/android/gallery3d/ui/FilmStripView;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/FilmStripView;->setUserInteractionListener(Lcom/android/gallery3d/ui/UserInteractionListener;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mFilmStripView:Lcom/android/gallery3d/ui/FilmStripView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    move v6, v0

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/ui/FilmStripView;->setFocusIndex(I)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mFilmStripView:Lcom/android/gallery3d/ui/FilmStripView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    move v6, v0

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/ui/FilmStripView;->setStartIndex(I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mResultIntent:Landroid/content/Intent;

    move-object v5, v0

    const-string v6, "index-hint"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    move v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 210
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mResultIntent:Landroid/content/Intent;

    move-object v6, v0

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/app/PhotoPage;->setStateResult(ILandroid/content/Intent;)V

    .line 212
    new-instance v5, Lcom/android/gallery3d/app/PhotoPage$3;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/gallery3d/app/PhotoPage$3;-><init>(Lcom/android/gallery3d/app/PhotoPage;)V

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/app/PhotoDataAdapter;->setDataListener(Lcom/android/gallery3d/app/PhotoDataAdapter$DataListener;)V

    .line 246
    .end local v4           #pda:Lcom/android/gallery3d/app/PhotoDataAdapter;
    .end local v12           #topMargin:I
    .end local v13           #midMargin:I
    .end local v14           #bottomMargin:I
    .end local v15           #contentSize:I
    .end local v16           #thumbSize:I
    .end local v17           #barSize:I
    .end local v18           #gripSize:I
    .end local v19           #gripWidth:I
    :goto_0
    new-instance v5, Lcom/android/gallery3d/app/PhotoPage$4;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    move-object v6, v0

    invoke-interface {v6}, Lcom/android/gallery3d/app/GalleryActivity;->getGLRoot()Lcom/android/gallery3d/ui/GLRoot;

    move-result-object v6

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/app/PhotoPage$4;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/ui/GLRoot;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object v5, v0

    invoke-virtual {v5, v8}, Lcom/android/gallery3d/ui/PhotoView;->setOpenedItem(Lcom/android/gallery3d/data/Path;)V

    .line 261
    return-void

    .line 240
    .restart local p1
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    move-object v5, v0

    invoke-interface {v5}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/gallery3d/data/DataManager;->getMediaObject(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaObject;

    move-result-object v20

    check-cast v20, Lcom/android/gallery3d/data/MediaItem;

    .line 242
    .local v20, mediaItem:Lcom/android/gallery3d/data/MediaItem;
    new-instance v5, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object v7, v0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/app/SinglePhotoDataAdapter;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/data/MediaItem;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/android/gallery3d/ui/PhotoView;->setModel(Lcom/android/gallery3d/ui/PhotoView$Model;)V

    .line 244
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/gallery3d/app/PhotoPage;->updateCurrentPhoto(Lcom/android/gallery3d/data/MediaItem;)V

    goto :goto_0
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 365
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 366
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0b0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 367
    const v1, 0x7f07001c

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    instance-of v2, v2, Lcom/android/gallery3d/data/MtpDevice;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 369
    iput-object p1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenu:Landroid/view/Menu;

    .line 370
    iput-boolean v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    .line 371
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->updateMenuOperations()V

    .line 372
    return v3

    .line 367
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 377
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 379
    if-nez v0, :cond_0

    move v0, v5

    .line 437
    :goto_0
    return v0

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v1}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentIndex()I

    move-result v1

    .line 385
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 387
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    .line 388
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    .line 389
    packed-switch v4, :pswitch_data_0

    .line 437
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 391
    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 392
    const-string v2, "media-set-path"

    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v2, "photo-index"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 395
    const-string v1, "repeat"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 396
    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/SlideshowPage;

    invoke-virtual {v1, v2, v5, v0}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    move v0, v5

    .line 398
    goto :goto_0

    .line 401
    :pswitch_2
    iget-object p0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast p0, Landroid/app/Activity;

    .line 402
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.camera.action.CROP"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    const-class v4, Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 404
    invoke-virtual {v3, v2}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 405
    instance-of v0, v0, Lcom/android/gallery3d/data/PicasaImage;

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_1
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v5

    .line 409
    goto :goto_0

    .line 405
    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    .line 412
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowDetails:Z

    if-eqz v0, :cond_2

    .line 413
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideDetails()V

    :goto_2
    move v0, v5

    .line 417
    goto :goto_0

    .line 415
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/gallery3d/app/PhotoPage;->showDetails(I)V

    goto :goto_2

    .line 426
    :pswitch_4
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 427
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 428
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)Z

    move v0, v5

    .line 429
    goto/16 :goto_0

    .line 431
    :pswitch_5
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->deSelectAll()V

    .line 432
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 433
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuExecutor:Lcom/android/gallery3d/ui/MenuExecutor;

    new-instance v1, Lcom/android/gallery3d/ui/ImportCompleteListener;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-direct {v1, v2}, Lcom/android/gallery3d/ui/ImportCompleteListener;-><init>(Lcom/android/gallery3d/app/GalleryActivity;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(Landroid/view/MenuItem;Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)Z

    move v0, v5

    .line 435
    goto/16 :goto_0

    .line 389
    nop

    :pswitch_data_0
    .packed-switch 0x7f07001b
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 537
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    .line 539
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmStripView:Lcom/android/gallery3d/ui/FilmStripView;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmStripView:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FilmStripView;->pause()V

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsWindow;->pause()V

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->pause()V

    .line 546
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->pause()V

    .line 547
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 548
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 549
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 550
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 554
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsActive:Z

    .line 556
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 557
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->resume()V

    .line 558
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/PhotoView;->resume()V

    .line 559
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmStripView:Lcom/android/gallery3d/ui/FilmStripView;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mFilmStripView:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FilmStripView;->resume()V

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    if-nez v0, :cond_1

    .line 563
    new-instance v0, Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;-><init>(Lcom/android/gallery3d/app/PhotoPage;Lcom/android/gallery3d/app/PhotoPage$1;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mMenuVisibilityListener:Lcom/android/gallery3d/app/PhotoPage$MyMenuVisibilityListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 566
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/PhotoPage;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/gallery3d/app/PhotoPage;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 567
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    const-string v1, "image/*"

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Utils;->isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHasPhotoEditor:Z

    .line 568
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onUserInteraction()V

    .line 569
    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 462
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-interface {v4}, Lcom/android/gallery3d/app/PhotoPage$Model;->getCurrentMediaItem()Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 463
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    if-nez v1, :cond_0

    .line 485
    .end local p0
    :goto_0
    return-void

    .line 468
    .restart local p0
    :cond_0
    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_2

    move v2, v6

    .line 471
    .local v2, playVideo:Z
    :goto_1
    if-eqz v2, :cond_1

    .line 474
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v3

    .line 475
    .local v3, w:I
    iget-object v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mPhotoView:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v0

    .line 476
    .local v0, h:I
    div-int/lit8 v4, v3, 0x2

    sub-int v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0xc

    if-gt v4, v3, :cond_3

    div-int/lit8 v4, v0, 0x2

    sub-int v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0xc

    if-gt v4, v0, :cond_3

    move v2, v6

    .line 480
    .end local v0           #h:I
    .end local v3           #w:I
    :cond_1
    :goto_2
    if-eqz v2, :cond_4

    .line 481
    iget-object p0, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    .end local p0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaItem;->getPlayUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/gallery3d/app/PhotoPage;->playVideo(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    .end local v2           #playVideo:Z
    .restart local p0
    :cond_2
    move v2, v5

    .line 468
    goto :goto_1

    .restart local v0       #h:I
    .restart local v2       #playVideo:Z
    .restart local v3       #w:I
    :cond_3
    move v2, v5

    .line 476
    goto :goto_2

    .line 483
    .end local v0           #h:I
    .end local v3           #w:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/app/PhotoPage;->onUserInteractionTap()V

    goto :goto_0
.end method

.method public onSlotSelected(I)V
    .locals 0
    .parameter "slotIndex"

    .prologue
    .line 500
    iget-object p0, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    .end local p0
    check-cast p0, Lcom/android/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/PhotoDataAdapter;->jumpTo(I)V

    .line 501
    return-void
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 505
    packed-switch p1, :pswitch_data_0

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 507
    :pswitch_0
    if-ne p2, v3, :cond_0

    .line 508
    if-eqz p3, :cond_0

    .line 509
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mApplication:Lcom/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;)Lcom/android/gallery3d/data/Path;

    move-result-object v2

    .line 511
    .local v2, path:Lcom/android/gallery3d/data/Path;
    if-eqz v2, :cond_0

    .line 512
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    iget v4, p0, Lcom/android/gallery3d/app/PhotoPage;->mCurrentIndex:I

    invoke-interface {v3, v2, v4}, Lcom/android/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0

    .line 517
    .end local v2           #path:Lcom/android/gallery3d/data/Path;
    :pswitch_1
    if-ne p2, v3, :cond_1

    const v3, 0x7f080036

    move v1, v3

    .line 520
    .local v1, message:I
    :goto_1
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v3}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 517
    .end local v1           #message:I
    :cond_1
    const v3, 0x7f080037

    move v1, v3

    goto :goto_1

    .line 525
    :pswitch_2
    if-eqz p3, :cond_0

    .line 526
    const-string v3, "media-item-path"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 527
    .local v2, path:Ljava/lang/String;
    const-string v3, "photo-index"

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 528
    .local v0, index:I
    if-eqz v2, :cond_0

    .line 529
    iget-object v3, p0, Lcom/android/gallery3d/app/PhotoPage;->mModel:Lcom/android/gallery3d/app/PhotoPage$Model;

    invoke-static {v2}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/android/gallery3d/app/PhotoPage$Model;->setCurrentPhoto(Lcom/android/gallery3d/data/Path;I)V

    goto :goto_0

    .line 505
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    .line 319
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 320
    return-void
.end method

.method public onUserInteractionBegin()V
    .locals 1

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsInteracting:Z

    .line 335
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 336
    return-void
.end method

.method public onUserInteractionEnd()V
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mIsInteracting:Z

    .line 340
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    .line 341
    return-void
.end method

.method public onUserInteractionTap()V
    .locals 2

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mShowBars:Z

    if-eqz v0, :cond_0

    .line 324
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->hideBars()V

    .line 325
    iget-object v0, p0, Lcom/android/gallery3d/app/PhotoPage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 330
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->showBars()V

    .line 328
    invoke-direct {p0}, Lcom/android/gallery3d/app/PhotoPage;->refreshHidingMessage()V

    goto :goto_0
.end method
