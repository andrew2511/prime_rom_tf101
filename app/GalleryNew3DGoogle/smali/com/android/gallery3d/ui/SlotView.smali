.class public Lcom/android/gallery3d/ui/SlotView;
.super Lcom/android/gallery3d/ui/GLView;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/ui/SlotView$1;,
        Lcom/android/gallery3d/ui/SlotView$MyGestureListener;,
        Lcom/android/gallery3d/ui/SlotView$Layout;,
        Lcom/android/gallery3d/ui/SlotView$ItemEntry;,
        Lcom/android/gallery3d/ui/SlotView$MyAnimation;,
        Lcom/android/gallery3d/ui/SlotView$SimpleListener;,
        Lcom/android/gallery3d/ui/SlotView$Listener;
    }
.end annotation


# instance fields
.field private mAnimation:Lcom/android/gallery3d/ui/SlotView$MyAnimation;

.field private mCurrentItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/ui/SlotView$ItemEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mDownInScrolling:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field public mItemList:Lcom/android/gallery3d/util/LinkedNode$List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery3d/util/LinkedNode$List",
            "<",
            "Lcom/android/gallery3d/ui/SlotView$ItemEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/gallery3d/ui/DisplayItem;",
            "Lcom/android/gallery3d/ui/SlotView$ItemEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

.field private mListener:Lcom/android/gallery3d/ui/SlotView$Listener;

.field private mMoreAnimation:Z

.field private mNextItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/ui/SlotView$ItemEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mOverscrollEffect:I

.field private final mPaper:Lcom/android/gallery3d/ui/Paper;

.field private mPositions:Lcom/android/gallery3d/ui/PositionProvider;

.field private final mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

.field private mStartIndex:I

.field private final mTempPosition:Lcom/android/gallery3d/ui/PositionRepository$Position;

