.class public Lcom/google/android/music/TouchInterceptor;
.super Landroid/widget/ListView;
.source "TouchInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/TouchInterceptor$RemoveListener;,
        Lcom/google/android/music/TouchInterceptor$DropListener;,
        Lcom/google/android/music/TouchInterceptor$DragListener;
    }
.end annotation


# static fields
.field private static final FLING:I = 0x0

.field private static final NONE:I = -0x1

.field private static final SLIDE:I = 0x1

.field private static final TRASH:I = 0x2


# instance fields
.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragListener:Lcom/google/android/music/TouchInterceptor$DragListener;

.field private mDragPointX:I

.field private mDragPointY:I

.field private mDragPos:I

.field private mDragView:Landroid/widget/ImageView;

.field private mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGrabHandleWidth:I

.field private mHeight:I

.field private mItemHeightExpanded:I

.field private mItemHeightHalf:I

.field private mItemHeightNormal:I

.field private mLowerBound:I

.field private mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;

.field private mRemoveMode:I

.field private mSrcDragPos:I

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mTrashcan:Landroid/graphics/drawable/Drawable;

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/music/TouchInterceptor;->mRemoveMode:I

    .line 60
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 71
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TouchInterceptor;->mTouchSlop:I

    .line 72
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 73
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TouchInterceptor;->mItemHeightNormal:I

    .line 74
    iget v1, p0, Lcom/google/android/music/TouchInterceptor;->mItemHeightNormal:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/music/TouchInterceptor;->mItemHeightHalf:I

    .line 75
    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TouchInterceptor;->mItemHeightExpanded:I

    .line 76
    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/TouchInterceptor;->mGrabHandleWidth:I

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/TouchInterceptor;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/TouchInterceptor;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/music/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/music/TouchInterceptor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/music/TouchInterceptor;->stopDragging()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/TouchInterceptor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/google/android/music/TouchInterceptor;->mSrcDragPos:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/music/TouchInterceptor;)Lcom/google/android/music/TouchInterceptor$RemoveListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/music/TouchInterceptor;->mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/TouchInterceptor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/music/TouchInterceptor;->unExpandViews(Z)V

    return-void
.end method

