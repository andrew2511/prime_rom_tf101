.class public final Lcom/ecareme/pixwe/media/GridLayer;
.super Lcom/ecareme/pixwe/media/RootLayer;
.source "GridLayer.java"

# interfaces
.implements Lcom/ecareme/pixwe/media/MediaFeed$Listener;
.implements Lcom/ecareme/pixwe/media/TimeBar$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;
    }
.end annotation


# static fields
.field public static final ANCHOR_CENTER:I = 0x2

.field public static final ANCHOR_LEFT:I = 0x0

.field public static final ANCHOR_RIGHT:I = 0x1

.field public static final MAX_DISPLAYED_ITEMS_PER_FOCUSED_SLOT:I = 0x20

.field public static final MAX_DISPLAYED_ITEMS_PER_SLOT:I = 0x4

.field public static final MAX_DISPLAY_SLOTS:I = 0x60

.field public static final MAX_ITEMS_DRAWABLE:I = 0xc00

.field public static final MAX_ITEMS_PER_SLOT:I = 0x20

.field private static final SLIDESHOW_TRANSITION_TIME:F = 3.5f

.field public static final STATE_FULL_SCREEN:I = 0x2

.field public static final STATE_GRID_VIEW:I = 0x1

.field public static final STATE_MEDIA_SETS:I = 0x0

.field public static final STATE_TIMELINE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GridLayer"

.field public static UPLOAD_MODE:Z

.field private static final sfullScreenLayoutInterface:Lcom/ecareme/pixwe/media/LayoutInterface;


# instance fields
.field holder:Landroid/view/SurfaceHolder;

.field private isVideoPlayingInSlideshowMode:Z

.field private final mBackground:Lcom/ecareme/pixwe/media/BackgroundLayer;

.field private final mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

.field private final mCamera:Lcom/ecareme/pixwe/media/GridCamera;

.field private final mCameraManager:Lcom/ecareme/pixwe/media/GridCameraManager;

.field private mComment:Lcom/ecareme/pixwe/media/CommentLayer;

.field private final mCompleteRange:Lcom/ecareme/pixwe/media/IndexRange;

.field private mContext:Landroid/content/Context;

.field private mCurrentExpandedSlot:I

.field private mCurrentFocusItemHeight:F

.field private mCurrentFocusItemWidth:F

.field private mDeltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;

.field private final mDeltaAnchorPositionUncommited:Lcom/ecareme/pixwe/media/Vector3f;

