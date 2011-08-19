.class public Lcom/google/android/finsky/layout/PromoStrip;
.super Lcom/google/android/finsky/layout/DraggableHorizontalStrip;
.source "PromoStrip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/layout/PromoStrip$PromoStripTapListener;,
        Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/google/android/finsky/adapters/PromoAdapter;

.field private final mAutoAdvanceHandler:Landroid/os/Handler;

.field private final mAutoAdvanceRunnable:Ljava/lang/Runnable;

.field private mAutoAdvanceScheduled:Z

.field private mFlyoverHeight:I

.field private final mFlyoverInsetLeft:I

.field private final mFlyoverInsetTop:I

.field private mFlyoverMeasureHeight:I

.field private mFlyoverMeasureWidth:I

.field private mFlyoverWidth:I

.field private mItemHeight:I

.field private mItemWidth:I

.field private mItems:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

.field private mOnChildViewTapListener:Lcom/google/android/finsky/layout/PromoStrip$PromoStripTapListener;

.field private mVirtualItemWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attributeSet"

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/finsky/layout/PromoStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 255
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attributeSet"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 258
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 216
    iput v3, p0, Lcom/google/android/finsky/layout/PromoStrip;->mVirtualItemWidth:I

    .line 219
    iput v3, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItemWidth:I

    .line 220
    iput v3, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItemHeight:I

    .line 232
    new-array v1, v3, [Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    iput-object v1, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItems:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    .line 259
    new-instance v1, Lcom/google/android/finsky/layout/PromoStrip$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/layout/PromoStrip$1;-><init>(Lcom/google/android/finsky/layout/PromoStrip;)V

    iput-object v1, p0, Lcom/google/android/finsky/layout/PromoStrip;->mAutoAdvanceRunnable:Ljava/lang/Runnable;

    .line 272
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/layout/PromoStrip;->mAutoAdvanceHandler:Landroid/os/Handler;

    .line 273
    iget-object v1, p0, Lcom/google/android/finsky/layout/PromoStrip;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 275
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    const v2, 0x7f08001e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/finsky/layout/PromoStrip;->mVirtualItemWidth:I

    .line 277
    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/PromoStrip;->mFlyoverInsetLeft:I

    .line 278
    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/layout/PromoStrip;->mFlyoverInsetTop:I

    .line 279
    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/PromoStrip;->updateItemHeight(I)V

    .line 280
    invoke-direct {p0, v3}, Lcom/google/android/finsky/layout/PromoStrip;->updateItemWidth(I)V

    .line 281
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/PromoStrip;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItemWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/PromoStrip;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/PromoStrip;->updateItemWidth(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/layout/PromoStrip;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItemHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/layout/PromoStrip;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/PromoStrip;->updateItemHeight(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/layout/PromoStrip;)Lcom/google/android/finsky/layout/PromoStrip$PromoStripTapListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mOnChildViewTapListener:Lcom/google/android/finsky/layout/PromoStrip$PromoStripTapListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/layout/PromoStrip;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mVirtualItemWidth:I

    return v0
.end method

.method static synthetic access$602(Lcom/google/android/finsky/layout/PromoStrip;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/google/android/finsky/layout/PromoStrip;->mAutoAdvanceScheduled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/finsky/layout/PromoStrip;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/finsky/layout/PromoStrip;->scheduleAutoAdvance()V

    return-void
.end method

.method private findViewAtX(F)Landroid/view/View;
    .locals 5
    .parameter "x"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItems:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    .local v0, arr$:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 436
    .local v2, item:Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;
    invoke-virtual {v2}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->getFlyover()Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/google/android/finsky/layout/PromoStrip;->isXWithinView(Landroid/view/View;F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 437
    invoke-virtual {v2}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->getFlyover()Landroid/view/View;

    move-result-object v4

    .line 445
    .end local v2           #item:Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;
    :goto_1
    return-object v4

    .line 435
    .restart local v2       #item:Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    .end local v2           #item:Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItems:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_3

    aget-object v2, v0, v1

    .line 441
    .restart local v2       #item:Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;
    invoke-virtual {v2}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->getPromo()Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/google/android/finsky/layout/PromoStrip;->isXWithinView(Landroid/view/View;F)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 442
    invoke-virtual {v2}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->getPromo()Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 440
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 445
    .end local v2           #item:Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isXWithinView(Landroid/view/View;F)Z
    .locals 1
    .parameter "view"
    .parameter "x"

    .prologue
    .line 431
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleBitmaps()V
    .locals 4

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItems:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    .local v0, arr$:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 302
    .local v2, item:Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;
    invoke-virtual {v2}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->clearBitmaps()V

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    .end local v2           #item:Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;
    :cond_0
    return-void
.end method

.method private resyncItems(I)V
    .locals 8
    .parameter "size"

    .prologue
    .line 488
    new-array v5, p1, [Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    iput-object v5, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItems:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    .line 489
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItems:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 490
    iget-object v5, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItems:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    new-instance v6, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    invoke-direct {v6, p0}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;-><init>(Lcom/google/android/finsky/layout/PromoStrip;)V

    aput-object v6, v5, v1

    .line 491
    iget-object v5, p0, Lcom/google/android/finsky/layout/PromoStrip;->mAdapter:Lcom/google/android/finsky/adapters/PromoAdapter;

    invoke-virtual {v5, v1}, Lcom/google/android/finsky/adapters/PromoAdapter;->getDocument(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/finsky/layout/PromoStrip;->mAdapter:Lcom/google/android/finsky/adapters/PromoAdapter;

    invoke-virtual {v6, v1}, Lcom/google/android/finsky/adapters/PromoAdapter;->getFlyover(I)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/finsky/layout/PromoStrip;->mAdapter:Lcom/google/android/finsky/adapters/PromoAdapter;

    invoke-virtual {v7, v1}, Lcom/google/android/finsky/adapters/PromoAdapter;->getPromo(I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p0, v1, v5, v6, v7}, Lcom/google/android/finsky/layout/PromoStrip;->setItem(ILcom/google/android/finsky/api/model/Document;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 492
    iget-object v5, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItems:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->getPromo()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/PromoStrip;->addView(Landroid/view/View;)V

    .line 493
    iget-object v5, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItems:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->getFlyover()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/PromoStrip;->addView(Landroid/view/View;)V

    .line 494
    iget-object v5, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItems:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->getHologram()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/finsky/layout/PromoStrip;->addView(Landroid/view/View;)V

    .line 489
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItems:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    .local v0, arr$:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 498
    .local v3, item:Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;
    invoke-virtual {v3}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->getHologram()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->bringToFront()V

    .line 496
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 500
    .end local v3           #item:Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItems:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    array-length v4, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    .line 502
    .restart local v3       #item:Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;
    invoke-virtual {v3}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->getFlyover()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->bringToFront()V

    .line 500
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 504
    .end local v3           #item:Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;
    :cond_2
    invoke-direct {p0}, Lcom/google/android/finsky/layout/PromoStrip;->scheduleAutoAdvance()V

    .line 505
    return-void
.end method

.method private scheduleAutoAdvance()V
    .locals 4

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/PromoStrip;->allImagesExist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mAutoAdvanceScheduled:Z

    if-nez v0, :cond_0

    .line 418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mAutoAdvanceScheduled:Z

    .line 419
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mAutoAdvanceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/layout/PromoStrip;->mAutoAdvanceRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 421
    :cond_0
    return-void
.end method

.method private setChildrenMeasurements()V
    .locals 7

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItems:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    .local v0, arr$:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 381
    .local v3, view:Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;
    invoke-virtual {v3}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->getFlyover()Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/google/android/finsky/layout/PromoStrip;->mFlyoverMeasureWidth:I

    iget v6, p0, Lcom/google/android/finsky/layout/PromoStrip;->mFlyoverMeasureHeight:I

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 382
    invoke-virtual {v3}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->getHologram()Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItemWidth:I

    iget v6, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItemHeight:I

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    .end local v3           #view:Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;
    :cond_0
    return-void
.end method

.method private updateItemHeight(I)V
    .locals 2
    .parameter "height"

    .prologue
    .line 248
    iput p1, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItemHeight:I

    .line 249
    iget v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mFlyoverInsetTop:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mFlyoverHeight:I

    .line 250
    iget v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mFlyoverHeight:I

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mFlyoverMeasureHeight:I

    .line 251
    return-void
.end method

.method private updateItemWidth(I)V
    .locals 3
    .parameter "width"

    .prologue
    .line 287
    iput p1, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItemWidth:I

    .line 288
    iget v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mFlyoverInsetLeft:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/google/android/finsky/layout/PromoStrip;->mVirtualItemWidth:I

    iget v2, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItemWidth:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mFlyoverWidth:I

    .line 289
    iget v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mFlyoverWidth:I

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mFlyoverMeasureWidth:I

    .line 290
    return-void
.end method


# virtual methods
.method public allImagesExist()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 479
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItems:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    .local v0, arr$:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 480
    .local v2, item:Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->isReadyForDisplay()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v4, v5

    .line 484
    .end local v2           #item:Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;
    :goto_1
    return v4

    .line 479
    .restart local v2       #item:Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 484
    .end local v2           #item:Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;
    :cond_2
    iget-object v4, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItems:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    array-length v4, v4

    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method protected cancelScrolling()V
    .locals 2

    .prologue
    .line 411
    invoke-super {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->cancelScrolling()V

    .line 412
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mAutoAdvanceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/layout/PromoStrip;->mAutoAdvanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mAutoAdvanceScheduled:Z

    .line 414
    return-void
.end method

.method protected createScrollAnimation(FJ)Landroid/animation/Animator;
    .locals 3
    .parameter "velocity"
    .parameter "scrollDurationMs"

    .prologue
    .line 390
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 391
    .local v0, scrollAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->createScrollAnimation(FJ)Landroid/animation/Animator;

    move-result-object v1

    .line 392
    .local v1, scrolling:Landroid/animation/Animator;
    new-instance v2, Lcom/google/android/finsky/layout/PromoStrip$2;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/layout/PromoStrip$2;-><init>(Lcom/google/android/finsky/layout/PromoStrip;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 399
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 400
    return-object v0
.end method

.method protected getLeftEdgeOfChildOnLeft(F)F
    .locals 3
    .parameter "clampToTotalStripWidth"

    .prologue
    .line 450
    iget v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItemWidth:I

    if-nez v0, :cond_0

    .line 451
    const/4 v0, 0x0

    .line 453
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItemWidth:I

    float-to-int v1, p1

    iget v2, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItemWidth:I

    div-int/2addr v1, v2

    mul-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0
.end method

.method protected getLeftEdgeOfChildOnRight(F)F
    .locals 2
    .parameter "clampToTotalStripWidth"

    .prologue
    .line 458
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/PromoStrip;->getLeftEdgeOfChildOnLeft(F)F

    move-result v0

    iget v1, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItemWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method protected limitScrollPosition(F)F
    .locals 1
    .parameter "targetValue"

    .prologue
    .line 406
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/PromoStrip;->clampToTotalStripWidth(F)F

    move-result v0

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 308
    invoke-super {p0}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->onDetachedFromWindow()V

    .line 311
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/PromoStrip;->cancelScrolling()V

    .line 312
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItems:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mAdapter:Lcom/google/android/finsky/adapters/PromoAdapter;

    .line 314
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 25
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 318
    sub-int v7, p5, p3

    .line 319
    .local v7, height:I
    sub-int v20, p4, p2

    .line 320
    .local v20, width:I
    if-lez v20, :cond_0

    if-lez v7, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/PromoStrip;->mItemWidth:I

    move/from16 v21, v0

    if-lez v21, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/PromoStrip;->mItemHeight:I

    move/from16 v21, v0

    if-lez v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/PromoStrip;->mItems:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-gtz v21, :cond_1

    .line 364
    :cond_0
    return-void

    .line 326
    :cond_1
    div-int/lit8 v21, v20, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/PromoStrip;->mVirtualItemWidth:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    sub-int v18, v21, v22

    .line 327
    .local v18, virtualLeftEdgeTranslation:I
    div-int/lit8 v21, v20, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/PromoStrip;->mVirtualItemWidth:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/PromoStrip;->mFlyoverWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/PromoStrip;->mFlyoverInsetLeft:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    sub-int v17, v21, v22

    .line 330
    .local v17, virtualLeftEdgeFlyoverTranslation:I
    const v21, 0x40533333

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/PromoStrip;->mTotalChildrenWidth:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    .line 331
    .local v19, virtualTotalFlyoverWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/PromoStrip;->mItems:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    div-int v16, v19, v21

    .line 333
    .local v16, virtualFlyoverWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/PromoStrip;->getScrollPosition()F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/PromoStrip;->mTotalChildrenWidth:F

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move v15, v0

    .line 336
    .local v15, scrollPositionFlyover:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/PromoStrip;->getScrollPosition()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move v11, v0

    .line 337
    .local v11, leftEdge:I
    move v12, v15

    .line 339
    .local v12, leftEdgeFlyover:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/PromoStrip;->mItems:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    move-object v5, v0

    .local v5, arr$:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;
    array-length v13, v5

    .local v13, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_0
    if-ge v9, v13, :cond_0

    aget-object v10, v5, v9

    .line 340
    .local v10, item:Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;
    invoke-virtual {v10}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->getPromo()Landroid/view/View;

    move-result-object v14

    .line 341
    .local v14, promo:Landroid/view/View;
    invoke-virtual {v10}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->getHologram()Landroid/view/View;

    move-result-object v8

    .line 342
    .local v8, holograph:Landroid/view/View;
    invoke-virtual {v10}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->getFlyover()Landroid/view/View;

    move-result-object v6

    .line 343
    .local v6, flyover:Landroid/view/View;
    add-int v21, v11, v18

    move/from16 v0, v21

    move/from16 v1, v20

    if-lt v0, v1, :cond_2

    .line 344
    move v0, v11

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/PromoStrip;->mTotalChildrenWidth:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move v11, v0

    .line 346
    :cond_2
    add-int v21, v12, v17

    move/from16 v0, v21

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    .line 347
    sub-int v12, v12, v19

    .line 350
    :cond_3
    add-int v21, v11, v18

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    sub-int v21, v21, v22

    add-int v22, v11, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/PromoStrip;->mItemHeight:I

    move/from16 v23, v0

    add-int v23, v23, p3

    move-object v0, v8

    move/from16 v1, v21

    move/from16 v2, p3

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 352
    add-int v21, v11, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/PromoStrip;->mItemWidth:I

    move/from16 v22, v0

    add-int v22, v22, v11

    add-int v22, v22, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/PromoStrip;->mItemHeight:I

    move/from16 v23, v0

    add-int v23, v23, p3

    move-object v0, v14

    move/from16 v1, v21

    move/from16 v2, p3

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 354
    add-int v21, v12, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/PromoStrip;->mFlyoverInsetTop:I

    move/from16 v22, v0

    sub-int v22, p3, v22

    add-int v23, v12, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/PromoStrip;->mFlyoverWidth:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/PromoStrip;->mFlyoverHeight:I

    move/from16 v24, v0

    add-int v24, v24, p3

    move-object v0, v6

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 359
    invoke-virtual {v10}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->updateFade()V

    .line 361
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/finsky/layout/PromoStrip;->mItemWidth:I

    move/from16 v21, v0

    add-int v11, v11, v21

    .line 362
    add-int v12, v12, v16

    .line 339
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 368
    iget v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItemWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItemHeight:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItems:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    array-length v0, v0

    if-gtz v0, :cond_1

    .line 369
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/layout/PromoStrip;->setMeasuredDimension(II)V

    .line 377
    :goto_0
    return-void

    .line 373
    :cond_1
    iget v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItemWidth:I

    iget-object v1, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItems:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    array-length v1, v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mTotalChildrenWidth:F

    .line 374
    invoke-direct {p0}, Lcom/google/android/finsky/layout/PromoStrip;->setChildrenMeasurements()V

    .line 375
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/layout/PromoStrip;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/PromoStrip;->cancelScrolling()V

    .line 427
    invoke-super {p0, p1}, Lcom/google/android/finsky/layout/DraggableHorizontalStrip;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onTouchEventTriggeredTap(F)Z
    .locals 2
    .parameter "x"

    .prologue
    .line 517
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/PromoStrip;->findViewAtX(F)Landroid/view/View;

    move-result-object v0

    .line 518
    .local v0, tappedView:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/layout/PromoStrip;->mOnChildViewTapListener:Lcom/google/android/finsky/layout/PromoStrip$PromoStripTapListener;

    if-eqz v1, :cond_0

    .line 520
    iget-object v1, p0, Lcom/google/android/finsky/layout/PromoStrip;->mOnChildViewTapListener:Lcom/google/android/finsky/layout/PromoStrip$PromoStripTapListener;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/finsky/api/model/Document;

    invoke-interface {v1, p0}, Lcom/google/android/finsky/layout/PromoStrip$PromoStripTapListener;->onItemTap(Lcom/google/android/finsky/api/model/Document;)V

    .line 521
    const/4 v1, 0x1

    .line 523
    :goto_0
    return v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetStrip(I)V
    .locals 1
    .parameter "newTotalSize"

    .prologue
    const/4 v0, 0x0

    .line 466
    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/PromoStrip;->updateItemWidth(I)V

    .line 467
    invoke-direct {p0, v0}, Lcom/google/android/finsky/layout/PromoStrip;->updateItemHeight(I)V

    .line 468
    invoke-direct {p0}, Lcom/google/android/finsky/layout/PromoStrip;->recycleBitmaps()V

    .line 469
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/PromoStrip;->removeAllViews()V

    .line 470
    invoke-direct {p0, p1}, Lcom/google/android/finsky/layout/PromoStrip;->resyncItems(I)V

    .line 471
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/PromoStrip;->invalidate()V

    .line 472
    return-void
.end method

.method public setAdapter(Lcom/google/android/finsky/adapters/PromoAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 293
    iput-object p1, p0, Lcom/google/android/finsky/layout/PromoStrip;->mAdapter:Lcom/google/android/finsky/adapters/PromoAdapter;

    .line 294
    return-void
.end method

.method public setItem(ILcom/google/android/finsky/api/model/Document;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "index"
    .parameter "document"
    .parameter "flyover"
    .parameter "promo"

    .prologue
    .line 508
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItems:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    aget-object v0, v0, p1

    invoke-virtual {v0, p4}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->setPromo(Landroid/graphics/Bitmap;)V

    .line 509
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItems:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    aget-object v0, v0, p1

    invoke-virtual {v0, p3}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->setFlyoverIcon(Landroid/graphics/Bitmap;)V

    .line 510
    iget-object v0, p0, Lcom/google/android/finsky/layout/PromoStrip;->mItems:[Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/google/android/finsky/layout/PromoStrip$PromoItemView;->setDocument(Lcom/google/android/finsky/api/model/Document;)V

    .line 511
    invoke-direct {p0}, Lcom/google/android/finsky/layout/PromoStrip;->scheduleAutoAdvance()V

    .line 512
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/PromoStrip;->invalidate()V

    .line 513
    return-void
.end method

.method public setTapListener(Lcom/google/android/finsky/layout/PromoStrip$PromoStripTapListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/google/android/finsky/layout/PromoStrip;->mOnChildViewTapListener:Lcom/google/android/finsky/layout/PromoStrip$PromoStripTapListener;

    .line 298
    return-void
.end method