.method private adjustScrollBounds(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 186
    iget v0, p0, Lcom/google/android/music/TouchInterceptor;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    .line 187
    iget v0, p0, Lcom/google/android/music/TouchInterceptor;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/android/music/TouchInterceptor;->mUpperBound:I

    .line 189
    :cond_0
    iget v0, p0, Lcom/google/android/music/TouchInterceptor;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1

    .line 190
    iget v0, p0, Lcom/google/android/music/TouchInterceptor;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/android/music/TouchInterceptor;->mLowerBound:I

    .line 192
    :cond_1
    return-void
.end method

.method private doExpansion()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 235
    iget v8, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v9

    sub-int v0, v8, v9

    .line 236
    .local v0, childnum:I
    iget v8, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    iget v9, p0, Lcom/google/android/music/TouchInterceptor;->mSrcDragPos:I

    if-le v8, v9, :cond_0

    .line 237
    add-int/lit8 v0, v0, 0x1

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getHeaderViewsCount()I

    move-result v4

    .line 241
    .local v4, numheaders:I
    iget v8, p0, Lcom/google/android/music/TouchInterceptor;->mSrcDragPos:I

    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/google/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 242
    .local v1, first:Landroid/view/View;
    const/4 v3, 0x0

    .line 243
    .local v3, i:I
    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 244
    .local v7, vv:Landroid/view/View;
    if-nez v7, :cond_1

    .line 280
    return-void

    .line 248
    :cond_1
    iget v2, p0, Lcom/google/android/music/TouchInterceptor;->mItemHeightNormal:I

    .line 249
    .local v2, height:I
    const/4 v6, 0x0

    .line 250
    .local v6, visibility:I
    iget v8, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    if-ge v8, v4, :cond_4

    if-ne v3, v4, :cond_4

    .line 253
    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 254
    const/4 v6, 0x4

    .line 275
    :cond_2
    :goto_1
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 276
    .local v5, params:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 277
    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 256
    .end local v5           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget v2, p0, Lcom/google/android/music/TouchInterceptor;->mItemHeightExpanded:I

    goto :goto_1

    .line 258
    :cond_4
    invoke-virtual {v7, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 260
    iget v8, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    iget v9, p0, Lcom/google/android/music/TouchInterceptor;->mSrcDragPos:I

    if-eq v8, v9, :cond_5

    invoke-virtual {p0, v7}, Lcom/google/android/music/TouchInterceptor;->getPositionForView(Landroid/view/View;)I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getCount()I

    move-result v9

    sub-int/2addr v9, v10

    if-ne v8, v9, :cond_6

    .line 262
    :cond_5
    const/4 v6, 0x4

    goto :goto_1

    .line 268
    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    .line 270
    :cond_7
    if-ne v3, v0, :cond_2

    .line 271
    iget v8, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    if-lt v8, v4, :cond_2

    iget v8, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getCount()I

    move-result v9

    sub-int/2addr v9, v10

    if-ge v8, v9, :cond_2

    .line 272
    iget v2, p0, Lcom/google/android/music/TouchInterceptor;->mItemHeightExpanded:I

    goto :goto_1
.end method

.method private dragView(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 393
    iget v2, p0, Lcom/google/android/music/TouchInterceptor;->mRemoveMode:I

    if-ne v2, v5, :cond_1

    .line 394
    const/high16 v0, 0x3f80

    .line 395
    .local v0, alpha:F
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 396
    .local v1, width:I
    div-int/lit8 v2, v1, 0x2

    if-le p1, v2, :cond_0

    .line 397
    sub-int v2, v1, p1

    int-to-float v2, v2

    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 399
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 402
    .end local v0           #alpha:F
    .end local v1           #width:I
    :cond_1
    iget v2, p0, Lcom/google/android/music/TouchInterceptor;->mRemoveMode:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/music/TouchInterceptor;->mRemoveMode:I

    if-ne v2, v6, :cond_4

    .line 403
    :cond_2
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/google/android/music/TouchInterceptor;->mDragPointX:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/google/android/music/TouchInterceptor;->mXOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 408
    :goto_0
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/google/android/music/TouchInterceptor;->mDragPointY:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/google/android/music/TouchInterceptor;->mYOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 409
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/google/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mTrashcan:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 412
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 413
    .restart local v1       #width:I
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-le p2, v2, :cond_5

    .line 414
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mTrashcan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 421
    .end local v1           #width:I
    :cond_3
    :goto_1
    return-void

    .line 405
    :cond_4
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/google/android/music/TouchInterceptor;->mXOffset:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    .line 415
    .restart local v1       #width:I
    :cond_5
    if-lez v1, :cond_6

    div-int/lit8 v2, v1, 0x4

    if-le p1, v2, :cond_6

    .line 416
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mTrashcan:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    .line 418
    :cond_6
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mTrashcan:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1
.end method

.method private getItemForPosition(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 171
    iget v2, p0, Lcom/google/android/music/TouchInterceptor;->mDragPointY:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/google/android/music/TouchInterceptor;->mItemHeightHalf:I

    sub-int v0, v2, v3

    .line 172
    .local v0, adjustedy:I
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/google/android/music/TouchInterceptor;->myPointToPosition(II)I

    move-result v1

    .line 173
    .local v1, pos:I
    if-ltz v1, :cond_1

    .line 174
    iget v2, p0, Lcom/google/android/music/TouchInterceptor;->mSrcDragPos:I

    if-gt v1, v2, :cond_0

    .line 175
    add-int/lit8 v1, v1, 0x1

    .line 182
    :cond_0
    :goto_0
    return v1

    .line 177
    :cond_1
    if-gez v0, :cond_0

    .line 180
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private myPointToPosition(II)I
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x1

    .line 149
    if-gez p2, :cond_0

    .line 152
    iget v5, p0, Lcom/google/android/music/TouchInterceptor;->mItemHeightNormal:I

    add-int/2addr v5, p2

    invoke-direct {p0, p1, v5}, Lcom/google/android/music/TouchInterceptor;->myPointToPosition(II)I

    move-result v4

    .line 153
    .local v4, pos:I
    if-lez v4, :cond_0

    .line 154
    sub-int v5, v4, v6

    .line 167
    .end local v4           #pos:I
    :goto_0
    return v5

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 159
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getChildCount()I

    move-result v1

    .line 160
    .local v1, count:I
    sub-int v3, v1, v6

    .local v3, i:I
    :goto_1
    if-ltz v3, :cond_2

    .line 161
    invoke-virtual {p0, v3}, Lcom/google/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 162
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 163
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v5

    add-int/2addr v5, v3

    goto :goto_0

    .line 160
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 167
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v5, -0x1

    goto :goto_0
.end method

.method private startDragging(Landroid/graphics/Bitmap;II)V
    .locals 6
    .parameter "bm"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x0

    .line 363
    invoke-direct {p0}, Lcom/google/android/music/TouchInterceptor;->stopDragging()V

    .line 365
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 366
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x33

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 367
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/google/android/music/TouchInterceptor;->mDragPointX:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/google/android/music/TouchInterceptor;->mXOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 368
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/google/android/music/TouchInterceptor;->mDragPointY:I

    sub-int v3, p3, v3

    iget v4, p0, Lcom/google/android/music/TouchInterceptor;->mYOffset:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 370
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 371
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 372
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x398

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 377
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 378
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 380
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 381
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 382
    .local v1, v:Landroid/widget/ImageView;
    const v2, 0x7f0201c5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 383
    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 384
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 385
    iput-object p1, p0, Lcom/google/android/music/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 387
    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    .line 388
    iget-object v2, p0, Lcom/google/android/music/TouchInterceptor;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/google/android/music/TouchInterceptor;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    iput-object v1, p0, Lcom/google/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    .line 390
    return-void
.end method

.method private stopDragging()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 424
    iget-object v1, p0, Lcom/google/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/google/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 426
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 427
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/google/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 428
    iget-object v1, p0, Lcom/google/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 429
    iput-object v3, p0, Lcom/google/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    .line 431
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 432
    iget-object v1, p0, Lcom/google/android/music/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 433
    iput-object v3, p0, Lcom/google/android/music/TouchInterceptor;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/TouchInterceptor;->mTrashcan:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 436
    iget-object v1, p0, Lcom/google/android/music/TouchInterceptor;->mTrashcan:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 438
    :cond_2
    return-void
.end method

.method private unExpandViews(Z)V
    .locals 7
    .parameter "deletion"

    .prologue
    const/4 v6, 0x0

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, i:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 200
    .local v3, v:Landroid/view/View;
    if-nez v3, :cond_1

    .line 201
    if-eqz p1, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v2

    .line 204
    .local v2, position:I
    invoke-virtual {p0, v6}, Lcom/google/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 205
    .local v4, y:I
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/music/TouchInterceptor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 206
    invoke-virtual {p0, v2, v4}, Lcom/google/android/music/TouchInterceptor;->setSelectionFromTop(II)V

    .line 209
    .end local v2           #position:I
    .end local v4           #y:I
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->layoutChildren()V

    .line 210
    invoke-virtual {p0, v0}, Lcom/google/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 211
    if-nez v3, :cond_1

    .line 220
    return-void

    .line 215
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 216
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget v5, p0, Lcom/google/android/music/TouchInterceptor;->mItemHeightNormal:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 217
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    .line 81
    iget-object v6, p0, Lcom/google/android/music/TouchInterceptor;->mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/google/android/music/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v6, :cond_0

    .line 82
    iget v6, p0, Lcom/google/android/music/TouchInterceptor;->mRemoveMode:I

    if-nez v6, :cond_0

    .line 83
    new-instance v6, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Lcom/google/android/music/TouchInterceptor$1;

    invoke-direct {v8, p0}, Lcom/google/android/music/TouchInterceptor$1;-><init>(Lcom/google/android/music/TouchInterceptor;)V

    invoke-direct {v6, v7, v8}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v6, p0, Lcom/google/android/music/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    .line 106
    :cond_0
    iget-object v6, p0, Lcom/google/android/music/TouchInterceptor;->mDragListener:Lcom/google/android/music/TouchInterceptor$DragListener;

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/google/android/music/TouchInterceptor;->mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;

    if-eqz v6, :cond_2

    .line 107
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 140
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    :goto_1
    return v6

    .line 109
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 110
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 111
    .local v5, y:I
    invoke-virtual {p0, v4, v5}, Lcom/google/android/music/TouchInterceptor;->pointToPosition(II)I

    move-result v2

    .line 112
    .local v2, itemnum:I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_2

    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getHeaderViewsCount()I

    move-result v6

    if-lt v2, v6, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {p0, v6}, Lcom/google/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 117
    .local v1, item:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int v6, v4, v6

    iput v6, p0, Lcom/google/android/music/TouchInterceptor;->mDragPointX:I

    .line 118
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v6, v5, v6

    iput v6, p0, Lcom/google/android/music/TouchInterceptor;->mDragPointY:I

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v6, v4

    iput v6, p0, Lcom/google/android/music/TouchInterceptor;->mXOffset:I

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v6, v5

    iput v6, p0, Lcom/google/android/music/TouchInterceptor;->mYOffset:I

    .line 121
    iget v6, p0, Lcom/google/android/music/TouchInterceptor;->mGrabHandleWidth:I

    if-ge v4, v6, :cond_3

    .line 122
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 125
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 126
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 127
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/music/TouchInterceptor;->startDragging(Landroid/graphics/Bitmap;II)V

    .line 128
    iput v2, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    .line 129
    iget v6, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    iput v6, p0, Lcom/google/android/music/TouchInterceptor;->mSrcDragPos:I

    .line 130
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/google/android/music/TouchInterceptor;->mHeight:I

    .line 131
    iget v3, p0, Lcom/google/android/music/TouchInterceptor;->mTouchSlop:I

    .line 132
    .local v3, touchSlop:I
    sub-int v6, v5, v3

    iget v7, p0, Lcom/google/android/music/TouchInterceptor;->mHeight:I

    div-int/lit8 v7, v7, 0x3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, p0, Lcom/google/android/music/TouchInterceptor;->mUpperBound:I

    .line 133
    add-int v6, v5, v3

    iget v7, p0, Lcom/google/android/music/TouchInterceptor;->mHeight:I

    mul-int/lit8 v7, v7, 0x2

    div-int/lit8 v7, v7, 0x3

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/google/android/music/TouchInterceptor;->mLowerBound:I

    .line 134
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 136
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #touchSlop:I
    :cond_3
    invoke-direct {p0}, Lcom/google/android/music/TouchInterceptor;->stopDragging()V

    goto/16 :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "ev"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 284
    iget-object v9, p0, Lcom/google/android/music/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v9, :cond_0

    .line 285
    iget-object v9, p0, Lcom/google/android/music/TouchInterceptor;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 287
    :cond_0
    iget-object v9, p0, Lcom/google/android/music/TouchInterceptor;->mDragListener:Lcom/google/android/music/TouchInterceptor$DragListener;

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/google/android/music/TouchInterceptor;->mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;

    if-eqz v9, :cond_10

    :cond_1
    iget-object v9, p0, Lcom/google/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    if-eqz v9, :cond_10

    .line 288
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 289
    .local v0, action:I
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getCount()I

    move-result v6

    .line 290
    .local v6, totalcount:I
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getHeaderViewsCount()I

    move-result v3

    .line 291
    .local v3, numheaders:I
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getFooterViewsCount()I

    move-result v2

    .line 292
    .local v2, numfooters:I
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_0
    move v9, v12

    .line 359
    .end local v0           #action:I
    .end local v2           #numfooters:I
    .end local v3           #numheaders:I
    .end local v6           #totalcount:I
    :goto_1
    return v9

    .line 295
    .restart local v0       #action:I
    .restart local v2       #numfooters:I
    .restart local v3       #numheaders:I
    .restart local v6       #totalcount:I
    :pswitch_0
    iget-object v4, p0, Lcom/google/android/music/TouchInterceptor;->mTempRect:Landroid/graphics/Rect;

    .line 296
    .local v4, r:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/google/android/music/TouchInterceptor;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 297
    invoke-direct {p0}, Lcom/google/android/music/TouchInterceptor;->stopDragging()V

    .line 298
    iget v9, p0, Lcom/google/android/music/TouchInterceptor;->mRemoveMode:I

    if-ne v9, v12, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, v4, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v10, v10, 0x3

    div-int/lit8 v10, v10, 0x4

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_4

    .line 299
    iget-object v9, p0, Lcom/google/android/music/TouchInterceptor;->mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;

    if-eqz v9, :cond_3

    .line 300
    iget-object v9, p0, Lcom/google/android/music/TouchInterceptor;->mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;

    iget v10, p0, Lcom/google/android/music/TouchInterceptor;->mSrcDragPos:I

    sub-int/2addr v10, v3

    invoke-interface {v9, v10}, Lcom/google/android/music/TouchInterceptor$RemoveListener;->remove(I)V

    .line 302
    :cond_3
    invoke-direct {p0, v12}, Lcom/google/android/music/TouchInterceptor;->unExpandViews(Z)V

    goto :goto_0

    .line 304
    :cond_4
    iget-object v9, p0, Lcom/google/android/music/TouchInterceptor;->mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;

    if-eqz v9, :cond_7

    .line 305
    iget v9, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    if-ge v9, v3, :cond_5

    .line 306
    iput v3, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    .line 308
    :cond_5
    iget v9, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    sub-int v10, v6, v2

    if-lt v9, v10, :cond_6

    .line 309
    sub-int v9, v6, v2

    sub-int/2addr v9, v12

    iput v9, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    .line 311
    :cond_6
    iget-object v9, p0, Lcom/google/android/music/TouchInterceptor;->mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;

    iget v10, p0, Lcom/google/android/music/TouchInterceptor;->mSrcDragPos:I

    sub-int/2addr v10, v3

    iget v11, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    sub-int/2addr v11, v3

    invoke-interface {v9, v10, v11}, Lcom/google/android/music/TouchInterceptor$DropListener;->drop(II)V

    .line 313
    :cond_7
    invoke-direct {p0, v13}, Lcom/google/android/music/TouchInterceptor;->unExpandViews(Z)V

    goto :goto_0

    .line 319
    .end local v4           #r:Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 320
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 321
    .local v8, y:I
    invoke-direct {p0, v7, v8}, Lcom/google/android/music/TouchInterceptor;->dragView(II)V

    .line 322
    invoke-direct {p0, v8}, Lcom/google/android/music/TouchInterceptor;->getItemForPosition(I)I

    move-result v1

    .line 323
    .local v1, itemnum:I
    if-ltz v1, :cond_2

    .line 324
    if-eqz v0, :cond_8

    iget v9, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    if-eq v1, v9, :cond_a

    .line 325
    :cond_8
    iget-object v9, p0, Lcom/google/android/music/TouchInterceptor;->mDragListener:Lcom/google/android/music/TouchInterceptor$DragListener;

    if-eqz v9, :cond_9

    .line 326
    iget-object v9, p0, Lcom/google/android/music/TouchInterceptor;->mDragListener:Lcom/google/android/music/TouchInterceptor$DragListener;

    iget v10, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    sub-int/2addr v10, v3

    sub-int v11, v1, v3

    invoke-interface {v9, v10, v11}, Lcom/google/android/music/TouchInterceptor$DragListener;->drag(II)V

    .line 328
    :cond_9
    iput v1, p0, Lcom/google/android/music/TouchInterceptor;->mDragPos:I

    .line 329
    invoke-direct {p0}, Lcom/google/android/music/TouchInterceptor;->doExpansion()V

    .line 331
    :cond_a
    const/4 v5, 0x0

    .line 332
    .local v5, speed:I
    invoke-direct {p0, v8}, Lcom/google/android/music/TouchInterceptor;->adjustScrollBounds(I)V

    .line 333
    iget v9, p0, Lcom/google/android/music/TouchInterceptor;->mLowerBound:I

    if-le v8, v9, :cond_e

    .line 335
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getLastVisiblePosition()I

    move-result v9

    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getCount()I

    move-result v10

    sub-int/2addr v10, v12

    if-ge v9, v10, :cond_d

    .line 336
    iget v9, p0, Lcom/google/android/music/TouchInterceptor;->mHeight:I

    iget v10, p0, Lcom/google/android/music/TouchInterceptor;->mLowerBound:I

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    if-le v8, v9, :cond_c

    const/16 v9, 0x10

    move v5, v9

    .line 351
    :cond_b
    :goto_2
    if-eqz v5, :cond_2

    .line 352
    const/16 v9, 0x1e

    invoke-virtual {p0, v5, v9}, Lcom/google/android/music/TouchInterceptor;->smoothScrollBy(II)V

    goto/16 :goto_0

    .line 336
    :cond_c
    const/4 v9, 0x4

    move v5, v9

    goto :goto_2

    .line 338
    :cond_d
    const/4 v5, 0x1

    goto :goto_2

    .line 340
    :cond_e
    iget v9, p0, Lcom/google/android/music/TouchInterceptor;->mUpperBound:I

    if-ge v8, v9, :cond_b

    .line 342
    iget v9, p0, Lcom/google/android/music/TouchInterceptor;->mUpperBound:I

    div-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_f

    const/16 v9, -0x10

    move v5, v9

    .line 343
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getFirstVisiblePosition()I

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {p0, v13}, Lcom/google/android/music/TouchInterceptor;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {p0}, Lcom/google/android/music/TouchInterceptor;->getPaddingTop()I

    move-result v10

    if-lt v9, v10, :cond_b

    .line 348
    const/4 v5, 0x0

    goto :goto_2

    .line 342
    :cond_f
    const/4 v9, -0x4

    move v5, v9

    goto :goto_3

    .line 359
    .end local v0           #action:I
    .end local v1           #itemnum:I
    .end local v2           #numfooters:I
    .end local v3           #numheaders:I
    .end local v5           #speed:I
    .end local v6           #totalcount:I
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_10
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_1

    .line 292
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDragListener(Lcom/google/android/music/TouchInterceptor$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 446
    iput-object p1, p0, Lcom/google/android/music/TouchInterceptor;->mDragListener:Lcom/google/android/music/TouchInterceptor$DragListener;

    .line 447
    return-void
.end method

.method public setDropListener(Lcom/google/android/music/TouchInterceptor$DropListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 450
    iput-object p1, p0, Lcom/google/android/music/TouchInterceptor;->mDropListener:Lcom/google/android/music/TouchInterceptor$DropListener;

    .line 451
    return-void
.end method

.method public setRemoveListener(Lcom/google/android/music/TouchInterceptor$RemoveListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 454
    iput-object p1, p0, Lcom/google/android/music/TouchInterceptor;->mRemoveListener:Lcom/google/android/music/TouchInterceptor$RemoveListener;

    .line 455
    return-void
.end method

.method public setTrashcan(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "trash"

    .prologue
    .line 441
    iput-object p1, p0, Lcom/google/android/music/TouchInterceptor;->mTrashcan:Landroid/graphics/drawable/Drawable;

    .line 442
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/music/TouchInterceptor;->mRemoveMode:I

    .line 443
    return-void
.end method