.field private mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLView;-><init>()V

    .line 55
    new-instance v0, Lcom/android/gallery3d/ui/Paper;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/Paper;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mItems:Ljava/util/HashMap;

    .line 64
    invoke-static {}, Lcom/android/gallery3d/util/LinkedNode;->newList()Lcom/android/gallery3d/util/LinkedNode$List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mItemList:Lcom/android/gallery3d/util/LinkedNode$List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mCurrentItems:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mNextItems:Ljava/util/ArrayList;

    .line 70
    iput-boolean v1, p0, Lcom/android/gallery3d/ui/SlotView;->mMoreAnimation:Z

    .line 71
    iput-object v2, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$MyAnimation;

    .line 72
    new-instance v0, Lcom/android/gallery3d/ui/PositionRepository$Position;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/PositionRepository$Position;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mTempPosition:Lcom/android/gallery3d/ui/PositionRepository$Position;

    .line 73
    new-instance v0, Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/SlotView$Layout;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/SlotView;->mStartIndex:I

    .line 79
    iput v1, p0, Lcom/android/gallery3d/ui/SlotView;->mOverscrollEffect:I

    .line 86
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/ui/SlotView$MyGestureListener;-><init>(Lcom/android/gallery3d/ui/SlotView;Lcom/android/gallery3d/ui/SlotView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 88
    new-instance v0, Lcom/android/gallery3d/ui/ScrollerHelper;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/ScrollerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    .line 89
    return-void
.end method

.method static synthetic access$200(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Layout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/ScrollerHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/UserInteractionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/gallery3d/ui/SlotView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView;->mOverscrollEffect:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/Paper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/gallery3d/ui/SlotView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView;->mDownInScrolling:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/gallery3d/ui/SlotView;)Lcom/android/gallery3d/ui/SlotView$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;

    return-object v0
.end method

.method private renderItem(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/SlotView$ItemEntry;FIZ)Z
    .locals 8
    .parameter "canvas"
    .parameter "entry"
    .parameter "interpolate"
    .parameter "pass"
    .parameter "paperActive"

    .prologue
    const/4 v7, 0x0

    .line 303
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)I

    .line 304
    iget-object v1, p2, Lcom/android/gallery3d/ui/SlotView$ItemEntry;->target:Lcom/android/gallery3d/ui/PositionRepository$Position;

    .line 305
    .local v1, position:Lcom/android/gallery3d/ui/PositionRepository$Position;
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView;->mPositions:Lcom/android/gallery3d/ui/PositionProvider;

    if-eqz v3, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mTempPosition:Lcom/android/gallery3d/ui/PositionRepository$Position;

    .line 307
    iget-object v3, p2, Lcom/android/gallery3d/ui/SlotView$ItemEntry;->target:Lcom/android/gallery3d/ui/PositionRepository$Position;

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/ui/PositionRepository$Position;->set(Lcom/android/gallery3d/ui/PositionRepository$Position;)V

    .line 308
    iget v3, v1, Lcom/android/gallery3d/ui/PositionRepository$Position;->x:F

    iget v4, p0, Lcom/android/gallery3d/ui/SlotView;->mScrollX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v1, Lcom/android/gallery3d/ui/PositionRepository$Position;->x:F

    .line 309
    iget v3, v1, Lcom/android/gallery3d/ui/PositionRepository$Position;->y:F

    iget v4, p0, Lcom/android/gallery3d/ui/SlotView;->mScrollY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v1, Lcom/android/gallery3d/ui/PositionRepository$Position;->y:F

    .line 310
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView;->mPositions:Lcom/android/gallery3d/ui/PositionProvider;

    iget-object v4, p2, Lcom/android/gallery3d/ui/SlotView$ItemEntry;->item:Lcom/android/gallery3d/ui/DisplayItem;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/DisplayItem;->getIdentity()J

    move-result-wide v4

    invoke-interface {v3, v4, v5, v1}, Lcom/android/gallery3d/ui/PositionProvider;->getPosition(JLcom/android/gallery3d/ui/PositionRepository$Position;)Lcom/android/gallery3d/ui/PositionRepository$Position;

    move-result-object v2

    .line 312
    .local v2, source:Lcom/android/gallery3d/ui/PositionRepository$Position;
    iget v3, v2, Lcom/android/gallery3d/ui/PositionRepository$Position;->x:F

    iget v4, p0, Lcom/android/gallery3d/ui/SlotView;->mScrollX:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Lcom/android/gallery3d/ui/PositionRepository$Position;->x:F

    .line 313
    iget v3, v2, Lcom/android/gallery3d/ui/PositionRepository$Position;->y:F

    iget v4, p0, Lcom/android/gallery3d/ui/SlotView;->mScrollY:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Lcom/android/gallery3d/ui/PositionRepository$Position;->y:F

    .line 314
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mTempPosition:Lcom/android/gallery3d/ui/PositionRepository$Position;

    .line 315
    iget-object v3, p2, Lcom/android/gallery3d/ui/SlotView$ItemEntry;->target:Lcom/android/gallery3d/ui/PositionRepository$Position;

    invoke-static {v2, v3, v1, p3}, Lcom/android/gallery3d/ui/PositionRepository$Position;->interpolate(Lcom/android/gallery3d/ui/PositionRepository$Position;Lcom/android/gallery3d/ui/PositionRepository$Position;Lcom/android/gallery3d/ui/PositionRepository$Position;F)V

    .line 318
    .end local v2           #source:Lcom/android/gallery3d/ui/PositionRepository$Position;
    :cond_0
    iget v3, v1, Lcom/android/gallery3d/ui/PositionRepository$Position;->alpha:F

    invoke-interface {p1, v3}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyAlpha(F)V

    .line 319
    if-eqz p5, :cond_1

    .line 320
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    iget-object v4, p2, Lcom/android/gallery3d/ui/SlotView$ItemEntry;->base:Lcom/android/gallery3d/ui/PositionRepository$Position;

    iget v5, p0, Lcom/android/gallery3d/ui/SlotView;->mScrollX:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/gallery3d/ui/SlotView;->mScrollY:I

    int-to-float v6, v6

    invoke-virtual {v3, v1, v4, v5, v6}, Lcom/android/gallery3d/ui/Paper;->getTransform(Lcom/android/gallery3d/ui/PositionRepository$Position;Lcom/android/gallery3d/ui/PositionRepository$Position;FF)[F

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Lcom/android/gallery3d/ui/GLCanvas;->multiplyMatrix([FI)V

    .line 325
    :goto_0
    iget v3, v1, Lcom/android/gallery3d/ui/PositionRepository$Position;->theta:F

    const/high16 v4, 0x3f80

    invoke-interface {p1, v3, v7, v7, v4}, Lcom/android/gallery3d/ui/GLCanvas;->rotate(FFFF)V

    .line 326
    iget-object v3, p2, Lcom/android/gallery3d/ui/SlotView$ItemEntry;->item:Lcom/android/gallery3d/ui/DisplayItem;

    invoke-virtual {v3, p1, p4}, Lcom/android/gallery3d/ui/DisplayItem;->render(Lcom/android/gallery3d/ui/GLCanvas;I)Z

    move-result v0

    .line 327
    .local v0, more:Z
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 328
    return v0

    .line 323
    .end local v0           #more:Z
    :cond_1
    iget v3, v1, Lcom/android/gallery3d/ui/PositionRepository$Position;->x:F

    iget v4, v1, Lcom/android/gallery3d/ui/PositionRepository$Position;->y:F

    iget v5, v1, Lcom/android/gallery3d/ui/PositionRepository$Position;->z:F

    invoke-interface {p1, v3, v4, v5}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FFF)V

    goto :goto_0
.end method

.method private updateScrollPosition(IZ)V
    .locals 1
    .parameter "position"
    .parameter "force"

    .prologue
    .line 182
    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScrollX:I

    if-ne p1, v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 184
    :cond_0
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView;->mScrollX:I

    .line 188
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/SlotView$Layout;->setScrollPosition(I)V

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/SlotView;->onScrollPositionChanged(I)V

    goto :goto_0
.end method


# virtual methods
.method public addComponent(Lcom/android/gallery3d/ui/GLView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getScrollX()I
    .locals 1

    .prologue
    .line 625
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .prologue
    .line 629
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScrollY:I

    return v0
.end method

.method public getSlotRect(I)Landroid/graphics/Rect;
    .locals 1
    .parameter "slotIndex"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleEnd()I
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->getVisibleEnd()I

    move-result v0

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->getVisibleStart()I

    move-result v0

    return v0
.end method

.method public makeSlotVisible(I)V
    .locals 8
    .parameter "index"

    .prologue
    .line 104
    iget-object v7, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v7, p1}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 105
    .local v1, rect:Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/gallery3d/ui/SlotView;->mScrollX:I

    .line 106
    .local v4, visibleBegin:I
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->getWidth()I

    move-result v6

    .line 107
    .local v6, visibleLength:I
    add-int v5, v4, v6

    .line 108
    .local v5, visibleEnd:I
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 109
    .local v2, slotBegin:I
    iget v3, v1, Landroid/graphics/Rect;->right:I

    .line 111
    .local v3, slotEnd:I
    move v0, v4

    .line 112
    .local v0, position:I
    sub-int v7, v3, v2

    if-ge v6, v7, :cond_1

    .line 113
    move v0, v4

    .line 120
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SlotView;->setScrollPosition(I)V

    .line 121
    return-void

    .line 114
    :cond_1
    if-ge v2, v4, :cond_2

    .line 115
    move v0, v2

    goto :goto_0

    .line 116
    :cond_2
    if-le v3, v5, :cond_0

    .line 117
    sub-int v0, v3, v6

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changeSize"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 149
    if-nez p1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/SlotView$Layout;->setSize(II)V

    .line 151
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/ui/SlotView;->onLayoutChanged(II)V

    .line 152
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView;->mOverscrollEffect:I

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/Paper;->setSize(II)V

    goto :goto_0
.end method

.method protected onLayoutChanged(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 158
    return-void
.end method

.method protected onScrollPositionChanged(I)V
    .locals 2
    .parameter "newPosition"

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v0

    .line 194
    .local v0, limit:I
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;

    invoke-interface {v1, p1, v0}, Lcom/android/gallery3d/ui/SlotView$Listener;->onScrollPositionChanged(II)V

    .line 195
    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 214
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/UserInteractionListener;->onUserInteraction()V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 216
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 222
    :goto_0
    return v1

    .line 218
    :pswitch_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ScrollerHelper;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView;->mDownInScrolling:Z

    .line 219
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ScrollerHelper;->forceFinished()V

    goto :goto_0

    .line 218
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 216
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public putDisplayItem(Lcom/android/gallery3d/ui/PositionRepository$Position;Lcom/android/gallery3d/ui/PositionRepository$Position;Lcom/android/gallery3d/ui/DisplayItem;)V
    .locals 2
    .parameter "target"
    .parameter "base"
    .parameter "item"

    .prologue
    .line 198
    new-instance v0, Lcom/android/gallery3d/ui/SlotView$ItemEntry;

    invoke-direct {v0, p3, p1, p2}, Lcom/android/gallery3d/ui/SlotView$ItemEntry;-><init>(Lcom/android/gallery3d/ui/DisplayItem;Lcom/android/gallery3d/ui/PositionRepository$Position;Lcom/android/gallery3d/ui/PositionRepository$Position;)V

    .line 199
    .local v0, entry:Lcom/android/gallery3d/ui/SlotView$ItemEntry;
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mItemList:Lcom/android/gallery3d/util/LinkedNode$List;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/LinkedNode$List;->insertLast(Lcom/android/gallery3d/util/LinkedNode;)V

    .line 200
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method public removeDisplayItem(Lcom/android/gallery3d/ui/DisplayItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 204
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/SlotView$ItemEntry;

    .line 205
    .local v0, entry:Lcom/android/gallery3d/ui/SlotView$ItemEntry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView$ItemEntry;->remove()V

    .line 206
    :cond_0
    return-void
.end method

.method protected render(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 240
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->save(I)I

    .line 241
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->getHeight()I

    move-result v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/gallery3d/ui/GLCanvas;->clipRect(IIII)Z

    .line 242
    invoke-super {p0, p1}, Lcom/android/gallery3d/ui/GLView;->render(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 244
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->currentAnimationTimeMillis()J

    move-result-wide v6

    .line 245
    .local v6, currentTimeMillis:J
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0, v6, v7}, Lcom/android/gallery3d/ui/ScrollerHelper;->advanceAnimation(J)Z

    move-result v10

    .line 246
    .local v10, more:Z
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView;->mOverscrollEffect:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mPaper:Lcom/android/gallery3d/ui/Paper;

    invoke-virtual {v0, v6, v7}, Lcom/android/gallery3d/ui/Paper;->advanceAnimation(J)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v5, v0

    .line 248
    .local v5, paperActive:Z
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ScrollerHelper;->getPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/SlotView;->updateScrollPosition(IZ)V

    .line 249
    const/high16 v3, 0x3f80

    .line 250
    .local v3, interpolate:F
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$MyAnimation;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$MyAnimation;

    invoke-virtual {v0, v6, v7}, Lcom/android/gallery3d/ui/SlotView$MyAnimation;->calculate(J)Z

    move-result v0

    or-int/2addr v10, v0

    .line 252
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$MyAnimation;

    iget v3, v0, Lcom/android/gallery3d/ui/SlotView$MyAnimation;->value:F

    .line 255
    :cond_0
    or-int/2addr v10, v5

    .line 258
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScrollX:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FFF)V

    .line 263
    iget-object v9, p0, Lcom/android/gallery3d/ui/SlotView;->mItemList:Lcom/android/gallery3d/util/LinkedNode$List;

    .line 264
    .local v9, list:Lcom/android/gallery3d/util/LinkedNode$List;,"Lcom/android/gallery3d/util/LinkedNode$List<Lcom/android/gallery3d/ui/SlotView$ItemEntry;>;"
    invoke-virtual {v9}, Lcom/android/gallery3d/util/LinkedNode$List;->getLast()Lcom/android/gallery3d/util/LinkedNode;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/ui/SlotView$ItemEntry;

    .local v2, entry:Lcom/android/gallery3d/ui/SlotView$ItemEntry;
    :goto_1
    if-eqz v2, :cond_3

    .line 265
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/SlotView;->renderItem(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/SlotView$ItemEntry;FIZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mCurrentItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_1
    invoke-virtual {v9, v2}, Lcom/android/gallery3d/util/LinkedNode$List;->previousOf(Lcom/android/gallery3d/util/LinkedNode;)Lcom/android/gallery3d/util/LinkedNode;

    move-result-object v2

    .end local v2           #entry:Lcom/android/gallery3d/ui/SlotView$ItemEntry;
    check-cast v2, Lcom/android/gallery3d/ui/SlotView$ItemEntry;

    .restart local v2       #entry:Lcom/android/gallery3d/ui/SlotView$ItemEntry;
    goto :goto_1

    .line 246
    .end local v2           #entry:Lcom/android/gallery3d/ui/SlotView$ItemEntry;
    .end local v3           #interpolate:F
    .end local v5           #paperActive:Z
    .end local v9           #list:Lcom/android/gallery3d/util/LinkedNode$List;,"Lcom/android/gallery3d/util/LinkedNode$List<Lcom/android/gallery3d/ui/SlotView$ItemEntry;>;"
    :cond_2
    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    .line 271
    .restart local v2       #entry:Lcom/android/gallery3d/ui/SlotView$ItemEntry;
    .restart local v3       #interpolate:F
    .restart local v5       #paperActive:Z
    .restart local v9       #list:Lcom/android/gallery3d/util/LinkedNode$List;,"Lcom/android/gallery3d/util/LinkedNode$List<Lcom/android/gallery3d/ui/SlotView$ItemEntry;>;"
    :cond_3
    const/4 v4, 0x1

    .line 272
    .local v4, pass:I
    :goto_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mCurrentItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 273
    const/4 v8, 0x0

    .local v8, i:I
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mCurrentItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .local v11, n:I
    :goto_3
    if-ge v8, v11, :cond_5

    .line 274
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mCurrentItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #entry:Lcom/android/gallery3d/ui/SlotView$ItemEntry;
    check-cast v2, Lcom/android/gallery3d/ui/SlotView$ItemEntry;

    .restart local v2       #entry:Lcom/android/gallery3d/ui/SlotView$ItemEntry;
    move-object v0, p0

    move-object v1, p1

    .line 275
    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/SlotView;->renderItem(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/SlotView$ItemEntry;FIZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 276
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mNextItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 279
    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mCurrentItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 281
    iget-object v12, p0, Lcom/android/gallery3d/ui/SlotView;->mNextItems:Ljava/util/ArrayList;

    .line 282
    .local v12, tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/ui/SlotView$ItemEntry;>;"
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mCurrentItems:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mNextItems:Ljava/util/ArrayList;

    .line 283
    iput-object v12, p0, Lcom/android/gallery3d/ui/SlotView;->mCurrentItems:Ljava/util/ArrayList;

    .line 284
    add-int/lit8 v4, v4, 0x1

    .line 285
    goto :goto_2

    .line 288
    .end local v8           #i:I
    .end local v11           #n:I
    .end local v12           #tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery3d/ui/SlotView$ItemEntry;>;"
    :cond_6
    iget v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScrollX:I

    int-to-float v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/android/gallery3d/ui/GLCanvas;->translate(FFF)V

    .line 293
    .end local v2           #entry:Lcom/android/gallery3d/ui/SlotView$ItemEntry;
    if-eqz v10, :cond_7

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 294
    :cond_7
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SlotView;->mMoreAnimation:Z

    if-eqz v0, :cond_8

    if-nez v10, :cond_8

    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;

    if-eqz v0, :cond_8

    .line 295
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/UserInteractionListener;->onUserInteractionEnd()V

    .line 297
    :cond_8
    iput-boolean v10, p0, Lcom/android/gallery3d/ui/SlotView;->mMoreAnimation:Z

    .line 298
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->restore()V

    .line 299
    return-void
.end method

.method public savePositions(Lcom/android/gallery3d/ui/PositionRepository;)V
    .locals 5
    .parameter "repository"

    .prologue
    .line 168
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/PositionRepository;->clear()V

    .line 169
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mItemList:Lcom/android/gallery3d/util/LinkedNode$List;

    .line 170
    .local v1, list:Lcom/android/gallery3d/util/LinkedNode$List;,"Lcom/android/gallery3d/util/LinkedNode$List<Lcom/android/gallery3d/ui/SlotView$ItemEntry;>;"
    invoke-virtual {v1}, Lcom/android/gallery3d/util/LinkedNode$List;->getFirst()Lcom/android/gallery3d/util/LinkedNode;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/ui/SlotView$ItemEntry;

    .line 171
    .local v0, entry:Lcom/android/gallery3d/ui/SlotView$ItemEntry;
    new-instance v2, Lcom/android/gallery3d/ui/PositionRepository$Position;

    invoke-direct {v2}, Lcom/android/gallery3d/ui/PositionRepository$Position;-><init>()V

    .line 172
    .local v2, position:Lcom/android/gallery3d/ui/PositionRepository$Position;
    :goto_0
    if-eqz v0, :cond_0

    .line 173
    iget-object v3, v0, Lcom/android/gallery3d/ui/SlotView$ItemEntry;->target:Lcom/android/gallery3d/ui/PositionRepository$Position;

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/PositionRepository$Position;->set(Lcom/android/gallery3d/ui/PositionRepository$Position;)V

    .line 174
    iget v3, v2, Lcom/android/gallery3d/ui/PositionRepository$Position;->x:F

    iget v4, p0, Lcom/android/gallery3d/ui/SlotView;->mScrollX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/android/gallery3d/ui/PositionRepository$Position;->x:F

    .line 175
    iget v3, v2, Lcom/android/gallery3d/ui/PositionRepository$Position;->y:F

    iget v4, p0, Lcom/android/gallery3d/ui/SlotView;->mScrollY:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/android/gallery3d/ui/PositionRepository$Position;->y:F

    .line 176
    iget-object v3, v0, Lcom/android/gallery3d/ui/SlotView$ItemEntry;->item:Lcom/android/gallery3d/ui/DisplayItem;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/DisplayItem;->getIdentity()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lcom/android/gallery3d/ui/PositionRepository;->putPosition(Ljava/lang/Long;Lcom/android/gallery3d/ui/PositionRepository$Position;)V

    .line 177
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/util/LinkedNode$List;->nextOf(Lcom/android/gallery3d/util/LinkedNode;)Lcom/android/gallery3d/util/LinkedNode;

    move-result-object v0

    .end local v0           #entry:Lcom/android/gallery3d/ui/SlotView$ItemEntry;
    check-cast v0, Lcom/android/gallery3d/ui/SlotView$ItemEntry;

    .restart local v0       #entry:Lcom/android/gallery3d/ui/SlotView$ItemEntry;
    goto :goto_0

    .line 179
    :cond_0
    return-void
.end method

.method public setCenterIndex(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 92
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-static {v3}, Lcom/android/gallery3d/ui/SlotView$Layout;->access$100(Lcom/android/gallery3d/ui/SlotView$Layout;)I

    move-result v2

    .line 93
    .local v2, slotCount:I
    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v3, p1}, Lcom/android/gallery3d/ui/SlotView$Layout;->getSlotRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 97
    .local v1, rect:Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 100
    .local v0, position:I
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SlotView;->setScrollPosition(I)V

    goto :goto_0
.end method

.method public setListener(Lcom/android/gallery3d/ui/SlotView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView;->mListener:Lcom/android/gallery3d/ui/SlotView$Listener;

    .line 227
    return-void
.end method

.method public setOverscrollEffect(I)V
    .locals 2
    .parameter "kind"

    .prologue
    const/4 v1, 0x1

    .line 234
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView;->mOverscrollEffect:I

    .line 235
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/ScrollerHelper;->setOverfling(Z)V

    .line 236
    return-void

    .line 235
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setScrollPosition(I)V
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/android/gallery3d/util/Utils;->clamp(III)I

    move-result p1

    .line 125
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mScroller:Lcom/android/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/ScrollerHelper;->setPosition(I)V

    .line 126
    invoke-direct {p0, p1, v1}, Lcom/android/gallery3d/ui/SlotView;->updateScrollPosition(IZ)V

    .line 127
    return-void
.end method

.method public setSlotCount(I)Z
    .locals 3
    .parameter "slotCount"

    .prologue
    const/4 v2, -0x1

    .line 605
    iget-object v1, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/ui/SlotView$Layout;->setSlotCount(I)Z

    move-result v0

    .line 608
    .local v0, changed:Z
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView;->mStartIndex:I

    if-eq v1, v2, :cond_0

    .line 609
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView;->mStartIndex:I

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/SlotView;->setCenterIndex(I)V

    .line 610
    iput v2, p0, Lcom/android/gallery3d/ui/SlotView;->mStartIndex:I

    .line 612
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/ui/SlotView;->mScrollX:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/gallery3d/ui/SlotView;->updateScrollPosition(IZ)V

    .line 613
    return v0
.end method

.method public setSlotGaps(II)V
    .locals 1
    .parameter "horizontalGap"
    .parameter "verticalGap"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/SlotView$Layout;->setSlotGaps(II)V

    .line 135
    return-void
.end method

.method public setSlotSize(II)V
    .locals 1
    .parameter "slotWidth"
    .parameter "slotHeight"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mLayout:Lcom/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0, p1, p2}, Lcom/android/gallery3d/ui/SlotView$Layout;->setSlotSize(II)V

    .line 131
    return-void
.end method

.method public setStartIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 600
    iput p1, p0, Lcom/android/gallery3d/ui/SlotView;->mStartIndex:I

    .line 601
    return-void
.end method

.method public setUserInteractionListener(Lcom/android/gallery3d/ui/UserInteractionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView;->mUIListener:Lcom/android/gallery3d/ui/UserInteractionListener;

    .line 231
    return-void
.end method

.method public startTransition(Lcom/android/gallery3d/ui/PositionProvider;)V
    .locals 1
    .parameter "position"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/gallery3d/ui/SlotView;->mPositions:Lcom/android/gallery3d/ui/PositionProvider;

    .line 162
    new-instance v0, Lcom/android/gallery3d/ui/SlotView$MyAnimation;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/SlotView$MyAnimation;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$MyAnimation;

    .line 163
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mAnimation:Lcom/android/gallery3d/ui/SlotView$MyAnimation;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/SlotView$MyAnimation;->start()V

    .line 164
    iget-object v0, p0, Lcom/android/gallery3d/ui/SlotView;->mItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SlotView;->invalidate()V

    .line 165
    :cond_0
    return-void
.end method
