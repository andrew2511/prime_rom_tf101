.class public Lcom/android/gallery3d/app/AlbumSetPage;
.super Lcom/android/gallery3d/app/ActivityState;
.source "AlbumSetPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/EyePosition$EyePositionListener;
.implements Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;,
        Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

.field private mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

.field private mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

.field private mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

.field private mEyePosition:Lcom/android/gallery3d/app/EyePosition;

.field private mGetContent:Z

.field private mGridDrawer:Lcom/android/gallery3d/ui/GridDrawer;

.field private mHighlightDrawer:Lcom/android/gallery3d/ui/HighlightDrawer;

.field private mIsActive:Z

.field private mMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private mRootPane:Lcom/android/gallery3d/ui/GLView;

.field protected mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

.field private mShowDetails:Z

.field private mStaticBackground:Lcom/android/gallery3d/ui/StaticBackground;

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/gallery3d/app/ActivityState;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    .line 89
    new-instance v0, Lcom/android/gallery3d/app/AlbumSetPage$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/app/AlbumSetPage$1;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    .line 497
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/StaticBackground;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mStaticBackground:Lcom/android/gallery3d/ui/StaticBackground;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/EyePosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/gallery3d/app/AlbumSetPage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hideDetails()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/gallery3d/app/AlbumSetPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/app/AlbumSetDataAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/HighlightDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHighlightDrawer:Lcom/android/gallery3d/ui/HighlightDrawer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/gallery3d/app/AlbumSetPage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/DetailsWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/GridDrawer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGridDrawer:Lcom/android/gallery3d/ui/GridDrawer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/app/AlbumSetPage;)Lcom/android/gallery3d/ui/AlbumSetView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/app/AlbumSetPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mX:F

    return v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/app/AlbumSetPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mY:F

    return v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/app/AlbumSetPage;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mZ:F

    return v0
.end method

.method private hideDetails()V
    .locals 2

    .prologue
    .line 458
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    .line 459
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGridDrawer:Lcom/android/gallery3d/ui/GridDrawer;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetView;->setSelectionDrawer(Lcom/android/gallery3d/ui/SelectionDrawer;)V

    .line 460
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsWindow;->hide()V

    .line 461
    return-void
.end method

.method private initializeData(Landroid/os/Bundle;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 266
    const-string v1, "media-path"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, mediaPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 268
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->setSourceMediaSet(Lcom/android/gallery3d/data/MediaSet;)V

    .line 269
    new-instance v1, Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    const/16 v4, 0x100

    invoke-direct {v1, v2, v3, v4}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/data/MediaSet;I)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    .line 271
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    new-instance v2, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/app/AlbumSetPage$MyLoadingListener;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/app/AlbumSetPage$1;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->setLoadingListener(Lcom/android/gallery3d/app/LoadingListener;)V

    .line 272
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/AlbumSetView;->setModel(Lcom/android/gallery3d/ui/AlbumSetView$Model;)V

    .line 273
    return-void
.end method

