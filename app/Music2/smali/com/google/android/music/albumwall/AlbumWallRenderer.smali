.class public Lcom/google/android/music/albumwall/AlbumWallRenderer;
.super Lcom/google/android/opengl/glview/GLViewRenderer;
.source "AlbumWallRenderer.java"

# interfaces
.implements Lcom/google/android/music/albumwall/AlbumWallReplies;


# static fields
.field private static final STACK_SPACING:F = 40.0f

.field private static final TAG:Ljava/lang/String; = "AlbumWallRenderer"

.field private static final TRACE:Z = false

.field protected static final VIEWID_ALBUM:I = 0x1

.field protected static final VIEWID_ARTISTLABEL:I = 0x3

.field protected static final VIEWID_ARTISTPILE:I = 0x2

.field protected static final VIEWID_CLOSE_BUTTON:I = 0x4

.field protected static final VIEWID_EXPANDED_BANNER:I = 0x4

.field private static final sRandom:Ljava/util/Random;


# instance fields
.field private mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

.field protected mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

.field protected mDelegate:Lcom/google/android/music/albumwall/AlbumWallCallback;

.field private mFullLayoutRequested:Z

.field protected mHelper:Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;

.field protected mModel:Lcom/google/android/music/albumwall/Model;

.field private mQueuedDrawFrameRunnables:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->sRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/AlbumWallConfig;)V
    .locals 2
    .parameter "context"
    .parameter "albumWallView"
    .parameter "config"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/glview/GLViewRenderer;-><init>(Landroid/content/Context;Lcom/google/android/opengl/glview/GLSurfaceView;)V

    .line 52
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mQueuedDrawFrameRunnables:Ljava/util/LinkedList;

    .line 57
    new-instance v0, Lcom/google/android/music/albumwall/Model;

    invoke-direct {v0}, Lcom/google/android/music/albumwall/Model;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    .line 63
    new-instance v0, Lcom/google/android/music/albumwall/AlbumPoseCache;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/AlbumPoseCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

    .line 67
    iput-object p3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectItemLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->longPressItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/albumwall/AlbumWallRenderer;)Lcom/google/android/music/albumwall/AlbumPoseCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/albumwall/AlbumWallRenderer;)Lcom/google/android/opengl/glview/TopLevelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->selectPileLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->longPressPile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V

    return-void
.end method

.method private createAlbumList(ZLcom/google/android/music/albumwall/AlbumWallCallback$Pile;ILcom/google/android/opengl/glview/TexturedQuad$Pose;)Lcom/google/android/opengl/glview/GLView;
    .locals 19
    .parameter "isExpanded"
    .parameter "pile"
    .parameter "pileIndex"
    .parameter "defaultPose"

    .prologue
    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isExpandedLabelVertical()Z

    move-result v5

    .line 304
    .local v5, isExpandedLabelVertical:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v11

    .line 305
    .local v11, isHorizontalScrolling:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isClusters()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    move v7, v3

    .line 306
    .local v7, isTopLevel:Z
    :goto_0
    new-instance v2, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p4

    move/from16 v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/google/android/music/albumwall/AlbumWallRenderer$1;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/opengl/glview/TexturedQuad$Pose;ZI)V

    .line 386
    .local v2, adapter:Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;
    new-instance v8, Lcom/google/android/music/albumwall/AlbumWallGridView;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getGridPaddingWidth()F

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getGridPaddingHeight()F

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getGridMarginW()F

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getGridMarginH()F

    move-result v15

    move-object/from16 v0, p0

    move v1, v11

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getMinorAxisLength(Z)F

    move-result v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object/from16 v18, v0

    move-object v10, v2

    invoke-direct/range {v8 .. v18}, Lcom/google/android/music/albumwall/AlbumWallGridView;-><init>(ILcom/google/android/music/albumwall/AlbumWallGridView$Adapter;ZFFFFFILcom/google/android/music/albumwall/Model;)V

    return-object v8

    .line 305
    .end local v2           #adapter:Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;
    .end local v7           #isTopLevel:Z
    :cond_0
    const/4 v3, 0x0

    move v7, v3

    goto :goto_0
.end method

.method private createArtistList(II)Lcom/google/android/opengl/glview/GLView;
    .locals 12
    .parameter "baseIndex"
    .parameter "maxIndex"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isClusterExpandedLabelVertical()Z

    move-result v11

    .line 459
    .local v11, isClusterExpandedLabelVertical:Z
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v3

    .line 460
    .local v3, isHorizontalScrolling:Z
    new-instance v2, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;

    invoke-direct {v2, p0, p2, p1, v11}, Lcom/google/android/music/albumwall/AlbumWallRenderer$7;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;IIZ)V

    .line 563
    .local v2, adapter:Lcom/google/android/music/albumwall/AlbumWallGridView$Adapter;
    new-instance v0, Lcom/google/android/music/albumwall/AlbumWallGridView;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v4}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterGridPaddingWidth()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterGridPaddingHeight()F

    move-result v5

    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getGridMarginW()F

    move-result v6

    iget-object v7, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v7}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getGridMarginH()F

    move-result v7

    invoke-direct {p0, v3}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getMinorAxisLength(Z)F

    move-result v8

    iget-object v10, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move v9, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/music/albumwall/AlbumWallGridView;-><init>(ILcom/google/android/music/albumwall/AlbumWallGridView$Adapter;ZFFFFFILcom/google/android/music/albumwall/Model;)V

    return-object v0
.end method

.method private createBackgroundView()Lcom/google/android/opengl/glview/GLView;
    .locals 6

    .prologue
    const v5, 0x3dcccccd

    .line 161
    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getDefaultBackgroundDrawableId()I

    move-result v2

    .line 162
    .local v2, defaultBackgroundResourceId:I
    const/4 v1, 0x0

    .line 163
    .local v1, defaultBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 166
    :cond_0
    new-instance v0, Lcom/google/android/music/albumwall/BackgroundView;

    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, v3, v1, v4}, Lcom/google/android/music/albumwall/BackgroundView;-><init>(Lcom/google/android/music/albumwall/Model;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;)V

    .line 168
    .local v0, backgroundView:Lcom/google/android/music/albumwall/BackgroundView;
    const v3, 0x3e99999a

    const/high16 v4, 0x3f80

    invoke-virtual {v0, v5, v5, v3, v4}, Lcom/google/android/music/albumwall/BackgroundView;->setColor(FFFF)V

    .line 169
    return-object v0
.end method

