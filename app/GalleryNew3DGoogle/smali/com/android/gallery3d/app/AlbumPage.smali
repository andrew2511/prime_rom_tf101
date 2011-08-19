.class public Lcom/android/gallery3d/app/AlbumPage;
.super Lcom/android/gallery3d/app/ActivityState;
.source "AlbumPage.java"

# interfaces
.implements Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;,
        Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

.field private mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataAdapter;

.field private mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

.field private mFocusIndex:I

.field private mGetContent:Z

.field private mGridDrawer:Lcom/android/gallery3d/ui/GridDrawer;

.field private mHighlightDrawer:Lcom/android/gallery3d/ui/HighlightDrawer;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsActive:Z

.field private mMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private mMediaSetPath:Lcom/android/gallery3d/data/Path;

.field private mPendingTask:Lcom/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRootPane:Lcom/android/gallery3d/ui/GLView;

.field protected mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mShowDetails:Z

.field private mStaticBackground:Lcom/android/gallery3d/ui/StaticBackground;

.field private mUserDistance:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 80
    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    .line 94
    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    .line 106
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$1;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 570
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/StaticBackground;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mStaticBackground:Lcom/android/gallery3d/ui/StaticBackground;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/AlbumPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/gallery3d/app/AlbumPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/app/AlbumDataAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/HighlightDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mHighlightDrawer:Lcom/android/gallery3d/ui/HighlightDrawer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/DetailsWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/GridDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mGridDrawer:Lcom/android/gallery3d/ui/GridDrawer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/AlbumView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/AlbumPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mUserDistance:F

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/AlbumPage;)Lcom/android/gallery3d/ui/ActionModeHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/gallery3d/app/AlbumPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->hideDetails()V

    return-void
.end method

.method private hideDetails()V
    .locals 2

    .prologue
    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    .line 419
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mGridDrawer:Lcom/android/gallery3d/ui/GridDrawer;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumView;->setSelectionDrawer(Lcom/android/gallery3d/ui/SelectionDrawer;)V

    .line 420
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsWindow;->hide()V

    .line 421
    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 392
    const-string v0, "media-path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/android/gallery3d/data/Path;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    .line 393
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Lcom/android/gallery3d/data/Path;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 394
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSet is null. Path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/util/Utils;->Assert(ZLjava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V

    .line 396
    new-instance v0, Lcom/android/gallery3d/app/AlbumDataAdapter;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/app/AlbumDataAdapter;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/data/MediaSet;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataAdapter;

    .line 397
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataAdapter;

    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/app/AlbumPage$MyLoadingListener;-><init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/app/AlbumPage$1;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumDataAdapter;->setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V

    .line 398
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumView;->setModel(Lcom/android/gallery3d/ui/AlbumView$Model;)V

    .line 399
    return-void

    .line 394
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeViews()V
    .locals 7

    .prologue
    const/16 v2, 0xb0

    const/16 v4, 0x10

    const/4 v6, 0x0

    .line 360
    new-instance v1, Lcom/android/gallery3d/ui/StaticBackground;

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/ui/StaticBackground;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mStaticBackground:Lcom/android/gallery3d/ui/StaticBackground;

    .line 361
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mStaticBackground:Lcom/android/gallery3d/ui/StaticBackground;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 363
    new-instance v0, Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-direct {v0, v1, v6}, Lcom/android/gallery3d/ui/SelectionManager;-><init>(Lcom/android/gallery3d/app/GalleryContext;Z)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 364
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ui/SelectionManager;->setSelectionListener(Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;)V

    .line 365
    new-instance v1, Lcom/android/gallery3d/ui/GridDrawer;

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v1, v0, v3}, Lcom/android/gallery3d/ui/GridDrawer;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/SelectionManager;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mGridDrawer:Lcom/android/gallery3d/ui/GridDrawer;

    .line 366
    new-instance v0, Lcom/android/gallery3d/ui/AlbumView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    move v3, v2

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/gallery3d/ui/AlbumView;-><init>(Lcom/android/gallery3d/app/GalleryActivity;IIIII)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    .line 369
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mGridDrawer:Lcom/android/gallery3d/ui/GridDrawer;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumView;->setSelectionDrawer(Lcom/android/gallery3d/ui/SelectionDrawer;)V

    .line 370
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 371
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$5;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumPage$5;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumView;->setListener(Lcom/android/gallery3d/ui/SlotView$Listener;)V

    .line 381
    new-instance v0, Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ActionModeHandler;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    .line 382
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$6;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumPage$6;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->setActionModeListener(Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;)V

    .line 387
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mStaticBackground:Lcom/android/gallery3d/ui/StaticBackground;

    const v1, 0x7f020002

    const v2, 0x7f020003

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/StaticBackground;->setImage(II)V

    .line 389
    return-void
