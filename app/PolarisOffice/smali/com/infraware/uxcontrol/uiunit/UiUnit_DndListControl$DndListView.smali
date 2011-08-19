.class public Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;
.super Landroid/widget/ListView;
.source "UiUnit_DndListControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DndListView"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoordOffset:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragListener:Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DragListener;

.field private mDragPoint:I

.field private mDragPos:I

.field private mDragView:Landroid/widget/ImageView;

.field private mDropListener:Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DropListener;

.field private mFirstDragPos:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeight:I

.field private mItemHeightExpanded:I

.field private mItemHeightNormal:I

.field private mLowerBound:I

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field final synthetic this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl;


# direct methods
.method public constructor <init>(Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->this$0:Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl;

    .line 185
    invoke-direct {p0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 178
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mTempRect:Landroid/graphics/Rect;

    .line 188
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mTouchSlop:I

    .line 189
    iput-object p2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mContext:Landroid/content/Context;

    .line 193
    return-void
.end method

.method private adjustScrollBounds(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 271
    iget v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    .line 272
    iget v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mUpperBound:I

    .line 274
    :cond_0
    iget v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1

    .line 275
    iget v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mLowerBound:I

    .line 277
    :cond_1
    return-void
.end method

.method private doExpansion()V
    .locals 10

    .prologue
    .line 320
    iget v7, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v0, v7, v8

    .line 321
    .local v0, childnum:I
    iget v7, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragPos:I

    iget v8, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mFirstDragPos:I

    if-le v7, v8, :cond_0

    .line 322
    add-int/lit8 v0, v0, 0x1

    .line 325
    :cond_0
    iget v7, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mFirstDragPos:I

    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 327
    .local v1, first:Landroid/view/View;
    const/4 v3, 0x0

    .line 328
    .local v3, i:I
    :goto_0
    invoke-virtual {p0, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 329
    .local v6, vv:Landroid/view/View;
    if-nez v6, :cond_1

    .line 354
    return-void

    .line 332
    :cond_1
    iget v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mItemHeightNormal:I

    .line 333
    .local v2, height:I
    const/4 v5, 0x0

    .line 334
    .local v5, visibility:I
    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 336
    iget v7, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragPos:I

    iget v8, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mFirstDragPos:I

    if-ne v7, v8, :cond_3

    .line 338
    const/4 v5, 0x4

    .line 349
    :cond_2
    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 350
    .local v4, params:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 351
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 327
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 341
    .end local v4           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const/16 v5, 0x8

    .line 342
    const/4 v2, 0x1

    goto :goto_1

    .line 344
    :cond_4
    if-ne v3, v0, :cond_2

    .line 345
    iget v7, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->getCount()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_2

    .line 346
    iget v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mItemHeightExpanded:I

    goto :goto_1
.end method

.method private dragView(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x1

    .line 465
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragPoint:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mCoordOffset:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 467
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 469
    .local v0, a_anLocation:[I
    invoke-virtual {p0, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->getLocationInWindow([I)V

    .line 471
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    aget v2, v0, v4

    if-ge v1, v2, :cond_0

    .line 472
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    aget v2, v0, v4

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    return-void
.end method

.method private getItemForPosition(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 258
    iget v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragPoint:I

    sub-int v2, p1, v2

    const/16 v3, 0x20

    sub-int v0, v2, v3

    .line 259
    .local v0, adjustedy:I
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->myPointToPosition(II)I

    move-result v1

    .line 260
    .local v1, pos:I
    if-ltz v1, :cond_1

    .line 261
    iget v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mFirstDragPos:I

    if-gt v1, v2, :cond_0

    .line 262
    add-int/lit8 v1, v1, 0x1

    .line 267
    :cond_0
    :goto_0
    return v1

    .line 264
    :cond_1
    if-gez v0, :cond_0

    .line 265
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private myPointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 245
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mTempRect:Landroid/graphics/Rect;

    .line 246
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->getChildCount()I

    move-result v1

    .line 247
    .local v1, count:I
    const/4 v4, 0x1

    sub-int v3, v1, v4

    .local v3, i:I
    :goto_0
    if-gez v3, :cond_0

    .line 254
    const/4 v4, -0x1

    :goto_1
    return v4

    .line 248
    :cond_0
    invoke-virtual {p0, v3}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 249
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 250
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->getFirstVisiblePosition()I

    move-result v4

    add-int/2addr v4, v3

    goto :goto_1

    .line 247
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method private startDragging(Landroid/graphics/Bitmap;I)V
    .locals 6
    .parameter "bm"
    .parameter "y"

    .prologue
    const/4 v5, -0x2

    .line 426
    invoke-direct {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->stopDragging()V

    .line 428
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 429
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 430
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x7

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 431
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragPoint:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mCoordOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 433
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 434
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 435
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x198

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 439
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 440
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 442
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 443
    .local v1, v:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 445
    .local v0, backGroundColor:I
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 447
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 448
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 449
    iput-object p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 451
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mWindowManager:Landroid/view/WindowManager;

    .line 452
    iget-object v2, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    iput-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragView:Landroid/widget/ImageView;

    .line 454
    return-void
.end method

.method private stopDragging()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 478
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 480
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 481
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 482
    iput-object v3, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragView:Landroid/widget/ImageView;

    .line 484
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 485
    iget-object v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 486
    iput-object v3, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 488
    :cond_1
    return-void
.end method

.method private unExpandViews(Z)V
    .locals 7
    .parameter "deletion"

    .prologue
    const/4 v6, 0x0

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, i:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 285
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_1

    .line 286
    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->getFirstVisiblePosition()I

    move-result v2

    .line 289
    .local v2, position:I
    invoke-virtual {p0, v6}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 290
    .local v4, y:I
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 291
    invoke-virtual {p0, v2, v4}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->setSelectionFromTop(II)V

    .line 294
    .end local v2           #position:I
    .end local v4           #y:I
    :cond_0
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->layoutChildren()V

    .line 295
    invoke-virtual {p0, v0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 296
    if-nez v3, :cond_1

    .line 305
    return-void

    .line 300
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 301
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mItemHeightNormal:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 302
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    .line 197
    iget-object v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragListener:Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DragListener;

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDropListener:Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DropListener;

    if-eqz v9, :cond_1

    .line 198
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 237
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    :goto_1
    return v9

    .line 200
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 201
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 202
    .local v8, y:I
    invoke-virtual {p0, v7, v8}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->pointToPosition(II)I

    move-result v3

    .line 203
    .local v3, itemnum:I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_1

    .line 206
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v3, v9

    invoke-virtual {p0, v9}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 207
    .local v2, item:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v9

    sub-int v9, v8, v9

    iput v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragPoint:I

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    float-to-int v9, v9

    sub-int/2addr v9, v8

    iput v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mCoordOffset:I

    .line 209
    const v9, 0x7f0c00bd

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 211
    .local v1, dragger:Landroid/view/View;
    iget-object v5, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mTempRect:Landroid/graphics/Rect;

    .line 212
    .local v5, r:Landroid/graphics/Rect;
    invoke-virtual {v1, v5}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 214
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v10

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v11

    add-int/2addr v10, v11

    .line 215
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v12

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    .line 214
    invoke-direct {v4, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 218
    .local v4, oRect:Landroid/graphics/Rect;
    iget v9, v4, Landroid/graphics/Rect;->left:I

    if-le v7, v9, :cond_2

    iget v9, v4, Landroid/graphics/Rect;->right:I

    if-ge v7, v9, :cond_2

    .line 219
    iget v9, v4, Landroid/graphics/Rect;->top:I

    if-le v8, v9, :cond_2

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    if-ge v8, v9, :cond_2

    .line 220
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 223
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 224
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v8}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->startDragging(Landroid/graphics/Bitmap;I)V

    .line 225
    iput v3, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragPos:I

    .line 226
    iget v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragPos:I

    iput v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mFirstDragPos:I

    .line 227
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->getHeight()I

    move-result v9

    iput v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mHeight:I

    .line 228
    iget v6, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mTouchSlop:I

    .line 229
    .local v6, touchSlop:I
    sub-int v9, v8, v6

    iget v10, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mHeight:I

    div-int/lit8 v10, v10, 0x3

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mUpperBound:I

    .line 230
    add-int v9, v8, v6

    iget v10, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mHeight:I

    mul-int/lit8 v10, v10, 0x2

    div-int/lit8 v10, v10, 0x3

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mLowerBound:I

    .line 231
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 233
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #touchSlop:I
    :cond_2
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragView:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, 0x0

    .line 358
    iget-object v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v9, :cond_0

    .line 359
    iget-object v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 361
    :cond_0
    iget-object v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragListener:Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DragListener;

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDropListener:Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DropListener;

    if-eqz v9, :cond_c

    :cond_1
    iget-object v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v9, :cond_c

    .line 362
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 363
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 420
    :cond_2
    :goto_0
    const/4 v9, 0x1

    .line 422
    .end local v0           #action:I
    :goto_1
    return v9

    .line 366
    .restart local v0       #action:I
    :pswitch_0
    iget-object v3, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mTempRect:Landroid/graphics/Rect;

    .line 367
    .local v3, r:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 368
    invoke-direct {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->stopDragging()V

    .line 375
    iget-object v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDropListener:Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DropListener;

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragPos:I

    if-ltz v9, :cond_3

    iget v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragPos:I

    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->getCount()I

    move-result v10

    if-ge v9, v10, :cond_3

    .line 376
    iget-object v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDropListener:Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DropListener;

    iget v10, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mFirstDragPos:I

    iget v11, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragPos:I

    invoke-interface {v9, v10, v11}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DropListener;->drop(II)V

    .line 378
    :cond_3
    invoke-direct {p0, v12}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->unExpandViews(Z)V

    goto :goto_0

    .line 384
    .end local v3           #r:Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 385
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 386
    .local v8, y:I
    invoke-direct {p0, v7, v8}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->dragView(II)V

    .line 387
    invoke-direct {p0, v8}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->getItemForPosition(I)I

    move-result v1

    .line 388
    .local v1, itemnum:I
    if-ltz v1, :cond_2

    .line 389
    if-eqz v0, :cond_4

    iget v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragPos:I

    if-eq v1, v9, :cond_6

    .line 390
    :cond_4
    iget-object v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragListener:Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DragListener;

    if-eqz v9, :cond_5

    .line 391
    iget-object v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragListener:Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DragListener;

    iget v10, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragPos:I

    invoke-interface {v9, v10, v1}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DragListener;->drag(II)V

    .line 393
    :cond_5
    iput v1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragPos:I

    .line 394
    invoke-direct {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->doExpansion()V

    .line 396
    :cond_6
    const/4 v5, 0x0

    .line 397
    .local v5, speed:I
    invoke-direct {p0, v8}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->adjustScrollBounds(I)V

    .line 398
    iget v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mLowerBound:I

    if-le v8, v9, :cond_a

    .line 400
    iget v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mHeight:I

    iget v10, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mLowerBound:I

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    if-le v8, v9, :cond_9

    const/16 v9, 0x10

    move v5, v9

    .line 405
    :cond_7
    :goto_2
    if-eqz v5, :cond_2

    .line 406
    iget v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0, v12, v9}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->pointToPosition(II)I

    move-result v4

    .line 407
    .local v4, ref:I
    const/4 v9, -0x1

    if-ne v4, v9, :cond_8

    .line 409
    iget v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->getDividerHeight()I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x40

    invoke-virtual {p0, v12, v9}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->pointToPosition(II)I

    move-result v4

    .line 411
    :cond_8
    invoke-virtual {p0}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p0, v9}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 412
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_2

    .line 413
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    .line 414
    .local v2, pos:I
    sub-int v9, v2, v5

    invoke-virtual {p0, v4, v9}, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 400
    .end local v2           #pos:I
    .end local v4           #ref:I
    .end local v6           #v:Landroid/view/View;
    :cond_9
    const/4 v9, 0x4

    move v5, v9

    goto :goto_2

    .line 401
    :cond_a
    iget v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mUpperBound:I

    if-ge v8, v9, :cond_7

    .line 403
    iget v9, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mUpperBound:I

    div-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_b

    const/16 v9, -0x10

    move v5, v9

    :goto_3
    goto :goto_2

    :cond_b
    const/4 v9, -0x4

    move v5, v9

    goto :goto_3

    .line 422
    .end local v0           #action:I
    .end local v1           #itemnum:I
    .end local v5           #speed:I
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_c
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_1

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDragListener(Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 491
    iput-object p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDragListener:Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DragListener;

    .line 492
    return-void
.end method

.method public setDropListener(Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DropListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 495
    iput-object p1, p0, Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DndListView;->mDropListener:Lcom/infraware/uxcontrol/uiunit/UiUnit_DndListControl$DropListener;

    .line 496
    return-void
.end method
