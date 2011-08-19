.class public Lcom/android/launcher2/CellLayoutChildren;
.super Landroid/view/ViewGroup;
.source "CellLayoutChildren.java"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

.field private mHeightGap:I

.field private mLeftPadding:I

.field private final mResizeFrames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppWidgetResizeFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpCellXY:[I

.field private mTopPadding:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidthGap:I

.field private mXDown:I

.field private mYDown:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x2

    .line 53
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 33
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mTmpCellXY:[I

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mResizeFrames:Ljava/util/ArrayList;

    .line 54
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutChildren;->setLayerType(ILandroid/graphics/Paint;)V

    .line 56
    return-void
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v7, 0x1

    .line 196
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 198
    .local v1, hitRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 199
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 201
    .local v4, y:I
    iget-object v5, p0, Lcom/android/launcher2/CellLayoutChildren;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppWidgetResizeFrame;

    .line 202
    .local v0, child:Lcom/android/launcher2/AppWidgetResizeFrame;
    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppWidgetResizeFrame;->getHitRect(Landroid/graphics/Rect;)V

    .line 203
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLeft()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getTop()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {v0, v5, v6}, Lcom/android/launcher2/AppWidgetResizeFrame;->beginResizeIfPointInRegion(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    .line 206
    iput v3, p0, Lcom/android/launcher2/CellLayoutChildren;->mXDown:I

    .line 207
    iput v4, p0, Lcom/android/launcher2/CellLayoutChildren;->mYDown:I

    .line 208
    invoke-virtual {p0, v7}, Lcom/android/launcher2/CellLayoutChildren;->requestDisallowInterceptTouchEvent(Z)V

    move v5, v7

    .line 213
    .end local v0           #child:Lcom/android/launcher2/AppWidgetResizeFrame;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addResizeFrame(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V
    .locals 5
    .parameter "itemInfo"
    .parameter "widget"
    .parameter "cellLayout"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 259
    new-instance v1, Lcom/android/launcher2/AppWidgetResizeFrame;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/android/launcher2/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V

    .line 262
    .local v1, resizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v0, v3, v3, v3, v3}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    .line 263
    .local v0, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iput-boolean v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 265
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutChildren;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-virtual {v1, v4}, Lcom/android/launcher2/AppWidgetResizeFrame;->snapToWidget(Z)V

    .line 269
    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 152
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 155
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 156
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 157
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 158
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public clearAllResizeFrames()V
    .locals 3

    .prologue
    .line 181
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppWidgetResizeFrame;

    .line 182
    .local v0, frame:Lcom/android/launcher2/AppWidgetResizeFrame;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 184
    .end local v0           #frame:Lcom/android/launcher2/AppWidgetResizeFrame;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 185
    return-void
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 70
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 71
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 74
    .local v3, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-gt v4, p1, :cond_0

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-gt v4, p2, :cond_0

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge p2, v4, :cond_0

    move-object v4, v0

    .line 79
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :goto_1
    return-object v4

    .line 70
    .restart local v0       #child:Landroid/view/View;
    .restart local v3       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public hasResizeFrames()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mResizeFrames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWidgetBeingResized()Z
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-direct {p0, p1}, Lcom/android/launcher2/CellLayoutChildren;->handleTouchDown(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x1

    .line 223
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v11

    .line 108
    .local v11, count:I
    const/4 v12, 0x0

    .end local p1
    .local v12, i:I
    :goto_0
    if-ge v12, v11, :cond_1

    .line 109
    invoke-virtual {p0, v12}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 110
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 111
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 113
    .local v13, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v9, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 114
    .local v9, childLeft:I
    iget v10, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 115
    .local v10, childTop:I
    iget v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    add-int/2addr v0, v9

    iget v1, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    add-int/2addr v1, v10

    invoke-virtual {v8, v9, v10, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 117
    iget-boolean v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    .line 120
    iget-object v7, p0, Lcom/android/launcher2/CellLayoutChildren;->mTmpCellXY:[I

    .line 121
    .local v7, cellXY:[I
    invoke-virtual {p0, v7}, Lcom/android/launcher2/CellLayoutChildren;->getLocationOnScreen([I)V

    .line 122
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.home.drop"

    const/4 v3, 0x0

    aget v3, v7, v3

    add-int/2addr v3, v9

    iget v4, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v7, v4

    add-int/2addr v4, v10

    iget v5, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 127
    iget-boolean v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->animateDrop:Z

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, v13, Lcom/android/launcher2/CellLayout$LayoutParams;->animateDrop:Z

    .line 133
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/Workspace;

    invoke-virtual {p1, v8}, Lcom/android/launcher2/Workspace;->animateViewIntoPosition(Landroid/view/View;)V

    .line 108
    .end local v7           #cellXY:[I
    .end local v9           #childLeft:I
    .end local v10           #childTop:I
    .end local v13           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 138
    .end local v8           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 14
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 84
    iget v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellWidth:I

    .line 85
    .local v1, cellWidth:I
    iget v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellHeight:I

    .line 86
    .local v2, cellHeight:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v10

    .line 87
    .local v10, count:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v10, :cond_0

    .line 88
    invoke-virtual {p0, v12}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 89
    .local v7, child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 91
    .local v0, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v3, p0, Lcom/android/launcher2/CellLayoutChildren;->mWidthGap:I

    iget v4, p0, Lcom/android/launcher2/CellLayoutChildren;->mHeightGap:I

    iget v5, p0, Lcom/android/launcher2/CellLayoutChildren;->mLeftPadding:I

    iget v6, p0, Lcom/android/launcher2/CellLayoutChildren;->mTopPadding:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout$LayoutParams;->setup(IIIIII)V

    .line 94
    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    const/high16 v4, 0x4000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 95
    .local v8, childWidthMeasureSpec:I
    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    const/high16 v4, 0x4000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 98
    .local v9, childheightMeasureSpec:I
    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 87
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 100
    .end local v0           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v7           #child:Landroid/view/View;
    .end local v8           #childWidthMeasureSpec:I
    .end local v9           #childheightMeasureSpec:I
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 101
    .local v13, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 102
    .local v11, heightSpecSize:I
    invoke-virtual {p0, v13, v11}, Lcom/android/launcher2/CellLayoutChildren;->setMeasuredDimension(II)V

    .line 103
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "ev"

    .prologue
    .line 228
    const/4 v1, 0x0

    .line 229
    .local v1, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 231
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 232
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 234
    .local v3, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 236
    invoke-direct {p0, p1}, Lcom/android/launcher2/CellLayoutChildren;->handleTouchDown(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 237
    const/4 v4, 0x1

    .line 254
    :goto_0
    return v4

    .line 242
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/CellLayoutChildren;->mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    if-eqz v4, :cond_1

    .line 243
    const/4 v1, 0x1

    .line 244
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v4, v1

    .line 254
    goto :goto_0

    .line 246
    :pswitch_0
    iget-object v4, p0, Lcom/android/launcher2/CellLayoutChildren;->mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    iget v5, p0, Lcom/android/launcher2/CellLayoutChildren;->mXDown:I

    sub-int v5, v2, v5

    iget v6, p0, Lcom/android/launcher2/CellLayoutChildren;->mYDown:I

    sub-int v6, v3, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher2/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    goto :goto_1

    .line 250
    :pswitch_1
    iget-object v4, p0, Lcom/android/launcher2/CellLayoutChildren;->mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    iget v5, p0, Lcom/android/launcher2/CellLayoutChildren;->mXDown:I

    sub-int v5, v2, v5

    iget v6, p0, Lcom/android/launcher2/CellLayoutChildren;->mYDown:I

    sub-int v6, v3, v6

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher2/AppWidgetResizeFrame;->commitResizeForDelta(II)V

    .line 251
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/launcher2/CellLayoutChildren;->mCurrentResizeFrame:Lcom/android/launcher2/AppWidgetResizeFrame;

    goto :goto_1

    .line 244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 143
    if-eqz p1, :cond_0

    .line 144
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 145
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutChildren;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 148
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setCellDimensions(IIIIII)V
    .locals 0
    .parameter "cellWidth"
    .parameter "cellHeight"
    .parameter "leftPadding"
    .parameter "topPadding"
    .parameter "widthGap"
    .parameter "heightGap"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellWidth:I

    .line 61
    iput p2, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellHeight:I

    .line 62
    iput p3, p0, Lcom/android/launcher2/CellLayoutChildren;->mLeftPadding:I

    .line 63
    iput p4, p0, Lcom/android/launcher2/CellLayoutChildren;->mTopPadding:I

    .line 64
    iput p5, p0, Lcom/android/launcher2/CellLayoutChildren;->mWidthGap:I

    .line 65
    iput p6, p0, Lcom/android/launcher2/CellLayoutChildren;->mHeightGap:I

    .line 66
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 165
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 166
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 167
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 169
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_0

    .line 170
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 165
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v2           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 178
    return-void
.end method
