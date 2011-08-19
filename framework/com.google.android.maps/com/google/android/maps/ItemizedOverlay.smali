.class public abstract Lcom/google/android/maps/ItemizedOverlay;
.super Lcom/google/android/maps/Overlay;
.source "ItemizedOverlay.java"

# interfaces
.implements Lcom/google/android/maps/Overlay$Snappable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lcom/google/android/maps/OverlayItem;",
        ">",
        "Lcom/google/android/maps/Overlay;",
        "Lcom/google/android/maps/Overlay$Snappable;"
    }
.end annotation


# static fields
.field private static final MINIMUM_TOUCH_DIAMETER:I


# instance fields
.field private final mBalloon:Landroid/graphics/drawable/Drawable;

.field private mCurrentlyPressedItemRank:I

.field private mCurrentlySelectedItemRank:I

.field private mDrawFocusedItem:Z

.field private mFocused:Lcom/google/android/maps/OverlayItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TItem;"
        }
    .end annotation
.end field

.field private mInGestureMask:I

.field private mItemState:[I

.field private mItemsOrderedByRank:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TItem;>;"
        }
    .end annotation
.end field

.field protected mLastFocusedIndex:I

.field private mLastSelectedItemRank:I

.field private mLatSpanE6:I

.field private mLonSpanE6:I

.field private mOnFocusChangeListener:Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;

