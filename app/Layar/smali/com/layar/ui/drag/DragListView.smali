.class public Lcom/layar/ui/drag/DragListView;
.super Landroid/widget/ListView;
.source "DragListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ui/drag/DragListView$DragListener;,
        Lcom/layar/ui/drag/DragListView$DropListener;
    }
.end annotation


# instance fields
.field private isDragEnabled:Z

.field private mCoordOffset:I

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragListener:Lcom/layar/ui/drag/DragListView$DragListener;

.field private mDragPoint:I

.field private mDragPos:I

.field private mDragView:Landroid/widget/ImageView;

.field private mDropListener:Lcom/layar/ui/drag/DragListView$DropListener;

.field private mFirstDragPos:I

.field private mHeight:I

.field private mItemHeightHalf:I

.field private mItemHeightNormal:I

.field private mLowerBound:I

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchSlop:I

.field private mUpperBound:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/layar/ui/drag/DragListView;->mTempRect:Landroid/graphics/Rect;

    .line 56
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/layar/ui/drag/DragListView;->isDragEnabled:Z

    .line 60
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/layar/ui/drag/DragListView;->mTouchSlop:I

    .line 61
    invoke-virtual {p0}, Lcom/layar/ui/drag/DragListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 62
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/layar/ui/drag/DragListView;->mItemHeightNormal:I

    .line 63
    iget v1, p0, Lcom/layar/ui/drag/DragListView;->mItemHeightNormal:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/layar/ui/drag/DragListView;->mItemHeightHalf:I

    .line 64
    return-void
.end method

.method private adjustScrollBounds(I)V
    .locals 1
    .parameter "y"

    .prologue
    .line 166
    iget v0, p0, Lcom/layar/ui/drag/DragListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    if-lt p1, v0, :cond_0

    .line 167
    iget v0, p0, Lcom/layar/ui/drag/DragListView;->mHeight:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/layar/ui/drag/DragListView;->mUpperBound:I

    .line 169
    :cond_0
    iget v0, p0, Lcom/layar/ui/drag/DragListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    if-gt p1, v0, :cond_1

    .line 170
    iget v0, p0, Lcom/layar/ui/drag/DragListView;->mHeight:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/layar/ui/drag/DragListView;->mLowerBound:I

    .line 172
    :cond_1
    return-void
.end method