.method private createExpandedArtistList(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)Lcom/google/android/opengl/glview/GLView;
    .locals 9
    .parameter "pile"
    .parameter "expandedPileIndex"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 575
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v1

    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getBetweenGridPadding()F

    move-result v3

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genBox(ZIFZI)Lcom/google/android/opengl/glview/GLLinearLayout;

    move-result-object v8

    .line 577
    .local v8, list:Lcom/google/android/opengl/glview/GLView;
    const/4 v6, 0x0

    .line 578
    .local v6, defaultPose:Lcom/google/android/opengl/glview/TexturedQuad$Pose;
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1, v2, v2}, Lcom/google/android/music/albumwall/Model;->getItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v7

    .line 579
    .local v7, item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model;->isManageAlbumMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    const/4 v1, 0x2

    invoke-virtual {v0, v7, v1}, Lcom/google/android/music/albumwall/Model;->invalidateItemTexture(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;I)V

    .line 585
    :cond_0
    if-eqz v7, :cond_1

    .line 586
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

    invoke-virtual {v0, v7}, Lcom/google/android/music/albumwall/AlbumPoseCache;->getPose(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/opengl/glview/TexturedQuad$Pose;

    move-result-object v6

    .line 590
    :cond_1
    invoke-direct {p0, v2, p2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createArtistList(II)Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 591
    invoke-virtual {p0, p1, p2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genExpandedBanner(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 592
    invoke-direct {p0, v4, p1, p2, v6}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createAlbumList(ZLcom/google/android/music/albumwall/AlbumWallCallback$Pile;ILcom/google/android/opengl/glview/TexturedQuad$Pose;)Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 593
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genExpandedSeparator()Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 594
    add-int/lit8 v0, p2, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createArtistList(II)Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 595
    return-object v8
.end method

.method private createListFromModel()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 260
    iget-object v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;

    if-nez v8, :cond_1

    .line 261
    invoke-direct {p0, v10}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->installList(Lcom/google/android/opengl/glview/GLView;)V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    const/4 v1, 0x0

    .line 265
    .local v1, expandedArtistList:Lcom/google/android/opengl/glview/GLView;
    iget-object v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v8}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isClusters()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 266
    iget-object v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v8}, Lcom/google/android/music/albumwall/Model;->getExpandedPile()Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v2

    .line 267
    .local v2, expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    iget-object v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v8}, Lcom/google/android/music/albumwall/Model;->getExpandedPileIndex()I

    move-result v3

    .line 268
    .local v3, expandedPileIndex:I
    if-eqz v2, :cond_2

    if-eq v3, v12, :cond_2

    .line 269
    invoke-direct {p0, v2, v3}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createExpandedArtistList(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v1

    .line 270
    invoke-direct {p0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->installList(Lcom/google/android/opengl/glview/GLView;)V

    .line 284
    .end local v2           #expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .end local v3           #expandedPileIndex:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v6

    .line 285
    .local v6, root:Lcom/google/android/opengl/glview/TopLevelView;
    invoke-virtual {v6}, Lcom/google/android/opengl/glview/TopLevelView;->getChildTransformer()Lcom/google/android/opengl/glview/Transformer;

    move-result-object v7

    .line 286
    .local v7, transformer:Lcom/google/android/opengl/glview/Transformer;
    invoke-virtual {v7, v9}, Lcom/google/android/opengl/glview/Transformer;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v4

    .line 288
    .local v4, ourList:Lcom/google/android/opengl/glview/GLView;
    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    .line 289
    const/4 v8, 0x4

    invoke-virtual {v1, v8}, Lcom/google/android/opengl/glview/GLView;->findViewById(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 290
    .local v0, banner:Lcom/google/android/opengl/glview/GLView;
    if-eqz v0, :cond_0

    .line 291
    iget-object v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v8}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 293
    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->x()F

    move-result v8

    neg-float v8, v8

    iget-object v9, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v9}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getCellWidth()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v4, v8, v11}, Lcom/google/android/opengl/glview/GLView;->requestScrollTo(FF)V

    goto :goto_0

    .line 272
    .end local v0           #banner:Lcom/google/android/opengl/glview/GLView;
    .end local v4           #ourList:Lcom/google/android/opengl/glview/GLView;
    .end local v6           #root:Lcom/google/android/opengl/glview/TopLevelView;
    .end local v7           #transformer:Lcom/google/android/opengl/glview/Transformer;
    .restart local v2       #expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .restart local v3       #expandedPileIndex:I
    :cond_2
    invoke-direct {p0, v9, v12}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createArtistList(II)Lcom/google/android/opengl/glview/GLView;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->installList(Lcom/google/android/opengl/glview/GLView;)V

    goto :goto_1

    .line 276
    .end local v2           #expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .end local v3           #expandedPileIndex:I
    :cond_3
    iget-object v8, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v8, v9}, Lcom/google/android/music/albumwall/Model;->getPile(I)Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v5

    .line 277
    .local v5, pile0:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    if-nez v5, :cond_4

    .line 278
    invoke-direct {p0, v10}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->installList(Lcom/google/android/opengl/glview/GLView;)V

    goto :goto_1

    .line 280
    :cond_4
    invoke-direct {p0, v9, v5, v9, v10}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createAlbumList(ZLcom/google/android/music/albumwall/AlbumWallCallback$Pile;ILcom/google/android/opengl/glview/TexturedQuad$Pose;)Lcom/google/android/opengl/glview/GLView;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->installList(Lcom/google/android/opengl/glview/GLView;)V

    goto :goto_1

    .line 295
    .end local v5           #pile0:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    .restart local v0       #banner:Lcom/google/android/opengl/glview/GLView;
    .restart local v4       #ourList:Lcom/google/android/opengl/glview/GLView;
    .restart local v6       #root:Lcom/google/android/opengl/glview/TopLevelView;
    .restart local v7       #transformer:Lcom/google/android/opengl/glview/Transformer;
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->y()F

    move-result v8

    iget-object v9, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v9}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getTopMargin()F

    move-result v9

    sub-float/2addr v8, v9

    neg-float v8, v8

    invoke-virtual {v4, v11, v8}, Lcom/google/android/opengl/glview/GLView;->requestScrollTo(FF)V

    goto :goto_0
.end method

.method private createMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/MarkView;
    .locals 6
    .parameter "item"

    .prologue
    .line 838
    new-instance v0, Lcom/google/android/music/albumwall/MarkView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelMarkWidth()F

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelMarkHeight()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/MarkView;-><init>(IFFLcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 839
    .local v0, mark:Lcom/google/android/music/albumwall/MarkView;
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelMarkOffsetX()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelMarkOffsetY()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/albumwall/MarkView;->setOffset(FFF)V

    .line 840
    return-object v0
.end method

.method private getMinorAxisLength(Z)F
    .locals 2
    .parameter "isHorizontalScrolling"

    .prologue
    .line 571
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->canvasHeight()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getTopMargin()F

    move-result v1

    sub-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->canvasWidth()F

    move-result v0

    goto :goto_0
.end method

.method private installList(Lcom/google/android/opengl/glview/GLView;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 217
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v1

    .line 218
    .local v1, root:Lcom/google/android/opengl/glview/TopLevelView;
    invoke-virtual {v1}, Lcom/google/android/opengl/glview/TopLevelView;->getChildTransformer()Lcom/google/android/opengl/glview/Transformer;

    move-result-object v4

    .line 220
    .local v4, transformer:Lcom/google/android/opengl/glview/Transformer;
    invoke-virtual {v4, v7}, Lcom/google/android/opengl/glview/Transformer;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 221
    .local v0, oldChild:Lcom/google/android/opengl/glview/GLView;
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLView;->freeOpenGlResources()V

    .line 223
    invoke-virtual {v1, v0}, Lcom/google/android/opengl/glview/TopLevelView;->removeView(Lcom/google/android/opengl/glview/GLView;)V

    .line 227
    :cond_0
    if-eqz p1, :cond_2

    .line 229
    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getTopMargin()F

    move-result v3

    .line 230
    .local v3, topMargin:F
    cmpl-float v6, v3, v8

    if-lez v6, :cond_1

    .line 231
    invoke-static {v7, v8, v7, v7}, Lcom/google/android/opengl/glview/GLLinearLayout;->createVBox(IFII)Lcom/google/android/opengl/glview/GLLinearLayout;

    move-result-object v5

    .line 232
    .local v5, vbox:Lcom/google/android/opengl/glview/GLView;
    new-instance v2, Lcom/google/android/opengl/glview/Spacer;

    invoke-direct {v2, v8, v3}, Lcom/google/android/opengl/glview/Spacer;-><init>(FF)V

    .line 233
    .local v2, spacer:Lcom/google/android/opengl/glview/GLView;
    invoke-virtual {v5, v2}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 234
    invoke-virtual {v5, p1}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 235
    move-object p1, v5

    .line 239
    .end local v2           #spacer:Lcom/google/android/opengl/glview/GLView;
    .end local v5           #vbox:Lcom/google/android/opengl/glview/GLView;
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->canvasWidth()F

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->canvasHeight()F

    move-result v7

    invoke-virtual {p1, v8, v8, v6, v7}, Lcom/google/android/opengl/glview/GLView;->setContentRect(FFFF)V

    .line 240
    invoke-virtual {v4, p1}, Lcom/google/android/opengl/glview/Transformer;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 243
    .end local v3           #topMargin:F
    :cond_2
    return-void
.end method

.method private isListEmpty()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 246
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v1

    .line 247
    .local v1, root:Lcom/google/android/opengl/glview/TopLevelView;
    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {v1}, Lcom/google/android/opengl/glview/TopLevelView;->getChildTransformer()Lcom/google/android/opengl/glview/Transformer;

    move-result-object v2

    .line 249
    .local v2, transformer:Lcom/google/android/opengl/glview/Transformer;
    if-eqz v2, :cond_0

    .line 250
    invoke-virtual {v2, v3}, Lcom/google/android/opengl/glview/Transformer;->getChildAt(I)Lcom/google/android/opengl/glview/GLView;

    move-result-object v0

    .line 251
    .local v0, child:Lcom/google/android/opengl/glview/GLView;
    if-eqz v0, :cond_0

    .line 256
    .end local v0           #child:Lcom/google/android/opengl/glview/GLView;
    .end local v2           #transformer:Lcom/google/android/opengl/glview/Transformer;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private longPressItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V
    .locals 3
    .parameter "item"
    .parameter "view"

    .prologue
    .line 405
    invoke-virtual {p2}, Lcom/google/android/opengl/glview/GLView;->getGlobalCenterPoint()Lcom/google/android/opengl/glview/Point;

    move-result-object v0

    .line 407
    .local v0, pt:Lcom/google/android/opengl/glview/Point;
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;

    new-instance v2, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer$3;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/Point;)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;->post(Ljava/lang/Runnable;)V

    .line 413
    return-void
.end method

.method private longPressPile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V
    .locals 3
    .parameter "pile"
    .parameter "view"

    .prologue
    .line 430
    invoke-virtual {p2}, Lcom/google/android/opengl/glview/GLView;->getGlobalCenterPoint()Lcom/google/android/opengl/glview/Point;

    move-result-object v0

    .line 431
    .local v0, pt:Lcom/google/android/opengl/glview/Point;
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;

    new-instance v2, Lcom/google/android/music/albumwall/AlbumWallRenderer$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer$5;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/Point;)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;->post(Ljava/lang/Runnable;)V

    .line 437
    return-void
