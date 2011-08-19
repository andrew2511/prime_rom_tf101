.class public Lcom/google/android/common/SwipeySwitcher;
.super Landroid/view/ViewGroup;
.source "SwipeySwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;,
        Lcom/google/android/common/SwipeySwitcher$ViewHolder;,
        Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;,
        Lcom/google/android/common/SwipeySwitcher$Adapter;,
        Lcom/google/android/common/SwipeySwitcher$IViewHolder;,
        Lcom/google/android/common/SwipeySwitcher$ViewRunnable;,
        Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;,
        Lcom/google/android/common/SwipeySwitcher$IMakeView;
    }
.end annotation


# static fields
.field private static final MOVE_THRESHOLD:F = 0.5f

.field private static final VIEW_CACHE_SIZE:I = 0x3

.field static final sOrderLeft:[I

.field static final sOrderRight:[I


# instance fields
.field private mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

.field mAnimateScrollRunnable:Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;

.field private mAnimatingScroll:Z

.field private mCenterOnLayout:Z

.field private mClearAnimatingScroll:Z

.field private mContext:Landroid/content/Context;

.field private mDownX:I

.field private mDragging:Z

.field private mFakes:Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field mLastTouchX:F

.field private mNextSelection:I

.field private mNoSwipeMode:Z

.field private mObserver:Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;

.field private mPlaceholders:Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

.field mRefreshRunnable:Ljava/lang/Runnable;

.field final mReuseCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/common/SwipeySwitcher$IViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mScroller:Landroid/widget/Scroller;

.field private mSelection:I

.field private mTouchSlop:I

.field private mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 627
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/common/SwipeySwitcher;->sOrderLeft:[I

    .line 628
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/common/SwipeySwitcher;->sOrderRight:[I

    return-void

    .line 627
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 628
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 491
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->mCenterOnLayout:Z

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mHandler:Landroid/os/Handler;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->mNoSwipeMode:Z

    .line 136
    new-instance v0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    new-instance v1, Lcom/google/android/common/SwipeySwitcher$1;

    invoke-direct {v1, p0}, Lcom/google/android/common/SwipeySwitcher$1;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;-><init>(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/SwipeySwitcher$IMakeView;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mFakes:Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    .line 142
    new-instance v0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    new-instance v1, Lcom/google/android/common/SwipeySwitcher$2;

    invoke-direct {v1, p0}, Lcom/google/android/common/SwipeySwitcher$2;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;-><init>(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/SwipeySwitcher$IMakeView;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mPlaceholders:Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    .line 581
    new-instance v0, Lcom/google/android/common/SwipeySwitcher$4;

    invoke-direct {v0, p0}, Lcom/google/android/common/SwipeySwitcher$4;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 629
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mReuseCache:Ljava/util/HashMap;

    .line 820
    new-instance v0, Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;

    invoke-direct {v0, p0}, Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mAnimateScrollRunnable:Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;

    .line 492
    invoke-direct {p0, p1}, Lcom/google/android/common/SwipeySwitcher;->initSwipeySwitcher(Landroid/content/Context;)V

    .line 493
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 486
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->mCenterOnLayout:Z

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mHandler:Landroid/os/Handler;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->mNoSwipeMode:Z

    .line 136
    new-instance v0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    new-instance v1, Lcom/google/android/common/SwipeySwitcher$1;

    invoke-direct {v1, p0}, Lcom/google/android/common/SwipeySwitcher$1;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;-><init>(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/SwipeySwitcher$IMakeView;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mFakes:Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    .line 142
    new-instance v0, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    new-instance v1, Lcom/google/android/common/SwipeySwitcher$2;

    invoke-direct {v1, p0}, Lcom/google/android/common/SwipeySwitcher$2;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;-><init>(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/SwipeySwitcher$IMakeView;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mPlaceholders:Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    .line 581
    new-instance v0, Lcom/google/android/common/SwipeySwitcher$4;

    invoke-direct {v0, p0}, Lcom/google/android/common/SwipeySwitcher$4;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 629
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mReuseCache:Ljava/util/HashMap;

    .line 820
    new-instance v0, Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;

    invoke-direct {v0, p0}, Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    iput-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mAnimateScrollRunnable:Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;

    .line 487
    invoke-direct {p0, p1}, Lcom/google/android/common/SwipeySwitcher;->initSwipeySwitcher(Landroid/content/Context;)V

    .line 488
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/common/SwipeySwitcher;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/common/SwipeySwitcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->swapLeftRight()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mPlaceholders:Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/common/SwipeySwitcher;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->mSelection:I

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/common/SwipeySwitcher;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/common/SwipeySwitcher;->wrap(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/google/android/common/SwipeySwitcher;Lcom/google/android/common/SwipeySwitcher$IViewHolder;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/common/SwipeySwitcher;->installView(Lcom/google/android/common/SwipeySwitcher$IViewHolder;IZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/common/SwipeySwitcher;)Landroid/widget/Scroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/google/android/common/SwipeySwitcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/android/common/SwipeySwitcher;->mAnimatingScroll:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/google/android/common/SwipeySwitcher;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/common/SwipeySwitcher;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->mNextSelection:I

    return v0
.end method

.method static synthetic access$1902(Lcom/google/android/common/SwipeySwitcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/android/common/SwipeySwitcher;->mClearAnimatingScroll:Z

    return p1
.end method

.method static synthetic access$202(Lcom/google/android/common/SwipeySwitcher;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/google/android/common/SwipeySwitcher;->mDownX:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/common/SwipeySwitcher;)Lcom/google/android/common/SwipeySwitcher$Adapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/common/SwipeySwitcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->mDragging:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/common/SwipeySwitcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->recenter()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/common/SwipeySwitcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->ensureRight()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/common/SwipeySwitcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->ensureLeft()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/common/SwipeySwitcher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/common/SwipeySwitcher;->recenterAndSelect(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/common/SwipeySwitcher;)[Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    return-object v0
.end method

.method private clearScrollingCaches()V
    .locals 4

    .prologue
    .line 874
    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    array-length v0, v3

    .line 875
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 876
    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aget-object v2, v3, v1

    .line 877
    .local v2, ivh:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    if-eqz v2, :cond_0

    .line 878
    invoke-interface {v2}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->clearScrollingCache()V

    .line 875
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 881
    .end local v2           #ivh:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    :cond_1
    return-void
.end method

.method private createScrollingCaches()V
    .locals 4

    .prologue
    .line 864
    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    array-length v0, v3

    .line 865
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 866
    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aget-object v2, v3, v1

    .line 867
    .local v2, ivh:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    if-eqz v2, :cond_0

    .line 868
    invoke-interface {v2}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->createScrollingCache()V

    .line 865
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 871
    .end local v2           #ivh:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    :cond_1
    return-void
.end method

.method private ensureLeft()V
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    invoke-interface {v0}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mFakes:Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->memberOf(Lcom/google/android/common/SwipeySwitcher$IViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->swapLeftRight()V

    .line 351
    :cond_0
    return-void
.end method

.method private ensureRight()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 355
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    invoke-interface {v0}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getCount()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 356
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mFakes:Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->memberOf(Lcom/google/android/common/SwipeySwitcher$IViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->swapLeftRight()V

    .line 360
    :cond_0
    return-void
.end method

.method private initSwipeySwitcher(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 496
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->makeGestureDetector()Landroid/view/GestureDetector;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 497
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mScroller:Landroid/widget/Scroller;

    .line 498
    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher;->mContext:Landroid/content/Context;

    .line 500
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 501
    .local v0, config:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/common/SwipeySwitcher;->mTouchSlop:I

    .line 502
    return-void
.end method

.method private installView(Lcom/google/android/common/SwipeySwitcher$IViewHolder;IZ)V
    .locals 7
    .parameter "vh"
    .parameter "slot"
    .parameter "duringLayout"

    .prologue
    const/high16 v5, 0x4000

    const/4 v4, -0x1

    .line 545
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v2

    .line 546
    .local v2, mywidth:I
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getHeight()I

    move-result v1

    .line 548
    .local v1, myheight:I
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 551
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-interface {p1}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->get()Landroid/view/View;

    move-result-object v3

    .line 554
    .local v3, v:Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/google/android/common/SwipeySwitcher;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-gez v4, :cond_0

    .line 555
    if-eqz p3, :cond_1

    .line 556
    const/4 v4, 0x1

    invoke-virtual {p0, v3, p2, v0, v4}, Lcom/google/android/common/SwipeySwitcher;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 562
    :cond_0
    :goto_0
    if-eqz p3, :cond_2

    .line 565
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    .line 567
    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 568
    mul-int v4, v2, p2

    const/4 v5, 0x0

    mul-int v6, v2, p2

    add-int/2addr v6, v2

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/view/View;->layout(IIII)V

    .line 574
    :goto_1
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aput-object p1, v4, p2

    .line 575
    return-void

    .line 558
    :cond_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 559
    invoke-virtual {p0, v3, p2}, Lcom/google/android/common/SwipeySwitcher;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 572
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->requestLayout()V

    goto :goto_1
.end method

.method private makeGestureDetector()Landroid/view/GestureDetector;
    .locals 3

    .prologue
    .line 367
    new-instance v0, Lcom/google/android/common/SwipeySwitcher$3;

    invoke-direct {v0, p0}, Lcom/google/android/common/SwipeySwitcher$3;-><init>(Lcom/google/android/common/SwipeySwitcher;)V

    .line 482
    .local v0, listener:Landroid/view/GestureDetector$OnGestureListener;
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    return-object v1
.end method

.method private moveFactor()F
    .locals 5

    .prologue
    .line 884
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v2

    .line 887
    .local v2, width:I
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v3

    sub-int v1, v3, v2

    .line 892
    .local v1, scrollX:I
    int-to-float v3, v1

    int-to-float v4, v2

    div-float v0, v3, v4

    .line 893
    .local v0, moveFactor:F
    return v0
.end method

.method private nextSelection(Z)I
    .locals 2
    .parameter "forward"

    .prologue
    .line 302
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->mSelection:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->mSelection:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private recenter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 276
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 277
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mAnimateScrollRunnable:Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 278
    return-void
.end method

.method private recenterAndSelect(Z)V
    .locals 2
    .parameter "forward"

    .prologue
    .line 322
    const/4 v0, 0x0

    const/16 v1, 0x190

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/common/SwipeySwitcher;->recenterAndSelect(ZLjava/lang/Runnable;I)V

    .line 323
    return-void
.end method

.method private recenterAndSelect(ZLjava/lang/Runnable;I)V
    .locals 7
    .parameter "forward"
    .parameter "onDoneRunnable"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 306
    invoke-direct {p0, p1}, Lcom/google/android/common/SwipeySwitcher;->nextSelection(Z)I

    move-result v6

    .line 307
    .local v6, nextSelection:I
    iput v6, p0, Lcom/google/android/common/SwipeySwitcher;->mNextSelection:I

    .line 308
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mAnimateScrollRunnable:Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;

    iput-object p2, v0, Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;->mOnDoneRunnable:Ljava/lang/Runnable;

    .line 310
    if-nez p1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v3

    neg-int v3, v3

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 313
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mAnimateScrollRunnable:Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 319
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 317
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mAnimateScrollRunnable:Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private swapLeftRight()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 333
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aget-object v0, v1, v3

    .line 334
    .local v0, temp:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aget-object v2, v2, v4

    aput-object v2, v1, v3

    .line 335
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aput-object v0, v1, v4

    .line 337
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->requestLayout()V

    .line 338
    return-void
.end method

.method private wrap(I)I
    .locals 3
    .parameter "x"

    .prologue
    .line 286
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    if-nez v2, :cond_0

    move v1, p1

    .line 298
    .end local p1
    .local v1, x:I
    :goto_0
    return v1

    .line 289
    .end local v1           #x:I
    .restart local p1
    :cond_0
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    invoke-interface {v2}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getCount()I

    move-result v0

    .line 290
    .local v0, count:I
    if-nez v0, :cond_1

    move v1, p1

    .line 291
    .end local p1
    .restart local v1       #x:I
    goto :goto_0

    .line 293
    .end local v1           #x:I
    .restart local p1
    :cond_1
    if-gez p1, :cond_2

    .line 294
    neg-int v2, p1

    rem-int/2addr v2, v0

    sub-int p1, v0, v2

    .line 296
    :cond_2
    rem-int/2addr p1, v0

    move v1, p1

    .line 298
    .end local p1
    .restart local v1       #x:I
    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 150
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 151
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aget-object v1, v2, v0

    .line 152
    .local v1, ivh:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    if-eqz v1, :cond_0

    .line 153
    invoke-interface {v1}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->stop()V

    .line 154
    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 150
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    .end local v1           #ivh:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 855
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 856
    .local v0, focus:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 857
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 859
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public foreachView(Lcom/google/android/common/SwipeySwitcher$ViewRunnable;)V
    .locals 2
    .parameter "vr"

    .prologue
    .line 823
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 824
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 825
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->run(Lcom/google/android/common/SwipeySwitcher$ViewRunnable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 830
    :cond_0
    return-void

    .line 823
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAdapter()Lcom/google/android/common/SwipeySwitcher$Adapter;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 833
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getAdapter()Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 1024
    iget v0, p0, Lcom/google/android/common/SwipeySwitcher;->mNextSelection:I

    invoke-direct {p0, v0}, Lcom/google/android/common/SwipeySwitcher;->wrap(I)I

    move-result v0

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 846
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->get()Landroid/view/View;

    move-result-object v0

    .line 849
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSelectedViewAdjacent(Z)Landroid/view/View;
    .locals 3
    .parameter "forward"

    .prologue
    .line 837
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    :goto_0
    aget-object v0, v1, v2

    .line 838
    .local v0, ivh:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    if-eqz v0, :cond_1

    .line 839
    invoke-interface {v0}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->get()Landroid/view/View;

    move-result-object v1

    .line 841
    :goto_1
    return-object v1

    .line 837
    .end local v0           #ivh:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 841
    .restart local v0       #ivh:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 898
    iget-boolean v3, p0, Lcom/google/android/common/SwipeySwitcher;->mNoSwipeMode:Z

    if-eqz v3, :cond_0

    move v3, v5

    .line 925
    :goto_0
    return v3

    .line 903
    :cond_0
    iget-boolean v3, p0, Lcom/google/android/common/SwipeySwitcher;->mAnimatingScroll:Z

    if-eqz v3, :cond_1

    move v3, v6

    .line 904
    goto :goto_0

    .line 907
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 908
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 925
    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v3, p0, Lcom/google/android/common/SwipeySwitcher;->mDragging:Z

    goto :goto_0

    .line 910
    :pswitch_1
    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 913
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v2, v3

    .line 914
    .local v2, x:I
    iget v3, p0, Lcom/google/android/common/SwipeySwitcher;->mDownX:I

    sub-int v1, v2, v3

    .line 915
    .local v1, deltaX:I
    iget-object v3, p0, Lcom/google/android/common/SwipeySwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 916
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/google/android/common/SwipeySwitcher;->mTouchSlop:I

    if-le v3, v4, :cond_2

    .line 917
    iput v2, p0, Lcom/google/android/common/SwipeySwitcher;->mDownX:I

    .line 918
    iput-boolean v6, p0, Lcom/google/android/common/SwipeySwitcher;->mDragging:Z

    .line 919
    iput-boolean v5, p0, Lcom/google/android/common/SwipeySwitcher;->mCenterOnLayout:Z

    .line 920
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->createScrollingCaches()V

    goto :goto_1

    .line 908
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 632
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v13

    .line 633
    .local v13, mywidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getCount()I

    move-result v20

    move/from16 v6, v20

    .line 635
    .local v6, count:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-object/from16 v20, v0

    if-nez v20, :cond_2

    .line 791
    :cond_0
    :goto_1
    return-void

    .line 633
    .end local v6           #count:I
    :cond_1
    const/16 v20, 0x0

    move/from16 v6, v20

    goto :goto_0

    .line 640
    .restart local v6       #count:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/common/SwipeySwitcher;->mNextSelection:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/common/SwipeySwitcher;->mSelection:I

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mReuseCache:Ljava/util/HashMap;

    move-object v4, v0

    .line 644
    .local v4, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/google/android/common/SwipeySwitcher$IViewHolder;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 645
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    const/16 v20, 0x3

    move v0, v8

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-object/from16 v20, v0

    aget-object v11, v20, v8

    .line 647
    .local v11, ivh:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v21, v20, v8

    .line 649
    if-nez v11, :cond_4

    .line 645
    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 652
    :cond_4
    invoke-interface {v11}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 653
    .local v12, key:Landroid/content/Intent;
    if-eqz v12, :cond_3

    .line 656
    invoke-virtual {v12}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v20

    move-object v0, v4

    move-object/from16 v1, v20

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 669
    .end local v11           #ivh:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    .end local v12           #key:Landroid/content/Intent;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_7

    sget-object v20, Lcom/google/android/common/SwipeySwitcher;->sOrderLeft:[I

    move-object/from16 v14, v20

    .line 670
    .local v14, order:[I
    :goto_4
    const/4 v8, 0x0

    :goto_5
    move-object v0, v14

    array-length v0, v0

    move/from16 v20, v0

    move v0, v8

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    .line 671
    aget v19, v14, v8

    .line 672
    .local v19, viewslot:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/common/SwipeySwitcher;->mSelection:I

    move/from16 v20, v0

    add-int v20, v20, v19

    const/16 v21, 0x1

    sub-int v18, v20, v21

    .line 673
    .local v18, viewPosition:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/common/SwipeySwitcher;->wrap(I)I

    move-result v21

    invoke-interface/range {v20 .. v21}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getIntent(I)Landroid/content/Intent;

    move-result-object v10

    .line 674
    .local v10, intent:Landroid/content/Intent;
    if-nez v10, :cond_8

    .line 670
    :cond_6
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 669
    .end local v10           #intent:Landroid/content/Intent;
    .end local v14           #order:[I
    .end local v18           #viewPosition:I
    .end local v19           #viewslot:I
    :cond_7
    sget-object v20, Lcom/google/android/common/SwipeySwitcher;->sOrderRight:[I

    move-object/from16 v14, v20

    goto :goto_4

    .line 677
    .restart local v10       #intent:Landroid/content/Intent;
    .restart local v14       #order:[I
    .restart local v18       #viewPosition:I
    .restart local v19       #viewslot:I
    :cond_8
    invoke-virtual {v10}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v12

    .line 678
    .local v12, key:Ljava/lang/String;
    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    .line 679
    .restart local v11       #ivh:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    if-eqz v11, :cond_6

    .line 682
    invoke-virtual {v4, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-object/from16 v20, v0

    aput-object v11, v20, v19

    .line 684
    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_6

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-object/from16 v20, v0

    aget-object v20, v20, v19

    invoke-interface/range {v20 .. v20}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->unfocus()V

    goto :goto_6

    .line 691
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #ivh:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    .end local v12           #key:Ljava/lang/String;
    .end local v18           #viewPosition:I
    .end local v19           #viewslot:I
    :cond_9
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v20

    if-lez v20, :cond_a

    .line 692
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 693
    .restart local v12       #key:Ljava/lang/String;
    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    .line 694
    .restart local v11       #ivh:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    invoke-interface {v11}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->stop()V

    goto :goto_7

    .line 703
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #ivh:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    .end local v12           #key:Ljava/lang/String;
    :cond_a
    const/4 v8, -0x1

    :goto_8
    const/16 v20, 0x1

    move v0, v8

    move/from16 v1, v20

    if-gt v0, v1, :cond_14

    .line 704
    add-int/lit8 v15, v8, 0x1

    .line 705
    .local v15, slot:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-object/from16 v20, v0

    aget-object v17, v20, v15

    .line 706
    .local v17, vh:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    if-nez v17, :cond_d

    .line 707
    const/16 v16, 0x0

    .line 709
    .local v16, useFake:Z
    packed-switch v6, :pswitch_data_0

    .line 727
    const/16 v16, 0x0

    .line 730
    :cond_b
    :goto_9
    if-eqz v16, :cond_12

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mFakes:Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->get(Landroid/content/Intent;)Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-result-object v17

    .line 743
    :cond_c
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-object/from16 v20, v0

    add-int/lit8 v21, v8, 0x1

    aput-object v17, v20, v21

    .line 703
    .end local v16           #useFake:Z
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 713
    .restart local v16       #useFake:Z
    :pswitch_0
    if-eqz v8, :cond_e

    const/16 v20, 0x1

    move/from16 v16, v20

    .line 714
    :goto_b
    goto :goto_9

    .line 713
    :cond_e
    const/16 v20, 0x0

    move/from16 v16, v20

    goto :goto_b

    .line 720
    :pswitch_1
    const/16 v20, -0x1

    move v0, v8

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-object v20, v20, v21

    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mFakes:Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->memberOf(Lcom/google/android/common/SwipeySwitcher$IViewHolder;)Z

    move-result v20

    if-nez v20, :cond_f

    const/16 v20, 0x1

    move/from16 v16, v20

    :goto_c
    goto :goto_9

    :cond_f
    const/16 v20, 0x0

    move/from16 v16, v20

    goto :goto_c

    .line 722
    :cond_10
    const/16 v20, 0x1

    move v0, v8

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mFakes:Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->memberOf(Lcom/google/android/common/SwipeySwitcher$IViewHolder;)Z

    move-result v20

    if-nez v20, :cond_11

    const/16 v20, 0x1

    move/from16 v16, v20

    :goto_d
    goto/16 :goto_9

    :cond_11
    const/16 v20, 0x0

    move/from16 v16, v20

    goto :goto_d

    .line 735
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/common/SwipeySwitcher;->mSelection:I

    move/from16 v20, v0

    add-int v20, v20, v8

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/common/SwipeySwitcher;->wrap(I)I

    move-result v18

    .line 736
    .restart local v18       #viewPosition:I
    if-nez v8, :cond_13

    if-lez v6, :cond_13

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getView(ILandroid/view/ViewGroup;)Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-result-object v17

    .line 739
    :cond_13
    if-nez v17, :cond_c

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mPlaceholders:Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getIntent(I)Landroid/content/Intent;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/google/android/common/SwipeySwitcher$SimpleViewCache;->get(Landroid/content/Intent;)Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-result-object v17

    goto/16 :goto_a

    .line 752
    .end local v15           #slot:I
    .end local v16           #useFake:Z
    .end local v17           #vh:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    .end local v18           #viewPosition:I
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/common/SwipeySwitcher;->getChildCount()I

    move-result v20

    const/16 v21, 0x1

    sub-int v8, v20, v21

    :goto_e
    if-ltz v8, :cond_18

    .line 753
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/google/android/common/SwipeySwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 754
    .local v5, child:Landroid/view/View;
    const/4 v7, 0x0

    .line 755
    .local v7, found:Z
    const/4 v15, 0x0

    .restart local v15       #slot:I
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move v0, v15

    move/from16 v1, v20

    if-ge v0, v1, :cond_15

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-object/from16 v20, v0

    aget-object v11, v20, v15

    .line 757
    .restart local v11       #ivh:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    invoke-interface {v11}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->get()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v5

    if-ne v0, v1, :cond_17

    .line 758
    const/4 v7, 0x1

    .line 762
    .end local v11           #ivh:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    :cond_15
    if-nez v7, :cond_16

    .line 763
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/google/android/common/SwipeySwitcher;->removeViewAt(I)V

    .line 752
    :cond_16
    add-int/lit8 v8, v8, -0x1

    goto :goto_e

    .line 755
    .restart local v11       #ivh:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    :cond_17
    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    .line 767
    .end local v5           #child:Landroid/view/View;
    .end local v7           #found:Z
    .end local v11           #ivh:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    .end local v15           #slot:I
    :cond_18
    const/4 v15, 0x0

    .restart local v15       #slot:I
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move v0, v15

    move/from16 v1, v20

    if-ge v0, v1, :cond_19

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-object/from16 v20, v0

    aget-object v11, v20, v15

    .line 769
    .restart local v11       #ivh:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v15

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/common/SwipeySwitcher;->installView(Lcom/google/android/common/SwipeySwitcher$IViewHolder;IZ)V

    .line 767
    add-int/lit8 v15, v15, 0x1

    goto :goto_10

    .line 774
    .end local v11           #ivh:Lcom/google/android/common/SwipeySwitcher$IViewHolder;
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/common/SwipeySwitcher;->mCenterOnLayout:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1a

    .line 775
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move v1, v13

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/android/common/SwipeySwitcher;->scrollTo(II)V

    .line 779
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    if-eqz v20, :cond_1b

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-object v20, v20, v21

    invoke-interface/range {v20 .. v20}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->focus()V

    .line 785
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/common/SwipeySwitcher;->mRefreshRunnable:Ljava/lang/Runnable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 787
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/common/SwipeySwitcher;->mClearAnimatingScroll:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 788
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/common/SwipeySwitcher;->mAnimatingScroll:Z

    .line 789
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/common/SwipeySwitcher;->mClearAnimatingScroll:Z

    goto/16 :goto_1

    .line 709
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v7, 0x4000

    .line 519
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 520
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 521
    .local v6, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 522
    .local v4, heightSpecSize:I
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getChildCount()I

    move-result v1

    .line 523
    .local v1, childCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 524
    invoke-virtual {p0, v5}, Lcom/google/android/common/SwipeySwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 526
    .local v0, child:Landroid/view/View;
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 528
    .local v2, childWidthMeasureSpec:I
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 531
    .local v3, childheightMeasureSpec:I
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 523
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 533
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childWidthMeasureSpec:I
    .end local v3           #childheightMeasureSpec:I
    :cond_0
    invoke-virtual {p0, v6, v4}, Lcom/google/android/common/SwipeySwitcher;->setMeasuredDimension(II)V

    .line 534
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    const/high16 v8, 0x3f00

    const/high16 v6, -0x4100

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 930
    iget-boolean v4, p0, Lcom/google/android/common/SwipeySwitcher;->mNoSwipeMode:Z

    if-eqz v4, :cond_0

    move v4, v5

    .line 997
    :goto_0
    return v4

    .line 937
    :cond_0
    iget-boolean v4, p0, Lcom/google/android/common/SwipeySwitcher;->mAnimatingScroll:Z

    if-eqz v4, :cond_1

    move v4, v7

    .line 938
    goto :goto_0

    .line 941
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 942
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    move v4, v7

    .line 997
    goto :goto_0

    .line 944
    :pswitch_0
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 945
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/google/android/common/SwipeySwitcher;->mDownX:I

    .line 946
    iput-boolean v7, p0, Lcom/google/android/common/SwipeySwitcher;->mDragging:Z

    .line 947
    iput-boolean v5, p0, Lcom/google/android/common/SwipeySwitcher;->mCenterOnLayout:Z

    .line 948
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->createScrollingCaches()V

    goto :goto_1

    .line 951
    :pswitch_1
    iget-boolean v4, p0, Lcom/google/android/common/SwipeySwitcher;->mDragging:Z

    if-eqz v4, :cond_2

    .line 952
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 954
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher;->mObserver:Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;

    if-eqz v4, :cond_2

    .line 955
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->moveFactor()F

    move-result v3

    .line 961
    .local v3, moveFactor:F
    cmpl-float v4, v3, v8

    if-gtz v4, :cond_3

    cmpg-float v4, v3, v6

    if-gez v4, :cond_4

    :cond_3
    move v1, v7

    .line 963
    .local v1, commit:Z
    :goto_2
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher;->mObserver:Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x3f80

    sub-float/2addr v5, v6

    invoke-interface {v4, v5, v1}, Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;->onRevealChange(FZ)V

    goto :goto_1

    .end local v1           #commit:Z
    :cond_4
    move v1, v5

    .line 961
    goto :goto_2

    .line 971
    .end local v3           #moveFactor:F
    :pswitch_2
    iget-boolean v4, p0, Lcom/google/android/common/SwipeySwitcher;->mDragging:Z

    if-eqz v4, :cond_2

    .line 972
    iput-boolean v7, p0, Lcom/google/android/common/SwipeySwitcher;->mCenterOnLayout:Z

    .line 973
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 974
    .local v2, consumed:Z
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->clearScrollingCaches()V

    .line 977
    if-nez v2, :cond_5

    .line 978
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->moveFactor()F

    move-result v3

    .line 980
    .restart local v3       #moveFactor:F
    cmpl-float v4, v3, v8

    if-lez v4, :cond_7

    .line 981
    invoke-direct {p0, v7}, Lcom/google/android/common/SwipeySwitcher;->recenterAndSelect(Z)V

    .line 988
    .end local v3           #moveFactor:F
    :cond_5
    :goto_3
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher;->mObserver:Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;

    if-eqz v4, :cond_6

    .line 989
    iget-object v4, p0, Lcom/google/android/common/SwipeySwitcher;->mObserver:Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;

    invoke-interface {v4}, Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;->onStopReveal()V

    .line 992
    :cond_6
    iput-boolean v5, p0, Lcom/google/android/common/SwipeySwitcher;->mDragging:Z

    goto :goto_1

    .line 982
    .restart local v3       #moveFactor:F
    :cond_7
    cmpg-float v4, v3, v6

    if-gez v4, :cond_8

    .line 983
    invoke-direct {p0, v5}, Lcom/google/android/common/SwipeySwitcher;->recenterAndSelect(Z)V

    goto :goto_3

    .line 985
    :cond_8
    invoke-direct {p0}, Lcom/google/android/common/SwipeySwitcher;->recenter()V

    goto :goto_3

    .line 942
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public selectNext(ZLjava/lang/Runnable;I)V
    .locals 0
    .parameter "forward"
    .parameter "onDone"
    .parameter "duration"

    .prologue
    .line 326
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/common/SwipeySwitcher;->recenterAndSelect(ZLjava/lang/Runnable;I)V

    .line 327
    return-void
.end method

.method public setAdapter(Lcom/google/android/common/SwipeySwitcher$Adapter;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    .line 1008
    if-nez p1, :cond_1

    .line 1009
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 1010
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1011
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/google/android/common/SwipeySwitcher$IViewHolder;->stop()V

    .line 1012
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mViews:[Lcom/google/android/common/SwipeySwitcher$IViewHolder;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1009
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1016
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/common/SwipeySwitcher;->mNextSelection:I

    iput v1, p0, Lcom/google/android/common/SwipeySwitcher;->mSelection:I

    .line 1017
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->requestLayout()V

    .line 1020
    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/common/SwipeySwitcher;->mAnimateScrollRunnable:Lcom/google/android/common/SwipeySwitcher$ScrollRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1021
    return-void
.end method

.method public setNoSwipeMode(Z)V
    .locals 0
    .parameter "noSwipeMode"

    .prologue
    .line 505
    iput-boolean p1, p0, Lcom/google/android/common/SwipeySwitcher;->mNoSwipeMode:Z

    .line 506
    return-void
.end method

.method public setOnTouchCallback(Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;)V
    .locals 0
    .parameter "cb"

    .prologue
    .line 509
    iput-object p1, p0, Lcom/google/android/common/SwipeySwitcher;->mObserver:Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;

    .line 510
    return-void
.end method

.method public setSelection(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    if-nez v0, :cond_1

    .line 1038
    :cond_0
    :goto_0
    return-void

    .line 1031
    :cond_1
    iput p1, p0, Lcom/google/android/common/SwipeySwitcher;->mNextSelection:I

    .line 1032
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/common/SwipeySwitcher;->mCenterOnLayout:Z

    .line 1033
    invoke-virtual {p0}, Lcom/google/android/common/SwipeySwitcher;->requestLayout()V

    .line 1035
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mObserver:Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/google/android/common/SwipeySwitcher;->mObserver:Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;

    iget-object v1, p0, Lcom/google/android/common/SwipeySwitcher;->mAdapter:Lcom/google/android/common/SwipeySwitcher$Adapter;

    invoke-direct {p0, p1}, Lcom/google/android/common/SwipeySwitcher;->wrap(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/common/SwipeySwitcher$Adapter;->getIntent(I)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/common/SwipeySwitcher$ObserverCallbacks;->onSelection(Landroid/content/Intent;)V

    goto :goto_0
.end method