.method private initializeViews()V
    .locals 10

    .prologue
    const/16 v3, 0xc0

    const/16 v5, 0x20

    .line 276
    new-instance v0, Lcom/android/gallery3d/ui/SelectionManager;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;-><init>(Lcom/android/gallery3d/app/GalleryContext;Z)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    .line 277
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/ui/SelectionManager;->setSelectionListener(Lcom/android/gallery3d/ui/SelectionManager$SelectionListener;)V

    .line 278
    new-instance v0, Lcom/android/gallery3d/ui/StaticBackground;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/StaticBackground;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mStaticBackground:Lcom/android/gallery3d/ui/StaticBackground;

    .line 279
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mStaticBackground:Lcom/android/gallery3d/ui/StaticBackground;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 281
    new-instance v1, Lcom/android/gallery3d/ui/GridDrawer;

    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v1, v0, v2}, Lcom/android/gallery3d/ui/GridDrawer;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/SelectionManager;)V

    iput-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGridDrawer:Lcom/android/gallery3d/ui/GridDrawer;

    .line 282
    new-instance v0, Lcom/android/gallery3d/ui/AlbumSetView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGridDrawer:Lcom/android/gallery3d/ui/GridDrawer;

    const/16 v7, 0x90

    const/16 v8, 0xe

    const/16 v9, 0x68

    move v4, v3

    move v6, v5

    invoke-direct/range {v0 .. v9}, Lcom/android/gallery3d/ui/AlbumSetView;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionDrawer;IIIIIII)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    .line 287
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$2;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumSetPage$2;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetView;->setListener(Lcom/android/gallery3d/ui/SlotView$Listener;)V

    .line 298
    new-instance v0, Lcom/android/gallery3d/ui/ActionModeHandler;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/ActionModeHandler;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/SelectionManager;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    .line 299
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$3;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumSetPage$3;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ActionModeHandler;->setActionModeListener(Lcom/android/gallery3d/ui/ActionModeHandler$ActionModeListener;)V

    .line 304
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 306
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mStaticBackground:Lcom/android/gallery3d/ui/StaticBackground;

    const v1, 0x7f020002

    const v2, 0x7f020003

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/StaticBackground;->setImage(II)V

    .line 308
    return-void
.end method