.end method

.method private onGetContent(Lcom/android/gallery3d/data/MediaItem;)V
    .locals 8
    .parameter "item"

    .prologue
    .line 196
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v4}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    .line 197
    .local v1, dm:Lcom/android/gallery3d/data/DataManager;
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 198
    .local v0, activity:Landroid/app/Activity;
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mData:Landroid/os/Bundle;

    const-string v5, "crop"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 200
    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/gallery3d/data/DataManager;->getContentUri(Lcom/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v3

    .line 201
    .local v3, uri:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.CROP"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v5, 0x200

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 204
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mData:Landroid/os/Bundle;

    const-string v5, "output"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    if-nez v4, :cond_0

    .line 205
    const-string v4, "return-data"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    :cond_0
    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 208
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 214
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 210
    :cond_1
    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 212
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private showDetails()V
    .locals 4

    .prologue
    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    .line 403
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Lcom/android/gallery3d/ui/HighlightDrawer;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/HighlightDrawer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mHighlightDrawer:Lcom/android/gallery3d/ui/HighlightDrawer;

    .line 405
    new-instance v0, Lcom/android/gallery3d/ui/DetailsWindow;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    new-instance v2, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/app/AlbumPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/app/AlbumPage$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/DetailsWindow;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/DetailsWindow$DetailsSource;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    .line 406
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    new-instance v1, Lcom/android/gallery3d/app/AlbumPage$7;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumPage$7;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/DetailsWindow;->setCloseListener(Lcom/android/gallery3d/ui/DetailsWindow$CloseListener;)V

    .line 411
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mHighlightDrawer:Lcom/android/gallery3d/ui/HighlightDrawer;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumView;->setSelectionDrawer(Lcom/android/gallery3d/ui/SelectionDrawer;)V

    .line 414
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsWindow;->show()V

    .line 415
    return-void
.end method

.method private startTransition()V
    .locals 3

    .prologue
    .line 279
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-static {v1}, Lcom/android/gallery3d/ui/PositionRepository;->getInstance(Lcom/android/gallery3d/app/GalleryActivity;)Lcom/android/gallery3d/ui/PositionRepository;

    move-result-object v0

    .line 281
    .local v0, repository:Lcom/android/gallery3d/ui/PositionRepository;
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    new-instance v2, Lcom/android/gallery3d/app/AlbumPage$3;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/app/AlbumPage$3;-><init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/ui/PositionRepository;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/AlbumView;->startTransition(Lcom/android/gallery3d/ui/PositionProvider;)V

    .line 291
    return-void
.end method

.method private startTransition(Landroid/os/Bundle;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 294
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-static {v3}, Lcom/android/gallery3d/ui/PositionRepository;->getInstance(Lcom/android/gallery3d/app/GalleryActivity;)Lcom/android/gallery3d/ui/PositionRepository;

    move-result-object v2

    .line 296
    .local v2, repository:Lcom/android/gallery3d/ui/PositionRepository;
    if-nez p1, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    .line 299
    .local v0, center:[I
    :goto_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 300
    .local v1, random:Ljava/util/Random;
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    new-instance v4, Lcom/android/gallery3d/app/AlbumPage$4;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/android/gallery3d/app/AlbumPage$4;-><init>(Lcom/android/gallery3d/app/AlbumPage;Lcom/android/gallery3d/ui/PositionRepository;[ILjava/util/Random;)V

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/ui/AlbumView;->startTransition(Lcom/android/gallery3d/ui/PositionProvider;)V

    .line 316
    return-void

    .line 296
    .end local v0           #center:[I
    .end local v1           #random:Ljava/util/Random;
    :cond_0
    const-string v3, "set-center"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method public doCluster(I)V
    .locals 4
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 231
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 232
    const-string v2, "media-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-static {v2}, Lcom/android/gallery3d/ui/PositionRepository;->getInstance(Lcom/android/gallery3d/app/GalleryActivity;)Lcom/android/gallery3d/ui/PositionRepository;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/AlbumView;->savePositions(Lcom/android/gallery3d/ui/PositionRepository;)V

    .line 234
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/AlbumSetPage;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 236
    return-void
.end method

.method public doFilter(I)V
    .locals 3
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/FilterUtils;->switchFilterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 241
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 242
    const-string v2, "media-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-static {v2}, Lcom/android/gallery3d/ui/PositionRepository;->getInstance(Lcom/android/gallery3d/app/GalleryActivity;)Lcom/android/gallery3d/ui/PositionRepository;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/AlbumView;->savePositions(Lcom/android/gallery3d/ui/PositionRepository;)V

    .line 244
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 245
    return-void
.end method

.method protected onBackPressed()V
    .locals 2

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->hideDetails()V

    .line 156
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-static {v1}, Lcom/android/gallery3d/ui/PositionRepository;->getInstance(Lcom/android/gallery3d/app/GalleryActivity;)Lcom/android/gallery3d/ui/PositionRepository;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumView;->savePositions(Lcom/android/gallery3d/ui/PositionRepository;)V

    .line 154
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"
    .parameter "restoreState"

    .prologue
    .line 254
    const v0, 0x3e99999a

    invoke-static {v0}, Lcom/android/gallery3d/util/Utils;->meterToPixel(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mUserDistance:F

    .line 255
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->initializeViews()V

    .line 256
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->initializeData(Landroid/os/Bundle;)V

    .line 257
    const-string v0, "get-content"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mGetContent:Z

    .line 259
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mIntentFilter:Landroid/content/IntentFilter;

    .line 260
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 262
    new-instance v0, Lcom/android/gallery3d/app/AlbumPage$2;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumPage$2;-><init>(Lcom/android/gallery3d/app/AlbumPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 270
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->startTransition(Landroid/os/Bundle;)V

    .line 273
    const-string v0, "auto-select-all"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->selectAll()V

    .line 276
    :cond_0
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const v6, 0x7f07001c

    const/4 v5, 0x1

    .line 425
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 426
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 428
    .local v1, inflater:Landroid/view/MenuInflater;
    iget-boolean v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mGetContent:Z

    if-eqz v3, :cond_0

    .line 429
    const v3, 0x7f0b0007

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 430
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mData:Landroid/os/Bundle;

    const-string v4, "type-bits"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 433
    .local v2, typeBits:I
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-static {v2}, Lcom/android/gallery3d/util/Utils;->getSelectionModePrompt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 444
    .end local v2           #typeBits:I
    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v3

    invoke-static {p1, v3, v5}, Lcom/android/gallery3d/app/FilterUtils;->setupMenuItems(Landroid/view/Menu;Lcom/android/gallery3d/data/Path;Z)V

    .line 445
    return v5

    .line 436
    :cond_0
    const/high16 v3, 0x7f0b

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 437
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    instance-of v3, v3, Lcom/android/gallery3d/data/MtpDevice;

    if-eqz v3, :cond_1

    .line 439
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 441
    :cond_1
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataAdapter;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/app/AlbumDataAdapter;->setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V

    .line 357
    :cond_0
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    const/4 v3, 0x1

    .line 450
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 494
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 452
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumPage;->onBackPressed()V

    move v0, v3

    .line 453
    goto :goto_0

    .line 455
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/AlbumPage;->doCluster(I)V

    move v0, v3

    .line 456
    goto :goto_0

    .line 458
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/AlbumPage;->doCluster(I)V

    move v0, v3

    .line 459
    goto :goto_0

    .line 461
    :pswitch_4
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/AlbumPage;->doCluster(I)V

    move v0, v3

    .line 462
    goto :goto_0

    .line 464
    :pswitch_5
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AlbumPage;->doCluster(I)V

    move v0, v3

    .line 465
    goto :goto_0

    .line 467
    :pswitch_6
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AlbumPage;->doCluster(I)V

    move v0, v3

    .line 468
    goto :goto_0

    .line 470
    :pswitch_7
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/AlbumPage;->doFilter(I)V

    move v0, v3

    .line 471
    goto :goto_0

    .line 473
    :pswitch_8
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/app/AlbumPage;->doFilter(I)V

    move v0, v3

    .line 474
    goto :goto_0

    .line 476
    :pswitch_9
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/AlbumPage;->doFilter(I)V

    move v0, v3

    .line 477
    goto :goto_0

    .line 479
    :pswitch_a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 480
    const-string v1, "media-set-path"

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v1, "repeat"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 483
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/SlideshowPage;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    move v0, v3

    .line 485
    goto :goto_0

    .line 487
    :pswitch_b
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->hideDetails()V

    :goto_1
    move v0, v3

    .line 492
    goto :goto_0

    .line 490
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->showDetails()V

    goto :goto_1

    .line 450
    :pswitch_data_0
    .packed-switch 0x7f070012
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_1
    .end packed-switch
.end method

.method public onLongTap(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 217
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mGetContent:Z

    if-eqz v1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    if-eqz v1, :cond_2

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/AlbumPage;->onSingleTapUp(I)V

    goto :goto_0

    .line 221
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/AlbumDataAdapter;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 222
    .local v0, item:Lcom/android/gallery3d/data/MediaItem;
    if-eqz v0, :cond_0

    .line 223
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 224
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumView;->invalidate()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 332
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 333
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    .line 334
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 335
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/AlbumDataAdapter;->pause()V

    .line 336
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumView;->pause()V

    .line 337
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/DetailsWindow;->pause()V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mPendingTask:Lcom/android/gallery3d/util/Future;

    .line 341
    .local v0, task:Lcom/android/gallery3d/util/Future;,"Lcom/android/gallery3d/util/Future<*>;"
    if-eqz v0, :cond_1

    .line 343
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->cancel()V

    .line 344
    invoke-interface {v0}, Lcom/android/gallery3d/util/Future;->waitDone()V

    .line 345
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 347
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 350
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 320
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mIsActive:Z

    .line 322
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AlbumPage;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 323
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "image/*"

    invoke-static {v1, v2}, Lcom/android/gallery3d/util/Utils;->isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->setHasPhotoEditor(Z)V

    .line 325
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 326
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumDataAdapter;->resume()V

    .line 327
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumView;->resume()V

    .line 328
    return-void
.end method

.method public onSelectionChange(Lcom/android/gallery3d/data/Path;Z)V
    .locals 6
    .parameter "path"
    .parameter "selected"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 546
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_0

    move v2, v4

    :goto_0
    invoke-static {v2}, Lcom/android/gallery3d/util/Utils;->Assert(Z)V

    .line 547
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 548
    .local v0, count:I
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, format:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 551
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation(Lcom/android/gallery3d/data/Path;Z)V

    .line 552
    return-void

    .end local v0           #count:I
    .end local v1           #format:Ljava/lang/String;
    :cond_0
    move v2, v5

    .line 546
    goto :goto_0
.end method

.method public onSelectionModeChange(I)V
    .locals 6
    .parameter "mode"

    .prologue
    .line 523
    packed-switch p1, :pswitch_data_0

    .line 543
    :goto_0
    return-void

    .line 525
    :pswitch_0
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/ActionModeHandler;->startActionMode()Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionMode:Landroid/view/ActionMode;

    goto :goto_0

    .line 529
    :pswitch_1
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 530
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 534
    :pswitch_2
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 535
    .local v0, count:I
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f09

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, format:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 538
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation()V

    .line 539
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 523
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSingleTapUp(I)V
    .locals 4
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumDataAdapter:Lcom/android/gallery3d/app/AlbumDataAdapter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/AlbumDataAdapter;->get(I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v0

    .line 160
    if-nez v0, :cond_0

    .line 161
    const-string v0, "AlbumPage"

    const-string v1, "item not ready yet, ignore the click"

    invoke-static {v0, v1}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mShowDetails:Z

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mHighlightDrawer:Lcom/android/gallery3d/ui/HighlightDrawer;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/HighlightDrawer;->setHighlightItem(Lcom/android/gallery3d/data/Path;)V

    .line 166
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/DetailsWindow;->reloadDetails(I)V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-nez v1, :cond_5

    .line 168
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mGetContent:Z

    if-eqz v1, :cond_2

    .line 169
    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumPage;->onGetContent(Lcom/android/gallery3d/data/MediaItem;)V

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getSupportedOperations()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 173
    :goto_1
    if-eqz v1, :cond_4

    .line 175
    iget-object p0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPlayUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/gallery3d/app/PhotoPage;->playVideo(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0

    .line 171
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 178
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 179
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-static {v3}, Lcom/android/gallery3d/ui/PositionRepository;->getInstance(Lcom/android/gallery3d/app/GalleryActivity;)Lcom/android/gallery3d/ui/PositionRepository;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/AlbumView;->savePositions(Lcom/android/gallery3d/ui/PositionRepository;)V

    .line 180
    const-string v2, "index-hint"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    const-string v2, "media-set-path"

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumPage;->mMediaSetPath:Lcom/android/gallery3d/data/Path;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v2, "media-item-path"

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/PhotoPage;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 190
    :cond_5
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaItem;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 191
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumView;->invalidate()V

    goto/16 :goto_0
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "request"
    .parameter "result"
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 500
    packed-switch p1, :pswitch_data_0

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 503
    :pswitch_0
    if-eqz p3, :cond_0

    .line 504
    const-string v0, "photo-index"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    .line 505
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumView;->setCenterIndex(I)V

    goto :goto_0

    .line 509
    :pswitch_1
    if-eqz p3, :cond_0

    .line 510
    const-string v0, "index-hint"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    .line 511
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumPage;->mAlbumView:Lcom/android/gallery3d/ui/AlbumView;

    iget v1, p0, Lcom/android/gallery3d/app/AlbumPage;->mFocusIndex:I

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumView;->setCenterIndex(I)V

    .line 512
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumPage;->startTransition()V

    goto :goto_0

    .line 516
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/AlbumPage;->startTransition(Landroid/os/Bundle;)V

    goto :goto_0

    .line 500
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