.end method

.method private processQueuedRunnables()V
    .locals 3

    .prologue
    .line 967
    :goto_0
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mQueuedDrawFrameRunnables:Ljava/util/LinkedList;

    monitor-enter v1

    .line 968
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mQueuedDrawFrameRunnables:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 969
    .local v0, reply:Ljava/lang/Runnable;
    monitor-exit v1

    .line 970
    if-nez v0, :cond_0

    .line 971
    return-void

    .line 969
    .end local v0           #reply:Ljava/lang/Runnable;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 973
    .restart local v0       #reply:Ljava/lang/Runnable;
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private selectItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;

    new-instance v1, Lcom/google/android/music/albumwall/AlbumWallRenderer$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/albumwall/AlbumWallRenderer$2;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;->post(Ljava/lang/Runnable;)V

    .line 400
    return-void
.end method

.method private selectItemLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/GLView;)V
    .locals 3
    .parameter "item"
    .parameter "view"

    .prologue
    .line 418
    invoke-virtual {p2}, Lcom/google/android/opengl/glview/GLView;->getGlobalCenterPoint()Lcom/google/android/opengl/glview/Point;

    move-result-object v0

    .line 420
    .local v0, pt:Lcom/google/android/opengl/glview/Point;
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;

    new-instance v2, Lcom/google/android/music/albumwall/AlbumWallRenderer$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer$4;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/Point;)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;->post(Ljava/lang/Runnable;)V

    .line 425
    return-void
.end method

.method private selectPileLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/GLView;)V
    .locals 3
    .parameter "pile"
    .parameter "view"

    .prologue
    .line 442
    invoke-virtual {p2}, Lcom/google/android/opengl/glview/GLView;->getGlobalCenterPoint()Lcom/google/android/opengl/glview/Point;

    move-result-object v0

    .line 444
    .local v0, pt:Lcom/google/android/opengl/glview/Point;
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;

    new-instance v2, Lcom/google/android/music/albumwall/AlbumWallRenderer$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer$6;-><init>(Lcom/google/android/music/albumwall/AlbumWallRenderer;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Lcom/google/android/opengl/glview/Point;)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;->post(Ljava/lang/Runnable;)V

    .line 449
    return-void
.end method

.method private setAlbumOffset(Lcom/google/android/music/albumwall/ItemView;I)V
    .locals 10
    .parameter "album"
    .parameter "idInPile"

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x3f00

    .line 761
    if-nez p2, :cond_0

    .line 783
    :goto_0
    return-void

    .line 766
    :cond_0
    sget-object v5, Lcom/google/android/music/albumwall/AlbumWallRenderer;->sRandom:Ljava/util/Random;

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/ItemView;->getItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    add-int/2addr v6, p2

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Random;->setSeed(J)V

    .line 769
    const/high16 v5, 0x41f0

    sget-object v6, Lcom/google/android/music/albumwall/AlbumWallRenderer;->sRandom:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    sub-float v6, v8, v6

    mul-float v0, v5, v6

    .line 770
    .local v0, rotZ:F
    invoke-virtual {p1, v0}, Lcom/google/android/music/albumwall/ItemView;->setRotation(F)V

    .line 772
    rem-int/lit8 v5, p2, 0x2

    if-nez v5, :cond_1

    move v1, v9

    .line 773
    .local v1, sign:I
    :goto_1
    const/high16 v5, 0x41a8

    int-to-float v6, p2

    mul-float/2addr v5, v6

    sget-object v6, Lcom/google/android/music/albumwall/AlbumWallRenderer;->sRandom:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    sub-float v6, v8, v6

    const/high16 v7, 0x4100

    mul-float/2addr v6, v7

    int-to-float v7, p2

    mul-float/2addr v6, v7

    add-float v2, v5, v6

    .line 774
    .local v2, x:F
    const/4 v3, 0x0

    .line 775
    .local v3, y:F
    if-ne v1, v9, :cond_2

    .line 780
    :goto_2
    int-to-float v5, p2

    const/high16 v6, 0x4220

    mul-float v4, v5, v6

    .line 782
    .local v4, z:F
    invoke-virtual {p1, v2, v3, v4}, Lcom/google/android/music/albumwall/ItemView;->setOffset(FFF)V

    goto :goto_0

    .line 772
    .end local v1           #sign:I
    .end local v2           #x:F
    .end local v3           #y:F
    .end local v4           #z:F
    :cond_1
    const/4 v5, -0x1

    move v1, v5

    goto :goto_1

    .line 778
    .restart local v1       #sign:I
    .restart local v2       #x:F
    .restart local v3       #y:F
    :cond_2
    const/high16 v5, -0x3f40

    sget-object v6, Lcom/google/android/music/albumwall/AlbumWallRenderer;->sRandom:Ljava/util/Random;

    invoke-virtual {v6}, Ljava/util/Random;->nextFloat()F

    move-result v6

    const/high16 v7, 0x4140

    mul-float/2addr v6, v7

    sub-float v3, v5, v6

    goto :goto_2
.end method


# virtual methods
.method protected createDrawableView(I)Lcom/google/android/opengl/glview/DrawableView;
    .locals 3
    .parameter "resourceId"

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 174
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/google/android/opengl/glview/DrawableView;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/google/android/opengl/glview/DrawableView;-><init>(ILandroid/graphics/drawable/Drawable;)V

    .line 175
    .local v1, view:Lcom/google/android/opengl/glview/DrawableView;
    return-object v1
.end method