.method private savePositions(I[I)V
    .locals 8
    .parameter "slotIndex"
    .parameter "center"

    .prologue
    .line 154
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 155
    .local v0, offset:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    invoke-virtual {v4, v5, v0}, Lcom/android/gallery3d/ui/GLView;->getBoundsOf(Lcom/android/gallery3d/ui/GLView;Landroid/graphics/Rect;)Z

    .line 156
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    iget-object v5, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-static {v5}, Lcom/android/gallery3d/ui/PositionRepository;->getInstance(Lcom/android/gallery3d/app/GalleryActivity;)Lcom/android/gallery3d/ui/PositionRepository;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/AlbumSetView;->savePositions(Lcom/android/gallery3d/ui/PositionRepository;)V

    .line 157
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    invoke-virtual {v4, p1}, Lcom/android/gallery3d/ui/AlbumSetView;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 158
    .local v1, r:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/AlbumSetView;->getScrollX()I

    move-result v2

    .line 159
    .local v2, scrollX:I
    iget-object v4, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/AlbumSetView;->getScrollY()I

    move-result v3

    .line 160
    .local v3, scrollY:I
    const/4 v4, 0x0

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v2

    aput v5, p2, v4

    .line 161
    const/4 v4, 0x1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v3

    aput v5, p2, v4

    .line 162
    return-void
.end method

.method private showDetails()V
    .locals 4

    .prologue
    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    .line 465
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    if-nez v0, :cond_0

    .line 466
    new-instance v0, Lcom/android/gallery3d/ui/HighlightDrawer;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/HighlightDrawer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHighlightDrawer:Lcom/android/gallery3d/ui/HighlightDrawer;

    .line 467
    new-instance v0, Lcom/android/gallery3d/ui/DetailsWindow;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    new-instance v2, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/gallery3d/app/AlbumSetPage$MyDetailsSource;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/app/AlbumSetPage$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/gallery3d/ui/DetailsWindow;-><init>(Lcom/android/gallery3d/app/GalleryActivity;Lcom/android/gallery3d/ui/DetailsWindow$DetailsSource;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    .line 468
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    new-instance v1, Lcom/android/gallery3d/app/AlbumSetPage$5;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/app/AlbumSetPage$5;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/DetailsWindow;->setCloseListener(Lcom/android/gallery3d/ui/DetailsWindow$CloseListener;)V

    .line 473
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLView;->addComponent(Lcom/android/gallery3d/ui/GLView;)V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHighlightDrawer:Lcom/android/gallery3d/ui/HighlightDrawer;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetView;->setSelectionDrawer(Lcom/android/gallery3d/ui/SelectionDrawer;)V

    .line 476
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsWindow;->show()V

    .line 477
    return-void
.end method

.method private startTransition()V
    .locals 3

    .prologue
    .line 411
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-static {v1}, Lcom/android/gallery3d/ui/PositionRepository;->getInstance(Lcom/android/gallery3d/app/GalleryActivity;)Lcom/android/gallery3d/ui/PositionRepository;

    move-result-object v0

    .line 413
    .local v0, repository:Lcom/android/gallery3d/ui/PositionRepository;
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    new-instance v2, Lcom/android/gallery3d/app/AlbumSetPage$4;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/app/AlbumSetPage$4;-><init>(Lcom/android/gallery3d/app/AlbumSetPage;Lcom/android/gallery3d/ui/PositionRepository;)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/AlbumSetView;->startTransition(Lcom/android/gallery3d/ui/PositionProvider;)V

    .line 424
    return-void
.end method


# virtual methods
.method public doCluster(I)V
    .locals 3
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/FilterUtils;->switchClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 213
    const-string v2, "media-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-static {v2}, Lcom/android/gallery3d/ui/PositionRepository;->getInstance(Lcom/android/gallery3d/app/GalleryActivity;)Lcom/android/gallery3d/ui/PositionRepository;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/AlbumSetView;->savePositions(Lcom/android/gallery3d/ui/PositionRepository;)V

    .line 215
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 216
    return-void
.end method

.method public doFilter(I)V
    .locals 3
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v0, p1}, Lcom/android/gallery3d/app/FilterUtils;->switchFilterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 221
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 222
    const-string v2, "media-path"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-static {v2}, Lcom/android/gallery3d/ui/PositionRepository;->getInstance(Lcom/android/gallery3d/app/GalleryActivity;)Lcom/android/gallery3d/ui/PositionRepository;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/AlbumSetView;->savePositions(Lcom/android/gallery3d/ui/PositionRepository;)V

    .line 224
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0, p0, v2, v1}, Lcom/android/gallery3d/app/StateManager;->switchState(Lcom/android/gallery3d/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 225
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hideDetails()V

    .line 151
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-static {v1}, Lcom/android/gallery3d/ui/PositionRepository;->getInstance(Lcom/android/gallery3d/app/GalleryActivity;)Lcom/android/gallery3d/ui/PositionRepository;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/AlbumSetView;->savePositions(Lcom/android/gallery3d/ui/PositionRepository;)V

    .line 149
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"
    .parameter "restoreState"

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->initializeViews()V

    .line 235
    invoke-direct {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->initializeData(Landroid/os/Bundle;)V

    .line 236
    const-string v0, "get-content"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    .line 237
    new-instance v0, Lcom/android/gallery3d/app/EyePosition;

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/gallery3d/app/EyePosition;-><init>(Landroid/content/Context;Lcom/android/gallery3d/app/EyePosition$EyePositionListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    .line 239
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->startTransition()V

    .line 240
    return-void
.end method

.method protected onCreateActionBar(Landroid/view/Menu;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 312
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast v0, Landroid/app/Activity;

    .line 313
    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 315
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/app/StateManager;->hasStateClass(Ljava/lang/Class;)Z

    move-result v2

    .line 318
    iget-boolean v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-eqz v3, :cond_1

    .line 319
    const v3, 0x7f0b0007

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 320
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mData:Landroid/os/Bundle;

    const-string v3, "type-bits"

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 322
    const v3, 0x7f080012

    .line 323
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_2

    .line 324
    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const v1, 0x7f080013

    .line 328
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 333
    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lcom/android/gallery3d/app/FilterUtils;->setupMenuItems(Landroid/view/Menu;Lcom/android/gallery3d/data/Path;Z)V

    .line 334
    return v5

    .line 324
    :cond_0
    const v1, 0x7f080014

    goto :goto_0

    .line 330
    :cond_1
    const v3, 0x7f0b0001

    invoke-virtual {v1, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 331
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method public onEyePositionChanged(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->lockRendering()V

    .line 133
    iput p1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mX:F

    .line 134
    iput p2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mY:F

    .line 135
    iput p3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mZ:F

    .line 136
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->unlockRendering()V

    .line 137
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    .line 138
    return-void
.end method

.method protected onItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 339
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 397
    :goto_0
    return v0

    .line 341
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->onBackPressed()V

    move v0, v3

    .line 342
    goto :goto_0

    .line 344
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/AlbumSetPage;->doCluster(I)V

    move v0, v3

    .line 345
    goto :goto_0

    .line 347
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/AlbumSetPage;->doCluster(I)V

    move v0, v3

    .line 348
    goto :goto_0

    .line 350
    :pswitch_4
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/AlbumSetPage;->doCluster(I)V

    move v0, v3

    .line 351
    goto :goto_0

    .line 353
    :pswitch_5
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AlbumSetPage;->doCluster(I)V

    move v0, v3

    .line 354
    goto :goto_0

    .line 356
    :pswitch_6
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AlbumSetPage;->doCluster(I)V

    move v0, v3

    .line 357
    goto :goto_0

    .line 359
    :pswitch_7
    invoke-virtual {p0, v3}, Lcom/android/gallery3d/app/AlbumSetPage;->doFilter(I)V

    move v0, v3

    .line 360
    goto :goto_0

    .line 362
    :pswitch_8
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/app/AlbumSetPage;->doFilter(I)V

    move v0, v3

    .line 363
    goto :goto_0

    .line 365
    :pswitch_9
    invoke-virtual {p0, v4}, Lcom/android/gallery3d/app/AlbumSetPage;->doFilter(I)V

    move v0, v3

    .line 366
    goto :goto_0

    .line 368
    :pswitch_a
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    iget-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v0, :cond_0

    .line 370
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->hideDetails()V

    :goto_1
    move v0, v3

    .line 380
    goto :goto_0

    .line 372
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->showDetails()V

    goto :goto_1

    .line 375
    :cond_1
    iget-object p0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    check-cast p0, Landroid/content/Context;

    .line 376
    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 382
    :pswitch_b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 385
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 386
    goto :goto_0

    .line 389
    :pswitch_c
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 390
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getDataManager()Lcom/android/gallery3d/data/DataManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v1

    .line 392
    const-string v2, "media-path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v1}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/android/gallery3d/app/ManageCachePage;

    invoke-virtual {v1, v2, v0}, Lcom/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    move v0, v3

    .line 394
    goto/16 :goto_0

    .line 339
    nop

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
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onLongTap(I)V
    .locals 3
    .parameter "slotIndex"

    .prologue
    .line 198
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-eqz v1, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v1, :cond_2

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/app/AlbumSetPage;->onSingleTapUp(I)V

    goto :goto_0

    .line 202
    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    .line 203
    .local v0, set:Lcom/android/gallery3d/data/MediaSet;
    if-eqz v0, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 205
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/AlbumSetView;->invalidate()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onPause()V

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    .line 246
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ActionModeHandler;->pause()V

    .line 247
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->pause()V

    .line 248
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetView;->pause()V

    .line 249
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/EyePosition;->pause()V

    .line 250
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/DetailsWindow;->pause()V

    .line 253
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 257
    invoke-super {p0}, Lcom/android/gallery3d/app/ActivityState;->onResume()V

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mIsActive:Z

    .line 259
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/app/AlbumSetPage;->setContentPane(Lcom/android/gallery3d/ui/GLView;)V

    .line 260
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->resume()V

    .line 261
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetView;->resume()V

    .line 262
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mEyePosition:Lcom/android/gallery3d/app/EyePosition;

    invoke-virtual {v0}, Lcom/android/gallery3d/app/EyePosition;->resume()V

    .line 263
    return-void
.end method

.method public onSelectionChange(Lcom/android/gallery3d/data/Path;Z)V
    .locals 6
    .parameter "path"
    .parameter "selected"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 449
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_0

    move v2, v4

    :goto_0
    invoke-static {v2}, Lcom/android/gallery3d/util/Utils;->Assert(Z)V

    .line 450
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 451
    .local v0, count:I
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090001

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, format:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 454
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v2, p1, p2}, Lcom/android/gallery3d/ui/ActionModeHandler;->updateSupportedOperation(Lcom/android/gallery3d/data/Path;Z)V

    .line 455
    return-void

    .end local v0           #count:I
    .end local v1           #format:Ljava/lang/String;
    :cond_0
    move v2, v5

    .line 449
    goto :goto_0
.end method

.method public onSelectionModeChange(I)V
    .locals 6
    .parameter "mode"

    .prologue
    .line 427
    packed-switch p1, :pswitch_data_0

    .line 446
    :goto_0
    return-void

    .line 429
    :pswitch_0
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/ActionModeHandler;->startActionMode()Landroid/view/ActionMode;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionMode:Landroid/view/ActionMode;

    goto :goto_0

    .line 433
    :pswitch_1
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 434
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 438
    :pswitch_2
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/SelectionManager;->getSelectedCount()I

    move-result v0

    .line 439
    .local v0, count:I
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v2}, Lcom/android/gallery3d/app/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090001

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, format:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActionModeHandler:Lcom/android/gallery3d/ui/ActionModeHandler;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/ActionModeHandler;->setTitle(Ljava/lang/String;)V

    .line 442
    iget-object v2, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mRootPane:Lcom/android/gallery3d/ui/GLView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/GLView;->invalidate()V

    goto :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSingleTapUp(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 165
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetDataAdapter:Lcom/android/gallery3d/app/AlbumSetDataAdapter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/app/AlbumSetDataAdapter;->getMediaSet(I)Lcom/android/gallery3d/data/MediaSet;

    move-result-object v0

    .line 166
    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-boolean v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mShowDetails:Z

    if-eqz v1, :cond_1

    .line 169
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mHighlightDrawer:Lcom/android/gallery3d/ui/HighlightDrawer;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/HighlightDrawer;->setHighlightItem(Lcom/android/gallery3d/data/Path;)V

    .line 171
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mDetailsWindow:Lcom/android/gallery3d/ui/DetailsWindow;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/DetailsWindow;->reloadDetails(I)V

    goto :goto_0

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 173
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 174
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 176
    invoke-direct {p0, p1, v3}, Lcom/android/gallery3d/app/AlbumSetPage;->savePositions(I[I)V

    .line 177
    const-string v4, "set-center"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 178
    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 179
    const-string v0, "media-path"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/AlbumSetPage;

    invoke-virtual {v0, v2, v5, v1}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 183
    :cond_2
    iget-boolean v3, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mGetContent:Z

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getSupportedOperations()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_3

    .line 185
    const-string v0, "auto-select-all"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    :cond_3
    const-string v0, "media-path"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mActivity:Lcom/android/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcom/android/gallery3d/app/GalleryActivity;->getStateManager()Lcom/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v2, Lcom/android/gallery3d/app/AlbumPage;

    invoke-virtual {v0, v2, v5, v1}, Lcom/android/gallery3d/app/StateManager;->startStateForResult(Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 192
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mSelectionManager:Lcom/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/data/MediaSet;->getPath()Lcom/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/ui/SelectionManager;->toggle(Lcom/android/gallery3d/data/Path;)V

    .line 193
    iget-object v0, p0, Lcom/android/gallery3d/app/AlbumSetPage;->mAlbumSetView:Lcom/android/gallery3d/ui/AlbumSetView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/AlbumSetView;->invalidate()V

    goto :goto_0
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 403
    packed-switch p1, :pswitch_data_0

    .line 408
    :goto_0
    return-void

    .line 405
    :pswitch_0
    invoke-direct {p0}, Lcom/android/gallery3d/app/AlbumSetPage;->startTransition()V

    goto :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