.field private final mDisplayItems:[Lcom/ecareme/pixwe/media/DisplayItem;

.field private final mDisplayList:Lcom/ecareme/pixwe/media/DisplayList;

.field private final mDisplaySlots:[Lcom/ecareme/pixwe/media/DisplaySlot;

.field private final mDrawManager:Lcom/ecareme/pixwe/media/GridDrawManager;

.field private final mDrawables:Lcom/ecareme/pixwe/media/GridDrawables;

.field private mFeedAboutToChange:Z

.field private mFeedChanged:Z

.field private mFrameCount:I

.field private mFramesDirty:I

.field private mHud:Lcom/ecareme/pixwe/media/HudLayer;

.field private mInAlbum:Z

.field private final mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

.field private final mLayoutInterface:Lcom/ecareme/pixwe/media/LayoutInterface;

.field private mLocationFilter:Z

.field private final mMarkedBucketList:Lcom/ecareme/pixwe/media/MediaBucketList;

.field private mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

.field private mNoDeleteMode:Z

.field private mPerformingLayoutChange:Z

.field private mPickIntent:Z

.field private final mPreviousDataRange:Lcom/ecareme/pixwe/media/IndexRange;

.field private mRequestFocusContentUri:Ljava/lang/String;

.field private mRequestToEnterSelection:Z

.field private mSelectedAlpha:F

.field private final mSelectedBucketList:Lcom/ecareme/pixwe/media/MediaBucketList;

.field private mSlideshowMode:Z

.field private mStartMemoryRange:I

.field private mState:I

.field private mTargetAlpha:F

.field private final mTempHash:[Lcom/ecareme/pixwe/media/MediaItem;

.field private final mTempList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempVec:Lcom/ecareme/pixwe/media/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecareme/pixwe/media/Pool",
            "<",
            "Lcom/ecareme/pixwe/media/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempVecAlt:Lcom/ecareme/pixwe/media/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecareme/pixwe/media/Pool",
            "<",
            "Lcom/ecareme/pixwe/media/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeElapsedSinceGridViewReady:F

.field private mTimeElapsedSinceStackViewReady:F

.field private mTimeElapsedSinceView:F

.field private mView:Lcom/ecareme/pixwe/media/RenderView;

.field private mViewIntent:Z

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mZoomValue:F

.field mediaPlayer:Landroid/media/MediaPlayer;

.field playerArea:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/ecareme/pixwe/media/GridLayoutInterface;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/GridLayoutInterface;-><init>(I)V

    sput-object v0, Lcom/ecareme/pixwe/media/GridLayer;->sfullScreenLayoutInterface:Lcom/ecareme/pixwe/media/LayoutInterface;

    .line 135
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ecareme/pixwe/media/GridLayer;->UPLOAD_MODE:Z

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/ecareme/pixwe/media/LayoutInterface;Lcom/ecareme/pixwe/media/RenderView;)V
    .locals 18
    .parameter "context"
    .parameter "itemWidth"
    .parameter "itemHeight"
    .parameter "layoutInterface"
    .parameter "view"

    .prologue
    .line 145
    invoke-direct/range {p0 .. p0}, Lcom/ecareme/pixwe/media/RootLayer;-><init>()V

    .line 65
    new-instance v5, Lcom/ecareme/pixwe/media/IndexRange;

    invoke-direct {v5}, Lcom/ecareme/pixwe/media/IndexRange;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    .line 66
    new-instance v5, Lcom/ecareme/pixwe/media/IndexRange;

    invoke-direct {v5}, Lcom/ecareme/pixwe/media/IndexRange;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    .line 67
    new-instance v5, Lcom/ecareme/pixwe/media/IndexRange;

    invoke-direct {v5}, Lcom/ecareme/pixwe/media/IndexRange;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mPreviousDataRange:Lcom/ecareme/pixwe/media/IndexRange;

    .line 68
    new-instance v5, Lcom/ecareme/pixwe/media/IndexRange;

    invoke-direct {v5}, Lcom/ecareme/pixwe/media/IndexRange;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mCompleteRange:Lcom/ecareme/pixwe/media/IndexRange;

    .line 73
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mTempList:Ljava/util/ArrayList;

    .line 74
    const/16 v5, 0x40

    new-array v5, v5, [Lcom/ecareme/pixwe/media/MediaItem;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mTempHash:[Lcom/ecareme/pixwe/media/MediaItem;

    .line 76
    new-instance v5, Lcom/ecareme/pixwe/media/Vector3f;

    invoke-direct {v5}, Lcom/ecareme/pixwe/media/Vector3f;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mDeltaAnchorPositionUncommited:Lcom/ecareme/pixwe/media/Vector3f;

    .line 77
    new-instance v5, Lcom/ecareme/pixwe/media/Vector3f;

    invoke-direct {v5}, Lcom/ecareme/pixwe/media/Vector3f;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mDeltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;

    .line 81
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mSelectedAlpha:F

    .line 82
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mTargetAlpha:F

    .line 97
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mInAlbum:Z

    .line 100
    new-instance v5, Lcom/ecareme/pixwe/media/DisplayList;

    invoke-direct {v5}, Lcom/ecareme/pixwe/media/DisplayList;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mDisplayList:Lcom/ecareme/pixwe/media/DisplayList;

    .line 101
    const/16 v5, 0xc00

    new-array v5, v5, [Lcom/ecareme/pixwe/media/DisplayItem;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mDisplayItems:[Lcom/ecareme/pixwe/media/DisplayItem;

    .line 102
    const/16 v5, 0x60

    new-array v5, v5, [Lcom/ecareme/pixwe/media/DisplaySlot;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mDisplaySlots:[Lcom/ecareme/pixwe/media/DisplaySlot;

    .line 107
    const/high16 v5, 0x3f80

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mZoomValue:F

    .line 108
    const/high16 v5, 0x3f80

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mCurrentFocusItemWidth:F

    .line 109
    const/high16 v5, 0x3f80

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mCurrentFocusItemHeight:F

    .line 110
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mTimeElapsedSinceGridViewReady:F

    .line 113
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mNoDeleteMode:Z

    .line 115
    new-instance v5, Lcom/ecareme/pixwe/media/MediaBucketList;

    invoke-direct {v5}, Lcom/ecareme/pixwe/media/MediaBucketList;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mSelectedBucketList:Lcom/ecareme/pixwe/media/MediaBucketList;

    .line 116
    new-instance v5, Lcom/ecareme/pixwe/media/MediaBucketList;

    invoke-direct {v5}, Lcom/ecareme/pixwe/media/MediaBucketList;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mMarkedBucketList:Lcom/ecareme/pixwe/media/MediaBucketList;

    .line 131
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->isVideoPlayingInSlideshowMode:Z

    .line 146
    new-instance v5, Lcom/ecareme/pixwe/media/BackgroundLayer;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/BackgroundLayer;-><init>(Lcom/ecareme/pixwe/media/GridLayer;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mBackground:Lcom/ecareme/pixwe/media/BackgroundLayer;

    .line 147
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mContext:Landroid/content/Context;

    .line 148
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mView:Lcom/ecareme/pixwe/media/RenderView;

    .line 150
    const/16 v5, 0x80

    move v0, v5

    new-array v0, v0, [Lcom/ecareme/pixwe/media/Vector3f;

    move-object/from16 v16, v0

    .line 151
    .local v16, vectorPool:[Lcom/ecareme/pixwe/media/Vector3f;
    move-object/from16 v0, v16

    array-length v0, v0

    move v14, v0

    .line 152
    .local v14, length:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-lt v13, v14, :cond_0

    .line 155
    const/16 v5, 0x80

    move v0, v5

    new-array v0, v0, [Lcom/ecareme/pixwe/media/Vector3f;

    move-object/from16 v17, v0

    .line 156
    .local v17, vectorPoolRenderThread:[Lcom/ecareme/pixwe/media/Vector3f;
    move-object/from16 v0, v17

    array-length v0, v0

    move v14, v0

    .line 157
    const/4 v13, 0x0

    :goto_1
    if-lt v13, v14, :cond_1

    .line 160
    new-instance v5, Lcom/ecareme/pixwe/media/Pool;

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/Pool;-><init>([Ljava/lang/Object;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mTempVec:Lcom/ecareme/pixwe/media/Pool;

    .line 161
    new-instance v5, Lcom/ecareme/pixwe/media/Pool;

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/Pool;-><init>([Ljava/lang/Object;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mTempVecAlt:Lcom/ecareme/pixwe/media/Pool;

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mDisplaySlots:[Lcom/ecareme/pixwe/media/DisplaySlot;

    move-object v12, v0

    .line 164
    .local v12, displaySlots:[Lcom/ecareme/pixwe/media/DisplaySlot;
    const/4 v13, 0x0

    :goto_2
    const/16 v5, 0x60

    if-lt v13, v5, :cond_2

    .line 168
    new-instance v5, Lcom/ecareme/pixwe/media/CommentLayer;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/CommentLayer;-><init>(Landroid/content/Context;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mComment:Lcom/ecareme/pixwe/media/CommentLayer;

    .line 169
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mLayoutInterface:Lcom/ecareme/pixwe/media/LayoutInterface;

    .line 170
    new-instance v5, Lcom/ecareme/pixwe/media/GridCamera;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move v1, v6

    move v2, v7

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/GridCamera;-><init>(IIII)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    .line 171
    new-instance v5, Lcom/ecareme/pixwe/media/GridDrawables;

    move-object v0, v5

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/ecareme/pixwe/media/GridDrawables;-><init>(II)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mDrawables:Lcom/ecareme/pixwe/media/GridDrawables;

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object v5, v0

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Lcom/ecareme/pixwe/media/IndexRange;->set(II)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object v5, v0

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Lcom/ecareme/pixwe/media/IndexRange;->set(II)V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mCompleteRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object v5, v0

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Lcom/ecareme/pixwe/media/IndexRange;->set(II)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mPreviousDataRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object v5, v0

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Lcom/ecareme/pixwe/media/IndexRange;->set(II)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mDeltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/ecareme/pixwe/media/Vector3f;->set(FFF)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mDeltaAnchorPositionUncommited:Lcom/ecareme/pixwe/media/Vector3f;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/ecareme/pixwe/media/Vector3f;->set(FFF)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mSelectedBucketList:Lcom/ecareme/pixwe/media/MediaBucketList;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/MediaBucketList;->clear()V

    .line 180
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mVisibleItems:Ljava/util/ArrayList;

    .line 181
    new-instance v5, Lcom/ecareme/pixwe/media/HudLayer;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer;-><init>(Landroid/content/Context;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer;->setContext(Landroid/content/Context;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer;->setGridLayer(Lcom/ecareme/pixwe/media/GridLayer;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/HudLayer;->getPathBar()Lcom/ecareme/pixwe/media/PathBarLayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/PathBarLayer;->clear()V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer;->setGridLayer(Lcom/ecareme/pixwe/media/GridLayer;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/HudLayer;->getTimeBar()Lcom/ecareme/pixwe/media/TimeBar;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/TimeBar;->setListener(Lcom/ecareme/pixwe/media/TimeBar$Listener;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/HudLayer;->getPathBar()Lcom/ecareme/pixwe/media/PathBarLayer;

    move-result-object v5

    const v6, 0x7f02004e

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f06

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/ecareme/pixwe/media/GridLayer$1;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/GridLayer$1;-><init>(Lcom/ecareme/pixwe/media/GridLayer;)V

    invoke-virtual {v5, v6, v7, v8}, Lcom/ecareme/pixwe/media/PathBarLayer;->pushLabel(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 198
    new-instance v5, Lcom/ecareme/pixwe/media/GridCameraManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/ecareme/pixwe/media/GridCameraManager;-><init>(Lcom/ecareme/pixwe/media/GridCamera;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mCameraManager:Lcom/ecareme/pixwe/media/GridCameraManager;

    .line 199
    new-instance v5, Lcom/ecareme/pixwe/media/GridDrawManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mDrawables:Lcom/ecareme/pixwe/media/GridDrawables;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mDisplayList:Lcom/ecareme/pixwe/media/DisplayList;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mDisplayItems:[Lcom/ecareme/pixwe/media/DisplayItem;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mDisplaySlots:[Lcom/ecareme/pixwe/media/DisplaySlot;

    move-object v11, v0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v11}, Lcom/ecareme/pixwe/media/GridDrawManager;-><init>(Landroid/content/Context;Lcom/ecareme/pixwe/media/GridCamera;Lcom/ecareme/pixwe/media/GridDrawables;Lcom/ecareme/pixwe/media/DisplayList;[Lcom/ecareme/pixwe/media/DisplayItem;[Lcom/ecareme/pixwe/media/DisplaySlot;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mDrawManager:Lcom/ecareme/pixwe/media/GridDrawManager;

    .line 200
    new-instance v5, Lcom/ecareme/pixwe/media/GridInputProcessor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mView:Lcom/ecareme/pixwe/media/RenderView;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mTempVec:Lcom/ecareme/pixwe/media/Pool;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mDisplayItems:[Lcom/ecareme/pixwe/media/DisplayItem;

    move-object v11, v0

    move-object/from16 v6, p1

    move-object/from16 v8, p0

    invoke-direct/range {v5 .. v11}, Lcom/ecareme/pixwe/media/GridInputProcessor;-><init>(Landroid/content/Context;Lcom/ecareme/pixwe/media/GridCamera;Lcom/ecareme/pixwe/media/GridLayer;Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/Pool;[Lcom/ecareme/pixwe/media/DisplayItem;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    .line 201
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridLayer;->setState(I)V

    .line 202
    return-void

    .line 153
    .end local v12           #displaySlots:[Lcom/ecareme/pixwe/media/DisplaySlot;
    .end local v17           #vectorPoolRenderThread:[Lcom/ecareme/pixwe/media/Vector3f;
    :cond_0
    new-instance v5, Lcom/ecareme/pixwe/media/Vector3f;

    invoke-direct {v5}, Lcom/ecareme/pixwe/media/Vector3f;-><init>()V

    aput-object v5, v16, v13

    .line 152
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 158
    .restart local v17       #vectorPoolRenderThread:[Lcom/ecareme/pixwe/media/Vector3f;
    :cond_1
    new-instance v5, Lcom/ecareme/pixwe/media/Vector3f;

    invoke-direct {v5}, Lcom/ecareme/pixwe/media/Vector3f;-><init>()V

    aput-object v5, v17, v13

    .line 157
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 165
    .restart local v12       #displaySlots:[Lcom/ecareme/pixwe/media/DisplaySlot;
    :cond_2
    new-instance v15, Lcom/ecareme/pixwe/media/DisplaySlot;

    invoke-direct {v15}, Lcom/ecareme/pixwe/media/DisplaySlot;-><init>()V

    .line 166
    .local v15, slot:Lcom/ecareme/pixwe/media/DisplaySlot;
    aput-object v15, v12, v13

    .line 164
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2
.end method

.method static synthetic access$0(Lcom/ecareme/pixwe/media/GridLayer;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ecareme/pixwe/media/GridLayer;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/ecareme/pixwe/media/GridLayer;->isVideoPlayingInSlideshowMode:Z

    return-void
.end method

.method static synthetic access$2(Lcom/ecareme/pixwe/media/GridLayer;)Lcom/ecareme/pixwe/media/RenderView;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mView:Lcom/ecareme/pixwe/media/RenderView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ecareme/pixwe/media/GridLayer;)Lcom/ecareme/pixwe/media/HudLayer;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ecareme/pixwe/media/GridLayer;)Z
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mFeedAboutToChange:Z

    return v0
.end method

.method static synthetic access$5(Lcom/ecareme/pixwe/media/GridLayer;)Lcom/ecareme/pixwe/media/GridInputProcessor;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ecareme/pixwe/media/GridLayer;)I
    .locals 1
    .parameter

    .prologue
    .line 64
    iget v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    return v0
.end method

.method private computeVisibleItems()V
    .locals 47

    .prologue
    .line 666
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mFeedAboutToChange:Z

    move/from16 v44, v0

    if-nez v44, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mPerformingLayoutChange:Z

    move/from16 v44, v0

    if-eqz v44, :cond_1

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/ecareme/pixwe/media/GridLayer;->computeVisibleRange()V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mPreviousDataRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    move/from16 v45, v0

    sub-int v12, v44, v45

    .line 671
    .local v12, deltaBegin:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mPreviousDataRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    move/from16 v45, v0

    sub-int v13, v44, v45

    .line 672
    .local v13, deltaEnd:I
    if-nez v12, :cond_2

    if-eqz v13, :cond_0

    .line 677
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    move/from16 v20, v0

    .line 678
    .local v20, firstVisibleSlotIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    move/from16 v28, v0

    .line 679
    .local v28, lastVisibleSlotIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mPreviousDataRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object/from16 v44, v0

    move/from16 v0, v20

    move-object/from16 v1, v44

    iput v0, v1, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mPreviousDataRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object/from16 v44, v0

    move/from16 v0, v28

    move-object/from16 v1, v44

    iput v0, v1, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mTempVec:Lcom/ecareme/pixwe/media/Pool;

    move-object/from16 v39, v0

    .line 683
    .local v39, pool:Lcom/ecareme/pixwe/media/Pool;,"Lcom/ecareme/pixwe/media/Pool<Lcom/ecareme/pixwe/media/Vector3f;>;"
    invoke-virtual/range {v39 .. v39}, Lcom/ecareme/pixwe/media/Pool;->create()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/ecareme/pixwe/media/Vector3f;

    .line 684
    .local v40, position:Lcom/ecareme/pixwe/media/Vector3f;
    invoke-virtual/range {v39 .. v39}, Lcom/ecareme/pixwe/media/Pool;->create()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/ecareme/pixwe/media/Vector3f;

    .line 686
    .local v11, deltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    move-object/from16 v19, v0

    .line 687
    .local v19, feed:Lcom/ecareme/pixwe/media/MediaFeed;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mDisplayList:Lcom/ecareme/pixwe/media/DisplayList;

    move-object/from16 v16, v0

    .line 688
    .local v16, displayList:Lcom/ecareme/pixwe/media/DisplayList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mDisplayItems:[Lcom/ecareme/pixwe/media/DisplayItem;

    move-object v15, v0

    .line 689
    .local v15, displayItems:[Lcom/ecareme/pixwe/media/DisplayItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mDisplaySlots:[Lcom/ecareme/pixwe/media/DisplaySlot;

    move-object/from16 v17, v0

    .line 690
    .local v17, displaySlots:[Lcom/ecareme/pixwe/media/DisplaySlot;
    move-object v0, v15

    array-length v0, v0

    move/from16 v31, v0

    .line 691
    .local v31, numDisplayItems:I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v32, v0

    .line 692
    .local v32, numDisplaySlots:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mVisibleItems:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    .line 693
    .local v43, visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mDeltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;

    move-object/from16 v44, v0

    move-object v0, v11

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/Vector3f;->set(Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mLayoutInterface:Lcom/ecareme/pixwe/media/LayoutInterface;

    move-object/from16 v29, v0

    .line 695
    .local v29, layout:Lcom/ecareme/pixwe/media/LayoutInterface;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v7, v0

    .line 696
    .local v7, camera:Lcom/ecareme/pixwe/media/GridCamera;
    move/from16 v21, v20

    .local v21, i:I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v28

    if-le v0, v1, :cond_9

    .line 759
    const-string v44, "TAG"

    new-instance v45, Ljava/lang/StringBuilder;

    const-string v46, "mFeedChanged = "

    invoke-direct/range {v45 .. v46}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mFeedChanged:Z

    move/from16 v46, v0

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mFeedChanged:Z

    move/from16 v44, v0

    if-eqz v44, :cond_7

    .line 761
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mFeedChanged:Z

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    move-object/from16 v44, v0

    if-eqz v44, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move/from16 v44, v0

    const/16 v45, 0x2

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mRequestFocusContentUri:Ljava/lang/String;

    move-object/from16 v44, v0

    if-nez v44, :cond_4

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/ecareme/pixwe/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v10

    .line 764
    .local v10, currentSelectedSlot:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mCompleteRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    move/from16 v44, v0

    move v0, v10

    move/from16 v1, v44

    if-le v0, v1, :cond_3

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mCompleteRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    move v10, v0

    .line 766
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridInputProcessor;->setCurrentSelectedSlot(I)V

    .line 768
    .end local v10           #currentSelectedSlot:I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_6

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/ecareme/pixwe/media/MediaFeed;->getExpandedMediaSet()Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v18

    .line 770
    .local v18, expandedSet:Lcom/ecareme/pixwe/media/MediaSet;
    if-eqz v18, :cond_6

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object/from16 v44, v0

    if-eqz v44, :cond_6

    .line 772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/ecareme/pixwe/media/HudLayer;->getPathBar()Lcom/ecareme/pixwe/media/PathBarLayer;

    move-result-object v38

    .line 773
    .local v38, pathBar:Lcom/ecareme/pixwe/media/PathBarLayer;
    if-eqz v38, :cond_6

    .line 774
    invoke-virtual/range {v38 .. v38}, Lcom/ecareme/pixwe/media/PathBarLayer;->getCurrentLabel()Ljava/lang/String;

    move-result-object v9

    .line 775
    .local v9, currentLabel:Ljava/lang/String;
    if-eqz v9, :cond_5

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mNoCountTitleString:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object v0, v9

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_6

    .line 776
    :cond_5
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mNoCountTitleString:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/PathBarLayer;->changeLabel(Ljava/lang/String;)V

    .line 782
    .end local v9           #currentLabel:Ljava/lang/String;
    .end local v18           #expandedSet:Lcom/ecareme/pixwe/media/MediaSet;
    .end local v38           #pathBar:Lcom/ecareme/pixwe/media/PathBarLayer;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mRequestFocusContentUri:Ljava/lang/String;

    move-object/from16 v44, v0

    if-eqz v44, :cond_7

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mCompleteRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    move/from16 v44, v0

    add-int/lit8 v35, v44, 0x1

    .line 785
    .local v35, numSlots:I
    const/16 v21, 0x0

    :goto_2
    move/from16 v0, v21

    move/from16 v1, v35

    if-lt v0, v1, :cond_16

    .line 803
    const/16 v44, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mRequestFocusContentUri:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    .end local v35           #numSlots:I
    :cond_7
    invoke-virtual/range {v39 .. v40}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 808
    move-object/from16 v0, v39

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 811
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move/from16 v44, v0

    if-eqz v44, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move/from16 v44, v0

    const/16 v45, 0x3

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_1a

    :cond_8
    const/16 v44, 0x64

    move/from16 v36, v44

    .line 812
    .local v36, numThumbnailsToKeepInMemory:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    move/from16 v44, v0

    div-int v44, v44, v36

    mul-int v42, v44, v36

    .line 813
    .local v42, startMemoryRange:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mStartMemoryRange:I

    move/from16 v44, v0

    move/from16 v0, v44

    move/from16 v1, v42

    if-eq v0, v1, :cond_0

    .line 814
    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mStartMemoryRange:I

    .line 815
    invoke-virtual/range {p0 .. p0}, Lcom/ecareme/pixwe/media/GridLayer;->clearUnusedThumbnails()V

    goto/16 :goto_0

    .line 697
    .end local v36           #numThumbnailsToKeepInMemory:I
    .end local v42           #startMemoryRange:I
    :cond_9
    :try_start_1
    move/from16 v0, v21

    move-object v1, v7

    move-object/from16 v2, v29

    move-object v3, v11

    move-object/from16 v4, v40

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/GridCameraManager;->getSlotPositionForSlotIndex(ILcom/ecareme/pixwe/media/GridCamera;Lcom/ecareme/pixwe/media/LayoutInterface;Lcom/ecareme/pixwe/media/Vector3f;Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 698
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaFeed;->getSetForSlot(I)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v41

    .line 699
    .local v41, set:Lcom/ecareme/pixwe/media/MediaSet;
    sub-int v22, v21, v20

    .line 701
    .local v22, indexIntoSlots:I
    if-eqz v41, :cond_c

    if-ltz v22, :cond_c

    move/from16 v0, v22

    move/from16 v1, v32

    if-ge v0, v1, :cond_c

    .line 702
    invoke-virtual/range {v41 .. v41}, Lcom/ecareme/pixwe/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v25

    .line 703
    .local v25, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    aget-object v44, v17, v22

    move-object/from16 v0, v44

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/DisplaySlot;->setMediaSet(Lcom/ecareme/pixwe/media/MediaSet;)V

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mTempList:Ljava/util/ArrayList;

    move-object v6, v0

    .line 713
    .local v6, bestItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    const/16 v44, 0x20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mTempHash:[Lcom/ecareme/pixwe/media/MediaItem;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v25

    move/from16 v2, v44

    move-object v3, v6

    move-object/from16 v4, v45

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/ArrayUtils;->computeSortedIntersection(Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/util/ArrayList;[Lcom/ecareme/pixwe/media/MediaItem;)V

    .line 716
    invoke-virtual/range {v41 .. v41}, Lcom/ecareme/pixwe/media/MediaSet;->getNumItems()I

    move-result v34

    .line 717
    .local v34, numItemsInSet:I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 718
    .local v30, numBestItems:I
    move/from16 v37, v30

    .line 719
    .local v37, originallyFoundItems:I
    const/16 v44, 0x20

    move/from16 v0, v30

    move/from16 v1, v44

    if-ge v0, v1, :cond_a

    .line 720
    const/16 v44, 0x20

    sub-int v26, v44, v30

    .line 721
    .local v26, itemsRemaining:I
    const/4 v8, 0x0

    .local v8, currItemPos:I
    :goto_4
    move v0, v8

    move/from16 v1, v34

    if-lt v0, v1, :cond_d

    .line 731
    .end local v8           #currItemPos:I
    .end local v26           #itemsRemaining:I
    :cond_a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 732
    sub-int v44, v21, v20

    mul-int/lit8 v5, v44, 0x20

    .line 733
    .local v5, baseIndex:I
    const/16 v27, 0x0

    .local v27, j:I
    :goto_5
    move/from16 v0, v27

    move/from16 v1, v30

    if-lt v0, v1, :cond_f

    .line 753
    :cond_b
    move/from16 v27, v30

    :goto_6
    const/16 v44, 0x20

    move/from16 v0, v27

    move/from16 v1, v44

    if-lt v0, v1, :cond_15

    .line 756
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 696
    .end local v5           #baseIndex:I
    .end local v6           #bestItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v25           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v27           #j:I
    .end local v30           #numBestItems:I
    .end local v34           #numItemsInSet:I
    .end local v37           #originallyFoundItems:I
    :cond_c
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 722
    .restart local v6       #bestItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .restart local v8       #currItemPos:I
    .restart local v25       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .restart local v26       #itemsRemaining:I
    .restart local v30       #numBestItems:I
    .restart local v34       #numItemsInSet:I
    .restart local v37       #originallyFoundItems:I
    :cond_d
    move-object/from16 v0, v25

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/ecareme/pixwe/media/MediaItem;

    .line 723
    .local v23, item:Lcom/ecareme/pixwe/media/MediaItem;
    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v44

    if-nez v44, :cond_e

    .line 724
    move-object v0, v6

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    add-int/lit8 v26, v26, -0x1

    if-eqz v26, :cond_a

    .line 721
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 734
    .end local v8           #currItemPos:I
    .end local v23           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v26           #itemsRemaining:I
    .restart local v5       #baseIndex:I
    .restart local v27       #j:I
    :cond_f
    add-int v44, v5, v27

    move/from16 v0, v44

    move/from16 v1, v31

    if-ge v0, v1, :cond_b

    .line 737
    move/from16 v0, v27

    move/from16 v1, v34

    if-lt v0, v1, :cond_11

    .line 738
    add-int v44, v5, v27

    const/16 v45, 0x0

    aput-object v45, v15, v44

    .line 733
    :cond_10
    :goto_7
    add-int/lit8 v27, v27, 0x1

    goto :goto_5

    .line 740
    :cond_11
    move-object v0, v6

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/ecareme/pixwe/media/MediaItem;

    .line 741
    .restart local v23       #item:Lcom/ecareme/pixwe/media/MediaItem;
    if-eqz v23, :cond_10

    .line 742
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/DisplayList;->get(Lcom/ecareme/pixwe/media/MediaItem;)Lcom/ecareme/pixwe/media/DisplayItem;

    move-result-object v14

    .line 743
    .local v14, displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move/from16 v44, v0

    const/16 v45, 0x2

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Lcom/ecareme/pixwe/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v44

    move/from16 v0, v21

    move/from16 v1, v44

    if-ne v0, v1, :cond_13

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_14

    move/from16 v0, v27

    move/from16 v1, v37

    if-lt v0, v1, :cond_14

    .line 744
    :cond_13
    const/16 v44, 0x0

    move-object v0, v14

    move-object/from16 v1, v40

    move/from16 v2, v27

    move/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/DisplayItem;->set(Lcom/ecareme/pixwe/media/Vector3f;IZ)V

    .line 745
    invoke-virtual {v14}, Lcom/ecareme/pixwe/media/DisplayItem;->commit()V

    .line 749
    :goto_8
    add-int v44, v5, v27

    aput-object v14, v15, v44
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    .line 806
    .end local v5           #baseIndex:I
    .end local v6           #bestItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v7           #camera:Lcom/ecareme/pixwe/media/GridCamera;
    .end local v14           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v15           #displayItems:[Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v16           #displayList:Lcom/ecareme/pixwe/media/DisplayList;
    .end local v17           #displaySlots:[Lcom/ecareme/pixwe/media/DisplaySlot;
    .end local v19           #feed:Lcom/ecareme/pixwe/media/MediaFeed;
    .end local v21           #i:I
    .end local v22           #indexIntoSlots:I
    .end local v23           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v25           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v27           #j:I
    .end local v29           #layout:Lcom/ecareme/pixwe/media/LayoutInterface;
    .end local v30           #numBestItems:I
    .end local v31           #numDisplayItems:I
    .end local v32           #numDisplaySlots:I
    .end local v34           #numItemsInSet:I
    .end local v37           #originallyFoundItems:I
    .end local v41           #set:Lcom/ecareme/pixwe/media/MediaSet;
    .end local v43           #visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    :catchall_0
    move-exception v44

    .line 807
    invoke-virtual/range {v39 .. v40}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 808
    move-object/from16 v0, v39

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 809
    throw v44

    .line 747
    .restart local v5       #baseIndex:I
    .restart local v6       #bestItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .restart local v7       #camera:Lcom/ecareme/pixwe/media/GridCamera;
    .restart local v14       #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .restart local v15       #displayItems:[Lcom/ecareme/pixwe/media/DisplayItem;
    .restart local v16       #displayList:Lcom/ecareme/pixwe/media/DisplayList;
    .restart local v17       #displaySlots:[Lcom/ecareme/pixwe/media/DisplaySlot;
    .restart local v19       #feed:Lcom/ecareme/pixwe/media/MediaFeed;
    .restart local v21       #i:I
    .restart local v22       #indexIntoSlots:I
    .restart local v23       #item:Lcom/ecareme/pixwe/media/MediaItem;
    .restart local v25       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .restart local v27       #j:I
    .restart local v29       #layout:Lcom/ecareme/pixwe/media/LayoutInterface;
    .restart local v30       #numBestItems:I
    .restart local v31       #numDisplayItems:I
    .restart local v32       #numDisplaySlots:I
    .restart local v34       #numItemsInSet:I
    .restart local v37       #originallyFoundItems:I
    .restart local v41       #set:Lcom/ecareme/pixwe/media/MediaSet;
    .restart local v43       #visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    :cond_14
    const/16 v44, 0x1

    :try_start_2
    move-object/from16 v0, v16

    move-object v1, v14

    move-object/from16 v2, v40

    move/from16 v3, v27

    move/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/DisplayList;->setPositionAndStackIndex(Lcom/ecareme/pixwe/media/DisplayItem;Lcom/ecareme/pixwe/media/Vector3f;IZ)V

    goto :goto_8

    .line 754
    .end local v14           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v23           #item:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_15
    add-int v44, v5, v27

    const/16 v45, 0x0

    aput-object v45, v15, v44

    .line 753
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_6

    .line 786
    .end local v5           #baseIndex:I
    .end local v6           #bestItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v22           #indexIntoSlots:I
    .end local v25           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v27           #j:I
    .end local v30           #numBestItems:I
    .end local v34           #numItemsInSet:I
    .end local v37           #originallyFoundItems:I
    .end local v41           #set:Lcom/ecareme/pixwe/media/MediaSet;
    .restart local v35       #numSlots:I
    :cond_16
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaFeed;->getSetForSlot(I)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v41

    .line 787
    .restart local v41       #set:Lcom/ecareme/pixwe/media/MediaSet;
    invoke-virtual/range {v41 .. v41}, Lcom/ecareme/pixwe/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v25

    .line 788
    .restart local v25       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v33

    .line 789
    .local v33, numItems:I
    const/16 v27, 0x0

    .restart local v27       #j:I
    :goto_9
    move/from16 v0, v27

    move/from16 v1, v33

    if-lt v0, v1, :cond_17

    .line 785
    :goto_a
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 790
    :cond_17
    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ecareme/pixwe/media/MediaItem;

    move-object v0, v5

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mContentUri:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 791
    .local v24, itemUri:Ljava/lang/String;
    if-eqz v24, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mRequestFocusContentUri:Ljava/lang/String;

    move-object/from16 v44, v0

    if-eqz v44, :cond_19

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mRequestFocusContentUri:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_19

    .line 793
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move/from16 v44, v0

    const/16 v45, 0x2

    move/from16 v0, v44

    move/from16 v1, v45

    if-ne v0, v1, :cond_18

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridInputProcessor;->setCurrentSelectedSlot(I)V

    goto :goto_a

    .line 796
    :cond_18
    const/high16 v44, 0x3f80

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/GridLayer;->centerCameraForSlot(IF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_a

    .line 789
    :cond_19
    add-int/lit8 v27, v27, 0x1

    goto :goto_9

    .line 811
    .end local v24           #itemUri:Ljava/lang/String;
    .end local v25           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v27           #j:I
    .end local v33           #numItems:I
    .end local v35           #numSlots:I
    .end local v41           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_1a
    const/16 v44, 0x190

    move/from16 v36, v44

    goto/16 :goto_3
.end method

.method private computeVisibleRange()V
    .locals 8

    .prologue
    .line 657
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mPerformingLayoutChange:Z

    if-eqz v0, :cond_0

    .line 663
    :goto_0
    return-void

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDeltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDeltaAnchorPositionUncommited:Lcom/ecareme/pixwe/media/Vector3f;

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/Vector3f;->equals(Lcom/ecareme/pixwe/media/Vector3f;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 660
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDeltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDeltaAnchorPositionUncommited:Lcom/ecareme/pixwe/media/Vector3f;

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/Vector3f;->set(Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCameraManager:Lcom/ecareme/pixwe/media/GridCameraManager;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mLayoutInterface:Lcom/ecareme/pixwe/media/LayoutInterface;

    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDeltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;

    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridLayer;->mVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget-object v5, p0, Lcom/ecareme/pixwe/media/GridLayer;->mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget-object v6, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCompleteRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget v7, p0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    invoke-virtual/range {v0 .. v7}, Lcom/ecareme/pixwe/media/GridCameraManager;->computeVisibleRange(Lcom/ecareme/pixwe/media/MediaFeed;Lcom/ecareme/pixwe/media/LayoutInterface;Lcom/ecareme/pixwe/media/Vector3f;Lcom/ecareme/pixwe/media/IndexRange;Lcom/ecareme/pixwe/media/IndexRange;Lcom/ecareme/pixwe/media/IndexRange;I)V

    goto :goto_0
.end method

.method private forceRecomputeVisibleRange()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 955
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mPreviousDataRange:Lcom/ecareme/pixwe/media/IndexRange;

    iput v1, v0, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    .line 956
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mPreviousDataRange:Lcom/ecareme/pixwe/media/IndexRange;

    iput v1, v0, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    .line 957
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mView:Lcom/ecareme/pixwe/media/RenderView;

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mView:Lcom/ecareme/pixwe/media/RenderView;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/RenderView;->requestRender()V

    .line 960
    :cond_0
    return-void
.end method

.method private getFillScreenZoomValue()F
    .locals 4

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mTempVec:Lcom/ecareme/pixwe/media/Pool;

    iget v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCurrentFocusItemWidth:F

    iget v3, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCurrentFocusItemHeight:F

    invoke-static {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/GridCameraManager;->getFillScreenZoomValue(Lcom/ecareme/pixwe/media/GridCamera;Lcom/ecareme/pixwe/media/Pool;FF)F

    move-result v0

    return v0
.end method

.method private getSlotForScreenPosition(IIII)I
    .locals 7
    .parameter "posX"
    .parameter "posY"
    .parameter "itemWidth"
    .parameter "itemHeight"

    .prologue
    .line 1312
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mTempVec:Lcom/ecareme/pixwe/media/Pool;

    .line 1313
    .local v1, pool:Lcom/ecareme/pixwe/media/Pool;,"Lcom/ecareme/pixwe/media/Pool<Lcom/ecareme/pixwe/media/Vector3f;>;"
    const/4 v2, 0x0

    .line 1314
    .local v2, retVal:I
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/Pool;->create()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ecareme/pixwe/media/Vector3f;

    .line 1316
    .local v3, worldPos:Lcom/ecareme/pixwe/media/Vector3f;
    :try_start_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    .line 1317
    .local v0, camera:Lcom/ecareme/pixwe/media/GridCamera;
    int-to-float v4, p1

    int-to-float v5, p2

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v6, v3}, Lcom/ecareme/pixwe/media/GridCamera;->convertToCameraSpace(FFFLcom/ecareme/pixwe/media/Vector3f;)V

    .line 1319
    iget v4, v3, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    iget v5, v0, Lcom/ecareme/pixwe/media/GridCamera;->mScale:F

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    .line 1320
    iget v4, v3, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    iget v5, v0, Lcom/ecareme/pixwe/media/GridCamera;->mScale:F

    mul-float/2addr v4, v5

    iput v4, v3, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    .line 1322
    invoke-direct {p0, v3, p3, p4}, Lcom/ecareme/pixwe/media/GridLayer;->hitTest(Lcom/ecareme/pixwe/media/Vector3f;II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 1324
    invoke-virtual {v1, v3}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1326
    return v2

    .line 1323
    .end local v0           #camera:Lcom/ecareme/pixwe/media/GridCamera;
    :catchall_0
    move-exception v4

    .line 1324
    invoke-virtual {v1, v3}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1325
    throw v4
.end method

.method private hitTest(Lcom/ecareme/pixwe/media/Vector3f;II)I
    .locals 17
    .parameter "worldPos"
    .parameter "itemWidth"
    .parameter "itemHeight"

    .prologue
    .line 483
    const/16 v16, -0x1

    .line 484
    .local v16, retVal:I
    const/4 v8, 0x0

    .line 485
    .local v8, firstSlotIndex:I
    const/4 v12, 0x0

    .line 486
    .local v12, lastSlotIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object v15, v0

    .line 487
    .local v15, rangeToUse:Lcom/ecareme/pixwe/media/IndexRange;
    monitor-enter v15

    .line 488
    :try_start_0
    iget v8, v15, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    .line 489
    iget v12, v15, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    .line 487
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mTempVec:Lcom/ecareme/pixwe/media/Pool;

    move-object v13, v0

    .line 492
    .local v13, pool:Lcom/ecareme/pixwe/media/Pool;,"Lcom/ecareme/pixwe/media/Pool<Lcom/ecareme/pixwe/media/Vector3f;>;"
    move/from16 v0, p2

    int-to-float v0, v0

    move v1, v0

    const/high16 v2, 0x3f00

    mul-float v11, v1, v2

    .line 493
    .local v11, itemWidthBy2:F
    move/from16 v0, p3

    int-to-float v0, v0

    move v1, v0

    const/high16 v2, 0x3f00

    mul-float v10, v1, v2

    .line 494
    .local v10, itemHeightBy2:F
    invoke-virtual {v13}, Lcom/ecareme/pixwe/media/Pool;->create()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/ecareme/pixwe/media/Vector3f;

    .line 495
    .local v14, position:Lcom/ecareme/pixwe/media/Vector3f;
    invoke-virtual {v13}, Lcom/ecareme/pixwe/media/Pool;->create()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ecareme/pixwe/media/Vector3f;

    .line 497
    .local v7, deltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mDeltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;

    move-object v1, v0

    invoke-virtual {v7, v1}, Lcom/ecareme/pixwe/media/Vector3f;->set(Lcom/ecareme/pixwe/media/Vector3f;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 498
    move v9, v8

    .local v9, i:I
    :goto_0
    if-le v9, v12, :cond_0

    .line 506
    :goto_1
    invoke-virtual {v13, v7}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 507
    invoke-virtual {v13, v14}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 509
    return v16

    .line 487
    .end local v7           #deltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;
    .end local v9           #i:I
    .end local v10           #itemHeightBy2:F
    .end local v11           #itemWidthBy2:F
    .end local v13           #pool:Lcom/ecareme/pixwe/media/Pool;,"Lcom/ecareme/pixwe/media/Pool<Lcom/ecareme/pixwe/media/Vector3f;>;"
    .end local v14           #position:Lcom/ecareme/pixwe/media/Vector3f;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 499
    .restart local v7       #deltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;
    .restart local v9       #i:I
    .restart local v10       #itemHeightBy2:F
    .restart local v11       #itemWidthBy2:F
    .restart local v13       #pool:Lcom/ecareme/pixwe/media/Pool;,"Lcom/ecareme/pixwe/media/Pool<Lcom/ecareme/pixwe/media/Vector3f;>;"
    .restart local v14       #position:Lcom/ecareme/pixwe/media/Vector3f;
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v1, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mLayoutInterface:Lcom/ecareme/pixwe/media/LayoutInterface;

    move-object v2, v0

    invoke-static {v9, v1, v2, v7, v14}, Lcom/ecareme/pixwe/media/GridCameraManager;->getSlotPositionForSlotIndex(ILcom/ecareme/pixwe/media/GridCamera;Lcom/ecareme/pixwe/media/LayoutInterface;Lcom/ecareme/pixwe/media/Vector3f;Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 500
    iget v1, v14, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    sub-float/2addr v1, v11

    iget v2, v14, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    add-float/2addr v2, v11

    iget v3, v14, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    sub-float/2addr v3, v10

    iget v4, v14, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    add-float/2addr v4, v10

    move-object/from16 v0, p1

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    move v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    move v6, v0

    invoke-static/range {v1 .. v6}, Lcom/ecareme/pixwe/media/FloatUtils;->boundsContainsPoint(FFFFFF)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v1

    if-eqz v1, :cond_1

    .line 501
    move/from16 v16, v9

    .line 502
    goto :goto_1

    .line 498
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 505
    .end local v9           #i:I
    :catchall_1
    move-exception v1

    .line 506
    invoke-virtual {v13, v7}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 507
    invoke-virtual {v13, v14}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 508
    throw v1
.end method

.method private updateCountOfSelectedItems()V
    .locals 2

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSelectedBucketList:Lcom/ecareme/pixwe/media/MediaBucketList;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/MediaBucketList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer;->updateNumItemsSelected(I)V

    .line 1301
    return-void
.end method


# virtual methods
.method addSlotToSelectedItems(IZZ)V
    .locals 3
    .parameter "slotId"
    .parameter "removeIfAlreadyAdded"
    .parameter "updateCount"

    .prologue
    .line 1283
    iget-boolean v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mFeedAboutToChange:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    if-eqz v2, :cond_1

    .line 1284
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    .line 1285
    .local v1, feed:Lcom/ecareme/pixwe/media/MediaFeed;
    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSelectedBucketList:Lcom/ecareme/pixwe/media/MediaBucketList;

    invoke-virtual {v2, p1, v1}, Lcom/ecareme/pixwe/media/MediaBucketList;->exists(ILcom/ecareme/pixwe/media/MediaFeed;)Z

    move-result v0

    .line 1286
    .local v0, exist:Z
    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSelectedBucketList:Lcom/ecareme/pixwe/media/MediaBucketList;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/MediaBucketList;->clear()V

    .line 1287
    if-nez v0, :cond_0

    .line 1288
    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSelectedBucketList:Lcom/ecareme/pixwe/media/MediaBucketList;

    invoke-virtual {v2, p1, v1, p2}, Lcom/ecareme/pixwe/media/MediaBucketList;->add(ILcom/ecareme/pixwe/media/MediaFeed;Z)V

    .line 1290
    :cond_0
    if-eqz p3, :cond_1

    .line 1291
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/GridLayer;->updateCountOfSelectedItems()V

    .line 1292
    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSelectedBucketList:Lcom/ecareme/pixwe/media/MediaBucketList;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/MediaBucketList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1293
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/GridLayer;->deselectAll()V

    .line 1296
    .end local v0           #exist:Z
    .end local v1           #feed:Lcom/ecareme/pixwe/media/MediaFeed;
    :cond_1
    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/HudLayer;->computeBottomMenu()V

    .line 1297
    return-void
.end method

.method centerCameraForSlot(IF)V
    .locals 10
    .parameter "slotIndex"
    .parameter "baseConvergence"

    .prologue
    .line 513
    const/4 v7, 0x0

    .line 514
    .local v7, imageTheta:F
    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/media/GridLayer;->getDisplayItemForSlotId(I)Lcom/ecareme/pixwe/media/DisplayItem;

    move-result-object v9

    .line 515
    .local v9, displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    if-eqz v9, :cond_0

    .line 516
    invoke-virtual {v9}, Lcom/ecareme/pixwe/media/DisplayItem;->getImageTheta()F

    move-result v7

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCameraManager:Lcom/ecareme/pixwe/media/GridCameraManager;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mLayoutInterface:Lcom/ecareme/pixwe/media/LayoutInterface;

    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDeltaAnchorPositionUncommited:Lcom/ecareme/pixwe/media/Vector3f;

    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v5

    iget v6, p0, Lcom/ecareme/pixwe/media/GridLayer;->mZoomValue:F

    iget v8, p0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v8}, Lcom/ecareme/pixwe/media/GridCameraManager;->centerCameraForSlot(Lcom/ecareme/pixwe/media/LayoutInterface;IFLcom/ecareme/pixwe/media/Vector3f;IFFI)V

    .line 519
    return-void
.end method

.method changeFocusToNextSlot(F)Z
    .locals 5
    .parameter "convergence"

    .prologue
    .line 1173
    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v0

    .line 1174
    .local v0, currentSelectedSlot:I
    add-int/lit8 v1, v0, 0x1

    .line 1175
    .local v1, nextSelectedSlot:I
    iget-boolean v3, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSlideshowMode:Z

    if-eqz v3, :cond_0

    .line 1176
    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridLayer;->mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget v3, v3, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    if-le v1, v3, :cond_0

    .line 1177
    const/4 v1, 0x0

    .line 1181
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/ecareme/pixwe/media/GridLayer;->changeFocusToSlot(IF)Z

    move-result v2

    .line 1183
    .local v2, retVal:Z
    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 1184
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/GridLayer;->endSlideshow()V

    .line 1185
    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    const/high16 v4, 0x3f80

    invoke-virtual {v3, v4}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    .line 1187
    :cond_1
    return v2
.end method

.method changeFocusToPreviousSlot(F)Z
    .locals 2
    .parameter "convergence"

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/ecareme/pixwe/media/GridLayer;->changeFocusToSlot(IF)Z

    move-result v0

    return v0
.end method

.method changeFocusToSlot(IF)Z
    .locals 9
    .parameter "slotId"
    .parameter "convergence"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1192
    const/high16 v4, 0x3f80

    iput v4, p0, Lcom/ecareme/pixwe/media/GridLayer;->mZoomValue:F

    .line 1193
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridLayer;->mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget v4, v4, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    sub-int v1, p1, v4

    .line 1194
    .local v1, index:I
    if-ltz v1, :cond_3

    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridLayer;->mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget v4, v4, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    if-gt p1, v4, :cond_3

    .line 1195
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDisplayItems:[Lcom/ecareme/pixwe/media/DisplayItem;

    mul-int/lit8 v5, v1, 0x20

    aget-object v0, v4, v5

    .line 1197
    .local v0, displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    if-eqz v0, :cond_3

    .line 1198
    iget-object v2, v0, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    .line 1199
    .local v2, item:Lcom/ecareme/pixwe/media/MediaItem;
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCompleteRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget v6, v6, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v2, v5, v6}, Lcom/ecareme/pixwe/media/HudLayer;->fullscreenSelectionChanged(Lcom/ecareme/pixwe/media/MediaItem;II)V

    .line 1200
    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/MediaItem;->getMediaType()I

    move-result v4

    if-nez v4, :cond_1

    .line 1201
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/HudLayer;->getMenuBar()Lcom/ecareme/pixwe/media/Layer;

    move-result-object v3

    check-cast v3, Lcom/ecareme/pixwe/media/MenuBar;

    .line 1202
    .local v3, menuBar:Lcom/ecareme/pixwe/media/MenuBar;
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    iget-object v4, v4, Lcom/ecareme/pixwe/media/HudLayer;->moreOptionsMenuForImage:Lcom/ecareme/pixwe/media/MenuBar$Menu;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/MenuBar;->getMenus()[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v5

    array-length v5, v5

    sub-int/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/ecareme/pixwe/media/MenuBar;->updateMenu(Lcom/ecareme/pixwe/media/MenuBar$Menu;I)V

    .line 1211
    .end local v3           #menuBar:Lcom/ecareme/pixwe/media/MenuBar;
    :cond_0
    :goto_0
    const/4 v4, -0x1

    if-eq p1, v4, :cond_2

    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCompleteRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget v4, v4, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    if-gt p1, v4, :cond_2

    .line 1212
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-virtual {v4, p1}, Lcom/ecareme/pixwe/media/GridInputProcessor;->setCurrentFocusSlot(I)V

    .line 1213
    invoke-virtual {p0, p1, p2}, Lcom/ecareme/pixwe/media/GridLayer;->centerCameraForSlot(IF)V

    move v4, v7

    .line 1221
    .end local v0           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v2           #item:Lcom/ecareme/pixwe/media/MediaItem;
    :goto_1
    return v4

    .line 1203
    .restart local v0       #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .restart local v2       #item:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_1
    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/MediaItem;->getMediaType()I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 1204
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/HudLayer;->getMenuBar()Lcom/ecareme/pixwe/media/Layer;

    move-result-object v3

    check-cast v3, Lcom/ecareme/pixwe/media/MenuBar;

    .line 1205
    .restart local v3       #menuBar:Lcom/ecareme/pixwe/media/MenuBar;
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    iget-object v4, v4, Lcom/ecareme/pixwe/media/HudLayer;->moreOptionsMenuForVideo:Lcom/ecareme/pixwe/media/MenuBar$Menu;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/MenuBar;->getMenus()[Lcom/ecareme/pixwe/media/MenuBar$Menu;

    move-result-object v5

    array-length v5, v5

    sub-int/2addr v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/ecareme/pixwe/media/MenuBar;->updateMenu(Lcom/ecareme/pixwe/media/MenuBar$Menu;I)V

    .line 1206
    iget-boolean v4, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSlideshowMode:Z

    if-eqz v4, :cond_0

    .line 1207
    iput-boolean v7, p0, Lcom/ecareme/pixwe/media/GridLayer;->isVideoPlayingInSlideshowMode:Z

    .line 1208
    invoke-virtual {p0, v2}, Lcom/ecareme/pixwe/media/GridLayer;->playVideoInSlideshowMode(Lcom/ecareme/pixwe/media/MediaItem;)V

    goto :goto_0

    .line 1216
    .end local v3           #menuBar:Lcom/ecareme/pixwe/media/MenuBar;
    :cond_2
    iget-object v4, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-virtual {v4}, Lcom/ecareme/pixwe/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v4

    invoke-virtual {p0, v4, p2}, Lcom/ecareme/pixwe/media/GridLayer;->centerCameraForSlot(IF)V

    move v4, v8

    .line 1217
    goto :goto_1

    .end local v0           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v2           #item:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_3
    move v4, v8

    .line 1221
    goto :goto_1
.end method

.method public clearUnusedThumbnails()V
    .locals 2

    .prologue
    .line 829
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDisplayList:Lcom/ecareme/pixwe/media/DisplayList;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDisplayItems:[Lcom/ecareme/pixwe/media/DisplayItem;

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/DisplayList;->clearExcept([Lcom/ecareme/pixwe/media/DisplayItem;)V

    .line 830
    return-void
.end method

.method constrainCameraForSlot(I)Z
    .locals 6
    .parameter "slotIndex"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCameraManager:Lcom/ecareme/pixwe/media/GridCameraManager;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mLayoutInterface:Lcom/ecareme/pixwe/media/LayoutInterface;

    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDeltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;

    iget v4, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCurrentFocusItemWidth:F

    iget v5, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCurrentFocusItemHeight:F

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/ecareme/pixwe/media/GridCameraManager;->constrainCameraForSlot(Lcom/ecareme/pixwe/media/LayoutInterface;ILcom/ecareme/pixwe/media/Vector3f;FF)Z

    move-result v0

    return v0
.end method

.method public cropSelectedItem()V
    .locals 0

    .prologue
    .line 1481
    return-void
.end method

.method public deleteInFullscreenMode(Lcom/ecareme/pixwe/media/MediaItem;)V
    .locals 3
    .parameter "media"

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/ecareme/pixwe/media/MediaFeed;->performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)V

    .line 1262
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCompleteRange:Lcom/ecareme/pixwe/media/IndexRange;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/IndexRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1263
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/GridLayer;->goBack()Z

    .line 1265
    :cond_0
    return-void
.end method

.method public deleteSelection()V
    .locals 4

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/GridLayer;->getSelectedBuckets()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/MediaFeed;->performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)V

    .line 1272
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/GridLayer;->deselectAll()V

    .line 1275
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCompleteRange:Lcom/ecareme/pixwe/media/IndexRange;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/IndexRange;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1276
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/GridLayer;->goBack()Z

    .line 1279
    :cond_0
    return-void
.end method

.method public deselectAll()V
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HudLayer;->cancelSelection()V

    .line 1255
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSelectedBucketList:Lcom/ecareme/pixwe/media/MediaBucketList;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MediaBucketList;->clear()V

    .line 1256
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/GridLayer;->updateCountOfSelectedItems()V

    .line 1257
    return-void
.end method

.method public deselectOrCancelSelectMode()V
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSelectedBucketList:Lcom/ecareme/pixwe/media/MediaBucketList;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MediaBucketList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HudLayer;->cancelSelection()V

    .line 1251
    :goto_0
    return-void

    .line 1248
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSelectedBucketList:Lcom/ecareme/pixwe/media/MediaBucketList;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MediaBucketList;->clear()V

    .line 1249
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/GridLayer;->updateCountOfSelectedItems()V

    goto :goto_0
.end method

.method protected disableLocationFiltering()V
    .locals 1

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mLocationFilter:Z

    if-eqz v0, :cond_0

    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mLocationFilter:Z

    .line 395
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MediaFeed;->removeFilter()V

    .line 396
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HudLayer;->getPathBar()Lcom/ecareme/pixwe/media/PathBarLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/PathBarLayer;->popLabel()Lcom/ecareme/pixwe/media/PathBarLayer$Component;

    .line 398
    :cond_0
    return-void
.end method

.method protected enableLocationFiltering(Ljava/lang/String;)V
    .locals 3
    .parameter "label"

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mLocationFilter:Z

    if-nez v0, :cond_0

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mLocationFilter:Z

    .line 375
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HudLayer;->getPathBar()Lcom/ecareme/pixwe/media/PathBarLayer;

    move-result-object v0

    const v1, 0x7f02004f

    new-instance v2, Lcom/ecareme/pixwe/media/GridLayer$4;

    invoke-direct {v2, p0}, Lcom/ecareme/pixwe/media/GridLayer$4;-><init>(Lcom/ecareme/pixwe/media/GridLayer;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/ecareme/pixwe/media/PathBarLayer;->pushLabel(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 390
    :cond_0
    return-void
.end method

.method public endSlideshow()V
    .locals 2

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSlideshowMode:Z

    if-eqz v0, :cond_2

    .line 432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSlideshowMode:Z

    .line 433
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 437
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    .line 441
    :cond_2
    return-void
.end method

.method public enterSelectionMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1411
    iput-boolean v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSlideshowMode:Z

    .line 1412
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/HudLayer;->enterSelectionMode()V

    .line 1413
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v0

    .line 1414
    .local v0, currentSlot:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1415
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridInputProcessor;->getCurrentFocusSlot()I

    move-result v0

    .line 1416
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-virtual {v1, v0}, Lcom/ecareme/pixwe/media/GridInputProcessor;->setCurrentSelectedSlot(I)V

    .line 1418
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/ecareme/pixwe/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    .line 1419
    return-void
.end method

.method public feedAboutToChange()Z
    .locals 1

    .prologue
    .line 1508
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mFeedAboutToChange:Z

    return v0
.end method

.method public focusItem(Ljava/lang/String;)V
    .locals 2
    .parameter "contentUri"

    .prologue
    .line 1609
    iput-object p1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mRequestFocusContentUri:Ljava/lang/String;

    .line 1610
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    if-eqz v0, :cond_0

    .line 1611
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaFeed;->updateListener(Z)V

    .line 1613
    :cond_0
    return-void
.end method

.method public generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V
    .locals 1
    .parameter "view"
    .parameter "lists"

    .prologue
    .line 229
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->updateList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->opaqueList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mBackground:Lcom/ecareme/pixwe/media/BackgroundLayer;

    invoke-virtual {v0, p1, p2}, Lcom/ecareme/pixwe/media/BackgroundLayer;->generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V

    .line 232
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->blendedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->hitTestList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mComment:Lcom/ecareme/pixwe/media/CommentLayer;

    invoke-virtual {v0, p1, p2}, Lcom/ecareme/pixwe/media/CommentLayer;->generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V

    .line 235
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v0, p1, p2}, Lcom/ecareme/pixwe/media/HudLayer;->generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V

    .line 236
    return-void
.end method

.method public getAnchorDisplayItem(I)Lcom/ecareme/pixwe/media/DisplayItem;
    .locals 3
    .parameter "type"

    .prologue
    .line 1091
    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/media/GridLayer;->getAnchorSlotIndex(I)I

    move-result v1

    .line 1092
    .local v1, slotIndex:I
    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget v2, v2, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    sub-int v2, v1, v2

    mul-int/lit8 v0, v2, 0x20

    .line 1093
    .local v0, index:I
    if-ltz v0, :cond_0

    const/16 v2, 0xc00

    if-ge v0, v2, :cond_0

    .line 1094
    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDisplayItems:[Lcom/ecareme/pixwe/media/DisplayItem;

    aget-object v2, v2, v0

    .line 1096
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAnchorSlotIndex(I)I
    .locals 3
    .parameter "anchorType"

    .prologue
    .line 1149
    const/4 v0, 0x0

    .line 1150
    .local v0, retVal:I
    packed-switch p1, :pswitch_data_0

    .line 1161
    :goto_0
    return v0

    .line 1152
    :pswitch_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget v0, v1, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    .line 1153
    goto :goto_0

    .line 1155
    :pswitch_1
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget v0, v1, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    .line 1156
    goto :goto_0

    .line 1158
    :pswitch_2
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget v1, v1, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget v2, v2, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    goto :goto_0

    .line 1150
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getBufferedVisibleRange()Lcom/ecareme/pixwe/media/IndexRange;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    return-object v0
.end method

.method public getComment()Lcom/ecareme/pixwe/media/CommentLayer;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mComment:Lcom/ecareme/pixwe/media/CommentLayer;

    return-object v0
.end method

.method public getCompleteRange()Lcom/ecareme/pixwe/media/IndexRange;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCompleteRange:Lcom/ecareme/pixwe/media/IndexRange;

    return-object v0
.end method

.method public getCurrentFocusSlot()I
    .locals 1

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/GridInputProcessor;->getCurrentFocusSlot()I

    move-result v0

    return v0
.end method

.method public getCurrentSelectedSlot()I
    .locals 1

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    if-eqz v0, :cond_0

    .line 1589
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v0

    .line 1592
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDataSource()Lcom/ecareme/pixwe/media/DataSource;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MediaFeed;->getDataSource()Lcom/ecareme/pixwe/media/DataSource;

    move-result-object v0

    .line 451
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeltaAnchorPosition()Lcom/ecareme/pixwe/media/Vector3f;
    .locals 1

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDeltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;

    return-object v0
.end method

.method public getDisplayItemForScrollPosition(F)Lcom/ecareme/pixwe/media/DisplayItem;
    .locals 15
    .parameter "posX"

    .prologue
    .line 1106
    iget-object v8, p0, Lcom/ecareme/pixwe/media/GridLayer;->mTempVecAlt:Lcom/ecareme/pixwe/media/Pool;

    .line 1107
    .local v8, pool:Lcom/ecareme/pixwe/media/Pool;,"Lcom/ecareme/pixwe/media/Pool<Lcom/ecareme/pixwe/media/Vector3f;>;"
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    .line 1108
    .local v1, feed:Lcom/ecareme/pixwe/media/MediaFeed;
    iget-object v13, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    iget v5, v13, Lcom/ecareme/pixwe/media/GridCamera;->mItemWidth:I

    .line 1109
    .local v5, itemWidth:I
    iget-object v13, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    iget v4, v13, Lcom/ecareme/pixwe/media/GridCamera;->mItemHeight:I

    .line 1110
    .local v4, itemHeight:I
    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mLayoutInterface:Lcom/ecareme/pixwe/media/LayoutInterface;

    check-cast v2, Lcom/ecareme/pixwe/media/GridLayoutInterface;

    .line 1111
    .local v2, gridInterface:Lcom/ecareme/pixwe/media/GridLayoutInterface;
    move/from16 v0, p1

    .line 1112
    .local v0, absolutePosX:F
    int-to-float v13, v5

    div-float v13, v0, v13

    iget v14, v2, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mNumRows:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    float-to-int v7, v13

    .line 1113
    .local v7, left:I
    if-nez v1, :cond_1

    const/4 v13, 0x0

    move v11, v13

    .line 1114
    .local v11, right:I
    :goto_0
    move v10, v7

    .line 1115
    .local v10, retSlot:I
    invoke-virtual {v8}, Lcom/ecareme/pixwe/media/Pool;->create()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ecareme/pixwe/media/Vector3f;

    .line 1117
    .local v9, position:Lcom/ecareme/pixwe/media/Vector3f;
    move v3, v7

    .local v3, i:I
    :goto_1
    if-lt v3, v11, :cond_2

    .line 1125
    :cond_0
    invoke-virtual {v8, v9}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1127
    iget-boolean v13, p0, Lcom/ecareme/pixwe/media/GridLayer;->mFeedAboutToChange:Z

    if-eqz v13, :cond_3

    .line 1128
    const/4 v13, 0x0

    .line 1144
    .end local p0
    :goto_2
    return-object v13

    .line 1113
    .end local v3           #i:I
    .end local v9           #position:Lcom/ecareme/pixwe/media/Vector3f;
    .end local v10           #retSlot:I
    .end local v11           #right:I
    .restart local p0
    :cond_1
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/MediaFeed;->getNumSlots()I

    move-result v13

    move v11, v13

    goto :goto_0

    .line 1118
    .restart local v3       #i:I
    .restart local v9       #position:Lcom/ecareme/pixwe/media/Vector3f;
    .restart local v10       #retSlot:I
    .restart local v11       #right:I
    :cond_2
    :try_start_0
    invoke-virtual {v2, v3, v5, v4, v9}, Lcom/ecareme/pixwe/media/GridLayoutInterface;->getPositionForSlotIndex(IIILcom/ecareme/pixwe/media/Vector3f;)V

    .line 1119
    move v10, v3

    .line 1120
    iget v13, v9, Lcom/ecareme/pixwe/media/Vector3f;->x:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float v13, v13, v0

    if-gez v13, :cond_0

    .line 1117
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1124
    :catchall_0
    move-exception v13

    .line 1125
    invoke-virtual {v8, v9}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 1126
    throw v13

    .line 1130
    :cond_3
    if-nez v1, :cond_4

    const/4 v13, 0x0

    move v11, v13

    .line 1131
    :goto_3
    if-nez v11, :cond_5

    .line 1132
    const/4 v13, 0x0

    goto :goto_2

    .line 1130
    :cond_4
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/MediaFeed;->getNumSlots()I

    move-result v13

    move v11, v13

    goto :goto_3

    .line 1135
    :cond_5
    if-lt v10, v11, :cond_6

    .line 1136
    const/4 v13, 0x1

    sub-int v10, v11, v13

    .line 1137
    :cond_6
    invoke-virtual {v1, v10}, Lcom/ecareme/pixwe/media/MediaFeed;->getSetForSlot(I)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v12

    .line 1138
    .local v12, set:Lcom/ecareme/pixwe/media/MediaSet;
    if-eqz v12, :cond_7

    .line 1139
    invoke-virtual {v12}, Lcom/ecareme/pixwe/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v6

    .line 1140
    .local v6, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    if-eqz v6, :cond_7

    invoke-virtual {v12}, Lcom/ecareme/pixwe/media/MediaSet;->getNumItems()I

    move-result v13

    if-lez v13, :cond_7

    .line 1141
    iget-object v13, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDisplayList:Lcom/ecareme/pixwe/media/DisplayList;

    const/4 v14, 0x0

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/ecareme/pixwe/media/MediaItem;

    invoke-virtual {v13, p0}, Lcom/ecareme/pixwe/media/DisplayList;->get(Lcom/ecareme/pixwe/media/MediaItem;)Lcom/ecareme/pixwe/media/DisplayItem;

    move-result-object v13

    goto :goto_2

    .line 1144
    .end local v6           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .restart local p0
    :cond_7
    const/4 v13, 0x0

    goto :goto_2
.end method

.method getDisplayItemForSlotId(I)Lcom/ecareme/pixwe/media/DisplayItem;
    .locals 3
    .parameter "slotId"

    .prologue
    .line 1165
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget v1, v1, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    sub-int v0, p1, v1

    .line 1166
    .local v0, index:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget v1, v1, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    if-gt p1, v1, :cond_0

    .line 1167
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDisplayItems:[Lcom/ecareme/pixwe/media/DisplayItem;

    mul-int/lit8 v2, v0, 0x20

    aget-object v1, v1, v2

    .line 1169
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getExpandedSlot()I
    .locals 1

    .prologue
    .line 1520
    iget v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCurrentExpandedSlot:I

    return v0
.end method

.method public getFeed()Lcom/ecareme/pixwe/media/MediaFeed;
    .locals 1

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    return-object v0
.end method

.method public getHud()Lcom/ecareme/pixwe/media/HudLayer;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    return-object v0
.end method

.method public getLayoutInterface()Lcom/ecareme/pixwe/media/GridLayoutInterface;
    .locals 0

    .prologue
    .line 1524
    iget-object p0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mLayoutInterface:Lcom/ecareme/pixwe/media/LayoutInterface;

    .end local p0
    check-cast p0, Lcom/ecareme/pixwe/media/GridLayoutInterface;

    return-object p0
.end method

.method public getMetadataSlotIndexForScreenPosition(II)I
    .locals 4
    .parameter "posX"
    .parameter "posY"

    .prologue
    const/high16 v3, 0x42c8

    .line 1304
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    iget v0, v0, Lcom/ecareme/pixwe/media/GridCamera;->mItemWidth:I

    sget v1, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    iget v1, v1, Lcom/ecareme/pixwe/media/GridCamera;->mItemHeight:I

    sget v2, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ecareme/pixwe/media/GridLayer;->getSlotForScreenPosition(IIII)I

    move-result v0

    return v0
.end method

.method public getPickIntent()Z
    .locals 1

    .prologue
    .line 1549
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mPickIntent:Z

    return v0
.end method

.method public getRepresentativeDisplayItem()Lcom/ecareme/pixwe/media/DisplayItem;
    .locals 3

    .prologue
    .line 1075
    const/4 v1, -0x1

    .line 1076
    .local v1, slotIndex:I
    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    if-eqz v2, :cond_0

    .line 1077
    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/GridInputProcessor;->getCurrentFocusSlot()I

    move-result v1

    .line 1079
    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1080
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/ecareme/pixwe/media/GridLayer;->getAnchorSlotIndex(I)I

    move-result v1

    .line 1082
    :cond_1
    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget v2, v2, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    sub-int v2, v1, v2

    mul-int/lit8 v0, v2, 0x20

    .line 1083
    .local v0, index:I
    if-ltz v0, :cond_2

    const/16 v2, 0xc00

    if-ge v0, v2, :cond_2

    .line 1084
    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDisplayItems:[Lcom/ecareme/pixwe/media/DisplayItem;

    aget-object v2, v2, v0

    .line 1086
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getScrollPosition()F
    .locals 2

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    iget v0, v0, Lcom/ecareme/pixwe/media/GridCamera;->mLookAtX:F

    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    iget v1, v1, Lcom/ecareme/pixwe/media/GridCamera;->mScale:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDeltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;

    iget v1, v1, Lcom/ecareme/pixwe/media/Vector3f;->x:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getSelectedBuckets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/MediaBucket;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSelectedBucketList:Lcom/ecareme/pixwe/media/MediaBucketList;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MediaBucketList;->get()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getSlotIndexForScreenPosition(II)I
    .locals 2
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    iget v0, v0, Lcom/ecareme/pixwe/media/GridCamera;->mItemWidth:I

    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    iget v1, v1, Lcom/ecareme/pixwe/media/GridCamera;->mItemHeight:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ecareme/pixwe/media/GridLayer;->getSlotForScreenPosition(IIII)I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    return v0
.end method

.method public getViewIntent()Z
    .locals 1

    .prologue
    .line 1579
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mViewIntent:Z

    return v0
.end method

.method public getVisibleRange()Lcom/ecareme/pixwe/media/IndexRange;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    return-object v0
.end method

.method public getZoomValue()F
    .locals 1

    .prologue
    .line 1504
    iget v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mZoomValue:F

    return v0
.end method

.method goBack()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 401
    iget-boolean v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mFeedAboutToChange:Z

    if-eqz v1, :cond_0

    move v1, v4

    .line 427
    :goto_0
    return v1

    .line 404
    :cond_0
    iget v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    .line 405
    .local v0, state:I
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/GridLayer;->getHud()Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/HudLayer;->closeSelectionMenu()V

    .line 406
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 407
    iget-boolean v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mLocationFilter:Z

    if-eqz v1, :cond_1

    .line 408
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/GridLayer;->disableLocationFiltering()V

    .line 409
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/media/GridLayer;->setState(I)V

    move v1, v3

    .line 410
    goto :goto_0

    .line 413
    :cond_1
    packed-switch v0, :pswitch_data_0

    move v1, v4

    .line 425
    goto :goto_0

    .line 415
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/ecareme/pixwe/media/GridLayer;->setState(I)V

    :goto_1
    move v1, v3

    .line 427
    goto :goto_0

    .line 418
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/ecareme/pixwe/media/GridLayer;->setState(I)V

    goto :goto_1

    .line 421
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/ecareme/pixwe/media/GridLayer;->setState(I)V

    .line 422
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridInputProcessor;->clearSelection()V

    goto :goto_1

    .line 413
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleLowMemory()V
    .locals 1

    .prologue
    .line 822
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/GridLayer;->clearUnusedThumbnails()V

    .line 823
    sget-object v0, Lcom/ecareme/pixwe/media/GridDrawables;->sStringTextureTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 824
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mBackground:Lcom/ecareme/pixwe/media/BackgroundLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/BackgroundLayer;->clearCache()V

    .line 825
    return-void
.end method

.method public inSlideShowMode()Z
    .locals 1

    .prologue
    .line 1496
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSlideshowMode:Z

    return v0
.end method

.method public isInAlbumMode()Z
    .locals 1

    .prologue
    .line 1512
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInAlbum:Z

    return v0
.end method

.method public markDirty(I)V
    .locals 0
    .parameter "numFrames"

    .prologue
    .line 1605
    iput p1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mFramesDirty:I

    .line 1606
    return-void
.end method

.method public noDeleteMode()Z
    .locals 1

    .prologue
    .line 1500
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mNoDeleteMode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MediaFeed;->isSingleImageMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onFeedAboutToChange(Lcom/ecareme/pixwe/media/MediaFeed;)V
    .locals 1
    .parameter "feed"

    .prologue
    .line 1395
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mFeedAboutToChange:Z

    .line 1396
    return-void
.end method

.method public declared-synchronized onFeedChanged(Lcom/ecareme/pixwe/media/MediaFeed;Z)V
    .locals 29
    .parameter "feed"
    .parameter "needsLayout"

    .prologue
    .line 964
    monitor-enter p0

    if-nez p2, :cond_3

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mFeedAboutToChange:Z

    move/from16 v25, v0

    if-nez v25, :cond_3

    .line 965
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mFeedChanged:Z

    .line 966
    invoke-direct/range {p0 .. p0}, Lcom/ecareme/pixwe/media/GridLayer;->forceRecomputeVisibleRange()V

    .line 967
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 968
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/HudLayer;->setFeed(Lcom/ecareme/pixwe/media/MediaFeed;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 973
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 972
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mPerformingLayoutChange:Z

    move/from16 v25, v0

    if-nez v25, :cond_2

    .line 975
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    .line 977
    invoke-virtual/range {p1 .. p1}, Lcom/ecareme/pixwe/media/MediaFeed;->getCurrentSet()Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v23

    .line 978
    .local v23, set:Lcom/ecareme/pixwe/media/MediaSet;
    if-eqz v23, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mLocationFilter:Z

    move/from16 v25, v0

    if-nez v25, :cond_4

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/ecareme/pixwe/media/HudLayer;->getPathBar()Lcom/ecareme/pixwe/media/PathBarLayer;

    move-result-object v25

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mNoCountTitleString:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/ecareme/pixwe/media/PathBarLayer;->changeLabel(Ljava/lang/String;)V

    .line 982
    .end local v23           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mDisplayItems:[Lcom/ecareme/pixwe/media/DisplayItem;

    move-object v8, v0

    .line 983
    .local v8, displayItems:[Lcom/ecareme/pixwe/media/DisplayItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    move v9, v0

    .line 984
    .local v9, firstBufferedVisibleSlotIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    move v15, v0

    .line 985
    .local v15, lastBufferedVisibleSlotIndex:I
    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridLayer;->getAnchorSlotIndex(I)I

    move-result v6

    .line 986
    .local v6, currentlyVisibleSlotIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    add-int/lit8 v21, v25, 0x1

    .line 987
    .local v21, numVisibleItems:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move/from16 v25, v0

    if-nez v25, :cond_5

    move v0, v6

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 988
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridLayer;->getAnchorSlotIndex(I)I

    move-result v6

    .line 990
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mCurrentExpandedSlot:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_6

    .line 991
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mCurrentExpandedSlot:I

    move v6, v0

    .line 993
    :cond_6
    const/4 v4, 0x0

    .line 994
    .local v4, anchorItem:Lcom/ecareme/pixwe/media/MediaItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mVisibleItems:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    .line 995
    .local v24, visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    .line 996
    sub-int v25, v15, v9

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 997
    const/16 v25, -0x1

    move v0, v6

    move/from16 v1, v25

    if-eq v0, v1, :cond_7

    if-lt v6, v9, :cond_7

    if-gt v6, v15, :cond_7

    .line 998
    sub-int v25, v6, v9

    mul-int/lit8 v5, v25, 0x20

    .line 999
    .local v5, baseIndex:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    const/16 v25, 0x20

    move v0, v10

    move/from16 v1, v25

    if-lt v0, v1, :cond_d

    .line 1010
    .end local v5           #baseIndex:I
    .end local v10           #i:I
    :cond_7
    sub-int v25, v15, v9

    add-int/lit8 v19, v25, 0x1

    .line 1011
    .local v19, numItems:I
    move/from16 v17, v6

    .line 1012
    .local v17, midPoint:I
    move-object v0, v8

    array-length v0, v0

    move/from16 v16, v0

    .line 1013
    .local v16, length:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_2
    move v0, v10

    move/from16 v1, v19

    if-lt v0, v1, :cond_10

    .line 1028
    const/16 v18, -0x1

    .line 1029
    .local v18, newSlotIndex:I
    if-eqz v4, :cond_8

    .line 1031
    invoke-virtual/range {p1 .. p1}, Lcom/ecareme/pixwe/media/MediaFeed;->getNumSlots()I

    move-result v20

    .line 1032
    .local v20, numSlots:I
    const/4 v10, 0x0

    :goto_3
    move v0, v10

    move/from16 v1, v20

    if-lt v0, v1, :cond_14

    .line 1041
    .end local v20           #numSlots:I
    :cond_8
    :goto_4
    if-eqz v4, :cond_9

    const/16 v25, -0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    .line 1042
    invoke-virtual/range {p1 .. p1}, Lcom/ecareme/pixwe/media/MediaFeed;->getNumSlots()I

    move-result v20

    .line 1043
    .restart local v20       #numSlots:I
    move-object v0, v4

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaItem;->mParentMediaSet:Lcom/ecareme/pixwe/media/MediaSet;

    move-object/from16 v22, v0

    .line 1044
    .local v22, parentSet:Lcom/ecareme/pixwe/media/MediaSet;
    const/4 v10, 0x0

    :goto_5
    move v0, v10

    move/from16 v1, v20

    if-lt v0, v1, :cond_16

    .line 1053
    .end local v20           #numSlots:I
    .end local v22           #parentSet:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_9
    :goto_6
    const-string v25, "GridLayer"

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "Slot changing from "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " to "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    const/16 v25, -0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-eq v0, v1, :cond_18

    .line 1055
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move/from16 v25, v0

    if-nez v25, :cond_a

    .line 1056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mDisplayList:Lcom/ecareme/pixwe/media/DisplayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/DisplayList;->clearExcept([Lcom/ecareme/pixwe/media/DisplayItem;)V

    .line 1058
    :cond_a
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move v2, v6

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/GridLayer;->onLayout(IILcom/ecareme/pixwe/media/LayoutInterface;)V

    .line 1062
    :goto_7
    const/16 v25, -0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mCurrentExpandedSlot:I

    .line 1063
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mFeedAboutToChange:Z

    .line 1064
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mFeedChanged:Z

    .line 1065
    if-eqz p1, :cond_c

    .line 1066
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    .line 1067
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/HudLayer;->setFeed(Lcom/ecareme/pixwe/media/MediaFeed;IZ)V

    .line 1069
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mView:Lcom/ecareme/pixwe/media/RenderView;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mView:Lcom/ecareme/pixwe/media/RenderView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/ecareme/pixwe/media/RenderView;->requestRender()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 964
    .end local v4           #anchorItem:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v6           #currentlyVisibleSlotIndex:I
    .end local v8           #displayItems:[Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v9           #firstBufferedVisibleSlotIndex:I
    .end local v10           #i:I
    .end local v15           #lastBufferedVisibleSlotIndex:I
    .end local v16           #length:I
    .end local v17           #midPoint:I
    .end local v18           #newSlotIndex:I
    .end local v19           #numItems:I
    .end local v21           #numVisibleItems:I
    .end local v24           #visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    :catchall_0
    move-exception v25

    monitor-exit p0

    throw v25

    .line 1000
    .restart local v4       #anchorItem:Lcom/ecareme/pixwe/media/MediaItem;
    .restart local v5       #baseIndex:I
    .restart local v6       #currentlyVisibleSlotIndex:I
    .restart local v8       #displayItems:[Lcom/ecareme/pixwe/media/DisplayItem;
    .restart local v9       #firstBufferedVisibleSlotIndex:I
    .restart local v10       #i:I
    .restart local v15       #lastBufferedVisibleSlotIndex:I
    .restart local v21       #numVisibleItems:I
    .restart local v24       #visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    :cond_d
    add-int v25, v5, v10

    :try_start_2
    aget-object v7, v8, v25

    .line 1001
    .local v7, displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    if-eqz v7, :cond_f

    .line 1002
    if-nez v4, :cond_e

    .line 1003
    iget-object v4, v7, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    .line 1005
    :cond_e
    move-object v0, v7

    iget-object v0, v0, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    :cond_f
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 1014
    .end local v5           #baseIndex:I
    .end local v7           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .restart local v16       #length:I
    .restart local v17       #midPoint:I
    .restart local v19       #numItems:I
    :cond_10
    invoke-static {v10}, Lcom/ecareme/pixwe/media/Shared;->midPointIterator(I)I

    move-result v25

    add-int v11, v17, v25

    .line 1015
    .local v11, index:I
    sub-int v25, v11, v9

    mul-int/lit8 v12, v25, 0x20

    .line 1016
    .local v12, indexIntoDisplayItem:I
    if-ltz v12, :cond_11

    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_11

    .line 1017
    const/4 v14, 0x0

    .local v14, j:I
    :goto_8
    const/16 v25, 0x20

    move v0, v14

    move/from16 v1, v25

    if-lt v0, v1, :cond_12

    .line 1013
    .end local v14           #j:I
    :cond_11
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 1018
    .restart local v14       #j:I
    :cond_12
    add-int v25, v12, v14

    aget-object v7, v8, v25

    .line 1019
    .restart local v7       #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    if-eqz v7, :cond_13

    .line 1020
    iget-object v13, v7, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    .line 1021
    .local v13, item:Lcom/ecareme/pixwe/media/MediaItem;
    move-object/from16 v0, v24

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_13

    .line 1022
    move-object/from16 v0, v24

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1017
    .end local v13           #item:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_13
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 1033
    .end local v7           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v11           #index:I
    .end local v12           #indexIntoDisplayItem:I
    .end local v14           #j:I
    .restart local v18       #newSlotIndex:I
    .restart local v20       #numSlots:I
    :cond_14
    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaFeed;->getSetForSlot(I)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v23

    .line 1034
    .restart local v23       #set:Lcom/ecareme/pixwe/media/MediaSet;
    if-eqz v23, :cond_15

    invoke-virtual/range {v23 .. v23}, Lcom/ecareme/pixwe/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/ecareme/pixwe/media/ArrayUtils;->contains(Ljava/util/ArrayList;Lcom/ecareme/pixwe/media/MediaItem;)Z

    move-result v25

    if-eqz v25, :cond_15

    .line 1035
    move/from16 v18, v10

    .line 1036
    goto/16 :goto_4

    .line 1032
    :cond_15
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 1045
    .end local v23           #set:Lcom/ecareme/pixwe/media/MediaSet;
    .restart local v22       #parentSet:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_16
    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaFeed;->getSetForSlot(I)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v23

    .line 1046
    .restart local v23       #set:Lcom/ecareme/pixwe/media/MediaSet;
    if-eqz v23, :cond_17

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    move-wide/from16 v25, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mId:J

    move-wide/from16 v27, v0

    cmp-long v25, v25, v27

    if-nez v25, :cond_17

    .line 1047
    move/from16 v18, v10

    .line 1048
    goto/16 :goto_6

    .line 1044
    :cond_17
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5

    .line 1060
    .end local v20           #numSlots:I
    .end local v22           #parentSet:Lcom/ecareme/pixwe/media/MediaSet;
    .end local v23           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/ecareme/pixwe/media/GridLayer;->forceRecomputeVisibleRange()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_7
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    if-eqz v0, :cond_0

    .line 1491
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    iget v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/ecareme/pixwe/media/GridInputProcessor;->onKeyDown(ILandroid/view/KeyEvent;I)Z

    move-result v0

    .line 1492
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onLayout(IILcom/ecareme/pixwe/media/LayoutInterface;)V
    .locals 17
    .parameter "newAnchorSlotIndex"
    .parameter "currentAnchorSlotIndex"
    .parameter "oldLayout"

    .prologue
    const/4 v15, 0x1

    const/16 v16, -0x1

    .line 895
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mPerformingLayoutChange:Z

    move v13, v0

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mDeltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mDeltaAnchorPositionUncommited:Lcom/ecareme/pixwe/media/Vector3f;

    move-object v14, v0

    invoke-virtual {v13, v14}, Lcom/ecareme/pixwe/media/Vector3f;->equals(Lcom/ecareme/pixwe/media/Vector3f;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    if-nez v13, :cond_1

    .line 952
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 899
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move v13, v0

    if-ne v13, v15, :cond_2

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/ecareme/pixwe/media/MediaFeed;->getBreaks()Ljava/util/ArrayList;

    .line 904
    :cond_2
    const/4 v13, 0x1

    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mPerformingLayoutChange:Z

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mLayoutInterface:Lcom/ecareme/pixwe/media/LayoutInterface;

    move-object v10, v0

    .line 906
    .local v10, layout:Lcom/ecareme/pixwe/media/LayoutInterface;
    if-nez p3, :cond_3

    .line 907
    sget-object p3, Lcom/ecareme/pixwe/media/GridLayer;->sfullScreenLayoutInterface:Lcom/ecareme/pixwe/media/LayoutInterface;

    .line 909
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v5, v0

    .line 910
    .local v5, camera:Lcom/ecareme/pixwe/media/GridCamera;
    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 911
    const/4 v13, 0x2

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridLayer;->getAnchorSlotIndex(I)I

    move-result p2

    .line 912
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mCurrentExpandedSlot:I

    move v13, v0

    move v0, v13

    move/from16 v1, v16

    if-eq v0, v1, :cond_4

    .line 913
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mCurrentExpandedSlot:I

    move/from16 p2, v0

    .line 915
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/ecareme/pixwe/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v12

    .line 916
    .local v12, selectedSlotIndex:I
    move v0, v12

    move/from16 v1, v16

    if-eq v0, v1, :cond_5

    .line 917
    move/from16 p2, v12

    .line 920
    .end local v12           #selectedSlotIndex:I
    :cond_5
    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    .line 921
    move/from16 p1, p2

    .line 923
    :cond_6
    iget v8, v5, Lcom/ecareme/pixwe/media/GridCamera;->mItemHeight:I

    .line 924
    .local v8, itemHeight:I
    iget v9, v5, Lcom/ecareme/pixwe/media/GridCamera;->mItemWidth:I

    .line 925
    .local v9, itemWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mTempVec:Lcom/ecareme/pixwe/media/Pool;

    move-object v11, v0

    .line 926
    .local v11, pool:Lcom/ecareme/pixwe/media/Pool;,"Lcom/ecareme/pixwe/media/Pool<Lcom/ecareme/pixwe/media/Vector3f;>;"
    invoke-virtual {v11}, Lcom/ecareme/pixwe/media/Pool;->create()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ecareme/pixwe/media/Vector3f;

    .line 927
    .local v7, deltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;
    invoke-virtual {v11}, Lcom/ecareme/pixwe/media/Pool;->create()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ecareme/pixwe/media/Vector3f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 929
    .local v6, currentSlotPosition:Lcom/ecareme/pixwe/media/Vector3f;
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :try_start_2
    invoke-virtual {v7, v13, v14, v15}, Lcom/ecareme/pixwe/media/Vector3f;->set(FFF)V

    .line 930
    move/from16 v0, p2

    move/from16 v1, v16

    if-eq v0, v1, :cond_7

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_7

    .line 931
    move-object v0, v10

    move/from16 v1, p1

    move v2, v9

    move v3, v8

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/LayoutInterface;->getPositionForSlotIndex(IIILcom/ecareme/pixwe/media/Vector3f;)V

    .line 932
    move-object/from16 v0, p3

    move/from16 v1, p2

    move v2, v9

    move v3, v8

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ecareme/pixwe/media/LayoutInterface;->getPositionForSlotIndex(IIILcom/ecareme/pixwe/media/Vector3f;)V

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mDeltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;

    move-object v13, v0

    invoke-virtual {v6, v13}, Lcom/ecareme/pixwe/media/Vector3f;->subtract(Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 934
    invoke-virtual {v7, v6}, Lcom/ecareme/pixwe/media/Vector3f;->subtract(Lcom/ecareme/pixwe/media/Vector3f;)V

    .line 935
    const/4 v13, 0x0

    iput v13, v7, Lcom/ecareme/pixwe/media/Vector3f;->y:F

    .line 936
    const/4 v13, 0x0

    iput v13, v7, Lcom/ecareme/pixwe/media/Vector3f;->z:F

    .line 938
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mDeltaAnchorPositionUncommited:Lcom/ecareme/pixwe/media/Vector3f;

    move-object v13, v0

    invoke-virtual {v13, v7}, Lcom/ecareme/pixwe/media/Vector3f;->set(Lcom/ecareme/pixwe/media/Vector3f;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 940
    :try_start_3
    invoke-virtual {v11, v7}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 941
    invoke-virtual {v11, v6}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 943
    const/high16 v13, 0x3f80

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/GridLayer;->centerCameraForSlot(IF)V

    .line 944
    const/4 v13, -0x1

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mCurrentExpandedSlot:I

    .line 947
    move-object/from16 v0, p3

    check-cast v0, Lcom/ecareme/pixwe/media/GridLayoutInterface;

    move-object v13, v0

    move-object v0, v10

    check-cast v0, Lcom/ecareme/pixwe/media/GridLayoutInterface;

    move-object v14, v0

    iget v14, v14, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mNumRows:I

    iput v14, v13, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mNumRows:I

    .line 948
    move-object/from16 v0, p3

    check-cast v0, Lcom/ecareme/pixwe/media/GridLayoutInterface;

    move-object v13, v0

    move-object v0, v10

    check-cast v0, Lcom/ecareme/pixwe/media/GridLayoutInterface;

    move-object v14, v0

    iget v14, v14, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mSpacingX:I

    iput v14, v13, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mSpacingX:I

    .line 949
    move-object/from16 v0, p3

    check-cast v0, Lcom/ecareme/pixwe/media/GridLayoutInterface;

    move-object v13, v0

    check-cast v10, Lcom/ecareme/pixwe/media/GridLayoutInterface;

    .end local v10           #layout:Lcom/ecareme/pixwe/media/LayoutInterface;
    iget v14, v10, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mSpacingY:I

    iput v14, v13, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mSpacingY:I

    .line 950
    invoke-direct/range {p0 .. p0}, Lcom/ecareme/pixwe/media/GridLayer;->forceRecomputeVisibleRange()V

    .line 951
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mPerformingLayoutChange:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 895
    .end local v5           #camera:Lcom/ecareme/pixwe/media/GridCamera;
    .end local v6           #currentSlotPosition:Lcom/ecareme/pixwe/media/Vector3f;
    .end local v7           #deltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;
    .end local v8           #itemHeight:I
    .end local v9           #itemWidth:I
    .end local v11           #pool:Lcom/ecareme/pixwe/media/Pool;,"Lcom/ecareme/pixwe/media/Pool<Lcom/ecareme/pixwe/media/Vector3f;>;"
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 939
    .restart local v5       #camera:Lcom/ecareme/pixwe/media/GridCamera;
    .restart local v6       #currentSlotPosition:Lcom/ecareme/pixwe/media/Vector3f;
    .restart local v7       #deltaAnchorPosition:Lcom/ecareme/pixwe/media/Vector3f;
    .restart local v8       #itemHeight:I
    .restart local v9       #itemWidth:I
    .restart local v10       #layout:Lcom/ecareme/pixwe/media/LayoutInterface;
    .restart local v11       #pool:Lcom/ecareme/pixwe/media/Pool;,"Lcom/ecareme/pixwe/media/Pool<Lcom/ecareme/pixwe/media/Vector3f;>;"
    :catchall_1
    move-exception v13

    .line 940
    :try_start_4
    invoke-virtual {v11, v7}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 941
    invoke-virtual {v11, v6}, Lcom/ecareme/pixwe/media/Pool;->delete(Ljava/lang/Object;)V

    .line 942
    throw v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1622
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    if-eqz v0, :cond_0

    .line 1623
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MediaFeed;->onPause()V

    .line 1625
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    if-eqz v0, :cond_0

    .line 1617
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MediaFeed;->onResume()V

    .line 1619
    :cond_0
    return-void
.end method

.method public onSensorChanged(Lcom/ecareme/pixwe/media/RenderView;Landroid/hardware/SensorEvent;)V
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    iget v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/ecareme/pixwe/media/GridInputProcessor;->onSensorChanged(Lcom/ecareme/pixwe/media/RenderView;Landroid/hardware/SensorEvent;I)V

    .line 446
    return-void
.end method

.method protected onSizeChanged()V
    .locals 5

    .prologue
    const/high16 v4, 0x4220

    .line 240
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    iget v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mWidth:F

    iget v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/HudLayer;->setSize(FF)V

    .line 241
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    .line 242
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mBackground:Lcom/ecareme/pixwe/media/BackgroundLayer;

    iget v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mWidth:F

    iget v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/BackgroundLayer;->setSize(FF)V

    .line 243
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mView:Lcom/ecareme/pixwe/media/RenderView;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mView:Lcom/ecareme/pixwe/media/RenderView;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/RenderView;->requestRender()V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mComment:Lcom/ecareme/pixwe/media/CommentLayer;

    const/4 v1, 0x0

    iget v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHeight:F

    sget v3, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/CommentLayer;->setPosition(FF)V

    .line 248
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mComment:Lcom/ecareme/pixwe/media/CommentLayer;

    iget v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mWidth:F

    sget v2, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/CommentLayer;->setSize(FF)V

    .line 249
    return-void
.end method

.method public onSurfaceChanged(Lcom/ecareme/pixwe/media/RenderView;II)V
    .locals 3
    .parameter "view"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 844
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    iget v1, v1, Lcom/ecareme/pixwe/media/GridCamera;->mItemWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    iget v2, v2, Lcom/ecareme/pixwe/media/GridCamera;->mItemHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/ecareme/pixwe/media/GridCamera;->viewportChanged(IIFF)V

    .line 845
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    iget v0, v0, Lcom/ecareme/pixwe/media/GridCamera;->mFov:F

    invoke-virtual {p1, v0}, Lcom/ecareme/pixwe/media/RenderView;->setFov(F)V

    .line 846
    iget v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/media/GridLayer;->setState(I)V

    .line 847
    return-void
.end method

.method public onSurfaceCreated(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 1
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 834
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDisplayList:Lcom/ecareme/pixwe/media/DisplayList;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/DisplayList;->clear()V

    .line 835
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HudLayer;->clear()V

    .line 836
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HudLayer;->reset()V

    .line 837
    sget-object v0, Lcom/ecareme/pixwe/media/GridDrawables;->sStringTextureTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 838
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDrawables:Lcom/ecareme/pixwe/media/GridDrawables;

    invoke-virtual {v0, p1, p2}, Lcom/ecareme/pixwe/media/GridDrawables;->onSurfaceCreated(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V

    .line 839
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mBackground:Lcom/ecareme/pixwe/media/BackgroundLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/BackgroundLayer;->clear()V

    .line 840
    return-void
.end method

.method public onTimeChanged(Lcom/ecareme/pixwe/media/TimeBar;)V
    .locals 7
    .parameter "timebar"

    .prologue
    .line 1367
    iget-boolean v6, p0, Lcom/ecareme/pixwe/media/GridLayer;->mFeedAboutToChange:Z

    if-eqz v6, :cond_1

    .line 1392
    :cond_0
    :goto_0
    return-void

    .line 1371
    :cond_1
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/TimeBar;->getItem()Lcom/ecareme/pixwe/media/MediaItem;

    move-result-object v2

    .line 1372
    .local v2, item:Lcom/ecareme/pixwe/media/MediaItem;
    if-eqz v2, :cond_0

    .line 1374
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    .line 1375
    .local v0, feed:Lcom/ecareme/pixwe/media/MediaFeed;
    if-eqz v0, :cond_0

    .line 1377
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MediaFeed;->getNumSlots()I

    move-result v4

    .line 1378
    .local v4, numSlots:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 1379
    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaFeed;->getSetForSlot(I)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v5

    .line 1380
    .local v5, set:Lcom/ecareme/pixwe/media/MediaSet;
    if-eqz v5, :cond_0

    .line 1383
    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v3

    .line 1384
    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/MediaSet;->getNumItems()I

    move-result v6

    if-eqz v6, :cond_0

    .line 1387
    invoke-static {v3, v2}, Lcom/ecareme/pixwe/media/ArrayUtils;->contains(Ljava/util/ArrayList;Lcom/ecareme/pixwe/media/MediaItem;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1388
    const/high16 v6, 0x3f80

    invoke-virtual {p0, v1, v6}, Lcom/ecareme/pixwe/media/GridLayer;->centerCameraForSlot(IF)V

    goto :goto_0

    .line 1378
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-virtual {v0, p1}, Lcom/ecareme/pixwe/media/GridInputProcessor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method playVideoInSlideshowMode(Lcom/ecareme/pixwe/media/MediaItem;)V
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, -0x1

    .line 1632
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1633
    new-instance v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->playerArea:Landroid/view/SurfaceView;

    .line 1634
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->playerArea:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1635
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->playerArea:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1636
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->playerArea:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->holder:Landroid/view/SurfaceHolder;

    .line 1637
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->holder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 1638
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->holder:Landroid/view/SurfaceHolder;

    new-instance v1, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;

    iget-object v2, p1, Lcom/ecareme/pixwe/media/MediaItem;->mContentUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/ecareme/pixwe/media/GridLayer$VideoCallBack;-><init>(Lcom/ecareme/pixwe/media/GridLayer;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1640
    return-void
.end method

.method public renderBlended(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 11
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 887
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDrawManager:Lcom/ecareme/pixwe/media/GridDrawManager;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDrawManager:Lcom/ecareme/pixwe/media/GridDrawManager;

    iget v3, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSelectedAlpha:F

    iget v4, p0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/HudLayer;->getMode()I

    move-result v5

    iget v6, p0, Lcom/ecareme/pixwe/media/GridLayer;->mTimeElapsedSinceStackViewReady:F

    iget v7, p0, Lcom/ecareme/pixwe/media/GridLayer;->mTimeElapsedSinceGridViewReady:F

    iget-object v8, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSelectedBucketList:Lcom/ecareme/pixwe/media/MediaBucketList;

    iget-object v9, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMarkedBucketList:Lcom/ecareme/pixwe/media/MediaBucketList;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/MediaFeed;->getWaitingForMediaScanner()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mFeedAboutToChange:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/MediaFeed;->isLoading()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v10}, Lcom/ecareme/pixwe/media/GridDrawManager;->drawBlendedComponents(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;FIIFFLcom/ecareme/pixwe/media/MediaBucketList;Lcom/ecareme/pixwe/media/MediaBucketList;Z)V

    .line 892
    :cond_0
    return-void

    .line 889
    :cond_1
    const/4 v1, 0x1

    move v10, v1

    goto :goto_0
.end method

.method public renderOpaque(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 12
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 851
    iget-object v10, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    .line 852
    .local v10, camera:Lcom/ecareme/pixwe/media/GridCamera;
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v11

    .line 853
    .local v11, selectedSlotIndex:I
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/GridLayer;->computeVisibleItems()V

    .line 855
    const/16 v0, 0x1700

    invoke-interface {p2, v0}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 856
    invoke-interface {p2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 857
    iget v0, v10, Lcom/ecareme/pixwe/media/GridCamera;->mEyeX:F

    neg-float v1, v0

    iget v0, v10, Lcom/ecareme/pixwe/media/GridCamera;->mEyeY:F

    neg-float v2, v0

    iget v0, v10, Lcom/ecareme/pixwe/media/GridCamera;->mEyeZ:F

    neg-float v3, v0

    iget v0, v10, Lcom/ecareme/pixwe/media/GridCamera;->mLookAtX:F

    neg-float v4, v0

    iget v0, v10, Lcom/ecareme/pixwe/media/GridCamera;->mLookAtY:F

    neg-float v5, v0

    iget v0, v10, Lcom/ecareme/pixwe/media/GridCamera;->mLookAtZ:F

    neg-float v6, v0

    iget v7, v10, Lcom/ecareme/pixwe/media/GridCamera;->mUpX:F

    iget v8, v10, Lcom/ecareme/pixwe/media/GridCamera;->mUpY:F

    iget v9, v10, Lcom/ecareme/pixwe/media/GridCamera;->mUpZ:F

    move-object v0, p2

    invoke-static/range {v0 .. v9}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    .line 858
    const/high16 v0, 0x3f80

    invoke-virtual {p1, v0}, Lcom/ecareme/pixwe/media/RenderView;->setAlpha(F)V

    .line 859
    iget v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSelectedAlpha:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 860
    const/16 v0, 0xbe2

    invoke-interface {p2, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 861
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {p2, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 862
    iget v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSelectedAlpha:F

    invoke-virtual {p1, v0}, Lcom/ecareme/pixwe/media/RenderView;->setAlpha(F)V

    .line 864
    :cond_0
    const/4 v0, -0x1

    if-eq v11, v0, :cond_4

    .line 865
    const/4 v0, 0x0

    iput v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mTargetAlpha:F

    .line 869
    :goto_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDrawManager:Lcom/ecareme/pixwe/media/GridDrawManager;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/GridInputProcessor;->getCurrentFocusSlot()I

    move-result v4

    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/GridInputProcessor;->getCurrentScaledSlot()I

    move-result v5

    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/GridInputProcessor;->isFocusItemPressed()Z

    move-result v6

    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/GridInputProcessor;->getScale()F

    move-result v7

    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-virtual {v3}, Lcom/ecareme/pixwe/media/GridInputProcessor;->getScaleGestureDetector()Lcom/ecareme/pixwe/media/ScaleGestureDetector;

    move-result-object v8

    iget-boolean v9, p0, Lcom/ecareme/pixwe/media/GridLayer;->mFeedAboutToChange:Z

    move v3, v11

    invoke-virtual/range {v0 .. v9}, Lcom/ecareme/pixwe/media/GridDrawManager;->prepareDraw(Lcom/ecareme/pixwe/media/IndexRange;Lcom/ecareme/pixwe/media/IndexRange;IIIZFLcom/ecareme/pixwe/media/ScaleGestureDetector;Z)V

    .line 870
    iget v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSelectedAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 871
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDrawManager:Lcom/ecareme/pixwe/media/GridDrawManager;

    iget v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/ecareme/pixwe/media/GridDrawManager;->drawThumbnails(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;I)V

    .line 873
    :cond_1
    iget v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSelectedAlpha:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 874
    const/16 v0, 0xbe2

    invoke-interface {p2, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 877
    :cond_2
    const/4 v0, -0x1

    if-eq v11, v0, :cond_3

    .line 878
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDrawManager:Lcom/ecareme/pixwe/media/GridDrawManager;

    iget v3, p0, Lcom/ecareme/pixwe/media/GridLayer;->mZoomValue:F

    iget-boolean v4, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSlideshowMode:Z

    iget v5, p0, Lcom/ecareme/pixwe/media/GridLayer;->mTimeElapsedSinceView:F

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ecareme/pixwe/media/GridDrawManager;->drawFocusItems(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;FZF)V

    .line 879
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDrawManager:Lcom/ecareme/pixwe/media/GridDrawManager;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/GridDrawManager;->getFocusQuadWidth()F

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCurrentFocusItemWidth:F

    .line 880
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDrawManager:Lcom/ecareme/pixwe/media/GridDrawManager;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/GridDrawManager;->getFocusQuadHeight()F

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCurrentFocusItemHeight:F

    .line 882
    :cond_3
    iget v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSelectedAlpha:F

    invoke-virtual {p1, v0}, Lcom/ecareme/pixwe/media/RenderView;->setAlpha(F)V

    .line 883
    return-void

    .line 867
    :cond_4
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mTargetAlpha:F

    goto :goto_0
.end method

.method public rotateSelectedItems(F)V
    .locals 14
    .parameter "f"

    .prologue
    .line 1455
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSelectedBucketList:Lcom/ecareme/pixwe/media/MediaBucketList;

    .line 1456
    .local v1, bucketList:Lcom/ecareme/pixwe/media/MediaBucketList;
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/MediaBucketList;->get()Ljava/util/ArrayList;

    move-result-object v7

    .line 1457
    .local v7, mediaBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaBucket;>;"
    iget-object v3, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDisplayList:Lcom/ecareme/pixwe/media/DisplayList;

    .line 1458
    .local v3, displayList:Lcom/ecareme/pixwe/media/DisplayList;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1459
    .local v9, numBuckets:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v9, :cond_1

    .line 1472
    iget v11, p0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    .line 1473
    iget-object v11, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-virtual {v11}, Lcom/ecareme/pixwe/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v11

    const/high16 v12, 0x3f80

    invoke-virtual {p0, v11, v12}, Lcom/ecareme/pixwe/media/GridLayer;->centerCameraForSlot(IF)V

    .line 1475
    :cond_0
    iget-object v11, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    const/4 v12, 0x1

    new-instance v13, Ljava/lang/Float;

    invoke-direct {v13, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v11, v12, v7, v13}, Lcom/ecareme/pixwe/media/MediaFeed;->performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)V

    .line 1477
    return-void

    .line 1460
    :cond_1
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/MediaBucket;

    .line 1461
    .local v0, bucket:Lcom/ecareme/pixwe/media/MediaBucket;
    iget-object v8, v0, Lcom/ecareme/pixwe/media/MediaBucket;->mediaItems:Ljava/util/ArrayList;

    .line 1462
    .local v8, mediaItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    if-eqz v8, :cond_2

    .line 1463
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1464
    .local v10, numMediaItems:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    if-lt v6, v10, :cond_3

    .line 1459
    .end local v6           #j:I
    .end local v10           #numMediaItems:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1465
    .restart local v6       #j:I
    .restart local v10       #numMediaItems:I
    :cond_3
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ecareme/pixwe/media/MediaItem;

    .line 1466
    .local v5, item:Lcom/ecareme/pixwe/media/MediaItem;
    invoke-virtual {v3, v5}, Lcom/ecareme/pixwe/media/DisplayList;->get(Lcom/ecareme/pixwe/media/MediaItem;)Lcom/ecareme/pixwe/media/DisplayItem;

    move-result-object v2

    .line 1467
    .local v2, displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    invoke-virtual {v2, p1}, Lcom/ecareme/pixwe/media/DisplayItem;->rotateImageBy(F)V

    .line 1468
    invoke-virtual {v3, v2}, Lcom/ecareme/pixwe/media/DisplayList;->addToAnimatables(Lcom/ecareme/pixwe/media/DisplayItem;)V

    .line 1464
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public selectAll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1233
    iget v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 1234
    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCompleteRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget v2, v2, Lcom/ecareme/pixwe/media/IndexRange;->end:I

    add-int/lit8 v1, v2, 0x1

    .line 1235
    .local v1, numSlots:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 1238
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/GridLayer;->updateCountOfSelectedItems()V

    .line 1242
    .end local v0           #i:I
    .end local v1           #numSlots:I
    :goto_1
    return-void

    .line 1236
    .restart local v0       #i:I
    .restart local v1       #numSlots:I
    :cond_0
    invoke-virtual {p0, v0, v4, v4}, Lcom/ecareme/pixwe/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    .line 1235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1240
    .end local v0           #i:I
    .end local v1           #numSlots:I
    :cond_1
    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/GridInputProcessor;->getCurrentFocusSlot()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v4, v3}, Lcom/ecareme/pixwe/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    goto :goto_1
.end method

.method public setDataSource(Lcom/ecareme/pixwe/media/DataSource;)V
    .locals 3
    .parameter "dataSource"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    .line 456
    .local v0, feed:Lcom/ecareme/pixwe/media/MediaFeed;
    new-instance v1, Lcom/ecareme/pixwe/media/MediaFeed;

    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1, p0}, Lcom/ecareme/pixwe/media/MediaFeed;-><init>(Landroid/content/Context;Lcom/ecareme/pixwe/media/DataSource;Lcom/ecareme/pixwe/media/MediaFeed$Listener;)V

    iput-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    .line 457
    if-eqz v0, :cond_0

    .line 460
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-virtual {v1, v0}, Lcom/ecareme/pixwe/media/MediaFeed;->copySlotStateFrom(Lcom/ecareme/pixwe/media/MediaFeed;)V

    .line 462
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MediaFeed;->shutdown()V

    .line 463
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDisplayList:Lcom/ecareme/pixwe/media/DisplayList;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/DisplayList;->clear()V

    .line 464
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mBackground:Lcom/ecareme/pixwe/media/BackgroundLayer;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/BackgroundLayer;->clear()V

    .line 467
    :cond_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/MediaFeed;->start()V

    .line 468
    return-void
.end method

.method public setEnterSelectionMode(Z)V
    .locals 0
    .parameter "enterSelection"

    .prologue
    .line 1628
    iput-boolean p1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mRequestToEnterSelection:Z

    .line 1629
    return-void
.end method

.method public setPickIntent(Z)V
    .locals 4
    .parameter "b"

    .prologue
    .line 1533
    iput-boolean p1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mPickIntent:Z

    .line 1534
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HudLayer;->getPathBar()Lcom/ecareme/pixwe/media/PathBarLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/PathBarLayer;->popLabel()Lcom/ecareme/pixwe/media/PathBarLayer$Component;

    .line 1535
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HudLayer;->getPathBar()Lcom/ecareme/pixwe/media/PathBarLayer;

    move-result-object v0

    const v1, 0x7f02004f

    iget-object v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ecareme/pixwe/media/GridLayer$5;

    invoke-direct {v3, p0}, Lcom/ecareme/pixwe/media/GridLayer$5;-><init>(Lcom/ecareme/pixwe/media/GridLayer;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/PathBarLayer;->pushLabel(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 1546
    return-void
.end method

.method public setSingleImage(Z)V
    .locals 2
    .parameter "noDeleteMode"

    .prologue
    .line 1583
    iput-boolean p1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mNoDeleteMode:Z

    .line 1584
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridInputProcessor;->setCurrentSelectedSlot(I)V

    .line 1585
    return-void
.end method

.method public setState(I)V
    .locals 19
    .parameter "state"

    .prologue
    .line 256
    const/4 v6, 0x0

    .line 257
    .local v6, feedUnchanged:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v15, v0

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object v1, v15

    iput v0, v1, Lcom/ecareme/pixwe/media/GridCamera;->mFriction:F

    .line 258
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move v15, v0

    move v0, v15

    move/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 259
    const/4 v6, 0x1

    .line 261
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mLayoutInterface:Lcom/ecareme/pixwe/media/LayoutInterface;

    move-object v8, v0

    check-cast v8, Lcom/ecareme/pixwe/media/GridLayoutInterface;

    .line 262
    .local v8, layoutInterface:Lcom/ecareme/pixwe/media/GridLayoutInterface;
    sget-object v10, Lcom/ecareme/pixwe/media/GridLayer;->sfullScreenLayoutInterface:Lcom/ecareme/pixwe/media/LayoutInterface;

    check-cast v10, Lcom/ecareme/pixwe/media/GridLayoutInterface;

    .line 263
    .local v10, oldLayout:Lcom/ecareme/pixwe/media/GridLayoutInterface;
    iget v15, v8, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mNumRows:I

    iput v15, v10, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mNumRows:I

    .line 264
    iget v15, v8, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mSpacingX:I

    iput v15, v10, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mSpacingX:I

    .line 265
    iget v15, v8, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mSpacingY:I

    iput v15, v10, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mSpacingY:I

    .line 266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v4, v0

    .line 267
    .local v4, camera:Lcom/ecareme/pixwe/media/GridCamera;
    iget v15, v4, Lcom/ecareme/pixwe/media/GridCamera;->mHeight:I

    move-object v0, v4

    iget v0, v0, Lcom/ecareme/pixwe/media/GridCamera;->mWidth:I

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-lt v0, v1, :cond_5

    const/4 v15, 0x4

    move v9, v15

    .line 268
    .local v9, numMaxRows:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    move-object v5, v0

    .line 269
    .local v5, feed:Lcom/ecareme/pixwe/media/MediaFeed;
    const/4 v11, 0x1

    .line 270
    .local v11, performLayout:Z
    const/high16 v15, 0x3f80

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mZoomValue:F

    .line 271
    iget v15, v4, Lcom/ecareme/pixwe/media/GridCamera;->mDefaultAspectRatio:F

    move-object v0, v4

    iget v0, v0, Lcom/ecareme/pixwe/media/GridCamera;->mAspectRatio:F

    move/from16 v16, v0

    div-float v14, v15, v16

    .line 272
    .local v14, yStretch:F
    const/high16 v15, 0x3f80

    cmpg-float v15, v14, v15

    if-gez v15, :cond_1

    .line 273
    const/high16 v14, 0x3f80

    .line 275
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 361
    :cond_2
    :goto_1
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/ecareme/pixwe/media/HudLayer;->onGridStateChanged()V

    .line 363
    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mFeedAboutToChange:Z

    move v15, v0

    if-nez v15, :cond_3

    .line 364
    const/4 v15, -0x1

    const/16 v16, -0x1

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move-object v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/GridLayer;->onLayout(IILcom/ecareme/pixwe/media/LayoutInterface;)V

    .line 366
    :cond_3
    const/4 v15, 0x2

    move/from16 v0, p1

    move v1, v15

    if-eq v0, v1, :cond_4

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/ecareme/pixwe/media/GridCamera;->moveYTo(F)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/ecareme/pixwe/media/GridCamera;->moveZTo(F)V

    .line 370
    :cond_4
    return-void

    .line 267
    .end local v5           #feed:Lcom/ecareme/pixwe/media/MediaFeed;
    .end local v9           #numMaxRows:I
    .end local v11           #performLayout:Z
    .end local v14           #yStretch:F
    :cond_5
    const/4 v15, 0x3

    move v9, v15

    goto :goto_0

    .line 277
    .restart local v5       #feed:Lcom/ecareme/pixwe/media/MediaFeed;
    .restart local v9       #numMaxRows:I
    .restart local v11       #performLayout:Z
    .restart local v14       #yStretch:F
    :pswitch_0
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mTimeElapsedSinceGridViewReady:F

    .line 278
    if-eqz v5, :cond_6

    if-nez v6, :cond_6

    .line 279
    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/MediaFeed;->restorePreviousClusteringState()Z

    move-result v13

    .line 280
    .local v13, updatedData:Z
    if-eqz v13, :cond_6

    .line 281
    const/4 v11, 0x0

    .line 284
    .end local v13           #updatedData:Z
    :cond_6
    iput v9, v8, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mNumRows:I

    .line 285
    const/high16 v15, 0x4120

    sget v16, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v8, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mSpacingX:I

    .line 286
    const/high16 v15, 0x4120

    sget v16, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v8, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mSpacingY:I

    .line 287
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move v15, v0

    if-nez v15, :cond_7

    .line 289
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mInAlbum:Z

    .line 290
    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/MediaFeed;->getCurrentSet()Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v12

    .line 291
    .local v12, set:Lcom/ecareme/pixwe/media/MediaSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mDrawables:Lcom/ecareme/pixwe/media/GridDrawables;

    move-object v15, v0

    const/16 v16, 0x1

    move-object v0, v15

    move-object v1, v12

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/GridDrawables;->getIconForSet(Lcom/ecareme/pixwe/media/MediaSet;Z)I

    move-result v7

    .line 292
    .local v7, icon:I
    if-eqz v12, :cond_7

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/ecareme/pixwe/media/HudLayer;->getPathBar()Lcom/ecareme/pixwe/media/PathBarLayer;

    move-result-object v15

    move-object v0, v12

    iget-object v0, v0, Lcom/ecareme/pixwe/media/MediaSet;->mNoCountTitleString:Ljava/lang/String;

    move-object/from16 v16, v0

    new-instance v17, Lcom/ecareme/pixwe/media/GridLayer$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/GridLayer$2;-><init>(Lcom/ecareme/pixwe/media/GridLayer;)V

    move-object v0, v15

    move v1, v7

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/PathBarLayer;->pushLabel(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 309
    .end local v7           #icon:I
    .end local v12           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move v15, v0

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/ecareme/pixwe/media/HudLayer;->getPathBar()Lcom/ecareme/pixwe/media/PathBarLayer;

    move-result-object v15

    invoke-virtual {v15}, Lcom/ecareme/pixwe/media/PathBarLayer;->popLabel()Lcom/ecareme/pixwe/media/PathBarLayer$Component;

    goto/16 :goto_1

    .line 314
    :pswitch_1
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mTimeElapsedSinceStackViewReady:F

    .line 315
    if-eqz v5, :cond_8

    if-nez v6, :cond_8

    .line 316
    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/MediaFeed;->performClustering()V

    .line 317
    const/4 v11, 0x0

    .line 319
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/ecareme/pixwe/media/GridLayer;->disableLocationFiltering()V

    .line 320
    const/4 v15, 0x1

    sub-int v15, v9, v15

    iput v15, v8, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mNumRows:I

    .line 321
    const/high16 v15, 0x42c8

    sget v16, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v8, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mSpacingX:I

    .line 322
    const/high16 v15, 0x428c

    sget v16, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float v15, v15, v16

    mul-float/2addr v15, v14

    float-to-int v15, v15

    iput v15, v8, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mSpacingY:I

    goto/16 :goto_1

    .line 325
    :pswitch_2
    const/4 v15, 0x1

    iput v15, v8, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mNumRows:I

    .line 326
    const/high16 v15, 0x4220

    sget v16, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v8, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mSpacingX:I

    .line 327
    const/high16 v15, 0x4220

    sget v16, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v8, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mSpacingY:I

    .line 328
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move v15, v0

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_2

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/ecareme/pixwe/media/HudLayer;->getPathBar()Lcom/ecareme/pixwe/media/PathBarLayer;

    move-result-object v15

    const v16, 0x7f020021

    const-string v17, ""

    new-instance v18, Lcom/ecareme/pixwe/media/GridLayer$3;

    invoke-direct/range {v18 .. v19}, Lcom/ecareme/pixwe/media/GridLayer$3;-><init>(Lcom/ecareme/pixwe/media/GridLayer;)V

    invoke-virtual/range {v15 .. v18}, Lcom/ecareme/pixwe/media/PathBarLayer;->pushLabel(ILjava/lang/String;Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 340
    :pswitch_3
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mTimeElapsedSinceStackViewReady:F

    .line 341
    if-eqz v5, :cond_9

    if-nez v6, :cond_9

    .line 342
    invoke-virtual {v5}, Lcom/ecareme/pixwe/media/MediaFeed;->restorePreviousClusteringState()Z

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mMarkedBucketList:Lcom/ecareme/pixwe/media/MediaBucketList;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/ecareme/pixwe/media/MediaBucketList;->clear()V

    .line 344
    const/4 v15, -0x1

    invoke-virtual {v5, v15}, Lcom/ecareme/pixwe/media/MediaFeed;->expandMediaSet(I)V

    .line 345
    const/4 v11, 0x0

    .line 347
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/ecareme/pixwe/media/GridLayer;->disableLocationFiltering()V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/ecareme/pixwe/media/GridInputProcessor;->clearSelection()V

    .line 349
    const/4 v15, 0x1

    sub-int v15, v9, v15

    iput v15, v8, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mNumRows:I

    .line 350
    const/high16 v15, 0x42c8

    sget v16, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float v15, v15, v16

    float-to-int v15, v15

    iput v15, v8, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mSpacingX:I

    .line 351
    const/high16 v15, 0x428c

    sget v16, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float v15, v15, v16

    mul-float/2addr v15, v14

    float-to-int v15, v15

    iput v15, v8, Lcom/ecareme/pixwe/media/GridLayoutInterface;->mSpacingY:I

    .line 352
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mInAlbum:Z

    move v15, v0

    if-eqz v15, :cond_2

    .line 353
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move v15, v0

    const/16 v16, 0x2

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_a

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/ecareme/pixwe/media/HudLayer;->getPathBar()Lcom/ecareme/pixwe/media/PathBarLayer;

    move-result-object v15

    invoke-virtual {v15}, Lcom/ecareme/pixwe/media/PathBarLayer;->popLabel()Lcom/ecareme/pixwe/media/PathBarLayer$Component;

    .line 356
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/ecareme/pixwe/media/HudLayer;->getPathBar()Lcom/ecareme/pixwe/media/PathBarLayer;

    move-result-object v15

    invoke-virtual {v15}, Lcom/ecareme/pixwe/media/PathBarLayer;->popLabel()Lcom/ecareme/pixwe/media/PathBarLayer$Component;

    .line 357
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mInAlbum:Z

    goto/16 :goto_1

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setViewIntent(ZLjava/lang/String;)V
    .locals 3
    .parameter "b"
    .parameter "setName"

    .prologue
    const/4 v2, 0x1

    .line 1553
    iput-boolean p1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mViewIntent:Z

    .line 1554
    if-eqz p1, :cond_0

    .line 1555
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaFeed;->expandMediaSet(I)V

    .line 1556
    invoke-virtual {p0, v2}, Lcom/ecareme/pixwe/media/GridLayer;->setState(I)V

    .line 1558
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HudLayer;->getPathBar()Lcom/ecareme/pixwe/media/PathBarLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/PathBarLayer;->getNumLevels()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1559
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/HudLayer;->getPathBar()Lcom/ecareme/pixwe/media/PathBarLayer;

    move-result-object v0

    const v1, 0x7f02004a

    new-instance v2, Lcom/ecareme/pixwe/media/GridLayer$6;

    invoke-direct {v2, p0}, Lcom/ecareme/pixwe/media/GridLayer$6;-><init>(Lcom/ecareme/pixwe/media/GridLayer;)V

    invoke-virtual {v0, v1, p2, v2}, Lcom/ecareme/pixwe/media/PathBarLayer;->pushLabel(ILjava/lang/String;Ljava/lang/Runnable;)V

    .line 1576
    :cond_0
    return-void
.end method

.method public setZoomValue(F)V
    .locals 2
    .parameter "f"

    .prologue
    .line 1528
    iput p1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mZoomValue:F

    .line 1529
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v0

    const/high16 v1, 0x3f80

    invoke-virtual {p0, v0, v1}, Lcom/ecareme/pixwe/media/GridLayer;->centerCameraForSlot(IF)V

    .line 1530
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MediaFeed;->shutdown()V

    .line 216
    :cond_0
    iput-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mContext:Landroid/content/Context;

    .line 217
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSelectedBucketList:Lcom/ecareme/pixwe/media/MediaBucketList;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MediaBucketList;->clear()V

    .line 218
    iput-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mView:Lcom/ecareme/pixwe/media/RenderView;

    .line 219
    return-void
.end method

.method public startSlideshow()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    .line 1399
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/GridLayer;->endSlideshow()V

    .line 1400
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSlideshowMode:Z

    .line 1401
    iput v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mZoomValue:F

    .line 1402
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/ecareme/pixwe/media/GridLayer;->centerCameraForSlot(IF)V

    .line 1403
    const/high16 v1, 0x4020

    iput v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mTimeElapsedSinceView:F

    .line 1404
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    .line 1405
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1406
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0xa

    const-string v2, "GridView.Slideshow"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1407
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1408
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/GridLayer;->endSlideshow()V

    .line 223
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mBackground:Lcom/ecareme/pixwe/media/BackgroundLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/BackgroundLayer;->clear()V

    .line 224
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/GridLayer;->handleLowMemory()V

    .line 225
    return-void
.end method

.method public tapGesture(IZ)Z
    .locals 13
    .parameter "slotIndex"
    .parameter "metadata"

    .prologue
    const/4 v1, 0x1

    const/4 v12, 0x0

    .line 1330
    iget-object v9, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    .line 1331
    .local v9, feed:Lcom/ecareme/pixwe/media/MediaFeed;
    if-nez v9, :cond_0

    move v0, v12

    .line 1362
    :goto_0
    return v0

    .line 1333
    :cond_0
    invoke-virtual {v9}, Lcom/ecareme/pixwe/media/MediaFeed;->isClustered()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1335
    invoke-virtual {v9}, Lcom/ecareme/pixwe/media/MediaFeed;->hasExpandedMediaSet()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1336
    invoke-virtual {v9, p1}, Lcom/ecareme/pixwe/media/MediaFeed;->canExpandSet(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1337
    iput p1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCurrentExpandedSlot:I

    .line 1338
    invoke-virtual {v9, p1}, Lcom/ecareme/pixwe/media/MediaFeed;->expandMediaSet(I)V

    .line 1339
    invoke-virtual {p0, v1}, Lcom/ecareme/pixwe/media/GridLayer;->setState(I)V

    :cond_1
    move v0, v12

    .line 1341
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1343
    goto :goto_0

    .line 1348
    :cond_3
    iput p1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mCurrentExpandedSlot:I

    .line 1349
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMarkedBucketList:Lcom/ecareme/pixwe/media/MediaBucketList;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/MediaBucketList;->clear()V

    .line 1350
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mMarkedBucketList:Lcom/ecareme/pixwe/media/MediaBucketList;

    invoke-virtual {v0, p1, v9, v12}, Lcom/ecareme/pixwe/media/MediaBucketList;->add(ILcom/ecareme/pixwe/media/MediaFeed;Z)V

    .line 1351
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/GridLayer;->goBack()Z

    .line 1352
    if-eqz p2, :cond_5

    .line 1353
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mDisplaySlots:[Lcom/ecareme/pixwe/media/DisplaySlot;

    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mBufferedVisibleRange:Lcom/ecareme/pixwe/media/IndexRange;

    iget v1, v1, Lcom/ecareme/pixwe/media/IndexRange;->begin:I

    sub-int v1, p1, v1

    aget-object v11, v0, v1

    .line 1354
    .local v11, slot:Lcom/ecareme/pixwe/media/DisplaySlot;
    invoke-virtual {v11}, Lcom/ecareme/pixwe/media/DisplaySlot;->hasValidLocation()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1355
    invoke-virtual {v11}, Lcom/ecareme/pixwe/media/DisplaySlot;->getMediaSet()Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v10

    .line 1356
    .local v10, set:Lcom/ecareme/pixwe/media/MediaSet;
    iget-object v0, v10, Lcom/ecareme/pixwe/media/MediaSet;->mReverseGeocodedLocation:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1357
    iget-object v0, v10, Lcom/ecareme/pixwe/media/MediaSet;->mReverseGeocodedLocation:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/media/GridLayer;->enableLocationFiltering(Ljava/lang/String;)V

    .line 1359
    :cond_4
    new-instance v0, Lcom/ecareme/pixwe/media/LocationMediaFilter;

    iget-wide v1, v10, Lcom/ecareme/pixwe/media/MediaSet;->mMinLatLatitude:D

    iget-wide v3, v10, Lcom/ecareme/pixwe/media/MediaSet;->mMinLonLongitude:D

    iget-wide v5, v10, Lcom/ecareme/pixwe/media/MediaSet;->mMaxLatLatitude:D

    iget-wide v7, v10, Lcom/ecareme/pixwe/media/MediaSet;->mMaxLonLongitude:D

    invoke-direct/range {v0 .. v8}, Lcom/ecareme/pixwe/media/LocationMediaFilter;-><init>(DDDD)V

    invoke-virtual {v9, v0}, Lcom/ecareme/pixwe/media/MediaFeed;->setFilter(Lcom/ecareme/pixwe/media/MediaFilter;)V

    .end local v10           #set:Lcom/ecareme/pixwe/media/MediaSet;
    .end local v11           #slot:Lcom/ecareme/pixwe/media/DisplaySlot;
    :cond_5
    move v0, v12

    .line 1362
    goto :goto_0
.end method

.method public update(Lcom/ecareme/pixwe/media/RenderView;F)Z
    .locals 19
    .parameter "view"
    .parameter "timeElapsed"

    .prologue
    .line 528
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mFeedAboutToChange:Z

    move v14, v0

    if-nez v14, :cond_1

    .line 529
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mTimeElapsedSinceGridViewReady:F

    move v14, v0

    add-float v14, v14, p2

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mTimeElapsedSinceGridViewReady:F

    .line 530
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mTimeElapsedSinceGridViewReady:F

    move v14, v0

    const/high16 v15, 0x3f80

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_0

    .line 531
    const/high16 v14, 0x3f80

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mTimeElapsedSinceGridViewReady:F

    .line 533
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mTimeElapsedSinceStackViewReady:F

    move v14, v0

    add-float v14, v14, p2

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mTimeElapsedSinceStackViewReady:F

    .line 534
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mTimeElapsedSinceStackViewReady:F

    move v14, v0

    const/high16 v15, 0x3f80

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_1

    .line 535
    const/high16 v14, 0x3f80

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mTimeElapsedSinceStackViewReady:F

    .line 538
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mRequestToEnterSelection:Z

    move v14, v0

    if-eqz v14, :cond_2

    .line 539
    invoke-virtual/range {p0 .. p0}, Lcom/ecareme/pixwe/media/GridLayer;->getHud()Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v10

    .line 540
    .local v10, hud:Lcom/ecareme/pixwe/media/HudLayer;
    if-eqz v10, :cond_2

    .line 541
    invoke-virtual {v10}, Lcom/ecareme/pixwe/media/HudLayer;->enterSelectionMode()V

    .line 542
    invoke-virtual {v10}, Lcom/ecareme/pixwe/media/HudLayer;->getMode()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 543
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mRequestToEnterSelection:Z

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/ecareme/pixwe/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v14

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    .line 552
    .end local v10           #hud:Lcom/ecareme/pixwe/media/HudLayer;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    move-object v14, v0

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/ecareme/pixwe/media/MediaFeed;->isSingleImageMode()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/ecareme/pixwe/media/GridLayer;->getHud()Lcom/ecareme/pixwe/media/HudLayer;

    move-result-object v10

    .line 554
    .restart local v10       #hud:Lcom/ecareme/pixwe/media/HudLayer;
    invoke-virtual {v10}, Lcom/ecareme/pixwe/media/HudLayer;->getPathBar()Lcom/ecareme/pixwe/media/PathBarLayer;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/ecareme/pixwe/media/PathBarLayer;->setHidden(Z)V

    .line 555
    invoke-virtual {v10}, Lcom/ecareme/pixwe/media/HudLayer;->getMenuBar()Lcom/ecareme/pixwe/media/Layer;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/ecareme/pixwe/media/Layer;->setHidden(Z)V

    .line 556
    invoke-virtual {v10}, Lcom/ecareme/pixwe/media/HudLayer;->getMode()I

    move-result v14

    if-eqz v14, :cond_3

    .line 557
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lcom/ecareme/pixwe/media/HudLayer;->setMode(I)V

    .line 559
    .end local v10           #hud:Lcom/ecareme/pixwe/media/HudLayer;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/ecareme/pixwe/media/RenderView;->elapsedLoadingExpensiveTextures()J

    move-result-wide v14

    const-wide/16 v16, 0x96

    cmp-long v14, v14, v16

    if-gtz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    move-object v14, v0

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mMediaFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/ecareme/pixwe/media/MediaFeed;->getWaitingForMediaScanner()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 560
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/ecareme/pixwe/media/HudLayer;->getPathBar()Lcom/ecareme/pixwe/media/PathBarLayer;

    move-result-object v14

    sget-object v15, Lcom/ecareme/pixwe/media/GridDrawables;->TEXTURE_SPINNER:[I

    invoke-virtual {v14, v15}, Lcom/ecareme/pixwe/media/PathBarLayer;->setAnimatedIcons([I)V

    .line 567
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v5, v0

    .line 568
    .local v5, camera:Lcom/ecareme/pixwe/media/GridCamera;
    move-object v0, v5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridCamera;->update(F)V

    .line 569
    const/4 v14, 0x2

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridLayer;->getAnchorDisplayItem(I)Lcom/ecareme/pixwe/media/DisplayItem;

    move-result-object v4

    .line 570
    .local v4, anchorDisplayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/ecareme/pixwe/media/HudLayer;->getTimeBar()Lcom/ecareme/pixwe/media/TimeBar;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ecareme/pixwe/media/TimeBar;->isDragged()Z

    move-result v14

    if-nez v14, :cond_5

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/ecareme/pixwe/media/HudLayer;->getTimeBar()Lcom/ecareme/pixwe/media/TimeBar;

    move-result-object v14

    iget-object v15, v4, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    invoke-virtual {v14, v15}, Lcom/ecareme/pixwe/media/TimeBar;->setItem(Lcom/ecareme/pixwe/media/MediaItem;)V

    .line 573
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mDisplayList:Lcom/ecareme/pixwe/media/DisplayList;

    move-object v14, v0

    move-object v0, v14

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/DisplayList;->update(F)V

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    move-object v14, v0

    move-object v0, v14

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridInputProcessor;->update(F)V

    .line 575
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mSelectedAlpha:F

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mTargetAlpha:F

    move v15, v0

    const/high16 v16, 0x3f00

    mul-float v16, v16, p2

    invoke-static/range {v14 .. v16}, Lcom/ecareme/pixwe/media/FloatUtils;->animate(FFF)F

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mSelectedAlpha:F

    .line 579
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move v14, v0

    const/4 v15, 0x2

    if-ne v14, v15, :cond_f

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/ecareme/pixwe/media/HudLayer;->autoHide(Z)V

    .line 585
    :goto_1
    sget-object v9, Lcom/ecareme/pixwe/media/GridDrawables;->sFullscreenGrid:[Lcom/ecareme/pixwe/media/GridQuad;

    .line 586
    .local v9, fullscreenQuads:[Lcom/ecareme/pixwe/media/GridQuad;
    array-length v13, v9

    .line 587
    .local v13, numFullScreenQuads:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    if-lt v11, v13, :cond_10

    .line 590
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mSlideshowMode:Z

    move v14, v0

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move v14, v0

    const/4 v15, 0x2

    if-ne v14, v15, :cond_6

    .line 595
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mTimeElapsedSinceView:F

    move v14, v0

    add-float v14, v14, p2

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mTimeElapsedSinceView:F

    .line 596
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mTimeElapsedSinceView:F

    move v14, v0

    const/high16 v15, 0x4060

    cmpl-float v14, v14, v15

    if-lez v14, :cond_6

    .line 598
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mTimeElapsedSinceView:F

    .line 599
    const/high16 v14, 0x3f00

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridLayer;->changeFocusToNextSlot(F)Z

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/ecareme/pixwe/media/GridCamera;->commitMoveInX()V

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/ecareme/pixwe/media/GridCamera;->commitMoveInY()V

    .line 604
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move v14, v0

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move v14, v0

    const/4 v15, 0x3

    if-ne v14, v15, :cond_8

    .line 605
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v14, v0

    const v15, -0x42333333

    invoke-virtual {v14, v15}, Lcom/ecareme/pixwe/media/GridCamera;->moveYTo(F)V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/ecareme/pixwe/media/GridCamera;->commitMoveInY()V

    .line 608
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mDrawManager:Lcom/ecareme/pixwe/media/GridDrawManager;

    move-object v14, v0

    move-object v0, v14

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridDrawManager;->update(F)Z

    move-result v7

    .line 609
    .local v7, dirty:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mSlideshowMode:Z

    move v14, v0

    or-int/2addr v7, v14

    .line 610
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mFramesDirty:I

    move v14, v0

    if-lez v14, :cond_11

    const/4 v14, 0x1

    :goto_3
    or-int/2addr v7, v14

    .line 611
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mFrameCount:I

    move v14, v0

    add-int/lit8 v14, v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mFrameCount:I

    .line 612
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mFramesDirty:I

    move v14, v0

    if-lez v14, :cond_9

    .line 613
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mFramesDirty:I

    move v14, v0

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/GridLayer;->mFramesDirty:I

    .line 617
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mState:I

    move v14, v0

    const/4 v15, 0x2

    if-ne v14, v15, :cond_16

    sget-boolean v14, Lcom/ecareme/pixwe/media/GridLayer;->UPLOAD_MODE:Z

    if-nez v14, :cond_16

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/ecareme/pixwe/media/GridLayer;->getCurrentSelectedSlot()I

    move-result v14

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridLayer;->getDisplayItemForSlotId(I)Lcom/ecareme/pixwe/media/DisplayItem;

    move-result-object v8

    .line 619
    .local v8, displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    if-eqz v8, :cond_c

    .line 620
    iget-object v12, v8, Lcom/ecareme/pixwe/media/DisplayItem;->mItemRef:Lcom/ecareme/pixwe/media/MediaItem;

    .line 621
    .local v12, item:Lcom/ecareme/pixwe/media/MediaItem;
    iget-object v6, v12, Lcom/ecareme/pixwe/media/MediaItem;->mDescription:Ljava/lang/String;

    .line 622
    .local v6, defaultComment:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mComment:Lcom/ecareme/pixwe/media/CommentLayer;

    move-object v14, v0

    invoke-virtual {v14, v6}, Lcom/ecareme/pixwe/media/CommentLayer;->setContent(Ljava/lang/String;)V

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/ecareme/pixwe/media/HudLayer;->isHidden()Z

    move-result v14

    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/ecareme/pixwe/media/HudLayer;->isHidden()Z

    move-result v14

    if-nez v14, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/ecareme/pixwe/media/HudLayer;->getAlpha()F

    move-result v14

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_13

    .line 624
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mComment:Lcom/ecareme/pixwe/media/CommentLayer;

    move-object v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHeight:F

    move/from16 v16, v0

    const/high16 v17, 0x4220

    sget v18, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float v17, v17, v18

    sub-float v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/ecareme/pixwe/media/CommentLayer;->setPosition(FF)V

    .line 625
    if-eqz v6, :cond_b

    const-string v14, ""

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 626
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mComment:Lcom/ecareme/pixwe/media/CommentLayer;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/ecareme/pixwe/media/CommentLayer;->setHidden(Z)V

    .line 648
    .end local v6           #defaultComment:Ljava/lang/String;
    .end local v8           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v12           #item:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mDisplayList:Lcom/ecareme/pixwe/media/DisplayList;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/ecareme/pixwe/media/DisplayList;->getNumAnimatables()I

    move-result v14

    if-nez v14, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mCamera:Lcom/ecareme/pixwe/media/GridCamera;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/ecareme/pixwe/media/GridCamera;->isAnimating()Z

    move-result v14

    if-nez v14, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mSelectedAlpha:F

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mTargetAlpha:F

    move v15, v0

    cmpl-float v14, v14, v15

    if-nez v14, :cond_d

    .line 650
    if-eqz v7, :cond_17

    .line 651
    :cond_d
    const/4 v14, 0x1

    .line 653
    :goto_5
    return v14

    .line 562
    .end local v4           #anchorDisplayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v5           #camera:Lcom/ecareme/pixwe/media/GridCamera;
    .end local v7           #dirty:Z
    .end local v9           #fullscreenQuads:[Lcom/ecareme/pixwe/media/GridQuad;
    .end local v11           #i:I
    .end local v13           #numFullScreenQuads:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/ecareme/pixwe/media/HudLayer;->getPathBar()Lcom/ecareme/pixwe/media/PathBarLayer;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/ecareme/pixwe/media/PathBarLayer;->setAnimatedIcons([I)V

    goto/16 :goto_0

    .line 582
    .restart local v4       #anchorDisplayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .restart local v5       #camera:Lcom/ecareme/pixwe/media/GridCamera;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/ecareme/pixwe/media/HudLayer;->autoHide(Z)V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    move-object v14, v0

    const/high16 v15, 0x3f80

    invoke-virtual {v14, v15}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    goto/16 :goto_1

    .line 588
    .restart local v9       #fullscreenQuads:[Lcom/ecareme/pixwe/media/GridQuad;
    .restart local v11       #i:I
    .restart local v13       #numFullScreenQuads:I
    :cond_10
    aget-object v14, v9, v11

    move-object v0, v14

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/GridQuad;->update(F)V

    .line 587
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 610
    .restart local v7       #dirty:Z
    :cond_11
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 629
    .restart local v6       #defaultComment:Ljava/lang/String;
    .restart local v8       #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .restart local v12       #item:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mComment:Lcom/ecareme/pixwe/media/CommentLayer;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/ecareme/pixwe/media/CommentLayer;->setHidden(Z)V

    goto :goto_4

    .line 633
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mComment:Lcom/ecareme/pixwe/media/CommentLayer;

    move-object v14, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mHeight:F

    move/from16 v16, v0

    const/high16 v17, 0x42aa

    sget v18, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float v17, v17, v18

    sub-float v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/ecareme/pixwe/media/CommentLayer;->setPosition(FF)V

    .line 634
    if-eqz v6, :cond_14

    const-string v14, ""

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 635
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mComment:Lcom/ecareme/pixwe/media/CommentLayer;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/ecareme/pixwe/media/CommentLayer;->setHidden(Z)V

    goto/16 :goto_4

    .line 638
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mComment:Lcom/ecareme/pixwe/media/CommentLayer;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/ecareme/pixwe/media/CommentLayer;->setHidden(Z)V

    goto/16 :goto_4

    .line 644
    .end local v6           #defaultComment:Ljava/lang/String;
    .end local v8           #displayItem:Lcom/ecareme/pixwe/media/DisplayItem;
    .end local v12           #item:Lcom/ecareme/pixwe/media/MediaItem;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/GridLayer;->mComment:Lcom/ecareme/pixwe/media/CommentLayer;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/ecareme/pixwe/media/CommentLayer;->setHidden(Z)V

    goto/16 :goto_4

    .line 653
    :cond_17
    const/4 v14, 0x0

    goto/16 :goto_5
.end method

.method public zoomInToSelectedItem()V
    .locals 5

    .prologue
    const/high16 v4, 0x40c0

    const/high16 v3, 0x3f80

    .line 1426
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSlideshowMode:Z

    .line 1427
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/GridLayer;->getFillScreenZoomValue()F

    move-result v0

    .line 1428
    .local v0, potentialZoomValue:F
    iget v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mZoomValue:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    .line 1429
    iput v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mZoomValue:F

    .line 1433
    :goto_0
    iget v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mZoomValue:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    .line 1434
    iput v4, p0, Lcom/ecareme/pixwe/media/GridLayer;->mZoomValue:F

    .line 1436
    :cond_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v1, v3}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    .line 1437
    iget-object v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v1

    invoke-virtual {p0, v1, v3}, Lcom/ecareme/pixwe/media/GridLayer;->centerCameraForSlot(IF)V

    .line 1438
    return-void

    .line 1431
    :cond_1
    iget v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mZoomValue:F

    const/high16 v2, 0x4040

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/ecareme/pixwe/media/GridLayer;->mZoomValue:F

    goto :goto_0
.end method

.method public zoomOutFromSelectedItem()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    .line 1441
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mSlideshowMode:Z

    .line 1442
    iget v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mZoomValue:F

    invoke-direct {p0}, Lcom/ecareme/pixwe/media/GridLayer;->getFillScreenZoomValue()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 1443
    iput v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mZoomValue:F

    .line 1447
    :goto_0
    iget v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mZoomValue:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 1448
    iput v2, p0, Lcom/ecareme/pixwe/media/GridLayer;->mZoomValue:F

    .line 1450
    :cond_0
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mHud:Lcom/ecareme/pixwe/media/HudLayer;

    invoke-virtual {v0, v2}, Lcom/ecareme/pixwe/media/HudLayer;->setAlpha(F)V

    .line 1451
    iget-object v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mInputProcessor:Lcom/ecareme/pixwe/media/GridInputProcessor;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/ecareme/pixwe/media/GridLayer;->centerCameraForSlot(IF)V

    .line 1452
    return-void

    .line 1445
    :cond_1
    iget v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mZoomValue:F

    const/high16 v1, 0x4040

    div-float/2addr v0, v1

    iput v0, p0, Lcom/ecareme/pixwe/media/GridLayer;->mZoomValue:F

    goto :goto_0
.end method
