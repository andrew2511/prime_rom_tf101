.class public Lcom/android/launcher2/DragLayer;
.super Landroid/widget/FrameLayout;
.source "DragLayer.java"


# instance fields
.field private mDragController:Lcom/android/launcher2/DragController;

.field private mTmpXY:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/DragLayer;->mTmpXY:[I

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DragLayer;->setMotionEventSplittingEnabled(Z)V

    .line 48
    return-void
.end method


# virtual methods
.method public createDragView(Landroid/graphics/Bitmap;II)Landroid/view/View;
    .locals 3
    .parameter "b"
    .parameter "xPos"
    .parameter "yPos"

    .prologue
    .line 93
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher2/DragLayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 94
    .local v0, imageView:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 96
    int-to-float v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/DragLayer;->addView(Landroid/view/View;II)V

    .line 99
    return-object v0
.end method

.method public createDragView(Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "v"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mTmpXY:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 104
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/DragController;->getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/DragLayer;->mTmpXY:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/launcher2/DragLayer;->mTmpXY:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/DragLayer;->createDragView(Landroid/graphics/Bitmap;II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/DragController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/DragController;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 64
    const v3, 0x7f080023

    invoke-virtual {p0, v3}, Lcom/android/launcher2/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Workspace;

    .line 65
    .local v2, w:Lcom/android/launcher2/Workspace;
    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 67
    .local v1, currentPage:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    .line 69
    .local v0, childrenLayout:Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->hasResizeFrames()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->isWidgetBeingResized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 70
    new-instance v3, Lcom/android/launcher2/DragLayer$1;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher2/DragLayer$1;-><init>(Lcom/android/launcher2/DragLayer;Lcom/android/launcher2/CellLayoutChildren;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher2/DragLayer;->post(Ljava/lang/Runnable;)Z

    .line 79
    .end local v0           #childrenLayout:Lcom/android/launcher2/CellLayoutChildren;
    .end local v1           #currentPage:Lcom/android/launcher2/CellLayout;
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/DragController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/DragController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setDragController(Lcom/android/launcher2/DragController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/launcher2/DragLayer;->mDragController:Lcom/android/launcher2/DragController;

    .line 52
    return-void
.end method
