.class public Lcom/asus/reader/ui/DragController;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/reader/ui/DragController$DragListener;
    }
.end annotation


# static fields
.field public static DRAG_ACTION_COPY:I

.field public static DRAG_ACTION_MOVE:I


# instance fields
.field private cateoffsetX:I

.field private cateoffsetY:I

.field private gridoffsetX:I

.field private gridoffsetY:I

.field private mCateView:Lcom/asus/reader/ui/CategoryListView;

.field private mContext:Landroid/content/Context;

.field private mDragSource:Lcom/asus/reader/ui/DragSource;

.field private mDragView:Lcom/asus/reader/ui/DragView;

.field private mDragging:Z

.field private mDropTarget:Lcom/asus/reader/ui/DropTarget;

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsLandscape:Z

.field private mListener:Lcom/asus/reader/ui/DragController$DragListener;

.field private mMotionDownX:F

.field private mMotionDownY:F

.field private mMoveTarget:Landroid/widget/GridView;

.field private mOriginator:Landroid/view/View;

.field private mSlideOn:Z

.field private mTargetPosition:I

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput v0, Lcom/asus/reader/ui/DragController;->DRAG_ACTION_MOVE:I

    .line 45
    const/4 v0, 0x1

    sput v0, Lcom/asus/reader/ui/DragController;->DRAG_ACTION_COPY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput v1, p0, Lcom/asus/reader/ui/DragController;->gridoffsetX:I

    .line 92
    iput v1, p0, Lcom/asus/reader/ui/DragController;->gridoffsetY:I

    .line 93
    iput v1, p0, Lcom/asus/reader/ui/DragController;->cateoffsetX:I

    .line 94
    iput v1, p0, Lcom/asus/reader/ui/DragController;->cateoffsetY:I

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/asus/reader/ui/DragController;->mTargetPosition:I

    .line 97
    iput-boolean v1, p0, Lcom/asus/reader/ui/DragController;->mSlideOn:Z

    .line 133
    iput-object p1, p0, Lcom/asus/reader/ui/DragController;->mContext:Landroid/content/Context;

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/asus/reader/ui/DragController;->mHandler:Landroid/os/Handler;

    .line 135
    return-void
.end method

.method private checkCategoryInside(II)V
    .locals 9
    .parameter "rawX"
    .parameter "rawY"

    .prologue
    const/4 v8, -0x1

    .line 563
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    iget-object v1, p0, Lcom/asus/reader/ui/DragController;->mCateView:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v1}, Lcom/asus/reader/ui/CategoryListView;->getCount()I

    move-result v1

    if-ge v7, v1, :cond_2

    .line 564
    iget-object v1, p0, Lcom/asus/reader/ui/DragController;->mCateView:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v1, v7}, Lcom/asus/reader/ui/CategoryListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 565
    .local v2, mchild:Landroid/view/View;
    if-nez v2, :cond_0

    .line 577
    .end local v2           #mchild:Landroid/view/View;
    :goto_1
    return-void

    .line 567
    .restart local v2       #mchild:Landroid/view/View;
    :cond_0
    iget v5, p0, Lcom/asus/reader/ui/DragController;->cateoffsetX:I

    iget v6, p0, Lcom/asus/reader/ui/DragController;->cateoffsetY:I

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/asus/reader/ui/DragController;->isInside(Landroid/view/View;IIII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 568
    iget-object v1, p0, Lcom/asus/reader/ui/DragController;->mCateView:Lcom/asus/reader/ui/CategoryListView;

    move-object v0, v2

    check-cast v0, Lcom/asus/reader/ui/CategoryItem;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/asus/reader/ui/CategoryItem;->getPosition()I

    move-result v4

    move-object v0, v2

    check-cast v0, Lcom/asus/reader/ui/CategoryItem;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/asus/reader/ui/CategoryItem;->getSubPosition()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Lcom/asus/reader/ui/CategoryListView;->setFocus(II)V

    .line 569
    iget-object v1, p0, Lcom/asus/reader/ui/DragController;->mCateView:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v1}, Lcom/asus/reader/ui/CategoryListView;->drawCategoryBackground()V

    .line 570
    check-cast v2, Lcom/asus/reader/ui/CategoryItem;

    .end local v2           #mchild:Landroid/view/View;
    invoke-virtual {v2}, Lcom/asus/reader/ui/CategoryItem;->getPosition()I

    move-result v1

    iput v1, p0, Lcom/asus/reader/ui/DragController;->mTargetPosition:I

    goto :goto_1

    .line 563
    .restart local v2       #mchild:Landroid/view/View;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 574
    .end local v2           #mchild:Landroid/view/View;
    :cond_2
    iput v8, p0, Lcom/asus/reader/ui/DragController;->mTargetPosition:I

    .line 575
    iget-object v1, p0, Lcom/asus/reader/ui/DragController;->mCateView:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v1, v8, v8}, Lcom/asus/reader/ui/CategoryListView;->setFocus(II)V

    .line 576
    iget-object v1, p0, Lcom/asus/reader/ui/DragController;->mCateView:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v1}, Lcom/asus/reader/ui/CategoryListView;->drawCategoryBackground()V

    goto :goto_1