.method protected createDrawableView(IFF)Lcom/google/android/opengl/glview/DrawableView;
    .locals 6
    .parameter "resourceId"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 180
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/google/android/opengl/glview/DrawableView;

    const/4 v1, 0x0

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/opengl/glview/DrawableView;-><init>(ILandroid/graphics/drawable/Drawable;FFLandroid/graphics/Bitmap$Config;)V

    .line 181
    .local v0, view:Lcom/google/android/opengl/glview/DrawableView;
    return-object v0
.end method

.method protected drawFrame()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getFrameTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/Model;->setFrameTime(J)V

    .line 154
    invoke-direct {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->processQueuedRunnables()V

    .line 155
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model;->beginFrame()V

    .line 156
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLViewRenderer;->drawFrame()V

    .line 157
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model;->endFrame()V

    .line 158
    return-void
.end method

.method protected genAlbum(ZFFFLcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/opengl/glview/TexturedQuad$Pose;)Lcom/google/android/opengl/glview/GLView;
    .locals 20
    .parameter "horizontal"
    .parameter "imageW"
    .parameter "imageH"
    .parameter "labelMargin"
    .parameter "item"
    .parameter "defaultPose"

    .prologue
    .line 794
    const/16 v19, 0x1

    .line 795
    .local v19, wantLabel:Z
    const/high16 v13, 0x3f80

    .line 796
    .local v13, expandFactor:F
    const/high16 v16, 0x3f00

    .line 797
    .local v16, minExpand:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isClusters()Z

    move-result v6

    if-nez v6, :cond_0

    .line 799
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/Model;->getExpandUngroupedMetadata()F

    move-result v13

    .line 800
    const/high16 v6, 0x3f00

    cmpl-float v6, v13, v6

    if-lez v6, :cond_2

    const/4 v6, 0x1

    move/from16 v19, v6

    .line 803
    :cond_0
    :goto_0
    new-instance v4, Lcom/google/android/music/albumwall/ItemView;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object v8, v0

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/google/android/music/albumwall/ItemView;-><init>(IFFLcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 804
    .local v4, album:Lcom/google/android/music/albumwall/ItemView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/music/albumwall/Model;->getFrameTime()J

    move-result-wide v7

    invoke-virtual {v6, v4, v7, v8}, Lcom/google/android/music/albumwall/AlbumPoseCache;->restore(Lcom/google/android/music/albumwall/ItemView;J)Z

    move-result v17

    .line 805
    .local v17, restored:Z
    if-nez v17, :cond_1

    if-eqz p6, :cond_1

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/Model;->getFrameTime()J

    move-result-wide v6

    move-object v0, v4

    move-object/from16 v1, p6

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/albumwall/ItemView;->setOldPose(Lcom/google/android/opengl/glview/TexturedQuad$Pose;J)V

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v4

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/AlbumPoseCache;->setPose(Lcom/google/android/music/albumwall/ItemView;Lcom/google/android/opengl/glview/TexturedQuad$Pose;)V

    .line 810
    :cond_1
    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Lcom/google/android/music/albumwall/ItemView;->setFlags(I)V

    .line 812
    if-eqz v19, :cond_3

    .line 813
    const/high16 v6, 0x3f00

    sub-float v6, v13, v6

    const/high16 v7, 0x4000

    mul-float v12, v6, v7

    .line 814
    .local v12, alpha:F
    new-instance v5, Lcom/google/android/music/albumwall/ItemLabel;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelWidth()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelHeight()F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object v9, v0

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/google/android/music/albumwall/ItemLabel;-><init>(IFFLcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 816
    .local v5, label:Lcom/google/android/music/albumwall/ItemLabel;
    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Lcom/google/android/music/albumwall/ItemLabel;->setFlags(I)V

    .line 818
    const/4 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v9, p4

    invoke-virtual/range {v6 .. v11}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genBox(ZIFZI)Lcom/google/android/opengl/glview/GLLinearLayout;

    move-result-object v14

    .line 819
    .local v14, list:Lcom/google/android/opengl/glview/GLView;
    invoke-virtual {v14, v4}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 823
    new-instance v18, Lcom/google/android/opengl/glview/Stack;

    const/4 v6, 0x0

    const/16 v7, 0x12

    move-object/from16 v0, v18

    move v1, v6

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/opengl/glview/Stack;-><init>(II)V

    .line 824
    .local v18, stack:Lcom/google/android/opengl/glview/Stack;
    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/Stack;->setAlpha(F)V

    .line 825
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/MarkView;

    move-result-object v15

    .line 826
    .local v15, mark:Lcom/google/android/music/albumwall/MarkView;
    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/Stack;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 827
    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/Stack;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 828
    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    move-object v6, v14

    .line 831
    .end local v5           #label:Lcom/google/android/music/albumwall/ItemLabel;
    .end local v12           #alpha:F
    .end local v14           #list:Lcom/google/android/opengl/glview/GLView;
    .end local v15           #mark:Lcom/google/android/music/albumwall/MarkView;
    .end local v18           #stack:Lcom/google/android/opengl/glview/Stack;
    :goto_1
    return-object v6

    .line 800
    .end local v4           #album:Lcom/google/android/music/albumwall/ItemView;
    .end local v17           #restored:Z
    :cond_2
    const/4 v6, 0x0

    move/from16 v19, v6

    goto/16 :goto_0

    .restart local v4       #album:Lcom/google/android/music/albumwall/ItemView;
    .restart local v17       #restored:Z
    :cond_3
    move-object v6, v4

    .line 831
    goto :goto_1
.end method

.method protected genAlbumGroup(ZFLcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/opengl/glview/GLView;
    .locals 25
    .parameter "horizontal"
    .parameter "labelMargin"
    .parameter "pile"
    .parameter "wantLabel"
    .parameter "pileIndex"

    .prologue
    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object v6, v0

    const/4 v7, 0x0

    move-object v0, v6

    move-object/from16 v1, p3

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/Model;->getChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;Z)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getMaxClosedPileCount()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 709
    .local v23, numAlbums:I
    if-nez v23, :cond_0

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterSingleImageWidth()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterSingleImageHeight()F

    move-result v7

    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genPlaceHolderItem(FF)Lcom/google/android/opengl/glview/GLView;

    move-result-object v6

    .line 753
    :goto_0
    return-object v6

    .line 715
    :cond_0
    new-instance v4, Lcom/google/android/music/albumwall/PileView;

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterCellWidth()F

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterCellHeight()F

    move-result v9

    const/16 v10, 0x10

    move-object/from16 v6, p3

    move/from16 v7, p5

    invoke-direct/range {v4 .. v10}, Lcom/google/android/music/albumwall/PileView;-><init>(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;IFFI)V

    .line 717
    .local v4, pileView:Lcom/google/android/opengl/glview/GLView;
    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Lcom/google/android/opengl/glview/GLView;->setFlags(I)V

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/Model;->getFrameTime()J

    move-result-wide v18

    .line 720
    .local v18, frameTime:J
    const/4 v6, 0x1

    move/from16 v0, v23

    move v1, v6

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterSingleImageWidth()F

    move-result v6

    move v7, v6

    .line 722
    .local v7, imageW:F
    :goto_1
    const/4 v6, 0x1

    move/from16 v0, v23

    move v1, v6

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterSingleImageHeight()F

    move-result v6

    move v8, v6

    .line 726
    .local v8, imageH:F
    :goto_2
    const/4 v6, 0x1

    sub-int v20, v23, v6

    .local v20, i:I
    :goto_3
    if-ltz v20, :cond_4

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object v6, v0

    const/4 v9, 0x0

    move-object v0, v6

    move-object/from16 v1, p3

    move v2, v9

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/albumwall/Model;->getItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v10

    .line 728
    .local v10, item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    if-eqz v10, :cond_3

    .line 729
    new-instance v5, Lcom/google/android/music/albumwall/ItemView;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object v9, v0

    invoke-direct/range {v5 .. v10}, Lcom/google/android/music/albumwall/ItemView;-><init>(IFFLcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 730
    .local v5, album:Lcom/google/android/music/albumwall/ItemView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v5

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/albumwall/AlbumPoseCache;->restore(Lcom/google/android/music/albumwall/ItemView;J)Z

    .line 731
    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setAlbumOffset(Lcom/google/android/music/albumwall/ItemView;I)V

    .line 732
    invoke-virtual {v4, v5}, Lcom/google/android/opengl/glview/Stack;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 726
    .end local v5           #album:Lcom/google/android/music/albumwall/ItemView;
    :goto_4
    add-int/lit8 v20, v20, -0x1

    goto :goto_3

    .line 720
    .end local v7           #imageW:F
    .end local v8           #imageH:F
    .end local v10           #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .end local v20           #i:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterImageWidth()F

    move-result v6

    move v7, v6

    goto :goto_1

    .line 722
    .restart local v7       #imageW:F
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterImageHeight()F

    move-result v6

    move v8, v6

    goto :goto_2

    .line 735
    .restart local v8       #imageH:F
    .restart local v10       #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .restart local v20       #i:I
    :cond_3
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genPlaceHolderItem(FF)Lcom/google/android/opengl/glview/GLView;

    move-result-object v17

    .line 736
    .local v17, defaultItem:Lcom/google/android/opengl/glview/GLView;
    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/Stack;->addView(Lcom/google/android/opengl/glview/GLView;)V

    goto :goto_4

    .line 740
    .end local v10           #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    .end local v17           #defaultItem:Lcom/google/android/opengl/glview/GLView;
    :cond_4
    if-eqz p4, :cond_5

    .line 742
    const/4 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v11, p0

    move/from16 v12, p1

    move/from16 v14, p2

    invoke-virtual/range {v11 .. v16}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genBox(ZIFZI)Lcom/google/android/opengl/glview/GLLinearLayout;

    move-result-object v22

    .line 743
    .local v22, list:Lcom/google/android/opengl/glview/GLView;
    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 744
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move v2, v6

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genArtistLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/opengl/glview/GLView;

    move-result-object v21

    .line 746
    .local v21, label:Lcom/google/android/opengl/glview/GLView;
    new-instance v24, Lcom/google/android/opengl/glview/Stack;

    const/4 v6, 0x0

    const/16 v7, 0x12

    move-object/from16 v0, v24

    move v1, v6

    move v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/opengl/glview/Stack;-><init>(II)V

    .line 747
    .end local v7           #imageW:F
    .local v24, stack:Lcom/google/android/opengl/glview/Stack;
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/Stack;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 748
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Lcom/google/android/music/albumwall/MarkView;

    move-result-object v6

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/Stack;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 749
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    move-object/from16 v6, v22

    .line 751
    goto/16 :goto_0

    .end local v21           #label:Lcom/google/android/opengl/glview/GLView;
    .end local v22           #list:Lcom/google/android/opengl/glview/GLView;
    .end local v24           #stack:Lcom/google/android/opengl/glview/Stack;
    .restart local v7       #imageW:F
    :cond_5
    move-object v6, v4

    .line 753
    goto/16 :goto_0
.end method

.method protected genArtistLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/opengl/glview/GLView;
    .locals 8
    .parameter "pile"
    .parameter "expanded"
    .parameter "index"

    .prologue
    .line 689
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelWidth()F

    move-result v2

    .line 690
    .local v2, w:F
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelHeight()F

    move-result v3

    .line 691
    .local v3, h:F
    if-eqz p2, :cond_0

    .line 692
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterExpandedLabelWidth()F

    move-result v2

    .line 693
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getClusterExpandedLabelHeight()F

    move-result v3

    .line 695
    :cond_0
    new-instance v0, Lcom/google/android/music/albumwall/PileLabel;

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/music/albumwall/PileLabel;-><init>(IFFLcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)V

    .line 698
    .local v0, label:Lcom/google/android/music/albumwall/PileLabel;
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/PileLabel;->setFlags(I)V

    .line 699
    if-nez p2, :cond_1

    .line 700
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/PileLabel;->setFlags(I)V

    .line 703
    :cond_1
    return-object v0
.end method

.method protected genBox(ZIFZI)Lcom/google/android/opengl/glview/GLLinearLayout;
    .locals 1
    .parameter "horizontal"
    .parameter "id"
    .parameter "gap"
    .parameter "center"
    .parameter "expansion"

    .prologue
    const/4 v0, 0x0

    .line 844
    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    const/16 v0, 0x8

    :cond_0
    invoke-static {p2, p3, v0, p5}, Lcom/google/android/opengl/glview/GLLinearLayout;->createHBox(IFII)Lcom/google/android/opengl/glview/GLLinearLayout;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    if-eqz p4, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {p2, p3, v0, p5}, Lcom/google/android/opengl/glview/GLLinearLayout;->createVBox(IFII)Lcom/google/android/opengl/glview/GLLinearLayout;

    move-result-object v0

    goto :goto_0
.end method

.method protected genExpandedBanner(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)Lcom/google/android/opengl/glview/GLView;
    .locals 27
    .parameter "pile"
    .parameter "expandedPileIndex"

    .prologue
    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getStyle()I

    move-result v20

    .line 601
    .local v20, elementStyle:I
    packed-switch v20, :pswitch_data_0

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v12

    .line 639
    .local v12, hScroll:Z
    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v16}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genBox(ZIFZI)Lcom/google/android/opengl/glview/GLLinearLayout;

    move-result-object v25

    .line 643
    .local v25, list:Lcom/google/android/opengl/glview/GLView;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genArtistLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/opengl/glview/GLView;

    move-result-object v23

    .line 644
    .local v23, label:Lcom/google/android/opengl/glview/GLView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getCloseButtonResourceId()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createDrawableView(I)Lcom/google/android/opengl/glview/DrawableView;

    move-result-object v18

    .line 645
    .local v18, button:Lcom/google/android/opengl/glview/DrawableView;
    const/4 v10, 0x4

    .line 646
    .local v10, labelAndButtonExpand:I
    if-nez v12, :cond_3

    const/4 v5, 0x1

    move v6, v5

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genBox(ZIFZI)Lcom/google/android/opengl/glview/GLLinearLayout;

    move-result-object v24

    .line 647
    .local v24, labelAndButton:Lcom/google/android/opengl/glview/GLLinearLayout;
    if-nez v12, :cond_4

    const/4 v5, 0x1

    :goto_1
    const/4 v6, 0x1

    move-object/from16 v0, v24

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/glview/GLLinearLayout;->setExpandable(ZZ)V

    .line 648
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getGLSurfaceView()Lcom/google/android/opengl/glview/GLSurfaceView;

    move-result-object v21

    .line 649
    .local v21, glView:Lcom/google/android/opengl/glview/GLSurfaceView;
    if-eqz v12, :cond_5

    .line 650
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v5

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/opengl/glview/DrawableView;->width()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v26

    .line 651
    .local v26, w:F
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/opengl/glview/GLSurfaceView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getGridMarginH()F

    move-result v6

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getTopMargin()F

    move-result v6

    sub-float v22, v5, v6

    .line 657
    .local v22, h:F
    :goto_2
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 658
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 660
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genExpandedSeparator()Lcom/google/android/opengl/glview/GLView;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 661
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 662
    const/16 v5, 0x10

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->setFlags(I)V

    .line 667
    :goto_3
    return-object v25

    .line 604
    .end local v10           #labelAndButtonExpand:I
    .end local v12           #hScroll:Z
    .end local v18           #button:Lcom/google/android/opengl/glview/DrawableView;
    .end local v21           #glView:Lcom/google/android/opengl/glview/GLSurfaceView;
    .end local v22           #h:F
    .end local v23           #label:Lcom/google/android/opengl/glview/GLView;
    .end local v24           #labelAndButton:Lcom/google/android/opengl/glview/GLLinearLayout;
    .end local v25           #list:Lcom/google/android/opengl/glview/GLView;
    .end local v26           #w:F
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v12

    .line 605
    .restart local v12       #hScroll:Z
    new-instance v25, Lcom/google/android/opengl/glview/Stack;

    const/4 v5, 0x4

    const/16 v6, 0x9

    move-object/from16 v0, v25

    move v1, v5

    move v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/android/opengl/glview/Stack;-><init>(II)V

    .line 607
    .restart local v25       #list:Lcom/google/android/opengl/glview/GLView;
    const/4 v5, 0x4

    move v0, v5

    new-array v0, v0, [F

    move-object/from16 v19, v0

    fill-array-data v19, :array_0

    .line 610
    .local v19, color:[F
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genArtistLabel(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)Lcom/google/android/opengl/glview/GLView;

    move-result-object v23

    .line 611
    .restart local v23       #label:Lcom/google/android/opengl/glview/GLView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getCloseButtonResourceId()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createDrawableView(I)Lcom/google/android/opengl/glview/DrawableView;

    move-result-object v18

    .line 612
    .restart local v18       #button:Lcom/google/android/opengl/glview/DrawableView;
    const/4 v10, 0x4

    .line 613
    .restart local v10       #labelAndButtonExpand:I
    if-nez v12, :cond_0

    const/4 v5, 0x1

    move v6, v5

    :goto_4
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->genBox(ZIFZI)Lcom/google/android/opengl/glview/GLLinearLayout;

    move-result-object v24

    .line 614
    .restart local v24       #labelAndButton:Lcom/google/android/opengl/glview/GLLinearLayout;
    if-nez v12, :cond_1

    const/4 v5, 0x1

    :goto_5
    const/4 v6, 0x1

    move-object/from16 v0, v24

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/glview/GLLinearLayout;->setExpandable(ZZ)V

    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getGLSurfaceView()Lcom/google/android/opengl/glview/GLSurfaceView;

    move-result-object v21

    .line 616
    .restart local v21       #glView:Lcom/google/android/opengl/glview/GLSurfaceView;
    if-eqz v12, :cond_2

    .line 617
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/opengl/glview/GLView;->width()F

    move-result v5

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/opengl/glview/DrawableView;->width()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v26

    .line 618
    .restart local v26       #w:F
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/opengl/glview/GLSurfaceView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getGridMarginH()F

    move-result v6

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getTopMargin()F

    move-result v6

    sub-float v22, v5, v6

    .line 624
    .restart local v22       #h:F
    :goto_6
    new-instance v17, Lcom/google/android/opengl/glview/FlatColorView;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    move v1, v5

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/google/android/opengl/glview/FlatColorView;-><init>(I[F)V

    .line 625
    .local v17, banner:Lcom/google/android/opengl/glview/GLView;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move v1, v5

    move v2, v6

    move/from16 v3, v26

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/opengl/glview/GLView;->setContentRect(FFFF)V

    .line 627
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 628
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLLinearLayout;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 630
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/Stack;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 631
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/Stack;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 632
    const/16 v5, 0x10

    move-object/from16 v0, v25

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLView;->setFlags(I)V

    goto/16 :goto_3

    .line 613
    .end local v17           #banner:Lcom/google/android/opengl/glview/GLView;
    .end local v21           #glView:Lcom/google/android/opengl/glview/GLSurfaceView;
    .end local v22           #h:F
    .end local v24           #labelAndButton:Lcom/google/android/opengl/glview/GLLinearLayout;
    .end local v26           #w:F
    :cond_0
    const/4 v5, 0x0

    move v6, v5

    goto :goto_4

    .line 614
    .restart local v24       #labelAndButton:Lcom/google/android/opengl/glview/GLLinearLayout;
    :cond_1
    const/4 v5, 0x0

    goto :goto_5

    .line 620
    .restart local v21       #glView:Lcom/google/android/opengl/glview/GLSurfaceView;
    :cond_2
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/opengl/glview/GLSurfaceView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getGridMarginW()F

    move-result v6

    sub-float v26, v5, v6

    .line 621
    .restart local v26       #w:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getBannerHeight()F

    move-result v22

    .restart local v22       #h:F
    goto :goto_6

    .line 646
    .end local v19           #color:[F
    .end local v21           #glView:Lcom/google/android/opengl/glview/GLSurfaceView;
    .end local v22           #h:F
    .end local v24           #labelAndButton:Lcom/google/android/opengl/glview/GLLinearLayout;
    .end local v26           #w:F
    :cond_3
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_0

    .line 647
    .restart local v24       #labelAndButton:Lcom/google/android/opengl/glview/GLLinearLayout;
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 653
    .restart local v21       #glView:Lcom/google/android/opengl/glview/GLSurfaceView;
    :cond_5
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/opengl/glview/GLSurfaceView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getGridMarginW()F

    move-result v6

    sub-float v26, v5, v6

    .line 654
    .restart local v26       #w:F
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/opengl/glview/GLView;->height()F

    move-result v5

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/opengl/glview/DrawableView;->height()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v22

    .restart local v22       #h:F
    goto/16 :goto_2

    .line 601
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 607
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3et
    .end array-data
.end method

.method protected genExpandedSeparator()Lcom/google/android/opengl/glview/GLView;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 671
    const/4 v5, 0x4

    new-array v0, v5, [F

    fill-array-data v0, :array_0

    .line 672
    .local v0, color:[F
    const/4 v4, 0x0

    .line 673
    .local v4, w:F
    const/4 v2, 0x0

    .line 674
    .local v2, h:F
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getGLSurfaceView()Lcom/google/android/opengl/glview/GLSurfaceView;

    move-result-object v1

    .line 675
    .local v1, glView:Lcom/google/android/opengl/glview/GLSurfaceView;
    iget-object v5, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 676
    const/high16 v4, 0x3f80

    .line 677
    invoke-virtual {v1}, Lcom/google/android/opengl/glview/GLSurfaceView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getGridMarginH()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getTopMargin()F

    move-result v6

    sub-float v2, v5, v6

    .line 683
    :goto_0
    new-instance v3, Lcom/google/android/opengl/glview/FlatColorView;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v0}, Lcom/google/android/opengl/glview/FlatColorView;-><init>(I[F)V

    .line 684
    .local v3, separator:Lcom/google/android/opengl/glview/GLView;
    invoke-virtual {v3, v7, v7, v4, v2}, Lcom/google/android/opengl/glview/GLView;->setContentRect(FFFF)V

    .line 685
    return-object v3

    .line 679
    .end local v3           #separator:Lcom/google/android/opengl/glview/GLView;
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/opengl/glview/GLSurfaceView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getGridMarginW()F

    move-result v6

    sub-float v4, v5, v6

    .line 680
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 671
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3et
        0x0t 0x0t 0x80t 0x3et
        0x0t 0x0t 0x80t 0x3et
        0x0t 0x0t 0x80t 0x3et
    .end array-data
.end method

.method protected genPlaceHolderItem(FF)Lcom/google/android/opengl/glview/GLView;
    .locals 6
    .parameter "width"
    .parameter "height"

    .prologue
    .line 786
    new-instance v5, Lcom/google/android/music/albumwall/MusicItem;

    invoke-direct {v5}, Lcom/google/android/music/albumwall/MusicItem;-><init>()V

    .line 787
    .local v5, item:Lcom/google/android/music/albumwall/MusicItem;
    new-instance v0, Lcom/google/android/music/albumwall/PlaceHolderItem;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/PlaceHolderItem;-><init>(IFFLcom/google/android/music/albumwall/Model;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 789
    .local v0, defaultView:Lcom/google/android/music/albumwall/PlaceHolderItem;
    return-object v0
.end method

.method public getLabelsVisible()Z
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model;->getLabelsVisible()Z

    move-result v0

    return v0
.end method

.method public getTransformer()Lcom/google/android/opengl/glview/Transformer;
    .locals 2

    .prologue
    .line 872
    const/4 v1, 0x0

    .line 873
    .local v1, transformer:Lcom/google/android/opengl/glview/Transformer;
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v0

    .line 874
    .local v0, root:Lcom/google/android/opengl/glview/TopLevelView;
    if-eqz v0, :cond_0

    .line 875
    invoke-virtual {v0}, Lcom/google/android/opengl/glview/TopLevelView;->getChildTransformer()Lcom/google/android/opengl/glview/Transformer;

    move-result-object v1

    .line 878
    :cond_0
    return-object v1
.end method

.method public getViewState()Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model;->getViewState()Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    move-result-object v0

    return-object v0
.end method

.method public invalidateItemTexture(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;I)V
    .locals 1
    .parameter "item"
    .parameter "type"

    .prologue
    .line 978
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/albumwall/Model;->invalidateItemTexture(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;I)V

    .line 979
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestRender()V

    .line 980
    return-void
.end method

.method public invalidateTexture(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 983
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1}, Lcom/google/android/music/albumwall/Model;->invalidateTexture(I)V

    .line 984
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestRender()V

    .line 985
    return-void
.end method

.method public listen(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .parameter "msg"
    .parameter "senderId"
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x4

    .line 193
    packed-switch p1, :pswitch_data_0

    .line 213
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/opengl/glview/GLViewRenderer;->listen(IILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    .line 195
    :pswitch_0
    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    if-eq p2, v2, :cond_1

    if-ne p2, v2, :cond_0

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model;->getExpandedPile()Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    move-result-object v0

    .line 199
    .local v0, pile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;
    if-eqz v0, :cond_2

    .line 200
    const/4 v0, 0x0

    .line 202
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumPoseCache;->clear()V

    .line 203
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v1

    const/16 v2, 0x64

    iget-object v3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/opengl/glview/TopLevelView;->visit(ILjava/lang/Object;)V

    .line 204
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/music/albumwall/Model;->setExpandedPile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)V

    .line 205
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestFullLayout()V

    .line 209
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout()V
    .locals 3

    .prologue
    .line 946
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mFullLayoutRequested:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->isListEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 947
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mFullLayoutRequested:Z

    .line 948
    invoke-direct {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createListFromModel()V

    .line 950
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/glview/TopLevelView;->visit(ILjava/lang/Object;)V

    .line 951
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLViewRenderer;->onLayout()V

    .line 952
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 32
    .parameter "glUnused"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 72
    invoke-super/range {p0 .. p3}, Lcom/google/android/opengl/glview/GLViewRenderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->updateAlbumWallConfig()V

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->setCanvasConfiguration(Ljava/lang/Object;)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getRoot()Lcom/google/android/opengl/glview/TopLevelView;

    move-result-object v25

    .line 78
    .local v25, root:Lcom/google/android/opengl/glview/TopLevelView;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createBackgroundView()Lcom/google/android/opengl/glview/GLView;

    move-result-object v19

    .line 79
    .local v19, background:Lcom/google/android/opengl/glview/GLView;
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/TopLevelView;->setBackgroundView(Lcom/google/android/opengl/glview/GLView;)V

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getMaxOverScrollX()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getMaxOverScrollY()F

    move-result v6

    move-object/from16 v0, v25

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/glview/TopLevelView;->setMaximumOverScroll(FF)V

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarMode()I

    move-result v20

    .line 83
    .local v20, mode:I
    packed-switch v20, :pswitch_data_0

    .line 138
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown scrollBarMode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 87
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarThumbId()I

    move-result v27

    .line 88
    .local v27, scrollBarResourceId:I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createDrawableView(I)Lcom/google/android/opengl/glview/DrawableView;

    move-result-object v29

    .line 89
    .local v29, scrollBarThumbView:Lcom/google/android/opengl/glview/DrawableView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarOverlayWidth()F

    move-result v26

    .line 90
    .local v26, scrollBarOverlayW:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarOverlayHeight()F

    move-result v31

    .line 91
    .local v31, scrollOverlayH:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarOverlayId()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, v26

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createDrawableView(IFF)Lcom/google/android/opengl/glview/DrawableView;

    move-result-object v23

    .line 93
    .local v23, overlayBackground:Lcom/google/android/opengl/glview/DrawableView;
    new-instance v4, Lcom/google/android/music/albumwall/ThumbOverlay;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f00

    mul-float v8, v8, v26

    const/high16 v9, 0x3f00

    mul-float v9, v9, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object v10, v0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/music/albumwall/ThumbOverlay;-><init>(IFFFFLcom/google/android/music/albumwall/Model;)V

    .line 97
    .local v4, overlayText:Lcom/google/android/music/albumwall/ThumbOverlay;
    new-instance v8, Lcom/google/android/opengl/glview/Stack;

    const/4 v5, 0x0

    const/16 v6, 0x9

    invoke-direct {v8, v5, v6}, Lcom/google/android/opengl/glview/Stack;-><init>(II)V

    .line 98
    .local v8, overlayPile:Lcom/google/android/opengl/glview/Stack;
    move-object v0, v8

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/Stack;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 99
    invoke-virtual {v8, v4}, Lcom/google/android/opengl/glview/Stack;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 100
    const/4 v11, 0x0

    .line 101
    .local v11, startMargin:F
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollOverlayFollowsThumb()Z

    move-result v10

    move-object/from16 v5, v25

    move-object/from16 v6, v29

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/opengl/glview/TopLevelView;->setScrollParameters(Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;ZZF)V

    .line 141
    .end local v4           #overlayText:Lcom/google/android/music/albumwall/ThumbOverlay;
    .end local v8           #overlayPile:Lcom/google/android/opengl/glview/Stack;
    .end local v11           #startMargin:F
    .end local v23           #overlayBackground:Lcom/google/android/opengl/glview/DrawableView;
    .end local v26           #scrollBarOverlayW:F
    .end local v27           #scrollBarResourceId:I
    .end local v29           #scrollBarThumbView:Lcom/google/android/opengl/glview/DrawableView;
    .end local v31           #scrollOverlayH:F
    :goto_0
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/google/android/music/albumwall/Model;->setAlbumWallConfig(Lcom/google/android/music/albumwall/AlbumWallConfig;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/Model;->updateLoadingTexture()V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mAlbumPoseCache:Lcom/google/android/music/albumwall/AlbumPoseCache;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumPoseCache;->clear()V

    .line 146
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->getViewState()Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestRefresh(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;Z)V

    .line 148
    return-void

    .line 107
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarThumbId()I

    move-result v28

    .line 108
    .local v28, scrollBarThumbId:I
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createDrawableView(I)Lcom/google/android/opengl/glview/DrawableView;

    move-result-object v6

    .line 109
    .local v6, scrollBarThumb:Lcom/google/android/opengl/glview/DrawableView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarTrackId()I

    move-result v30

    .line 110
    .local v30, scrollBarTrackId:I
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createDrawableView(I)Lcom/google/android/opengl/glview/DrawableView;

    move-result-object v7

    .line 111
    .local v7, scrollBarTrack:Lcom/google/android/opengl/glview/DrawableView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarOverlayWidth()F

    move-result v26

    .line 112
    .restart local v26       #scrollBarOverlayW:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarOverlayHeight()F

    move-result v31

    .line 113
    .restart local v31       #scrollOverlayH:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarOverlayId()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, v26

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->createDrawableView(IFF)Lcom/google/android/opengl/glview/DrawableView;

    move-result-object v23

    .line 115
    .restart local v23       #overlayBackground:Lcom/google/android/opengl/glview/DrawableView;
    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    .line 116
    .local v24, padding:Landroid/graphics/Rect;
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/opengl/glview/DrawableView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 117
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v8, v0

    sub-int/2addr v5, v8

    div-int/lit8 v21, v5, 0x2

    .line 118
    .local v21, offsetX:I
    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v8, v0

    sub-int/2addr v5, v8

    div-int/lit8 v22, v5, 0x2

    .line 119
    .local v22, offsetY:I
    new-instance v4, Lcom/google/android/music/albumwall/ThumbOverlay;

    const/4 v13, 0x0

    move/from16 v0, v21

    int-to-float v0, v0

    move v14, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move v15, v0

    const/high16 v5, 0x3f00

    mul-float v16, v26, v5

    const/high16 v5, 0x3f00

    mul-float v17, v31, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object/from16 v18, v0

    move-object v12, v4

    invoke-direct/range {v12 .. v18}, Lcom/google/android/music/albumwall/ThumbOverlay;-><init>(IFFFFLcom/google/android/music/albumwall/Model;)V

    .line 122
    .restart local v4       #overlayText:Lcom/google/android/music/albumwall/ThumbOverlay;
    new-instance v8, Lcom/google/android/opengl/glview/Stack;

    const/4 v5, 0x0

    const/16 v9, 0x9

    invoke-direct {v8, v5, v9}, Lcom/google/android/opengl/glview/Stack;-><init>(II)V

    .line 123
    .restart local v8       #overlayPile:Lcom/google/android/opengl/glview/Stack;
    move-object v0, v8

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/Stack;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 124
    invoke-virtual {v8, v4}, Lcom/google/android/opengl/glview/Stack;->addView(Lcom/google/android/opengl/glview/GLView;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->isHorizontalScrolling()Z

    move-result v9

    .line 126
    .local v9, horizontal:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollOverlayFollowsThumb()Z

    move-result v10

    .line 127
    .local v10, overlayFollowsThumb:Z
    const/4 v11, 0x0

    .line 128
    .restart local v11       #startMargin:F
    if-nez v9, :cond_0

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getTopMargin()F

    move-result v11

    :cond_0
    move-object/from16 v5, v25

    .line 132
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/opengl/glview/TopLevelView;->setScrollParameters(Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;Lcom/google/android/opengl/glview/GLView;ZZF)V

    goto/16 :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .parameter "glUnused"
    .parameter "config"

    .prologue
    .line 186
    invoke-super {p0, p1, p2}, Lcom/google/android/opengl/glview/GLViewRenderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 187
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model;->eglContextCleared()V

    .line 188
    return-void
.end method

.method protected requestFullLayout()V
    .locals 1

    .prologue
    .line 940
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mFullLayoutRequested:Z

    .line 941
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestLayout()V

    .line 942
    return-void
.end method

.method public requestRefresh(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V
    .locals 1
    .parameter "newViewState"

    .prologue
    .line 860
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestRefresh(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;Z)V

    .line 861
    return-void
.end method

.method public requestRefresh(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;Z)V
    .locals 1
    .parameter "newViewState"
    .parameter "updateModel"

    .prologue
    .line 856
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/albumwall/Model;->requestRefresh(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;Z)V

    .line 857
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestFullLayout()V

    .line 858
    return-void
.end method

.method public runInDrawFrame(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 959
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mQueuedDrawFrameRunnables:Ljava/util/LinkedList;

    monitor-enter v0

    .line 960
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mQueuedDrawFrameRunnables:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 961
    monitor-exit v0

    .line 962
    return-void

    .line 961
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAlbumWallConfig(Lcom/google/android/music/albumwall/AlbumWallConfig;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V
    .locals 1
    .parameter "config"
    .parameter "viewState"

    .prologue
    .line 850
    iput-object p1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;

    .line 851
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1}, Lcom/google/android/music/albumwall/Model;->setAlbumWallConfig(Lcom/google/android/music/albumwall/AlbumWallConfig;)V

    .line 852
    invoke-virtual {p0, p2}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestRefresh(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 853
    return-void
.end method

.method public setCallbacks(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/AlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;)V
    .locals 1
    .parameter "view"
    .parameter "delegate"
    .parameter "helper"

    .prologue
    .line 923
    iput-object p3, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mHelper:Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;

    .line 924
    iput-object p2, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mDelegate:Lcom/google/android/music/albumwall/AlbumWallCallback;

    .line 925
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/music/albumwall/Model;->setCallbacks(Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/albumwall/AlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallCallbackHelper;)V

    .line 926
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestFullLayout()V

    .line 927
    return-void
.end method

.method public setChildCount(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)V
    .locals 1
    .parameter "epoch"
    .parameter "pile"
    .parameter "expanded"
    .parameter "count"

    .prologue
    .line 902
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/music/albumwall/Model;->setChildCount(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZI)V

    .line 903
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestLayout()V

    .line 904
    return-void
.end method

.method public setExpandAlbumForIndex(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)V
    .locals 1
    .parameter "pile"
    .parameter "index"

    .prologue
    .line 935
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/albumwall/Model;->setExpandedPile(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;I)V

    .line 936
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestFullLayout()V

    .line 937
    return-void
.end method

.method public setItem(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZILcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .locals 6
    .parameter "epoch"
    .parameter "pile"
    .parameter "expanded"
    .parameter "n"
    .parameter "item"

    .prologue
    .line 907
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/albumwall/Model;->setItem(Lcom/google/android/music/albumwall/Model$Epoch;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZILcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 908
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestLayout()V

    .line 909
    return-void
.end method

.method public setItemTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "epoch"
    .parameter "type"
    .parameter "item"
    .parameter "bitmap"

    .prologue
    .line 917
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/music/albumwall/Model;->setItemTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V

    .line 918
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestRender()V

    .line 919
    return-void
.end method

.method public setLabelsVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/high16 v2, 0x3f80

    .line 864
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model;->getExpandUngroupedMetadata()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 865
    .local v0, currentlyVisible:Z
    :goto_0
    if-eq p1, v0, :cond_0

    .line 866
    iget-object v1, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/music/albumwall/Model;->setExpandUngroupedMetadata(F)V

    .line 867
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestLayout()V

    .line 869
    :cond_0
    return-void

    .line 864
    .end local v0           #currentlyVisible:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 866
    .restart local v0       #currentlyVisible:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setManageAlbumMode(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 930
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1}, Lcom/google/android/music/albumwall/Model;->setManageAlbumMode(Z)V

    .line 931
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestRender()V

    .line 932
    return-void
.end method

.method public setPile(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V
    .locals 1
    .parameter "epoch"
    .parameter "pileIndex"
    .parameter "pile"

    .prologue
    .line 897
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/music/albumwall/Model;->setPile(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V

    .line 898
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestLayout()V

    .line 899
    return-void
.end method

.method public setPileCount(Lcom/google/android/music/albumwall/Model$Epoch;I)V
    .locals 1
    .parameter "epoch"
    .parameter "n"

    .prologue
    .line 892
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/albumwall/Model;->setPileCount(Lcom/google/android/music/albumwall/Model$Epoch;I)V

    .line 893
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestLayout()V

    .line 894
    return-void
.end method

.method public setPileLabelTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLandroid/graphics/Bitmap;)V
    .locals 6
    .parameter "epoch"
    .parameter "type"
    .parameter "pile"
    .parameter "expanded"
    .parameter "bitmap"

    .prologue
    .line 912
    iget-object v0, p0, Lcom/google/android/music/albumwall/AlbumWallRenderer;->mModel:Lcom/google/android/music/albumwall/Model;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/music/albumwall/Model;->setPileLabelTexture(Lcom/google/android/music/albumwall/Model$Epoch;ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLandroid/graphics/Bitmap;)V

    .line 913
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/AlbumWallRenderer;->requestRender()V

    .line 914
    return-void
.end method