.method private dragView(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/layar/ui/drag/DragListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/layar/ui/drag/DragListView;->mDragPoint:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/layar/ui/drag/DragListView;->mCoordOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 263
    iget-object v0, p0, Lcom/layar/ui/drag/DragListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/layar/ui/drag/DragListView;->mDragView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/layar/ui/drag/DragListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    return-void
.end method

.method private getItemForPosition(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 151
    iget v2, p0, Lcom/layar/ui/drag/DragListView;->mDragPoint:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/layar/ui/drag/DragListView;->mItemHeightHalf:I

    sub-int v0, v2, v3

    .line 152
    .local v0, adjustedy:I
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/layar/ui/drag/DragListView;->myPointToPosition(II)I

    move-result v1

    .line 153
    .local v1, pos:I
    if-ltz v1, :cond_1

    .line 154
    iget v2, p0, Lcom/layar/ui/drag/DragListView;->mFirstDragPos:I

    if-gt v1, v2, :cond_0

    .line 155
    add-int/lit8 v1, v1, 0x1

    .line 162
    :cond_0
    :goto_0
    return v1

    .line 157
    :cond_1
    if-gez v0, :cond_0

    .line 160
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private myPointToPosition(II)I
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x1

    .line 129
    if-gez p2, :cond_0

    .line 132
    iget v5, p0, Lcom/layar/ui/drag/DragListView;->mItemHeightNormal:I

    add-int/2addr v5, p2

    invoke-direct {p0, p1, v5}, Lcom/layar/ui/drag/DragListView;->myPointToPosition(II)I

    move-result v4

    .line 133
    .local v4, pos:I
    if-lez v4, :cond_0

    .line 134
    sub-int v5, v4, v6

    .line 147
    .end local v4           #pos:I
    :goto_0
    return v5

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/layar/ui/drag/DragListView;->mTempRect:Landroid/graphics/Rect;

    .line 139
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/layar/ui/drag/DragListView;->getChildCount()I

    move-result v1

    .line 140
    .local v1, count:I
    sub-int v3, v1, v6

    .local v3, i:I
    :goto_1
    if-gez v3, :cond_1

    .line 147
    const/4 v5, -0x1

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {p0, v3}, Lcom/layar/ui/drag/DragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 142
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 143
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/layar/ui/drag/DragListView;->getFirstVisiblePosition()I

    move-result v5

    add-int/2addr v5, v3

    goto :goto_0

    .line 140
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1
.end method

.method private startDragging(Landroid/graphics/Bitmap;I)V
    .locals 8
    .parameter "bm"
    .parameter "y"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 232
    invoke-direct {p0}, Lcom/layar/ui/drag/DragListView;->stopDragging()V

    .line 234
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Lcom/layar/ui/drag/DragListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 235
    iget-object v3, p0, Lcom/layar/ui/drag/DragListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x30

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 236
    iget-object v3, p0, Lcom/layar/ui/drag/DragListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 237
    iget-object v3, p0, Lcom/layar/ui/drag/DragListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/layar/ui/drag/DragListView;->mDragPoint:I

    sub-int v4, p2, v4

    iget v5, p0, Lcom/layar/ui/drag/DragListView;->mCoordOffset:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 239
    iget-object v3, p0, Lcom/layar/ui/drag/DragListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 240
    iget-object v3, p0, Lcom/layar/ui/drag/DragListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 241
    iget-object v3, p0, Lcom/layar/ui/drag/DragListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x398

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 246
    iget-object v3, p0, Lcom/layar/ui/drag/DragListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 247
    iget-object v3, p0, Lcom/layar/ui/drag/DragListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 249
    invoke-virtual {p0}, Lcom/layar/ui/drag/DragListView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 250
    .local v1, context:Landroid/content/Context;
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 251
    .local v2, v:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x106

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 252
    .local v0, backGroundColor:I
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 253
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 254
    iput-object p1, p0, Lcom/layar/ui/drag/DragListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 256
    const-string v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/layar/ui/drag/DragListView;->mWindowManager:Landroid/view/WindowManager;

    .line 257
    iget-object v3, p0, Lcom/layar/ui/drag/DragListView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/layar/ui/drag/DragListView;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v2, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    iput-object v2, p0, Lcom/layar/ui/drag/DragListView;->mDragView:Landroid/widget/ImageView;

    .line 259
    return-void
.end method

.method private stopDragging()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 267
    iget-object v1, p0, Lcom/layar/ui/drag/DragListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/layar/ui/drag/DragListView;->mDragView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 269
    invoke-virtual {p0}, Lcom/layar/ui/drag/DragListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 270
    .local v0, wm:Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/layar/ui/drag/DragListView;->mDragView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 271
    iget-object v1, p0, Lcom/layar/ui/drag/DragListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    iput-object v3, p0, Lcom/layar/ui/drag/DragListView;->mDragView:Landroid/widget/ImageView;

    .line 274
    .end local v0           #wm:Landroid/view/WindowManager;
    :cond_0
    iget-object v1, p0, Lcom/layar/ui/drag/DragListView;->mDragBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/layar/ui/drag/DragListView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 276
    iput-object v3, p0, Lcom/layar/ui/drag/DragListView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 278
    :cond_1
    return-void
.end method


# virtual methods
.method protected getUndraggable()[I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDragEnabled()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/layar/ui/drag/DragListView;->isDragEnabled:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, 0x1

    .line 80
    iget-boolean v10, p0, Lcom/layar/ui/drag/DragListView;->isDragEnabled:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/layar/ui/drag/DragListView;->mDragListener:Lcom/layar/ui/drag/DragListView$DragListener;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/layar/ui/drag/DragListView;->mDropListener:Lcom/layar/ui/drag/DragListView$DropListener;

    if-nez v10, :cond_1

    .line 81
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    .line 121
    :goto_0
    return v10

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 121
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    goto :goto_0

    .line 84
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v8, v10

    .line 85
    .local v8, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v9, v10

    .line 86
    .local v9, y:I
    invoke-virtual {p0, v8, v9}, Lcom/layar/ui/drag/DragListView;->pointToPosition(II)I

    move-result v3

    .line 87
    .local v3, itemnum:I
    const/4 v10, -0x1

    if-eq v3, v10, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/layar/ui/drag/DragListView;->getFirstVisiblePosition()I

    move-result v10

    sub-int v10, v3, v10

    invoke-virtual {p0, v10}, Lcom/layar/ui/drag/DragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 91
    .local v2, item:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v10

    sub-int v10, v9, v10

    iput v10, p0, Lcom/layar/ui/drag/DragListView;->mDragPoint:I

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    float-to-int v10, v10

    sub-int/2addr v10, v9

    iput v10, p0, Lcom/layar/ui/drag/DragListView;->mCoordOffset:I

    .line 94
    iget-object v4, p0, Lcom/layar/ui/drag/DragListView;->mTempRect:Landroid/graphics/Rect;

    .line 95
    .local v4, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/layar/ui/drag/DragListView;->getUndraggable()[I

    move-result-object v6

    .line 96
    .local v6, undraggable:[I
    if-eqz v6, :cond_3

    .line 97
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v10, v6

    if-lt v1, v10, :cond_4

    .line 107
    .end local v1           #i:I
    :cond_3
    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 110
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-static {v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 112
    invoke-direct {p0, v0, v9}, Lcom/layar/ui/drag/DragListView;->startDragging(Landroid/graphics/Bitmap;I)V

    .line 113
    iput v3, p0, Lcom/layar/ui/drag/DragListView;->mDragPos:I

    .line 114
    iget v10, p0, Lcom/layar/ui/drag/DragListView;->mDragPos:I

    iput v10, p0, Lcom/layar/ui/drag/DragListView;->mFirstDragPos:I

    .line 115
    invoke-virtual {p0}, Lcom/layar/ui/drag/DragListView;->getHeight()I

    move-result v10

    iput v10, p0, Lcom/layar/ui/drag/DragListView;->mHeight:I

    .line 116
    iget v5, p0, Lcom/layar/ui/drag/DragListView;->mTouchSlop:I

    .line 117
    .local v5, touchSlop:I
    sub-int v10, v9, v5

    iget v11, p0, Lcom/layar/ui/drag/DragListView;->mHeight:I

    div-int/lit8 v11, v11, 0x3

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lcom/layar/ui/drag/DragListView;->mUpperBound:I

    .line 118
    add-int v10, v9, v5

    iget v11, p0, Lcom/layar/ui/drag/DragListView;->mHeight:I

    mul-int/lit8 v11, v11, 0x2

    div-int/lit8 v11, v11, 0x3

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/layar/ui/drag/DragListView;->mLowerBound:I

    move v10, v12

    .line 119
    goto/16 :goto_0

    .line 98
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #touchSlop:I
    .restart local v1       #i:I
    :cond_4
    aget v10, v6, v1

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 99
    .local v7, v:Landroid/view/View;
    if-nez v7, :cond_6

    .line 97
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 101
    :cond_6
    invoke-virtual {v7, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 102
    iget v10, v4, Landroid/graphics/Rect;->left:I

    if-ge v10, v8, :cond_5

    iget v10, v4, Landroid/graphics/Rect;->right:I

    if-le v10, v8, :cond_5

    .line 103
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    goto/16 :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v11, 0x0

    .line 176
    iget-object v9, p0, Lcom/layar/ui/drag/DragListView;->mDragListener:Lcom/layar/ui/drag/DragListView$DragListener;

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/layar/ui/drag/DragListView;->mDropListener:Lcom/layar/ui/drag/DragListView$DropListener;

    if-eqz v9, :cond_a

    .line 177
    :cond_0
    iget-object v9, p0, Lcom/layar/ui/drag/DragListView;->mDragView:Landroid/widget/ImageView;

    if-eqz v9, :cond_a

    .line 178
    iget-boolean v9, p0, Lcom/layar/ui/drag/DragListView;->isDragEnabled:Z

    if-eqz v9, :cond_a

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 180
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 226
    :cond_1
    :goto_0
    const/4 v9, 0x1

    .line 228
    .end local v0           #action:I
    :goto_1
    return v9

    .line 183
    .restart local v0       #action:I
    :pswitch_0
    iget-object v3, p0, Lcom/layar/ui/drag/DragListView;->mTempRect:Landroid/graphics/Rect;

    .line 184
    .local v3, r:Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/layar/ui/drag/DragListView;->mDragView:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 185
    invoke-direct {p0}, Lcom/layar/ui/drag/DragListView;->stopDragging()V

    .line 186
    iget-object v9, p0, Lcom/layar/ui/drag/DragListView;->mDropListener:Lcom/layar/ui/drag/DragListView$DropListener;

    if-eqz v9, :cond_1

    .line 187
    iget-object v9, p0, Lcom/layar/ui/drag/DragListView;->mDropListener:Lcom/layar/ui/drag/DragListView$DropListener;

    iget v10, p0, Lcom/layar/ui/drag/DragListView;->mFirstDragPos:I

    iget v11, p0, Lcom/layar/ui/drag/DragListView;->mDragPos:I

    invoke-interface {v9, v10, v11}, Lcom/layar/ui/drag/DragListView$DropListener;->drop(II)V

    goto :goto_0

    .line 192
    .end local v3           #r:Landroid/graphics/Rect;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 193
    .local v7, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 194
    .local v8, y:I
    invoke-direct {p0, v7, v8}, Lcom/layar/ui/drag/DragListView;->dragView(II)V

    .line 195
    invoke-direct {p0, v8}, Lcom/layar/ui/drag/DragListView;->getItemForPosition(I)I

    move-result v1

    .line 196
    .local v1, itemnum:I
    if-ltz v1, :cond_1

    .line 197
    if-eqz v0, :cond_2

    iget v9, p0, Lcom/layar/ui/drag/DragListView;->mDragPos:I

    if-eq v1, v9, :cond_4

    .line 198
    :cond_2
    iget-object v9, p0, Lcom/layar/ui/drag/DragListView;->mDragListener:Lcom/layar/ui/drag/DragListView$DragListener;

    if-eqz v9, :cond_3

    .line 199
    iget-object v9, p0, Lcom/layar/ui/drag/DragListView;->mDragListener:Lcom/layar/ui/drag/DragListView$DragListener;

    iget v10, p0, Lcom/layar/ui/drag/DragListView;->mDragPos:I

    invoke-interface {v9, v10, v1}, Lcom/layar/ui/drag/DragListView$DragListener;->drag(II)V

    .line 200
    :cond_3
    iput v1, p0, Lcom/layar/ui/drag/DragListView;->mDragPos:I

    .line 202
    :cond_4
    const/4 v5, 0x0

    .line 203
    .local v5, speed:I
    invoke-direct {p0, v8}, Lcom/layar/ui/drag/DragListView;->adjustScrollBounds(I)V

    .line 204
    iget v9, p0, Lcom/layar/ui/drag/DragListView;->mLowerBound:I

    if-le v8, v9, :cond_8

    .line 206
    iget v9, p0, Lcom/layar/ui/drag/DragListView;->mHeight:I

    iget v10, p0, Lcom/layar/ui/drag/DragListView;->mLowerBound:I

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    if-le v8, v9, :cond_7

    const/16 v9, 0x10

    move v5, v9

    .line 211
    :cond_5
    :goto_2
    if-eqz v5, :cond_1

    .line 212
    iget v9, p0, Lcom/layar/ui/drag/DragListView;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0, v11, v9}, Lcom/layar/ui/drag/DragListView;->pointToPosition(II)I

    move-result v4

    .line 213
    .local v4, ref:I
    const/4 v9, -0x1

    if-ne v4, v9, :cond_6

    .line 215
    iget v9, p0, Lcom/layar/ui/drag/DragListView;->mHeight:I

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0}, Lcom/layar/ui/drag/DragListView;->getDividerHeight()I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x40

    invoke-virtual {p0, v11, v9}, Lcom/layar/ui/drag/DragListView;->pointToPosition(II)I

    move-result v4

    .line 217
    :cond_6
    invoke-virtual {p0}, Lcom/layar/ui/drag/DragListView;->getFirstVisiblePosition()I

    move-result v9

    sub-int v9, v4, v9

    invoke-virtual {p0, v9}, Lcom/layar/ui/drag/DragListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 218
    .local v6, v:Landroid/view/View;
    if-eqz v6, :cond_1

    .line 219
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v2

    .line 220
    .local v2, pos:I
    sub-int v9, v2, v5

    invoke-virtual {p0, v4, v9}, Lcom/layar/ui/drag/DragListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 206
    .end local v2           #pos:I
    .end local v4           #ref:I
    .end local v6           #v:Landroid/view/View;
    :cond_7
    const/4 v9, 0x4

    move v5, v9

    goto :goto_2

    .line 207
    :cond_8
    iget v9, p0, Lcom/layar/ui/drag/DragListView;->mUpperBound:I

    if-ge v8, v9, :cond_5

    .line 209
    iget v9, p0, Lcom/layar/ui/drag/DragListView;->mUpperBound:I

    div-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_9

    const/16 v9, -0x10

    move v5, v9

    :goto_3
    goto :goto_2

    :cond_9
    const/4 v9, -0x4

    move v5, v9

    goto :goto_3

    .line 228
    .end local v0           #action:I
    .end local v1           #itemnum:I
    .end local v5           #speed:I
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto/16 :goto_1

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDragEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/layar/ui/drag/DragListView;->isDragEnabled:Z

    .line 68
    return-void
.end method

.method public setDragListener(Lcom/layar/ui/drag/DragListView$DragListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/layar/ui/drag/DragListView;->mDragListener:Lcom/layar/ui/drag/DragListView$DragListener;

    .line 282
    return-void
.end method

.method public setDropListener(Lcom/layar/ui/drag/DragListView$DropListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/layar/ui/drag/DragListView;->mDropListener:Lcom/layar/ui/drag/DragListView$DropListener;

    .line 286
    return-void
.end method
