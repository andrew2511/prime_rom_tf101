.class public final Lcom/ecareme/pixwe/media/TimeBar;
.super Lcom/ecareme/pixwe/media/Layer;
.source "TimeBar.java"

# interfaces
.implements Lcom/ecareme/pixwe/media/MediaFeed$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/media/TimeBar$Listener;,
        Lcom/ecareme/pixwe/media/TimeBar$Marker;
    }
.end annotation


# static fields
.field private static final AUTO_SCROLL_MARGIN:F = 100.0f

.field public static final HEIGHT:I = 0x30

#the value of this static final field might be set in the static constructor
.field private static final KNOB:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final KNOB_PRESSED:I = 0x0

.field private static final MARKER_SPACING_PIXELS:I = 0x32

.field private static final SRC_PAINT:Landroid/graphics/Paint;


# instance fields
.field private mAnimTextAlpha:F

.field private mBackground:Landroid/graphics/NinePatch;

.field private mBackgroundRect:Landroid/graphics/Rect;

.field private mBackgroundTexture:Lcom/ecareme/pixwe/media/BitmapTexture;

.field private mDateUnknown:Lcom/ecareme/pixwe/media/StringTexture;

.field private final mDayFormat:Lcom/ecareme/pixwe/media/StringTexture$Config;

.field private final mDayLabels:[Lcom/ecareme/pixwe/media/StringTexture;

.field private final mDot:Lcom/ecareme/pixwe/media/StringTexture;

.field private mDragX:F

.field private mFeed:Lcom/ecareme/pixwe/media/MediaFeed;

.field private mInDrag:Z

.field private mListener:Lcom/ecareme/pixwe/media/TimeBar$Listener;

.field private mMarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/TimeBar$Marker;",
            ">;"
        }
    .end annotation
.end field

.field private mMarkersCopy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ecareme/pixwe/media/TimeBar$Marker;",
            ">;"
        }
    .end annotation
.end field