.end method

.method private endDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 270
    iget-boolean v0, p0, Lcom/asus/reader/ui/DragController;->mDragging:Z

    if-eqz v0, :cond_2

    .line 271
    iput-boolean v1, p0, Lcom/asus/reader/ui/DragController;->mDragging:Z

    .line 273
    iget-object v0, p0, Lcom/asus/reader/ui/DragController;->mOriginator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/asus/reader/ui/DragController;->mOriginator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/ui/DragController;->mListener:Lcom/asus/reader/ui/DragController$DragListener;

    if-eqz v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/asus/reader/ui/DragController;->mListener:Lcom/asus/reader/ui/DragController$DragListener;

    invoke-interface {v0}, Lcom/asus/reader/ui/DragController$DragListener;->onDragEnd()V

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/ui/DragController;->mDragView:Lcom/asus/reader/ui/DragView;

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/asus/reader/ui/DragController;->mDragView:Lcom/asus/reader/ui/DragView;

    invoke-virtual {v0}, Lcom/asus/reader/ui/DragView;->remove()V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/reader/ui/DragController;->mDragView:Lcom/asus/reader/ui/DragView;

    .line 284
    :cond_2
    return-void
.end method

.method private getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 217
    invoke-virtual {p1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 219
    invoke-virtual {p1}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v3

    .line 220
    .local v3, willNotCache:Z
    invoke-virtual {p1, v4}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v2

    .line 225
    .local v2, color:I
    invoke-virtual {p1, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 227
    if-eqz v2, :cond_0

    .line 228
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 230
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 232
    .local v1, cacheBitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 233
    const-string v4, "Launcher.DragController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed getViewBitmap("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    const/4 v4, 0x0

    .line 244
    :goto_0
    return-object v4

    .line 237
    :cond_1
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 240
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    .line 241
    invoke-virtual {p1, v3}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 242
    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    move-object v4, v0

    .line 244
    goto :goto_0
.end method


# virtual methods
.method public addDropTarget(Lcom/asus/reader/ui/DropTarget;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 481
    iput-object p1, p0, Lcom/asus/reader/ui/DragController;->mDropTarget:Lcom/asus/reader/ui/DropTarget;

    .line 482
    return-void
.end method

.method public cancelDrag()V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/asus/reader/ui/DragController;->endDrag()V

    .line 267
    return-void
.end method

.method public checkBookScrolling(II)I
    .locals 4
    .parameter "rawX"
    .parameter "rawY"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x32

    .line 524
    iget-boolean v0, p0, Lcom/asus/reader/ui/DragController;->mSlideOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/asus/reader/ui/DragController;->mIsLandscape:Z

    if-nez v0, :cond_0

    move v0, v3

    .line 533
    :goto_0
    return v0

    .line 526
    :cond_0
    iget v0, p0, Lcom/asus/reader/ui/DragController;->gridoffsetY:I

    sub-int v0, p2, v0

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/asus/reader/ui/DragController;->mMoveTarget:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/asus/reader/ui/DragController;->gridoffsetX:I

    add-int/2addr v0, v1

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lcom/asus/reader/ui/DragController;->mMoveTarget:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getRight()I

    move-result v0

    iget v1, p0, Lcom/asus/reader/ui/DragController;->gridoffsetX:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    .line 528
    const/16 v0, -0x32

    goto :goto_0

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/ui/DragController;->mMoveTarget:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getHeight()I

    move-result v0

    sub-int/2addr v0, p2

    iget v1, p0, Lcom/asus/reader/ui/DragController;->gridoffsetY:I

    add-int/2addr v0, v1

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lcom/asus/reader/ui/DragController;->mMoveTarget:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getLeft()I

    move-result v0

    iget v1, p0, Lcom/asus/reader/ui/DragController;->gridoffsetX:I

    add-int/2addr v0, v1

    if-le p1, v0, :cond_2

    iget-object v0, p0, Lcom/asus/reader/ui/DragController;->mMoveTarget:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getRight()I

    move-result v0

    iget v1, p0, Lcom/asus/reader/ui/DragController;->gridoffsetX:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    move v0, v2

    .line 531
    goto :goto_0

    :cond_2
    move v0, v3

    .line 533
    goto :goto_0
.end method

.method public checkCateScrolling(II)I
    .locals 3
    .parameter "rawX"
    .parameter "rawY"

    .prologue
    const/4 v2, 0x0

    .line 550
    iget-boolean v1, p0, Lcom/asus/reader/ui/DragController;->mSlideOn:Z

    if-nez v1, :cond_0

    move v1, v2

    .line 559
    :goto_0
    return v1

    .line 552
    :cond_0
    iget-boolean v1, p0, Lcom/asus/reader/ui/DragController;->mIsLandscape:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x1bc

    move v0, v1

    .line 554
    .local v0, bottombound:I
    :goto_1
    iget-object v1, p0, Lcom/asus/reader/ui/DragController;->mCateView:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v1}, Lcom/asus/reader/ui/CategoryListView;->getRight()I

    move-result v1

    if-ge p1, v1, :cond_2

    const/16 v1, 0x4a

    if-ge p2, v1, :cond_2

    .line 555
    const/16 v1, -0x32

    goto :goto_0

    .line 552
    .end local v0           #bottombound:I
    :cond_1
    const/16 v1, 0x39c

    move v0, v1

    goto :goto_1

    .line 556
    .restart local v0       #bottombound:I
    :cond_2
    iget-object v1, p0, Lcom/asus/reader/ui/DragController;->mCateView:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v1}, Lcom/asus/reader/ui/CategoryListView;->getRight()I

    move-result v1

    if-ge p1, v1, :cond_3

    if-le p2, v0, :cond_3

    .line 557
    const/16 v1, 0x32

    goto :goto_0

    :cond_3
    move v1, v2

    .line 559
    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/asus/reader/ui/DragController;->mDragging:Z

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/asus/reader/ui/DragController;->mMoveTarget:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/ui/DragController;->mMoveTarget:Landroid/widget/GridView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/GridView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDragging()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/asus/reader/ui/DragController;->mDragging:Z

    return v0
.end method

.method public getSlideState()Z
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/asus/reader/ui/DragController;->mSlideOn:Z

    return v0
.end method

.method public isInside(Landroid/view/View;IIII)Z
    .locals 4
    .parameter "v"
    .parameter "rawX"
    .parameter "rawY"
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 400
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p4

    if-le p2, v0, :cond_0

    move v0, v3

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p4

    if-ge p2, v1, :cond_1

    move v1, v3

    :goto_1
    and-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, p5

    if-le p3, v1, :cond_2

    move v1, v3

    :goto_2
    and-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, p5

    if-ge p3, v1, :cond_3

    move v1, v3

    :goto_3
    and-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public isLastBound(Landroid/view/View;IIII)Z
    .locals 5
    .parameter "v"
    .parameter "rawX"
    .parameter "rawY"
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 405
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p4

    if-le p2, v0, :cond_0

    move v0, v4

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, p5

    if-le p3, v1, :cond_1

    move v1, v4

    :goto_1
    and-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p4

    if-le p2, v1, :cond_2

    move v1, v4

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v2, p5

    if-le p3, v2, :cond_3

    move v2, v4

    :goto_3
    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3
.end method

.method public isLeftBound(Landroid/view/View;IIII)Z
    .locals 4
    .parameter "v"
    .parameter "rawX"
    .parameter "rawY"
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 410
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    const/16 v1, 0x3f

    sub-int/2addr v0, v1

    add-int/2addr v0, p4

    if-le p2, v0, :cond_0

    move v0, v3

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, p4

    if-ge p2, v1, :cond_1

    move v1, v3

    :goto_1
    and-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, p5

    if-le p3, v1, :cond_2

    move v1, v3

    :goto_2
    and-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, p5

    if-ge p3, v1, :cond_3

    move v1, v3

    :goto_3
    and-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public isRightBound(Landroid/view/View;IIII)Z
    .locals 4
    .parameter "v"
    .parameter "rawX"
    .parameter "rawY"
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 415
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p4

    if-le p2, v0, :cond_0

    move v0, v3

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/lit8 v1, v1, 0x19

    add-int/2addr v1, p4

    if-ge p2, v1, :cond_1

    move v1, v3

    :goto_1
    and-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, p5

    if-le p3, v1, :cond_2

    move v1, v3

    :goto_2
    and-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, p5

    if-ge p3, v1, :cond_3

    move v1, v3

    :goto_3
    and-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 293
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 300
    :goto_0
    iget-boolean v1, p0, Lcom/asus/reader/ui/DragController;->mDragging:Z

    return v1

    .line 296
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/asus/reader/ui/DragController;->mMotionDownX:F

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/asus/reader/ui/DragController;->mMotionDownY:F

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v7, -0x1

    .line 344
    iget-boolean v4, p0, Lcom/asus/reader/ui/DragController;->mDragging:Z

    if-nez v4, :cond_0

    .line 345
    const/4 v4, 0x0

    .line 395
    :goto_0
    return v4

    .line 348
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 350
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v2, v4

    .line 351
    .local v2, screenX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v3, v4

    .line 353
    .local v3, screenY:I
    packed-switch v0, :pswitch_data_0

    .line 395
    :cond_1
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 356
    :pswitch_0
    int-to-float v4, v2

    iput v4, p0, Lcom/asus/reader/ui/DragController;->mMotionDownX:F

    .line 357
    int-to-float v4, v3

    iput v4, p0, Lcom/asus/reader/ui/DragController;->mMotionDownY:F

    .line 358
    iget-object v4, p0, Lcom/asus/reader/ui/DragController;->mListener:Lcom/asus/reader/ui/DragController$DragListener;

    invoke-interface {v4, v2, v3}, Lcom/asus/reader/ui/DragController$DragListener;->onRecordTouchPoint(II)V

    goto :goto_1

    .line 362
    :pswitch_1
    iget-object v4, p0, Lcom/asus/reader/ui/DragController;->mDragView:Lcom/asus/reader/ui/DragView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Lcom/asus/reader/ui/DragView;->move(II)V

    .line 363
    iget-object v4, p0, Lcom/asus/reader/ui/DragController;->mListener:Lcom/asus/reader/ui/DragController$DragListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-interface {v4, v5, v6}, Lcom/asus/reader/ui/DragController$DragListener;->onRecordTouchPoint(II)V

    .line 365
    iget-boolean v4, p0, Lcom/asus/reader/ui/DragController;->mSlideOn:Z

    if-eqz v4, :cond_1

    .line 366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v4, v5}, Lcom/asus/reader/ui/DragController;->checkCategoryInside(II)V

    goto :goto_1

    .line 371
    :pswitch_2
    iget-boolean v4, p0, Lcom/asus/reader/ui/DragController;->mDragging:Z

    if-eqz v4, :cond_4

    .line 372
    const/4 v1, 0x0

    .line 373
    .local v1, changeCategory:Z
    const-string v4, "reader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mTargetPosition:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/asus/reader/ui/DragController;->mTargetPosition:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget v4, p0, Lcom/asus/reader/ui/DragController;->mTargetPosition:I

    if-eq v4, v7, :cond_2

    .line 375
    iget-object v4, p0, Lcom/asus/reader/ui/DragController;->mCateView:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v4, v7, v7}, Lcom/asus/reader/ui/CategoryListView;->setFocus(II)V

    .line 376
    iget-object v4, p0, Lcom/asus/reader/ui/DragController;->mCateView:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v4}, Lcom/asus/reader/ui/CategoryListView;->drawCategoryBackground()V

    .line 377
    iget-boolean v4, p0, Lcom/asus/reader/ui/DragController;->mSlideOn:Z

    if-eqz v4, :cond_2

    .line 378
    iget-object v4, p0, Lcom/asus/reader/ui/DragController;->mListener:Lcom/asus/reader/ui/DragController$DragListener;

    iget v5, p0, Lcom/asus/reader/ui/DragController;->mTargetPosition:I

    invoke-interface {v4, v5}, Lcom/asus/reader/ui/DragController$DragListener;->moveBookCategory(I)Z

    move-result v1

    .line 380
    :cond_2
    iget-boolean v4, p0, Lcom/asus/reader/ui/DragController;->mSlideOn:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/asus/reader/ui/DragController;->mIsLandscape:Z

    if-eqz v4, :cond_4

    .line 381
    :cond_3
    iget-object v4, p0, Lcom/asus/reader/ui/DragController;->mDropTarget:Lcom/asus/reader/ui/DropTarget;

    iget-object v5, p0, Lcom/asus/reader/ui/DragController;->mDragView:Lcom/asus/reader/ui/DragView;

    invoke-virtual {v5}, Lcom/asus/reader/ui/DragView;->getLeft()I

    move-result v5

    iget v6, p0, Lcom/asus/reader/ui/DragController;->gridoffsetX:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/asus/reader/ui/DragController;->mDragView:Lcom/asus/reader/ui/DragView;

    invoke-virtual {v6}, Lcom/asus/reader/ui/DragView;->getTop()I

    move-result v6

    iget v7, p0, Lcom/asus/reader/ui/DragController;->gridoffsetY:I

    sub-int/2addr v6, v7

    invoke-interface {v4, v5, v6}, Lcom/asus/reader/ui/DropTarget;->onDrop(II)V

    .line 383
    .end local v1           #changeCategory:Z
    :cond_4
    invoke-direct {p0}, Lcom/asus/reader/ui/DragController;->endDrag()V

    goto/16 :goto_1

    .line 390
    :pswitch_3
    iget-object v4, p0, Lcom/asus/reader/ui/DragController;->mCateView:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v4, v7, v7}, Lcom/asus/reader/ui/CategoryListView;->setFocus(II)V

    .line 391
    iget-object v4, p0, Lcom/asus/reader/ui/DragController;->mCateView:Lcom/asus/reader/ui/CategoryListView;

    invoke-virtual {v4}, Lcom/asus/reader/ui/CategoryListView;->drawCategoryBackground()V

    .line 392
    invoke-virtual {p0}, Lcom/asus/reader/ui/DragController;->cancelDrag()V

    goto/16 :goto_1

    .line 353
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public pointToPosition(III)I
    .locals 9
    .parameter "rawX"
    .parameter "rawY"
    .parameter "tempposition"

    .prologue
    const/4 v8, -0x1

    .line 420
    iget-boolean v0, p0, Lcom/asus/reader/ui/DragController;->mSlideOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/asus/reader/ui/DragController;->mIsLandscape:Z

    if-nez v0, :cond_0

    move v0, v8

    .line 442
    :goto_0
    return v0

    .line 423
    :cond_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    iget-object v0, p0, Lcom/asus/reader/ui/DragController;->mMoveTarget:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getCount()I

    move-result v0

    if-ge v6, v0, :cond_6

    .line 424
    iget-object v0, p0, Lcom/asus/reader/ui/DragController;->mMoveTarget:Landroid/widget/GridView;

    invoke-virtual {v0, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 425
    .local v1, mchild:Landroid/view/View;
    if-nez v1, :cond_1

    move v0, v8

    .line 426
    goto :goto_0

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/ui/DragController;->mMoveTarget:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    add-int v7, v0, v6

    .line 428
    .local v7, position:I
    if-le p3, v7, :cond_2

    .line 429
    iget v4, p0, Lcom/asus/reader/ui/DragController;->gridoffsetX:I

    iget v5, p0, Lcom/asus/reader/ui/DragController;->gridoffsetY:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/asus/reader/ui/DragController;->isLeftBound(Landroid/view/View;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v7

    .line 430
    goto :goto_0

    .line 431
    :cond_2
    if-ge p3, v7, :cond_3

    .line 432
    iget v4, p0, Lcom/asus/reader/ui/DragController;->gridoffsetX:I

    iget v5, p0, Lcom/asus/reader/ui/DragController;->gridoffsetY:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/asus/reader/ui/DragController;->isRightBound(Landroid/view/View;IIII)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v7

    .line 433
    goto :goto_0

    .line 434
    :cond_3
    if-ne p3, v7, :cond_5

    .line 423
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 437
    :cond_5
    iget-object v0, p0, Lcom/asus/reader/ui/DragController;->mMoveTarget:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ne v7, v0, :cond_4

    .line 438
    iget v4, p0, Lcom/asus/reader/ui/DragController;->gridoffsetX:I

    iget v5, p0, Lcom/asus/reader/ui/DragController;->gridoffsetY:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/asus/reader/ui/DragController;->isLastBound(Landroid/view/View;IIII)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v7

    .line 439
    goto :goto_0

    .end local v1           #mchild:Landroid/view/View;
    .end local v7           #position:I
    :cond_6
    move v0, v8

    .line 442
    goto :goto_0
.end method

.method public setCategoryList(Lcom/asus/reader/ui/CategoryListView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 311
    iput-object p1, p0, Lcom/asus/reader/ui/DragController;->mCateView:Lcom/asus/reader/ui/CategoryListView;

    .line 312
    return-void
.end method

.method public setCateoffset(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 332
    iput p1, p0, Lcom/asus/reader/ui/DragController;->cateoffsetX:I

    .line 333
    iput p2, p0, Lcom/asus/reader/ui/DragController;->cateoffsetY:I

    .line 334
    return-void
.end method

.method public setDragListener(Lcom/asus/reader/ui/DragController$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 466
    iput-object p1, p0, Lcom/asus/reader/ui/DragController;->mListener:Lcom/asus/reader/ui/DragController$DragListener;

    .line 467
    return-void
.end method

.method public setGridoffset(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 327
    iput p1, p0, Lcom/asus/reader/ui/DragController;->gridoffsetX:I

    .line 328
    iput p2, p0, Lcom/asus/reader/ui/DragController;->gridoffsetY:I

    .line 329
    return-void
.end method

.method public setMoveTarget(Landroid/widget/GridView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/asus/reader/ui/DragController;->mMoveTarget:Landroid/widget/GridView;

    .line 308
    return-void
.end method

.method public setOrientation(Z)V
    .locals 0
    .parameter "islandscape"

    .prologue
    .line 315
    iput-boolean p1, p0, Lcom/asus/reader/ui/DragController;->mIsLandscape:Z

    .line 316
    return-void
.end method

.method public setSlideState(Z)V
    .locals 0
    .parameter "ison"

    .prologue
    .line 318
    iput-boolean p1, p0, Lcom/asus/reader/ui/DragController;->mSlideOn:Z

    .line 319
    return-void
.end method

.method public startDrag(Landroid/graphics/Bitmap;IIIIIILcom/asus/reader/ui/DragSource;I)V
    .locals 12
    .parameter "b"
    .parameter "screenX"
    .parameter "screenY"
    .parameter "textureLeft"
    .parameter "textureTop"
    .parameter "textureWidth"
    .parameter "textureHeight"
    .parameter "source"
    .parameter "dragAction"

    .prologue
    .line 184
    iget-object v3, p0, Lcom/asus/reader/ui/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_0

    .line 185
    iget-object v3, p0, Lcom/asus/reader/ui/DragController;->mContext:Landroid/content/Context;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/asus/reader/ui/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 188
    :cond_0
    iget-object v3, p0, Lcom/asus/reader/ui/DragController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/asus/reader/ui/DragController;->mWindowToken:Landroid/os/IBinder;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 190
    iget-object v3, p0, Lcom/asus/reader/ui/DragController;->mListener:Lcom/asus/reader/ui/DragController$DragListener;

    if-eqz v3, :cond_1

    .line 191
    iget-object v3, p0, Lcom/asus/reader/ui/DragController;->mListener:Lcom/asus/reader/ui/DragController$DragListener;

    move-object v0, v3

    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-interface {v0, v1, v2}, Lcom/asus/reader/ui/DragController$DragListener;->onDragStart(Lcom/asus/reader/ui/DragSource;I)V

    .line 194
    :cond_1
    iget v3, p0, Lcom/asus/reader/ui/DragController;->mMotionDownX:F

    float-to-int v3, v3

    sub-int v6, v3, p2

    .line 195
    .local v6, registrationX:I
    iget v3, p0, Lcom/asus/reader/ui/DragController;->mMotionDownY:F

    float-to-int v3, v3

    sub-int v7, v3, p3

    .line 197
    .local v7, registrationY:I
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/asus/reader/ui/DragController;->mDragging:Z

    .line 198
    move-object/from16 v0, p8

    move-object v1, p0

    iput-object v0, v1, Lcom/asus/reader/ui/DragController;->mDragSource:Lcom/asus/reader/ui/DragSource;

    .line 200
    const-string v3, "drag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startDrag:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v3, "drag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startDrag:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/asus/reader/ui/DragController;->mMotionDownX:F

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/asus/reader/ui/DragController;->mMotionDownY:F

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v3, Lcom/asus/reader/ui/DragView;

    iget-object v4, p0, Lcom/asus/reader/ui/DragController;->mContext:Landroid/content/Context;

    move-object v5, p1

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v3 .. v11}, Lcom/asus/reader/ui/DragView;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;IIIIII)V

    iput-object v3, p0, Lcom/asus/reader/ui/DragController;->mDragView:Lcom/asus/reader/ui/DragView;

    .line 205
    iget-object v3, p0, Lcom/asus/reader/ui/DragController;->mDragView:Lcom/asus/reader/ui/DragView;

    iget-object v4, p0, Lcom/asus/reader/ui/DragController;->mWindowToken:Landroid/os/IBinder;

    iget v5, p0, Lcom/asus/reader/ui/DragController;->mMotionDownX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/asus/reader/ui/DragController;->mMotionDownY:F

    .end local v6           #registrationX:I
    float-to-int v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/asus/reader/ui/DragView;->show(Landroid/os/IBinder;II)V

    .line 206
    return-void
.end method

.method public startDrag(Landroid/view/View;Lcom/asus/reader/ui/DragSource;I)V
    .locals 10
    .parameter "v"
    .parameter "source"
    .parameter "dragAction"

    .prologue
    const/4 v4, 0x0

    .line 148
    iput-object p1, p0, Lcom/asus/reader/ui/DragController;->mOriginator:Landroid/view/View;

    .line 149
    invoke-direct {p0, p1}, Lcom/asus/reader/ui/DragController;->getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 150
    .local v1, b:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v5, p0, Lcom/asus/reader/ui/DragController;->gridoffsetX:I

    add-int v2, v0, v5

    .line 156
    .local v2, screenX:I
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Lcom/asus/reader/ui/DragController;->gridoffsetY:I

    add-int v3, v0, v5

    .line 157
    .local v3, screenY:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p0

    move v5, v4

    move-object v8, p2

    move v9, p3

    invoke-virtual/range {v0 .. v9}, Lcom/asus/reader/ui/DragController;->startDrag(Landroid/graphics/Bitmap;IIIIIILcom/asus/reader/ui/DragSource;I)V

    .line 160
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method