.field private mRanksOrderedByLat:[I

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTouchableBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 99
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    sput v0, Lcom/google/android/maps/ItemizedOverlay;->MINIMUM_TOUCH_DIAMETER:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .parameter "defaultMarker"

    .prologue
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/google/android/maps/ItemizedOverlay;->mRanksOrderedByLat:[I

    .line 41
    iput-object v1, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemsOrderedByRank:Ljava/util/ArrayList;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mDrawFocusedItem:Z

    .line 53
    iput v2, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastSelectedItemRank:I

    .line 58
    iput-object v1, p0, Lcom/google/android/maps/ItemizedOverlay;->mFocused:Lcom/google/android/maps/OverlayItem;

    .line 69
    iput v2, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastFocusedIndex:I

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mTouchableBounds:Landroid/graphics/Rect;

    .line 104
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    .line 123
    iput-object p1, p0, Lcom/google/android/maps/ItemizedOverlay;->mBalloon:Landroid/graphics/drawable/Drawable;

    .line 124
    return-void
.end method

.method protected static boundCenter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 9
    .parameter "balloon"

    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 174
    .local v3, width:I
    div-int/lit8 v2, v3, 0x2

    .line 175
    .local v2, w2:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 176
    .local v1, height:I
    div-int/lit8 v0, v1, 0x2

    .line 177
    .local v0, h2:I
    neg-int v4, v2

    neg-int v5, v0

    sub-int v6, v3, v2

    sub-int v7, v1, v0

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 178
    return-object p0
.end method

.method protected static boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .parameter "balloon"

    .prologue
    const/4 v6, 0x1

    .line 158
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 159
    .local v2, width:I
    div-int/lit8 v1, v2, 0x2

    .line 160
    .local v1, w2:I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 161
    .local v0, height:I
    neg-int v3, v1

    sub-int v4, v6, v0

    sub-int v5, v2, v1

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 162
    return-object p0
.end method

.method private drawItem(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;ZI)V
    .registers 10
    .parameter "canvas"
    .parameter "mapView"
    .parameter "shadow"
    .parameter "rank"

    .prologue
    .line 256
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    invoke-virtual {p0, p4}, Lcom/google/android/maps/ItemizedOverlay;->getItem(I)Lcom/google/android/maps/OverlayItem;

    move-result-object v0

    .line 257
    .local v0, item:Lcom/google/android/maps/OverlayItem;,"TItem;"
    invoke-direct {p0, v0, p4}, Lcom/google/android/maps/ItemizedOverlay;->getDrawable(Lcom/google/android/maps/OverlayItem;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 258
    .local v1, marker:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    invoke-interface {v2, v3, v4}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 259
    iget-object v2, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {p1, v1, v2, v3, p3}, Lcom/google/android/maps/ItemizedOverlay;->drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZ)V

    .line 260
    return-void
.end method

.method private focus(I)V
    .registers 4
    .parameter "hit"

    .prologue
    .line 538
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    const/4 v1, -0x1

    if-eq p1, v1, :cond_c

    invoke-virtual {p0, p1}, Lcom/google/android/maps/ItemizedOverlay;->getItem(I)Lcom/google/android/maps/OverlayItem;

    move-result-object v1

    move-object v0, v1

    .line 539
    .local v0, hitItem:Lcom/google/android/maps/OverlayItem;,"TItem;"
    :goto_8
    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/ItemizedOverlay;->setFocus(ILcom/google/android/maps/OverlayItem;)V

    .line 540
    return-void

    .line 538
    .end local v0           #hitItem:Lcom/google/android/maps/OverlayItem;,"TItem;"
    :cond_c
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_8
.end method

.method private getDrawable(Lcom/google/android/maps/OverlayItem;I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .parameter
    .parameter "rank"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;I)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    .local p1, item:Lcom/google/android/maps/OverlayItem;,"TItem;"
    iget-object v2, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemState:[I

    aget v1, v2, p2

    .line 264
    .local v1, itemState:I
    invoke-virtual {p1, v1}, Lcom/google/android/maps/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 265
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_f

    .line 266
    iget-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mBalloon:Landroid/graphics/drawable/Drawable;

    .line 267
    invoke-static {v0, v1}, Lcom/google/android/maps/OverlayItem;->setState(Landroid/graphics/drawable/Drawable;I)V

    .line 269
    :cond_f
    return-object v0
.end method

.method private getItemAtLocation(IILcom/google/android/maps/MapView;)I
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    .line 586
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/ItemizedOverlay;->getItemsAtLocation(IILcom/google/android/maps/MapView;)Ljava/util/ArrayList;

    move-result-object v0

    .line 587
    const/4 v1, -0x1

    .line 588
    const v2, 0x7fffffff

    .line 589
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v8, v2

    move v2, v1

    move v1, v8

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 590
    iget-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemsOrderedByRank:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/OverlayItem;

    .line 591
    invoke-virtual {p3}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    invoke-interface {v5, v6, v7}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 592
    iget-object v5, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int v5, p1, v5

    .line 593
    iget-object v6, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int v6, p2, v6

    .line 594
    invoke-direct {p0, v0, v4}, Lcom/google/android/maps/ItemizedOverlay;->getDrawable(Lcom/google/android/maps/OverlayItem;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 595
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;->getTouchableBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 596
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    sub-int v5, v7, v5

    .line 597
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    sub-int/2addr v0, v6

    .line 598
    mul-int/2addr v5, v5

    mul-int/2addr v0, v0

    add-int/2addr v0, v5

    .line 599
    if-ge v0, v1, :cond_65

    move v1, v4

    :goto_5d
    move v2, v1

    move v1, v0

    .line 603
    goto :goto_f

    .line 604
    :cond_60
    iput v2, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastSelectedItemRank:I

    .line 605
    iget v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastSelectedItemRank:I

    return v0

    :cond_65
    move v0, v1

    move v1, v2

    goto :goto_5d
.end method

.method private getItemsAtLocation(IILcom/google/android/maps/MapView;)Ljava/util/ArrayList;
    .registers 18
    .parameter "hitX"
    .parameter "hitY"
    .parameter "mapView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/google/android/maps/MapView;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    iget-object v4, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemsOrderedByRank:Ljava/util/ArrayList;

    .line 616
    .local v4, itemsByRank:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TItem;>;"
    iget-object v10, p0, Lcom/google/android/maps/ItemizedOverlay;->mRanksOrderedByLat:[I

    .line 617
    .local v10, ranksOrderedByLat:[I
    array-length v5, v10

    .line 623
    .local v5, length:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 624
    .local v0, hitItemRanks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v11, 0x1

    sub-int v1, v5, v11

    .local v1, i:I
    :goto_d
    if-ltz v1, :cond_50

    .line 625
    aget v9, v10, v1

    .line 626
    .local v9, rank:I
    iget-object v11, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemState:[I

    aget v3, v11, v9

    .line 627
    .local v3, itemState:I
    iget-boolean v11, p0, Lcom/google/android/maps/ItemizedOverlay;->mDrawFocusedItem:Z

    if-nez v11, :cond_1d

    and-int/lit8 v11, v3, 0x4

    if-nez v11, :cond_4d

    .line 628
    :cond_1d
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/OverlayItem;

    .line 629
    .local v2, item:Lcom/google/android/maps/OverlayItem;,"TItem;"
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v11

    invoke-virtual {v2}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v12

    iget-object v13, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    invoke-interface {v11, v12, v13}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 630
    iget-object v11, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    sub-int v7, p1, v11

    .line 631
    .local v7, offsetX:I
    iget-object v11, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    sub-int v8, p2, v11

    .line 632
    .local v8, offsetY:I
    invoke-direct {p0, v2, v9}, Lcom/google/android/maps/ItemizedOverlay;->getDrawable(Lcom/google/android/maps/OverlayItem;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 633
    .local v6, marker:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v2, v6, v7, v8}, Lcom/google/android/maps/ItemizedOverlay;->hitTest(Lcom/google/android/maps/OverlayItem;Landroid/graphics/drawable/Drawable;II)Z

    move-result v11

    if-eqz v11, :cond_4d

    .line 634
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    .end local v2           #item:Lcom/google/android/maps/OverlayItem;,"TItem;"
    .end local v6           #marker:Landroid/graphics/drawable/Drawable;
    .end local v7           #offsetX:I
    .end local v8           #offsetY:I
    :cond_4d
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 652
    .end local v3           #itemState:I
    .end local v9           #rank:I
    :cond_50
    return-object v0
.end method

.method private getTouchableBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 13
    .parameter "bounds"

    .prologue
    .line 135
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 136
    .local v7, w:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 137
    .local v2, h:I
    sget v8, Lcom/google/android/maps/ItemizedOverlay;->MINIMUM_TOUCH_DIAMETER:I

    if-lt v7, v8, :cond_12

    sget v8, Lcom/google/android/maps/ItemizedOverlay;->MINIMUM_TOUCH_DIAMETER:I

    if-lt v2, v8, :cond_12

    move-object v8, p1

    .line 147
    :goto_11
    return-object v8

    .line 140
    :cond_12
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 141
    .local v0, cx:I
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 142
    .local v1, cy:I
    sget v8, Lcom/google/android/maps/ItemizedOverlay;->MINIMUM_TOUCH_DIAMETER:I

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 143
    .local v6, touchW:I
    div-int/lit8 v8, v6, 0x2

    sub-int v4, v0, v8

    .line 144
    .local v4, touchL:I
    sget v8, Lcom/google/android/maps/ItemizedOverlay;->MINIMUM_TOUCH_DIAMETER:I

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 145
    .local v3, touchH:I
    div-int/lit8 v8, v3, 0x2

    sub-int v5, v1, v8

    .line 146
    .local v5, touchT:I
    iget-object v8, p0, Lcom/google/android/maps/ItemizedOverlay;->mTouchableBounds:Landroid/graphics/Rect;

    add-int v9, v4, v6

    add-int v10, v5, v3

    invoke-virtual {v8, v4, v5, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 147
    iget-object v8, p0, Lcom/google/android/maps/ItemizedOverlay;->mTouchableBounds:Landroid/graphics/Rect;

    goto :goto_11
.end method

.method private handleMotionEvent(ZILandroid/view/MotionEvent;Lcom/google/android/maps/MapView;II)Z
    .registers 16
    .parameter "trackball"
    .parameter "gestureMask"
    .parameter "event"
    .parameter "mapView"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 495
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 496
    .local v0, action:I
    if-nez v0, :cond_3c

    const/4 v7, 0x1

    move v4, v7

    .line 497
    .local v4, isDown:Z
    :goto_8
    if-nez v4, :cond_d

    const/4 v7, 0x2

    if-ne v0, v7, :cond_3f

    :cond_d
    const/4 v7, 0x1

    move v5, v7

    .line 498
    .local v5, isDownOrMove:Z
    :goto_f
    invoke-direct {p0, p5, p6, p4}, Lcom/google/android/maps/ItemizedOverlay;->getItemAtLocation(IILcom/google/android/maps/MapView;)I

    move-result v1

    .line 499
    .local v1, hit:I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_42

    const/4 v7, 0x1

    move v2, v7

    .line 502
    .local v2, hitSomething:Z
    :goto_18
    if-eqz p1, :cond_45

    move v6, v1

    .line 503
    .local v6, selectHit:I
    :goto_1b
    invoke-direct {p0, v6}, Lcom/google/android/maps/ItemizedOverlay;->select(I)V

    .line 505
    if-eqz v4, :cond_27

    .line 506
    if-eqz v2, :cond_48

    .line 507
    iget v7, p0, Lcom/google/android/maps/ItemizedOverlay;->mInGestureMask:I

    or-int/2addr v7, p2

    iput v7, p0, Lcom/google/android/maps/ItemizedOverlay;->mInGestureMask:I

    .line 512
    :cond_27
    :goto_27
    iget v7, p0, Lcom/google/android/maps/ItemizedOverlay;->mInGestureMask:I

    and-int/2addr v7, p2

    if-eqz v7, :cond_50

    const/4 v7, 0x1

    move v3, v7

    .line 513
    .local v3, inGesture:Z
    :goto_2e
    if-eqz v3, :cond_35

    .line 514
    if-eqz v5, :cond_53

    .line 515
    invoke-direct {p0, v1}, Lcom/google/android/maps/ItemizedOverlay;->press(I)V

    .line 534
    :cond_35
    :goto_35
    if-eqz v3, :cond_68

    const/4 v7, 0x2

    if-eq p2, v7, :cond_68

    const/4 v7, 0x1

    :goto_3b
    return v7

    .line 496
    .end local v1           #hit:I
    .end local v2           #hitSomething:Z
    .end local v3           #inGesture:Z
    .end local v4           #isDown:Z
    .end local v5           #isDownOrMove:Z
    .end local v6           #selectHit:I
    :cond_3c
    const/4 v7, 0x0

    move v4, v7

    goto :goto_8

    .line 497
    .restart local v4       #isDown:Z
    :cond_3f
    const/4 v7, 0x0

    move v5, v7

    goto :goto_f

    .line 499
    .restart local v1       #hit:I
    .restart local v5       #isDownOrMove:Z
    :cond_42
    const/4 v7, 0x0

    move v2, v7

    goto :goto_18

    .line 502
    .restart local v2       #hitSomething:Z
    :cond_45
    const/4 v7, -0x1

    move v6, v7

    goto :goto_1b

    .line 509
    .restart local v6       #selectHit:I
    :cond_48
    iget v7, p0, Lcom/google/android/maps/ItemizedOverlay;->mInGestureMask:I

    xor-int/lit8 v8, p2, -0x1

    and-int/2addr v7, v8

    iput v7, p0, Lcom/google/android/maps/ItemizedOverlay;->mInGestureMask:I

    goto :goto_27

    .line 512
    :cond_50
    const/4 v7, 0x0

    move v3, v7

    goto :goto_2e

    .line 516
    .restart local v3       #inGesture:Z
    :cond_53
    const/4 v7, 0x1

    if-ne v0, v7, :cond_35

    .line 517
    const/4 v7, -0x1

    invoke-direct {p0, v7}, Lcom/google/android/maps/ItemizedOverlay;->press(I)V

    .line 518
    iget v7, p0, Lcom/google/android/maps/ItemizedOverlay;->mInGestureMask:I

    xor-int/lit8 v8, p2, -0x1

    and-int/2addr v7, v8

    iput v7, p0, Lcom/google/android/maps/ItemizedOverlay;->mInGestureMask:I

    .line 523
    const/4 v7, 0x2

    if-eq p2, v7, :cond_35

    .line 524
    invoke-virtual {p0, v1}, Lcom/google/android/maps/ItemizedOverlay;->onTap(I)Z

    goto :goto_35

    .line 534
    :cond_68
    const/4 v7, 0x0

    goto :goto_3b
.end method

.method private maskHelper(III)I
    .registers 8
    .parameter "oldRank"
    .parameter "newRank"
    .parameter "mask"

    .prologue
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    const/4 v3, -0x1

    .line 560
    if-eq p1, p2, :cond_17

    .line 561
    if-eq p1, v3, :cond_e

    .line 562
    iget-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemState:[I

    aget v1, v0, p1

    xor-int/lit8 v2, p3, -0x1

    and-int/2addr v1, v2

    aput v1, v0, p1

    .line 564
    :cond_e
    if-eq p2, v3, :cond_17

    .line 565
    iget-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemState:[I

    aget v1, v0, p2

    or-int/2addr v1, p3

    aput v1, v0, p2

    .line 568
    :cond_17
    return p2
.end method

.method private press(I)V
    .registers 4
    .parameter "rank"

    .prologue
    .line 548
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    iget v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mCurrentlyPressedItemRank:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/maps/ItemizedOverlay;->maskHelper(III)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mCurrentlyPressedItemRank:I

    .line 550
    return-void
.end method

.method private select(I)V
    .registers 4
    .parameter "rank"

    .prologue
    .line 543
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    iget v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mCurrentlySelectedItemRank:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/maps/ItemizedOverlay;->maskHelper(III)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mCurrentlySelectedItemRank:I

    .line 545
    return-void
.end method

.method private setFocus(ILcom/google/android/maps/OverlayItem;)V
    .registers 6
    .parameter "rank"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    .local p2, item:Lcom/google/android/maps/OverlayItem;,"TItem;"
    iget-object v1, p0, Lcom/google/android/maps/ItemizedOverlay;->mFocused:Lcom/google/android/maps/OverlayItem;

    if-eq v1, p2, :cond_1f

    iget-object v1, p0, Lcom/google/android/maps/ItemizedOverlay;->mOnFocusChangeListener:Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;

    if-eqz v1, :cond_1f

    const/4 v1, 0x1

    move v0, v1

    .line 365
    .local v0, notify:Z
    :goto_a
    iget v1, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastFocusedIndex:I

    const/4 v2, 0x4

    invoke-direct {p0, v1, p1, v2}, Lcom/google/android/maps/ItemizedOverlay;->maskHelper(III)I

    .line 367
    const/4 v1, -0x1

    if-eq p1, v1, :cond_15

    .line 368
    iput p1, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastFocusedIndex:I

    .line 370
    :cond_15
    iput-object p2, p0, Lcom/google/android/maps/ItemizedOverlay;->mFocused:Lcom/google/android/maps/OverlayItem;

    .line 371
    if-eqz v0, :cond_1e

    .line 372
    iget-object v1, p0, Lcom/google/android/maps/ItemizedOverlay;->mOnFocusChangeListener:Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;

    invoke-interface {v1, p0, p2}, Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;->onFocusChanged(Lcom/google/android/maps/ItemizedOverlay;Lcom/google/android/maps/OverlayItem;)V

    .line 374
    :cond_1e
    return-void

    .line 364
    .end local v0           #notify:Z
    :cond_1f
    const/4 v1, 0x0

    move v0, v1

    goto :goto_a
.end method


# virtual methods
.method protected abstract createItem(I)Lcom/google/android/maps/OverlayItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .registers 11
    .parameter "canvas"
    .parameter "mapView"
    .parameter "shadow"

    .prologue
    .line 236
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    invoke-virtual {p0}, Lcom/google/android/maps/ItemizedOverlay;->size()I

    move-result v5

    .line 237
    .local v5, size:I
    const/4 v0, -0x1

    .line 238
    .local v0, focusedItemRank:I
    const/4 v3, 0x4

    .line 239
    .local v3, itemStateFocusedMask:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v5, :cond_1d

    .line 240
    invoke-virtual {p0, v1}, Lcom/google/android/maps/ItemizedOverlay;->getIndexToDraw(I)I

    move-result v4

    .line 241
    .local v4, rank:I
    iget-object v6, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemState:[I

    aget v2, v6, v4

    .line 242
    .local v2, itemState:I
    and-int/lit8 v6, v2, 0x4

    if-nez v6, :cond_1b

    .line 243
    invoke-direct {p0, p1, p2, p3, v4}, Lcom/google/android/maps/ItemizedOverlay;->drawItem(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;ZI)V

    .line 239
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 245
    :cond_1b
    move v0, v4

    goto :goto_18

    .line 250
    .end local v2           #itemState:I
    .end local v4           #rank:I
    :cond_1d
    iget-boolean v6, p0, Lcom/google/android/maps/ItemizedOverlay;->mDrawFocusedItem:Z

    if-eqz v6, :cond_26

    if-ltz v0, :cond_26

    .line 251
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/maps/ItemizedOverlay;->drawItem(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;ZI)V

    .line 253
    :cond_26
    return-void
.end method

.method public getCenter()Lcom/google/android/maps/GeoPoint;
    .registers 2

    .prologue
    .line 199
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    iget-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mRanksOrderedByLat:[I

    array-length v0, v0

    if-lez v0, :cond_f

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;->getItem(I)Lcom/google/android/maps/OverlayItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    .line 202
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getFocus()Lcom/google/android/maps/OverlayItem;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TItem;"
        }
    .end annotation

    .prologue
    .line 404
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    iget-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mFocused:Lcom/google/android/maps/OverlayItem;

    return-object v0
.end method

.method protected getIndexToDraw(I)I
    .registers 3
    .parameter "drawingOrder"

    .prologue
    .line 211
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    iget-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mRanksOrderedByLat:[I

    aget v0, v0, p1

    return v0
.end method

.method public final getItem(I)Lcom/google/android/maps/OverlayItem;
    .registers 3
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .prologue
    .line 419
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    iget-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemsOrderedByRank:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    check-cast p0, Lcom/google/android/maps/OverlayItem;

    return-object p0
.end method

.method public final getLastFocusedIndex()I
    .registers 2

    .prologue
    .line 412
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    iget v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastFocusedIndex:I

    return v0
.end method

.method public getLatSpanE6()I
    .registers 2

    .prologue
    .line 278
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    iget v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mLatSpanE6:I

    return v0
.end method

.method public getLonSpanE6()I
    .registers 2

    .prologue
    .line 288
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    iget v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mLonSpanE6:I

    return v0
.end method

.method protected hitTest(Lcom/google/android/maps/OverlayItem;Landroid/graphics/drawable/Drawable;II)Z
    .registers 7
    .parameter
    .parameter "marker"
    .parameter "hitX"
    .parameter "hitY"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;",
            "Landroid/graphics/drawable/Drawable;",
            "II)Z"
        }
    .end annotation

    .prologue
    .line 671
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    .local p1, item:Lcom/google/android/maps/OverlayItem;,"TItem;"
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/maps/ItemizedOverlay;->getTouchableBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 672
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {v0, p3, p4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method public nextFocus(Z)Lcom/google/android/maps/OverlayItem;
    .registers 5
    .parameter "forwards"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TItem;"
        }
    .end annotation

    .prologue
    .line 428
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    iget v1, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastFocusedIndex:I

    if-eqz p1, :cond_13

    const/4 v2, 0x1

    :goto_5
    add-int v0, v1, v2

    .line 429
    .local v0, rank:I
    if-ltz v0, :cond_15

    iget-object v1, p0, Lcom/google/android/maps/ItemizedOverlay;->mRanksOrderedByLat:[I

    array-length v1, v1

    if-ge v0, v1, :cond_15

    .line 430
    invoke-virtual {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;->getItem(I)Lcom/google/android/maps/OverlayItem;

    move-result-object v1

    .line 432
    :goto_12
    return-object v1

    .line 428
    .end local v0           #rank:I
    :cond_13
    const/4 v2, -0x1

    goto :goto_5

    .line 432
    .restart local v0       #rank:I
    :cond_15
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"
    .parameter "mapView"

    .prologue
    .line 480
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    sparse-switch p1, :sswitch_data_16

    .line 487
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/Overlay;->onKeyUp(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z

    move-result v0

    :goto_7
    return v0

    .line 483
    :sswitch_8
    invoke-virtual {p0}, Lcom/google/android/maps/ItemizedOverlay;->getFocus()Lcom/google/android/maps/OverlayItem;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 484
    iget v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastFocusedIndex:I

    invoke-virtual {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;->onTap(I)Z

    move-result v0

    goto :goto_7

    .line 480
    nop

    :sswitch_data_16
    .sparse-switch
        0x17 -> :sswitch_8
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public onSnapToItem(IILandroid/graphics/Point;Lcom/google/android/maps/MapView;)Z
    .registers 9
    .parameter "x"
    .parameter "y"
    .parameter "snapPoint"
    .parameter "mapView"

    .prologue
    .line 464
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/maps/ItemizedOverlay;->getItemAtLocation(IILcom/google/android/maps/MapView;)I

    move-result v0

    .line 465
    .local v0, hitRank:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    const/4 v2, 0x0

    .line 469
    :goto_8
    return v2

    .line 467
    :cond_9
    iget-object v2, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemsOrderedByRank:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/OverlayItem;

    .line 468
    .local v1, item:Lcom/google/android/maps/OverlayItem;,"TItem;"
    invoke-virtual {p4}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v3

    invoke-interface {v2, v3, p3}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 469
    const/4 v2, 0x1

    goto :goto_8
.end method

.method protected onTap(I)Z
    .registers 3
    .parameter "index"

    .prologue
    .line 711
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z
    .registers 8
    .parameter "p"
    .parameter "mapView"

    .prologue
    .line 442
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    invoke-interface {v3, p1, v4}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 443
    iget-object v3, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v3, v4, p2}, Lcom/google/android/maps/ItemizedOverlay;->getItemAtLocation(IILcom/google/android/maps/MapView;)I

    move-result v0

    .line 451
    .local v0, hit:I
    const/4 v1, 0x0

    .line 452
    .local v1, retValue:Z
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1d

    .line 453
    invoke-virtual {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;->onTap(I)Z

    move-result v1

    .line 455
    :cond_1d
    invoke-direct {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;->focus(I)V

    .line 456
    move v2, v0

    .line 458
    .local v2, selectHit:I
    invoke-direct {p0, v2}, Lcom/google/android/maps/ItemizedOverlay;->select(I)V

    .line 459
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .registers 10
    .parameter "event"
    .parameter "mapView"

    .prologue
    .line 572
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v5, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v6, v0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/ItemizedOverlay;->handleMotionEvent(ZILandroid/view/MotionEvent;Lcom/google/android/maps/MapView;II)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .registers 10
    .parameter "event"
    .parameter "mapView"

    .prologue
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    const/4 v1, 0x1

    .line 473
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/ItemizedOverlay;->handleMotionEvent(ZILandroid/view/MotionEvent;Lcom/google/android/maps/MapView;II)Z

    move-result v0

    return v0
.end method

.method protected final populate()V
    .registers 19

    .prologue
    .line 298
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/ItemizedOverlay;->size()I

    move-result v13

    .line 299
    .local v13, resultCount:I
    const v9, 0x55d4a80

    .line 300
    .local v9, minLat:I
    const v7, -0x55d4a80

    .line 301
    .local v7, maxLat:I
    const v10, 0xaba9500

    .line 302
    .local v10, minLon:I
    const v8, -0xaba9500

    .line 305
    .local v8, maxLon:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 308
    .local v5, itemsOrderedByRank:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TItem;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_16
    if-ge v2, v13, :cond_55

    .line 309
    move-object/from16 v0, p0

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/maps/ItemizedOverlay;->createItem(I)Lcom/google/android/maps/OverlayItem;

    move-result-object v4

    .line 310
    .local v4, item:Lcom/google/android/maps/OverlayItem;,"TItem;"
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-virtual {v4}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v11

    .line 312
    .local v11, point:Lcom/google/android/maps/GeoPoint;
    invoke-virtual {v11}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v16

    move v0, v9

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 313
    invoke-virtual {v11}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v16

    move v0, v7

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 314
    invoke-virtual {v11}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v16

    move v0, v10

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 315
    invoke-virtual {v11}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v16

    move v0, v8

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 308
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 317
    .end local v4           #item:Lcom/google/android/maps/OverlayItem;,"TItem;"
    .end local v11           #point:Lcom/google/android/maps/GeoPoint;
    :cond_55
    sub-int v16, v7, v9

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/ItemizedOverlay;->mLatSpanE6:I

    .line 318
    sub-int v16, v8, v10

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/ItemizedOverlay;->mLonSpanE6:I

    .line 321
    new-array v12, v13, [I

    .line 322
    .local v12, ranksOrderedByLat:[I
    const/4 v2, 0x0

    :goto_68
    if-ge v2, v13, :cond_a2

    .line 325
    move v3, v2

    .line 326
    .local v3, insertRank:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_6c
    if-gt v6, v2, :cond_9f

    .line 327
    aget v16, v12, v6

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/maps/OverlayItem;

    .line 328
    .local v14, sorted:Lcom/google/android/maps/OverlayItem;,"TItem;"
    if-eq v6, v2, :cond_97

    invoke-virtual {v14}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v16

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/maps/OverlayItem;

    invoke-virtual {v4}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_9c

    .line 332
    :cond_97
    aget v15, v12, v6

    .line 333
    .local v15, tmp:I
    aput v3, v12, v6

    .line 334
    move v3, v15

    .line 326
    .end local v15           #tmp:I
    :cond_9c
    add-int/lit8 v6, v6, 0x1

    goto :goto_6c

    .line 322
    .end local v14           #sorted:Lcom/google/android/maps/OverlayItem;,"TItem;"
    :cond_9f
    add-int/lit8 v2, v2, 0x1

    goto :goto_68

    .line 338
    .end local v3           #insertRank:I
    .end local v6           #j:I
    :cond_a2
    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/ItemizedOverlay;->mRanksOrderedByLat:[I

    .line 339
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/ItemizedOverlay;->mItemsOrderedByRank:Ljava/util/ArrayList;

    .line 342
    move v0, v13

    new-array v0, v0, [I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/ItemizedOverlay;->mItemState:[I

    .line 343
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/ItemizedOverlay;->mCurrentlySelectedItemRank:I

    .line 344
    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/ItemizedOverlay;->mCurrentlyPressedItemRank:I

    .line 345
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/maps/ItemizedOverlay;->mInGestureMask:I

    .line 346
    return-void
.end method

.method public setDrawFocusedItem(Z)V
    .registers 2
    .parameter "drawFocusedItem"

    .prologue
    .line 685
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    iput-boolean p1, p0, Lcom/google/android/maps/ItemizedOverlay;->mDrawFocusedItem:Z

    .line 686
    return-void
.end method

.method public setFocus(Lcom/google/android/maps/OverlayItem;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    .prologue
    .line 385
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    .local p1, item:Lcom/google/android/maps/OverlayItem;,"TItem;"
    if-nez p1, :cond_9

    .line 386
    iget v3, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastFocusedIndex:I

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/google/android/maps/ItemizedOverlay;->setFocus(ILcom/google/android/maps/OverlayItem;)V

    .line 397
    :cond_8
    :goto_8
    return-void

    .line 388
    :cond_9
    const/4 v2, 0x0

    .line 389
    .local v2, index:I
    iget-object v3, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemsOrderedByRank:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/OverlayItem;

    .line 390
    .local v0, candidate:Lcom/google/android/maps/OverlayItem;,"TItem;"
    if-ne v0, p1, :cond_22

    .line 391
    invoke-direct {p0, v2, v0}, Lcom/google/android/maps/ItemizedOverlay;->setFocus(ILcom/google/android/maps/OverlayItem;)V

    goto :goto_8

    .line 394
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_10
.end method

.method protected setLastFocusedIndex(I)V
    .registers 2
    .parameter "lastFocusedIndex"

    .prologue
    .line 357
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    iput p1, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastFocusedIndex:I

    .line 358
    return-void
.end method

.method public setOnFocusChangeListener(Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 676
    .local p0, this:Lcom/google/android/maps/ItemizedOverlay;,"Lcom/google/android/maps/ItemizedOverlay<TItem;>;"
    iput-object p1, p0, Lcom/google/android/maps/ItemizedOverlay;->mOnFocusChangeListener:Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;

    .line 677
    return-void
.end method

.method public abstract size()I
.end method