.field private final mMonthLabels:[Lcom/ecareme/pixwe/media/StringTexture;

.field private final mMonthYearFormat:Lcom/ecareme/pixwe/media/StringTexture$Config;

.field private final mOpaqueDayLabels:[Lcom/ecareme/pixwe/media/StringTexture;

.field private mPosition:F

.field private mPositionAnim:F

.field private mScroll:F

.field private mScrollAnim:F

.field private mShowTime:Z

.field private mState:I

.field private mTextAlpha:F

.field private mTotalWidth:F

.field private final mTracker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/ecareme/pixwe/media/MediaItem;",
            "Lcom/ecareme/pixwe/media/TimeBar$Marker;",
            ">;"
        }
    .end annotation
.end field

.field private final mYearLabels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ecareme/pixwe/media/StringTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/ecareme/pixwe/media/TimeBar;->SRC_PAINT:Landroid/graphics/Paint;

    .line 60
    const v0, 0x7f020083

    sput v0, Lcom/ecareme/pixwe/media/TimeBar;->KNOB:I

    .line 61
    const v0, 0x7f020084

    sput v0, Lcom/ecareme/pixwe/media/TimeBar;->KNOB_PRESSED:I

    .line 42
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/16 v2, 0x20

    const/high16 v5, 0x4188

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 83
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Layer;-><init>()V

    .line 47
    iput-object v4, p0, Lcom/ecareme/pixwe/media/TimeBar;->mListener:Lcom/ecareme/pixwe/media/TimeBar$Listener;

    .line 48
    iput-object v4, p0, Lcom/ecareme/pixwe/media/TimeBar;->mFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    .line 49
    iput v3, p0, Lcom/ecareme/pixwe/media/TimeBar;->mTotalWidth:F

    .line 50
    iput v3, p0, Lcom/ecareme/pixwe/media/TimeBar;->mPosition:F

    .line 51
    iput v3, p0, Lcom/ecareme/pixwe/media/TimeBar;->mPositionAnim:F

    .line 52
    iput v3, p0, Lcom/ecareme/pixwe/media/TimeBar;->mScroll:F

    .line 53
    iput v3, p0, Lcom/ecareme/pixwe/media/TimeBar;->mScrollAnim:F

    .line 54
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mInDrag:Z

    .line 55
    iput v3, p0, Lcom/ecareme/pixwe/media/TimeBar;->mDragX:F

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mMarkers:Ljava/util/ArrayList;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mMarkersCopy:Ljava/util/ArrayList;

    .line 62
    new-instance v1, Lcom/ecareme/pixwe/media/StringTexture$Config;

    invoke-direct {v1}, Lcom/ecareme/pixwe/media/StringTexture$Config;-><init>()V

    iput-object v1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mMonthYearFormat:Lcom/ecareme/pixwe/media/StringTexture$Config;

    .line 63
    new-instance v1, Lcom/ecareme/pixwe/media/StringTexture$Config;

    invoke-direct {v1}, Lcom/ecareme/pixwe/media/StringTexture$Config;-><init>()V

    iput-object v1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mDayFormat:Lcom/ecareme/pixwe/media/StringTexture$Config;

    .line 64
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mYearLabels:Landroid/util/SparseArray;

    .line 66
    const/16 v1, 0xc

    new-array v1, v1, [Lcom/ecareme/pixwe/media/StringTexture;

    iput-object v1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mMonthLabels:[Lcom/ecareme/pixwe/media/StringTexture;

    .line 67
    new-array v1, v2, [Lcom/ecareme/pixwe/media/StringTexture;

    iput-object v1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mDayLabels:[Lcom/ecareme/pixwe/media/StringTexture;

    .line 68
    new-array v1, v2, [Lcom/ecareme/pixwe/media/StringTexture;

    iput-object v1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mOpaqueDayLabels:[Lcom/ecareme/pixwe/media/StringTexture;

    .line 69
    new-instance v1, Lcom/ecareme/pixwe/media/StringTexture;

    const-string v2, "."

    invoke-direct {v1, v2}, Lcom/ecareme/pixwe/media/StringTexture;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mDot:Lcom/ecareme/pixwe/media/StringTexture;

    .line 70
    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mTracker:Ljava/util/HashMap;

    .line 72
    iput v3, p0, Lcom/ecareme/pixwe/media/TimeBar;->mTextAlpha:F

    .line 73
    iput v3, p0, Lcom/ecareme/pixwe/media/TimeBar;->mAnimTextAlpha:F

    .line 85
    iget-object v1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mMonthYearFormat:Lcom/ecareme/pixwe/media/StringTexture$Config;

    sget v2, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v2, v5

    iput v2, v1, Lcom/ecareme/pixwe/media/StringTexture$Config;->fontSize:F

    .line 86
    iget-object v1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mMonthYearFormat:Lcom/ecareme/pixwe/media/StringTexture$Config;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/ecareme/pixwe/media/StringTexture$Config;->bold:Z

    .line 87
    iget-object v1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mMonthYearFormat:Lcom/ecareme/pixwe/media/StringTexture$Config;

    const v2, 0x3f59999a

    iput v2, v1, Lcom/ecareme/pixwe/media/StringTexture$Config;->a:F

    .line 88
    iget-object v1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mDayFormat:Lcom/ecareme/pixwe/media/StringTexture$Config;

    sget v2, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v2, v5

    iput v2, v1, Lcom/ecareme/pixwe/media/StringTexture$Config;->fontSize:F

    .line 89
    iget-object v1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mDayFormat:Lcom/ecareme/pixwe/media/StringTexture$Config;

    const v2, 0x3f1c28f6

    iput v2, v1, Lcom/ecareme/pixwe/media/StringTexture$Config;->a:F

    .line 90
    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/media/TimeBar;->regenerateStringsForContext(Landroid/content/Context;)V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020078

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 92
    .local v0, background:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v2

    invoke-direct {v1, v0, v2, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mBackground:Landroid/graphics/NinePatch;

    .line 93
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mBackgroundRect:Landroid/graphics/Rect;

    .line 94
    sget-object v1, Lcom/ecareme/pixwe/media/TimeBar;->SRC_PAINT:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 95
    return-void
.end method

.method private addMarker(Lcom/ecareme/pixwe/media/TimeBar$Marker;)F
    .locals 3
    .parameter "marker"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/ecareme/pixwe/media/TimeBar;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    iget v0, p1, Lcom/ecareme/pixwe/media/TimeBar$Marker;->x:F

    const/high16 v1, 0x4248

    sget v2, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getAnchorMarker()Lcom/ecareme/pixwe/media/TimeBar$Marker;
    .locals 6

    .prologue
    .line 164
    iget-object v3, p0, Lcom/ecareme/pixwe/media/TimeBar;->mMarkers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 166
    :try_start_0
    iget-object v4, p0, Lcom/ecareme/pixwe/media/TimeBar;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 167
    .local v2, numMarkers:I
    if-nez v2, :cond_0

    .line 168
    monitor-exit v3

    const/4 v3, 0x0

    .line 173
    :goto_0
    return-object v3

    .line 169
    :cond_0
    iget v4, p0, Lcom/ecareme/pixwe/media/TimeBar;->mPosition:F

    int-to-float v5, v2

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 170
    .local v0, index:I
    if-lt v0, v2, :cond_1

    .line 171
    const/4 v4, 0x1

    sub-int v0, v2, v4

    .line 172
    :cond_1
    iget-object v4, p0, Lcom/ecareme/pixwe/media/TimeBar;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecareme/pixwe/media/TimeBar$Marker;

    .line 173
    .local v1, marker:Lcom/ecareme/pixwe/media/TimeBar$Marker;
    monitor-exit v3

    move-object v3, v1

    goto :goto_0

    .line 164
    .end local v0           #index:I
    .end local v1           #marker:Lcom/ecareme/pixwe/media/TimeBar$Marker;
    .end local v2           #numMarkers:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private getKnobXForPosition(F)F
    .locals 1
    .parameter "position"

    .prologue
    .line 338
    iget v0, p0, Lcom/ecareme/pixwe/media/TimeBar;->mTotalWidth:F

    mul-float/2addr v0, p1

    return v0
.end method

.method private getPositionForKnobX(F)F
    .locals 3
    .parameter "knobX"

    .prologue
    const/4 v2, 0x0

    .line 342
    iget v1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mTotalWidth:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    move v0, v2

    .line 343
    .local v0, normKnobX:F
    :goto_0
    const/high16 v1, 0x3f80

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1

    .line 342
    .end local v0           #normKnobX:F
    :cond_0
    iget v1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mTotalWidth:F

    div-float v1, p1, v1

    move v0, v1

    goto :goto_0
.end method

.method private getPositionForScroll(F)F
    .locals 4
    .parameter "scroll"

    .prologue
    const/4 v3, 0x0

    .line 331
    iget v1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mWidth:F

    const/high16 v2, 0x3f00

    mul-float v0, v1, v2

    .line 332
    .local v0, halfWidth:F
    iget v1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mTotalWidth:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    move v1, v3

    .line 334
    :goto_0
    return v1

    :cond_0
    add-float v1, p1, v0

    iget v2, p0, Lcom/ecareme/pixwe/media/TimeBar;->mTotalWidth:F

    div-float/2addr v1, v2

    goto :goto_0
.end method

.method private getScrollForPosition(F)F
    .locals 5
    .parameter "position"

    .prologue
    .line 324
    iget v3, p0, Lcom/ecareme/pixwe/media/TimeBar;->mWidth:F

    const/high16 v4, 0x3f00

    mul-float v1, v3, v4

    .line 325
    .local v1, halfWidth:F
    const/high16 v3, 0x3f80

    sub-float v2, v3, p1

    .line 326
    .local v2, positionInv:F
    neg-float v3, v1

    mul-float/2addr v3, v2

    iget v4, p0, Lcom/ecareme/pixwe/media/TimeBar;->mTotalWidth:F

    sub-float/2addr v4, v1

    mul-float/2addr v4, p1

    add-float v0, v3, v4

    .line 327
    .local v0, centered:F
    return v0
.end method

.method private getYearLabel(I)Lcom/ecareme/pixwe/media/StringTexture;
    .locals 3
    .parameter "year"

    .prologue
    .line 527
    const/16 v1, 0x7b2

    if-gt p1, v1, :cond_0

    .line 528
    iget-object v1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mDot:Lcom/ecareme/pixwe/media/StringTexture;

    .line 534
    :goto_0
    return-object v1

    .line 529
    :cond_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mYearLabels:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/StringTexture;

    .line 530
    .local v0, label:Lcom/ecareme/pixwe/media/StringTexture;
    if-nez v0, :cond_1

    .line 531
    new-instance v0, Lcom/ecareme/pixwe/media/StringTexture;

    .end local v0           #label:Lcom/ecareme/pixwe/media/StringTexture;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ecareme/pixwe/media/TimeBar;->mMonthYearFormat:Lcom/ecareme/pixwe/media/StringTexture$Config;

    invoke-direct {v0, v1, v2}, Lcom/ecareme/pixwe/media/StringTexture;-><init>(Ljava/lang/String;Lcom/ecareme/pixwe/media/StringTexture$Config;)V

    .line 532
    .restart local v0       #label:Lcom/ecareme/pixwe/media/StringTexture;
    iget-object v1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mYearLabels:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    move-object v1, v0

    .line 534
    goto :goto_0
.end method

.method private layout()V
    .locals 30

    .prologue
    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    move-object v5, v0

    if-eqz v5, :cond_4

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mTracker:Ljava/util/HashMap;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mMarkers:Ljava/util/ArrayList;

    move-object v5, v0

    monitor-enter v5

    .line 192
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mMarkers:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 191
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mScroll:F

    move/from16 v24, v0

    .line 199
    .local v24, scrollX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    move-object v12, v0

    .line 200
    .local v12, feed:Lcom/ecareme/pixwe/media/MediaFeed;
    const/16 v21, -0x1

    .line 201
    .local v21, lastYear:I
    const/16 v20, -0x1

    .line 202
    .local v20, lastMonth:I
    const/16 v19, -0x1

    .line 203
    .local v19, lastDayBlock:I
    const/4 v4, 0x0

    .line 204
    .local v4, dx:F
    const/16 v11, 0xc

    .line 205
    .local v11, increment:I
    const/16 v25, 0x0

    .line 206
    .local v25, set:Lcom/ecareme/pixwe/media/MediaSet;
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/TimeBar;->mShowTime:Z

    .line 207
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mState:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 208
    invoke-virtual {v12}, Lcom/ecareme/pixwe/media/MediaFeed;->getFilteredSet()Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v25

    .line 209
    if-nez v25, :cond_0

    .line 210
    invoke-virtual {v12}, Lcom/ecareme/pixwe/media/MediaFeed;->getCurrentSet()Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v25

    .line 232
    :cond_0
    if-eqz v25, :cond_3

    .line 233
    new-instance v29, Ljava/util/GregorianCalendar;

    invoke-direct/range {v29 .. v29}, Ljava/util/GregorianCalendar;-><init>()V

    .line 234
    .local v29, time:Ljava/util/GregorianCalendar;
    invoke-virtual/range {v25 .. v25}, Lcom/ecareme/pixwe/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v16

    .line 235
    .local v16, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    if-eqz v16, :cond_2

    .line 236
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v16

    .end local v16           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    check-cast v16, Ljava/util/ArrayList;

    .line 237
    .restart local v16       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    const/16 v17, 0x0

    .line 238
    .local v17, j:I
    :cond_1
    :goto_0
    invoke-virtual/range {v25 .. v25}, Lcom/ecareme/pixwe/media/MediaSet;->getNumItems()I

    move-result v5

    move/from16 v0, v17

    move v1, v5

    if-lt v0, v1, :cond_8

    .line 288
    .end local v17           #j:I
    :cond_2
    const/high16 v5, 0x4248

    sget v6, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v5, v6

    sub-float v5, v4, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/TimeBar;->mTotalWidth:F

    .line 290
    .end local v16           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v29           #time:Ljava/util/GregorianCalendar;
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/TimeBar;->getPositionForScroll(F)F

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/TimeBar;->mPosition:F

    .line 291
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mPosition:F

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/TimeBar;->mPositionAnim:F

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mMarkersCopy:Ljava/util/ArrayList;

    move-object v5, v0

    monitor-enter v5

    .line 293
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mMarkers:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 294
    .local v22, numMarkers:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mMarkersCopy:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mMarkersCopy:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 296
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    move v0, v13

    move/from16 v1, v22

    if-lt v0, v1, :cond_11

    .line 292
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 301
    .end local v4           #dx:F
    .end local v11           #increment:I
    .end local v12           #feed:Lcom/ecareme/pixwe/media/MediaFeed;
    .end local v13           #i:I
    .end local v19           #lastDayBlock:I
    .end local v20           #lastMonth:I
    .end local v21           #lastYear:I
    .end local v22           #numMarkers:I
    .end local v24           #scrollX:F
    .end local v25           #set:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_4
    return-void

    .line 191
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 213
    .restart local v4       #dx:F
    .restart local v11       #increment:I
    .restart local v12       #feed:Lcom/ecareme/pixwe/media/MediaFeed;
    .restart local v19       #lastDayBlock:I
    .restart local v20       #lastMonth:I
    .restart local v21       #lastYear:I
    .restart local v24       #scrollX:F
    .restart local v25       #set:Lcom/ecareme/pixwe/media/MediaSet;
    :cond_5
    const/4 v11, 0x2

    .line 214
    invoke-virtual {v12}, Lcom/ecareme/pixwe/media/MediaFeed;->hasExpandedMediaSet()Z

    move-result v5

    if-nez v5, :cond_6

    .line 215
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/TimeBar;->mShowTime:Z

    .line 217
    :cond_6
    new-instance v25, Lcom/ecareme/pixwe/media/MediaSet;

    .end local v25           #set:Lcom/ecareme/pixwe/media/MediaSet;
    invoke-direct/range {v25 .. v25}, Lcom/ecareme/pixwe/media/MediaSet;-><init>()V

    .line 218
    .restart local v25       #set:Lcom/ecareme/pixwe/media/MediaSet;
    invoke-virtual {v12}, Lcom/ecareme/pixwe/media/MediaFeed;->getNumSlots()I

    move-result v23

    .line 219
    .local v23, numSlots:I
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_2
    move v0, v13

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 220
    invoke-virtual {v12, v13}, Lcom/ecareme/pixwe/media/MediaFeed;->getSetForSlot(I)Lcom/ecareme/pixwe/media/MediaSet;

    move-result-object v26

    .line 221
    .local v26, slotSet:Lcom/ecareme/pixwe/media/MediaSet;
    if-eqz v26, :cond_7

    .line 222
    invoke-virtual/range {v26 .. v26}, Lcom/ecareme/pixwe/media/MediaSet;->getItems()Ljava/util/ArrayList;

    move-result-object v27

    .line 223
    .local v27, slotSetItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    if-eqz v27, :cond_7

    invoke-virtual/range {v26 .. v26}, Lcom/ecareme/pixwe/media/MediaSet;->getNumItems()I

    move-result v5

    if-lez v5, :cond_7

    .line 224
    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ecareme/pixwe/media/MediaItem;

    .line 225
    .local v15, item:Lcom/ecareme/pixwe/media/MediaItem;
    if-eqz v15, :cond_7

    .line 226
    move-object/from16 v0, v25

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/MediaSet;->addItem(Lcom/ecareme/pixwe/media/MediaItem;)V

    .line 219
    .end local v15           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v27           #slotSetItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 239
    .end local v13           #i:I
    .end local v23           #numSlots:I
    .end local v26           #slotSet:Lcom/ecareme/pixwe/media/MediaSet;
    .restart local v16       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .restart local v17       #j:I
    .restart local v29       #time:Ljava/util/GregorianCalendar;
    :cond_8
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ecareme/pixwe/media/MediaItem;

    .line 240
    .restart local v15       #item:Lcom/ecareme/pixwe/media/MediaItem;
    if-eqz v15, :cond_1

    .line 242
    iget-wide v5, v15, Lcom/ecareme/pixwe/media/MediaItem;->mDateTakenInMs:J

    move-object/from16 v0, v29

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 244
    const/4 v5, 0x1

    move-object/from16 v0, v29

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    .line 245
    .local v7, year:I
    move v0, v7

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    .line 246
    move/from16 v21, v7

    .line 247
    const/16 v20, -0x1

    .line 248
    const/16 v19, -0x1

    .line 250
    :cond_9
    const/4 v3, 0x0

    .line 252
    .local v3, marker:Lcom/ecareme/pixwe/media/TimeBar$Marker;
    const/4 v5, 0x2

    move-object/from16 v0, v29

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    .line 253
    .local v8, month:I
    const/4 v5, 0x5

    move-object/from16 v0, v29

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    .line 254
    .local v9, dayBlock:I
    move v0, v8

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 255
    move/from16 v20, v8

    .line 256
    const/16 v19, -0x1

    .line 257
    new-instance v3, Lcom/ecareme/pixwe/media/TimeBar$Marker;

    .end local v3           #marker:Lcom/ecareme/pixwe/media/TimeBar$Marker;
    invoke-virtual/range {v29 .. v29}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v5

    const/4 v10, 0x1

    invoke-direct/range {v3 .. v11}, Lcom/ecareme/pixwe/media/TimeBar$Marker;-><init>(FJIIIII)V

    .line 258
    .restart local v3       #marker:Lcom/ecareme/pixwe/media/TimeBar$Marker;
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/TimeBar;->addMarker(Lcom/ecareme/pixwe/media/TimeBar$Marker;)F

    move-result v4

    .line 269
    :cond_a
    :goto_3
    const/16 v18, 0x0

    .local v18, k:I
    :goto_4
    move/from16 v0, v18

    move v1, v11

    if-lt v0, v1, :cond_e

    .line 281
    :cond_b
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move/from16 v0, v17

    move v1, v5

    if-eq v0, v1, :cond_2

    .line 283
    add-int v17, v17, v11

    .line 284
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move/from16 v0, v17

    move v1, v5

    if-lt v0, v1, :cond_1

    .line 285
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v17, v5, v6

    goto/16 :goto_0

    .line 259
    .end local v18           #k:I
    :cond_c
    move v0, v9

    move/from16 v1, v19

    if-eq v0, v1, :cond_d

    .line 260
    move/from16 v19, v9

    .line 261
    if-eqz v9, :cond_a

    .line 262
    new-instance v3, Lcom/ecareme/pixwe/media/TimeBar$Marker;

    .end local v3           #marker:Lcom/ecareme/pixwe/media/TimeBar$Marker;
    invoke-virtual/range {v29 .. v29}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v5

    const/4 v10, 0x2

    invoke-direct/range {v3 .. v11}, Lcom/ecareme/pixwe/media/TimeBar$Marker;-><init>(FJIIIII)V

    .line 263
    .restart local v3       #marker:Lcom/ecareme/pixwe/media/TimeBar$Marker;
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/TimeBar;->addMarker(Lcom/ecareme/pixwe/media/TimeBar$Marker;)F

    move-result v4

    goto :goto_3

    .line 266
    :cond_d
    new-instance v3, Lcom/ecareme/pixwe/media/TimeBar$Marker;

    .end local v3           #marker:Lcom/ecareme/pixwe/media/TimeBar$Marker;
    invoke-virtual/range {v29 .. v29}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v5

    const/4 v10, 0x3

    invoke-direct/range {v3 .. v11}, Lcom/ecareme/pixwe/media/TimeBar$Marker;-><init>(FJIIIII)V

    .line 267
    .restart local v3       #marker:Lcom/ecareme/pixwe/media/TimeBar$Marker;
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/TimeBar;->addMarker(Lcom/ecareme/pixwe/media/TimeBar$Marker;)F

    move-result v4

    goto :goto_3

    .line 270
    .restart local v18       #k:I
    :cond_e
    add-int v14, v18, v17

    .line 271
    .local v14, index:I
    if-gez v14, :cond_f

    .line 269
    :goto_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 273
    :cond_f
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v14, v5, :cond_b

    .line 275
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ne v14, v5, :cond_10

    if-nez v18, :cond_b

    .line 277
    :cond_10
    move-object/from16 v0, v16

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/ecareme/pixwe/media/MediaItem;

    .line 278
    .local v28, thisItem:Lcom/ecareme/pixwe/media/MediaItem;
    iget-object v5, v3, Lcom/ecareme/pixwe/media/TimeBar$Marker;->items:Ljava/util/ArrayList;

    move-object v0, v5

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mTracker:Ljava/util/HashMap;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v28

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 297
    .end local v3           #marker:Lcom/ecareme/pixwe/media/TimeBar$Marker;
    .end local v7           #year:I
    .end local v8           #month:I
    .end local v9           #dayBlock:I
    .end local v14           #index:I
    .end local v15           #item:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v16           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v17           #j:I
    .end local v18           #k:I
    .end local v28           #thisItem:Lcom/ecareme/pixwe/media/MediaItem;
    .end local v29           #time:Ljava/util/GregorianCalendar;
    .restart local v13       #i:I
    .restart local v22       #numMarkers:I
    :cond_11
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mMarkersCopy:Ljava/util/ArrayList;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mMarkers:Ljava/util/ArrayList;

    move-object v7, v0

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ecareme/pixwe/media/TimeBar$Marker;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 292
    .end local v13           #i:I
    .end local v22           #numMarkers:I
    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6
.end method


# virtual methods
.method public generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V
    .locals 1
    .parameter "view"
    .parameter "lists"

    .prologue
    .line 516
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->updateList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 517
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->blendedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object v0, p2, Lcom/ecareme/pixwe/media/RenderView$Lists;->hitTestList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    return-void
.end method

.method public getItem()Lcom/ecareme/pixwe/media/MediaItem;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 132
    iget-object v8, p0, Lcom/ecareme/pixwe/media/TimeBar;->mMarkers:Ljava/util/ArrayList;

    monitor-enter v8

    .line 134
    :try_start_0
    iget-object v9, p0, Lcom/ecareme/pixwe/media/TimeBar;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 135
    .local v7, numMarkers:I
    if-nez v7, :cond_0

    .line 136
    monitor-exit v8

    move-object v8, v11

    .line 160
    .end local p0
    :goto_0
    return-object v8

    .line 137
    .restart local p0
    :cond_0
    iget v9, p0, Lcom/ecareme/pixwe/media/TimeBar;->mPosition:F

    int-to-float v10, v7

    mul-float/2addr v9, v10

    float-to-int v2, v9

    .line 138
    .local v2, index:I
    if-lt v2, v7, :cond_1

    .line 139
    sub-int v2, v7, v12

    .line 140
    :cond_1
    iget-object v9, p0, Lcom/ecareme/pixwe/media/TimeBar;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ecareme/pixwe/media/TimeBar$Marker;

    .line 141
    .local v5, marker:Lcom/ecareme/pixwe/media/TimeBar$Marker;
    if-eqz v5, :cond_4

    .line 144
    const/high16 v9, 0x3f80

    int-to-float v10, v7

    div-float v0, v9, v10

    .line 145
    .local v0, deltaBetweenMarkers:F
    iget v9, p0, Lcom/ecareme/pixwe/media/TimeBar;->mPosition:F

    int-to-float v10, v2

    mul-float/2addr v10, v0

    sub-float v1, v9, v10

    .line 150
    .local v1, increment:F
    iget-object v4, v5, Lcom/ecareme/pixwe/media/TimeBar$Marker;->items:Ljava/util/ArrayList;

    .line 151
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 152
    .local v6, numItems:I
    if-nez v6, :cond_2

    .line 153
    monitor-exit v8

    move-object v8, v11

    goto :goto_0

    .line 154
    :cond_2
    int-to-float v9, v6

    mul-float/2addr v9, v1

    div-float/2addr v9, v0

    float-to-int v3, v9

    .line 155
    .local v3, itemIndex:I
    if-lt v3, v6, :cond_3

    .line 156
    sub-int v3, v6, v12

    .line 157
    :cond_3
    iget-object v9, v5, Lcom/ecareme/pixwe/media/TimeBar$Marker;->items:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/ecareme/pixwe/media/MediaItem;

    monitor-exit v8

    move-object v8, p0

    goto :goto_0

    .line 132
    .end local v0           #deltaBetweenMarkers:F
    .end local v1           #increment:F
    .end local v3           #itemIndex:I
    .end local v4           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/MediaItem;>;"
    .end local v6           #numItems:I
    .restart local p0
    :cond_4
    monitor-exit v8

    move-object v8, v11

    .line 160
    goto :goto_0

    .line 132
    .end local v2           #index:I
    .end local v5           #marker:Lcom/ecareme/pixwe/media/TimeBar$Marker;
    .end local v7           #numMarkers:I
    .end local p0
    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method public isDragged()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/TimeBar;->mInDrag:Z

    return v0
.end method

.method public onFeedAboutToChange(Lcom/ecareme/pixwe/media/MediaFeed;)V
    .locals 0
    .parameter "feed"

    .prologue
    .line 523
    return-void
.end method

.method public onFeedChanged(Lcom/ecareme/pixwe/media/MediaFeed;Z)V
    .locals 0
    .parameter "feed"
    .parameter "needsLayout"

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/TimeBar;->layout()V

    .line 493
    return-void
.end method

.method protected onSizeChanged()V
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/ecareme/pixwe/media/TimeBar;->mPosition:F

    invoke-direct {p0, v0}, Lcom/ecareme/pixwe/media/TimeBar;->getScrollForPosition(F)F

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/media/TimeBar;->mScroll:F

    .line 129
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 464
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/media/TimeBar;->mDragX:F

    .line 465
    iget v0, p0, Lcom/ecareme/pixwe/media/TimeBar;->mDragX:F

    iget v1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mScroll:F

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/ecareme/pixwe/media/TimeBar;->getPositionForKnobX(F)F

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/media/TimeBar;->mPosition:F

    .line 468
    iget-object v0, p0, Lcom/ecareme/pixwe/media/TimeBar;->mListener:Lcom/ecareme/pixwe/media/TimeBar$Listener;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/ecareme/pixwe/media/TimeBar;->mListener:Lcom/ecareme/pixwe/media/TimeBar$Listener;

    invoke-interface {v0, p0}, Lcom/ecareme/pixwe/media/TimeBar$Listener;->onTimeChanged(Lcom/ecareme/pixwe/media/TimeBar;)V

    .line 473
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 488
    :goto_0
    :pswitch_0
    return v2

    .line 475
    :pswitch_1
    iput-boolean v2, p0, Lcom/ecareme/pixwe/media/TimeBar;->mInDrag:Z

    goto :goto_0

    .line 480
    :pswitch_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/TimeBar;->mInDrag:Z

    .line 483
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/TimeBar;->getItem()Lcom/ecareme/pixwe/media/MediaItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ecareme/pixwe/media/TimeBar;->setItem(Lcom/ecareme/pixwe/media/MediaItem;)V

    goto :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public regenerateStringsForContext(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f07

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, months:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 104
    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x1f

    if-le v0, v2, :cond_1

    .line 108
    new-instance v2, Lcom/ecareme/pixwe/media/StringTexture;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ecareme/pixwe/media/TimeBar;->mMonthYearFormat:Lcom/ecareme/pixwe/media/StringTexture$Config;

    invoke-direct {v2, v3, v4}, Lcom/ecareme/pixwe/media/StringTexture;-><init>(Ljava/lang/String;Lcom/ecareme/pixwe/media/StringTexture$Config;)V

    iput-object v2, p0, Lcom/ecareme/pixwe/media/TimeBar;->mDateUnknown:Lcom/ecareme/pixwe/media/StringTexture;

    .line 109
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ecareme/pixwe/media/TimeBar;->mBackgroundTexture:Lcom/ecareme/pixwe/media/BitmapTexture;

    .line 110
    return-void

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/ecareme/pixwe/media/TimeBar;->mMonthLabels:[Lcom/ecareme/pixwe/media/StringTexture;

    new-instance v3, Lcom/ecareme/pixwe/media/StringTexture;

    aget-object v4, v1, v0

    iget-object v5, p0, Lcom/ecareme/pixwe/media/TimeBar;->mMonthYearFormat:Lcom/ecareme/pixwe/media/StringTexture$Config;

    invoke-direct {v3, v4, v5}, Lcom/ecareme/pixwe/media/StringTexture;-><init>(Ljava/lang/String;Lcom/ecareme/pixwe/media/StringTexture$Config;)V

    aput-object v3, v2, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/ecareme/pixwe/media/TimeBar;->mDayLabels:[Lcom/ecareme/pixwe/media/StringTexture;

    new-instance v3, Lcom/ecareme/pixwe/media/StringTexture;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ecareme/pixwe/media/TimeBar;->mDayFormat:Lcom/ecareme/pixwe/media/StringTexture$Config;

    invoke-direct {v3, v4, v5}, Lcom/ecareme/pixwe/media/StringTexture;-><init>(Ljava/lang/String;Lcom/ecareme/pixwe/media/StringTexture$Config;)V

    aput-object v3, v2, v0

    .line 106
    iget-object v2, p0, Lcom/ecareme/pixwe/media/TimeBar;->mOpaqueDayLabels:[Lcom/ecareme/pixwe/media/StringTexture;

    new-instance v3, Lcom/ecareme/pixwe/media/StringTexture;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ecareme/pixwe/media/TimeBar;->mMonthYearFormat:Lcom/ecareme/pixwe/media/StringTexture$Config;

    invoke-direct {v3, v4, v5}, Lcom/ecareme/pixwe/media/StringTexture;-><init>(Ljava/lang/String;Lcom/ecareme/pixwe/media/StringTexture$Config;)V

    aput-object v3, v2, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public renderBlended(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 33
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 377
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mX:F

    move/from16 v25, v0

    .line 378
    .local v25, originX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mY:F

    move v7, v0

    .line 379
    .local v7, originY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mScrollAnim:F

    move/from16 v27, v0

    .line 380
    .local v27, scrollOffset:F
    sub-float v28, v25, v27

    .line 381
    .local v28, scrolledOriginX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mPositionAnim:F

    move/from16 v26, v0

    .line 382
    .local v26, position:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mInDrag:Z

    move v5, v0

    if-eqz v5, :cond_1

    sget v5, Lcom/ecareme/pixwe/media/TimeBar;->KNOB_PRESSED:I

    move/from16 v22, v5

    .line 383
    .local v22, knobId:I
    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->getResource(I)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v21

    .line 385
    .local v21, knob:Lcom/ecareme/pixwe/media/Texture;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mShowTime:Z

    move v5, v0

    if-nez v5, :cond_2

    .line 386
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 387
    invoke-virtual/range {v21 .. v21}, Lcom/ecareme/pixwe/media/ResourceTexture;->getWidth()I

    move-result v5

    int-to-float v9, v5

    .line 388
    .local v9, knobWidth:F
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/TimeBar;->getKnobXForPosition(F)F

    move-result v5

    add-float v5, v5, v28

    const/high16 v6, 0x3f00

    mul-float/2addr v6, v9

    sub-float v6, v5, v6

    const/4 v8, 0x0

    .line 389
    invoke-virtual/range {v21 .. v21}, Lcom/ecareme/pixwe/media/ResourceTexture;->getHeight()I

    move-result v5

    int-to-float v10, v5

    move-object/from16 v5, p1

    .line 388
    invoke-virtual/range {v5 .. v10}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(FFFFF)V

    .line 459
    .end local v7           #originY:F
    .end local v9           #knobWidth:F
    :cond_0
    :goto_1
    return-void

    .line 382
    .end local v21           #knob:Lcom/ecareme/pixwe/media/Texture;
    .end local v22           #knobId:I
    .restart local v7       #originY:F
    :cond_1
    sget v5, Lcom/ecareme/pixwe/media/TimeBar;->KNOB:I

    move/from16 v22, v5

    goto :goto_0

    .line 392
    .restart local v21       #knob:Lcom/ecareme/pixwe/media/Texture;
    .restart local v22       #knobId:I
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 393
    invoke-virtual/range {v21 .. v21}, Lcom/ecareme/pixwe/media/ResourceTexture;->getWidth()I

    move-result v5

    int-to-float v9, v5

    .line 394
    .restart local v9       #knobWidth:F
    invoke-virtual/range {v21 .. v21}, Lcom/ecareme/pixwe/media/ResourceTexture;->getHeight()I

    move-result v5

    int-to-float v15, v5

    .line 395
    .local v15, knobHeight:F
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/TimeBar;->getKnobXForPosition(F)F

    move-result v5

    add-float v5, v5, v28

    const/high16 v6, 0x3f00

    mul-float/2addr v6, v9

    sub-float v11, v5, v6

    invoke-virtual/range {p1 .. p1}, Lcom/ecareme/pixwe/media/RenderView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float v12, v5, v15

    const/4 v13, 0x0

    move-object/from16 v10, p1

    move v14, v9

    invoke-virtual/range {v10 .. v15}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(FFFFF)V

    .line 399
    .end local v9           #knobWidth:F
    .end local v15           #knobHeight:F
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mInDrag:Z

    move v5, v0

    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mAnimTextAlpha:F

    move v5, v0

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 400
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/ecareme/pixwe/media/TimeBar;->getAnchorMarker()Lcom/ecareme/pixwe/media/TimeBar$Marker;

    move-result-object v16

    .line 401
    .local v16, anchor:Lcom/ecareme/pixwe/media/TimeBar$Marker;
    if-eqz v16, :cond_0

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mMonthLabels:[Lcom/ecareme/pixwe/media/StringTexture;

    move-object v5, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/ecareme/pixwe/media/TimeBar$Marker;->month:I

    move v6, v0

    aget-object v23, v5, v6

    .line 403
    .local v23, month:Lcom/ecareme/pixwe/media/Texture;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mOpaqueDayLabels:[Lcom/ecareme/pixwe/media/StringTexture;

    move-object v5, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/ecareme/pixwe/media/TimeBar$Marker;->day:I

    move v6, v0

    aget-object v19, v5, v6

    .line 404
    .local v19, day:Lcom/ecareme/pixwe/media/Texture;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/ecareme/pixwe/media/TimeBar$Marker;->year:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/TimeBar;->getYearLabel(I)Lcom/ecareme/pixwe/media/StringTexture;

    move-result-object v32

    .line 405
    .local v32, year:Lcom/ecareme/pixwe/media/Texture;
    const/16 v29, 0x1

    .line 406
    .local v29, validDate:Z
    move-object/from16 v0, v16

    iget v0, v0, Lcom/ecareme/pixwe/media/TimeBar$Marker;->year:I

    move v5, v0

    const/16 v6, 0x7b2

    if-gt v5, v6, :cond_5

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mDateUnknown:Lcom/ecareme/pixwe/media/StringTexture;

    move-object/from16 v23, v0

    .line 408
    const/16 v19, 0x0

    .line 409
    const/16 v32, 0x0

    .line 410
    const/16 v29, 0x0

    .line 412
    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->loadTexture(Lcom/ecareme/pixwe/media/Texture;)V

    .line 413
    if-eqz v29, :cond_6

    .line 414
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->loadTexture(Lcom/ecareme/pixwe/media/Texture;)V

    .line 415
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->loadTexture(Lcom/ecareme/pixwe/media/Texture;)V

    .line 417
    :cond_6
    const/16 v24, 0x46

    .line 418
    .local v24, numPixelsBufferX:I
    invoke-virtual/range {v23 .. v23}, Lcom/ecareme/pixwe/media/Texture;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 419
    if-eqz v29, :cond_b

    invoke-virtual/range {v19 .. v19}, Lcom/ecareme/pixwe/media/Texture;->getWidth()I

    move-result v6

    invoke-virtual/range {v32 .. v32}, Lcom/ecareme/pixwe/media/Texture;->getWidth()I

    move-result v7

    .end local v7           #originY:F
    add-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x4120

    sget v8, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 418
    :goto_2
    add-float v20, v5, v6

    .line 420
    .local v20, expectedWidth:F
    move/from16 v0, v24

    int-to-float v0, v0

    move v5, v0

    sget v6, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v5, v6

    add-float v5, v5, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mBackgroundRect:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_7

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mBackgroundRect:Landroid/graphics/Rect;

    move-object v5, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    sget v7, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v6, v7

    add-float v6, v6, v20

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mBackgroundRect:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual/range {v23 .. v23}, Lcom/ecareme/pixwe/media/Texture;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x41a0

    sget v8, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 424
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mBackgroundRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mBackgroundRect:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 425
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 424
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 426
    .local v17, bitmap:Landroid/graphics/Bitmap;
    new-instance v18, Landroid/graphics/Canvas;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Canvas;-><init>()V

    .line 427
    .local v18, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mBackground:Landroid/graphics/NinePatch;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mBackgroundRect:Landroid/graphics/Rect;

    move-object v6, v0

    sget-object v7, Lcom/ecareme/pixwe/media/TimeBar;->SRC_PAINT:Landroid/graphics/Paint;

    move-object v0, v5

    move-object/from16 v1, v18

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 429
    new-instance v5, Lcom/ecareme/pixwe/media/BitmapTexture;

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ecareme/pixwe/media/TimeBar;->mBackgroundTexture:Lcom/ecareme/pixwe/media/BitmapTexture;

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mBackgroundTexture:Lcom/ecareme/pixwe/media/BitmapTexture;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->loadTexture(Lcom/ecareme/pixwe/media/Texture;)V

    .line 431
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    .end local v17           #bitmap:Landroid/graphics/Bitmap;
    .end local v18           #canvas:Landroid/graphics/Canvas;
    :cond_7
    :goto_3
    const/16 v5, 0x2300

    const/16 v6, 0x2200

    const/high16 v7, 0x4604

    move-object/from16 v0, p2

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 437
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mAnimTextAlpha:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mAnimTextAlpha:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mAnimTextAlpha:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mAnimTextAlpha:F

    move v8, v0

    move-object/from16 v0, p2

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 438
    invoke-virtual/range {p1 .. p1}, Lcom/ecareme/pixwe/media/RenderView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v5, v20

    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    sget v7, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float v30, v5, v6

    .line 439
    .local v30, x:F
    invoke-virtual/range {p1 .. p1}, Lcom/ecareme/pixwe/media/RenderView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x4120

    sget v7, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    const/high16 v6, 0x3f00

    mul-float v31, v5, v6

    .line 440
    .local v31, y:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mBackgroundTexture:Lcom/ecareme/pixwe/media/BitmapTexture;

    move-object v5, v0

    if-eqz v5, :cond_8

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mBackgroundTexture:Lcom/ecareme/pixwe/media/BitmapTexture;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(Lcom/ecareme/pixwe/media/Texture;FF)V

    .line 443
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/ecareme/pixwe/media/RenderView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f00

    mul-float v31, v5, v6

    .line 444
    invoke-virtual/range {p1 .. p1}, Lcom/ecareme/pixwe/media/RenderView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v5, v20

    const/high16 v6, 0x4000

    div-float v30, v5, v6

    .line 445
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(Lcom/ecareme/pixwe/media/Texture;FF)V

    .line 446
    if-eqz v29, :cond_9

    .line 447
    invoke-virtual/range {v23 .. v23}, Lcom/ecareme/pixwe/media/Texture;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x4040

    sget v7, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-float v30, v30, v5

    .line 448
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(Lcom/ecareme/pixwe/media/Texture;FF)V

    .line 449
    invoke-virtual/range {v19 .. v19}, Lcom/ecareme/pixwe/media/Texture;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40e0

    sget v7, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-float v30, v30, v5

    .line 450
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/ecareme/pixwe/media/RenderView;->draw2D(Lcom/ecareme/pixwe/media/Texture;FF)V

    .line 452
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/TimeBar;->mAnimTextAlpha:F

    move v5, v0

    const/high16 v6, 0x3f80

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_a

    .line 453
    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f80

    move-object/from16 v0, p2

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 455
    :cond_a
    const/16 v5, 0x2300

    const/16 v6, 0x2200

    const v7, 0x45f00800

    move-object/from16 v0, p2

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    goto/16 :goto_1

    .line 419
    .end local v20           #expectedWidth:F
    .end local v30           #x:F
    .end local v31           #y:F
    .restart local v7       #originY:F
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 432
    .end local v7           #originY:F
    .restart local v20       #expectedWidth:F
    :catch_0
    move-exception v5

    goto/16 :goto_3
.end method

.method public setFeed(Lcom/ecareme/pixwe/media/MediaFeed;IZ)V
    .locals 1
    .parameter "feed"
    .parameter "state"
    .parameter "needsLayout"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mFeed:Lcom/ecareme/pixwe/media/MediaFeed;

    .line 118
    iput p2, p0, Lcom/ecareme/pixwe/media/TimeBar;->mState:I

    .line 119
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/TimeBar;->layout()V

    .line 120
    if-eqz p3, :cond_0

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/ecareme/pixwe/media/TimeBar;->mPosition:F

    .line 122
    iget v0, p0, Lcom/ecareme/pixwe/media/TimeBar;->mPosition:F

    invoke-direct {p0, v0}, Lcom/ecareme/pixwe/media/TimeBar;->getScrollForPosition(F)F

    move-result v0

    iput v0, p0, Lcom/ecareme/pixwe/media/TimeBar;->mScroll:F

    .line 124
    :cond_0
    return-void
.end method

.method public setItem(Lcom/ecareme/pixwe/media/MediaItem;)V
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    .line 178
    iget-object v2, p0, Lcom/ecareme/pixwe/media/TimeBar;->mTracker:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ecareme/pixwe/media/TimeBar$Marker;

    .line 179
    .local v0, marker:Lcom/ecareme/pixwe/media/TimeBar$Marker;
    if-eqz v0, :cond_0

    .line 180
    iget v2, p0, Lcom/ecareme/pixwe/media/TimeBar;->mTotalWidth:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    move v1, v4

    .line 181
    .local v1, markerX:F
    :goto_0
    const/high16 v2, 0x3f80

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/ecareme/pixwe/media/TimeBar;->mPosition:F

    .line 182
    iget v2, p0, Lcom/ecareme/pixwe/media/TimeBar;->mPosition:F

    invoke-direct {p0, v2}, Lcom/ecareme/pixwe/media/TimeBar;->getScrollForPosition(F)F

    move-result v2

    iput v2, p0, Lcom/ecareme/pixwe/media/TimeBar;->mScroll:F

    .line 184
    .end local v1           #markerX:F
    :cond_0
    return-void

    .line 180
    :cond_1
    iget v2, v0, Lcom/ecareme/pixwe/media/TimeBar$Marker;->x:F

    iget v3, p0, Lcom/ecareme/pixwe/media/TimeBar;->mTotalWidth:F

    div-float/2addr v2, v3

    move v1, v2

    goto :goto_0
.end method

.method public setListener(Lcom/ecareme/pixwe/media/TimeBar$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/ecareme/pixwe/media/TimeBar;->mListener:Lcom/ecareme/pixwe/media/TimeBar$Listener;

    .line 114
    return-void
.end method

.method public update(Lcom/ecareme/pixwe/media/RenderView;F)Z
    .locals 10
    .parameter "view"
    .parameter "dt"

    .prologue
    const-wide/high16 v8, 0x4000

    const/high16 v7, 0x3f80

    .line 349
    const/high16 v5, 0x4120

    mul-float/2addr v5, p2

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 350
    .local v2, ratio:F
    sub-float v1, v7, v2

    .line 351
    .local v1, invRatio:F
    iget v5, p0, Lcom/ecareme/pixwe/media/TimeBar;->mPosition:F

    mul-float/2addr v5, v2

    iget v6, p0, Lcom/ecareme/pixwe/media/TimeBar;->mPositionAnim:F

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/ecareme/pixwe/media/TimeBar;->mPositionAnim:F

    .line 352
    iget v5, p0, Lcom/ecareme/pixwe/media/TimeBar;->mScroll:F

    mul-float/2addr v5, v2

    iget v6, p0, Lcom/ecareme/pixwe/media/TimeBar;->mScrollAnim:F

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/ecareme/pixwe/media/TimeBar;->mScrollAnim:F

    .line 354
    iget-boolean v5, p0, Lcom/ecareme/pixwe/media/TimeBar;->mInDrag:Z

    if-eqz v5, :cond_2

    .line 355
    iget v5, p0, Lcom/ecareme/pixwe/media/TimeBar;->mPosition:F

    invoke-direct {p0, v5}, Lcom/ecareme/pixwe/media/TimeBar;->getKnobXForPosition(F)F

    move-result v5

    iget v6, p0, Lcom/ecareme/pixwe/media/TimeBar;->mScrollAnim:F

    sub-float v4, v5, v6

    .line 357
    .local v4, x:F
    const/high16 v5, 0x42c8

    sget v6, Lcom/ecareme/pixwe/app/App;->PIXEL_DENSITY:F

    mul-float v0, v5, v6

    .line 358
    .local v0, autoScrollMargin:F
    cmpg-float v5, v4, v0

    if-gez v5, :cond_0

    .line 359
    div-float v5, v4, v0

    sub-float v5, v7, v5

    float-to-double v5, v5

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v5, v5

    neg-float v3, v5

    .line 365
    .local v3, velocity:F
    :goto_0
    iget v5, p0, Lcom/ecareme/pixwe/media/TimeBar;->mScroll:F

    const/high16 v6, 0x43c8

    mul-float/2addr v6, v3

    mul-float/2addr v6, p2

    add-float/2addr v5, v6

    iput v5, p0, Lcom/ecareme/pixwe/media/TimeBar;->mScroll:F

    .line 366
    iget v5, p0, Lcom/ecareme/pixwe/media/TimeBar;->mDragX:F

    iget v6, p0, Lcom/ecareme/pixwe/media/TimeBar;->mScroll:F

    add-float/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/ecareme/pixwe/media/TimeBar;->getPositionForKnobX(F)F

    move-result v5

    iput v5, p0, Lcom/ecareme/pixwe/media/TimeBar;->mPosition:F

    .line 367
    iput v7, p0, Lcom/ecareme/pixwe/media/TimeBar;->mTextAlpha:F

    .line 371
    .end local v0           #autoScrollMargin:F
    .end local v3           #velocity:F
    .end local v4           #x:F
    :goto_1
    iget v5, p0, Lcom/ecareme/pixwe/media/TimeBar;->mAnimTextAlpha:F

    iget v6, p0, Lcom/ecareme/pixwe/media/TimeBar;->mTextAlpha:F

    invoke-static {v5, v6, p2}, Lcom/ecareme/pixwe/media/FloatUtils;->animate(FFF)F

    move-result v5

    iput v5, p0, Lcom/ecareme/pixwe/media/TimeBar;->mAnimTextAlpha:F

    .line 372
    iget v5, p0, Lcom/ecareme/pixwe/media/TimeBar;->mAnimTextAlpha:F

    iget v6, p0, Lcom/ecareme/pixwe/media/TimeBar;->mTextAlpha:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_2
    return v5

    .line 360
    .restart local v0       #autoScrollMargin:F
    .restart local v4       #x:F
    :cond_0
    iget v5, p0, Lcom/ecareme/pixwe/media/TimeBar;->mWidth:F

    sub-float/2addr v5, v0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1

    .line 361
    iget v5, p0, Lcom/ecareme/pixwe/media/TimeBar;->mWidth:F

    sub-float/2addr v5, v4

    div-float/2addr v5, v0

    sub-float v5, v7, v5

    float-to-double v5, v5

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-float v3, v5

    .restart local v3       #velocity:F
    goto :goto_0

    .line 363
    .end local v3           #velocity:F
    :cond_1
    const/4 v3, 0x0

    .restart local v3       #velocity:F
    goto :goto_0

    .line 369
    .end local v0           #autoScrollMargin:F
    .end local v3           #velocity:F
    .end local v4           #x:F
    :cond_2
    const/4 v5, 0x0

    iput v5, p0, Lcom/ecareme/pixwe/media/TimeBar;->mTextAlpha:F

    goto :goto_1

    .line 372
    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method
