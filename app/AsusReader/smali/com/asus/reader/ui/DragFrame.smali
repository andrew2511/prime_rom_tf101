.class public Lcom/asus/reader/ui/DragFrame;
.super Landroid/widget/RelativeLayout;
.source "DragFrame.java"


# instance fields
.field private final autodx:I

.field private dx:I

.field private final dxThreshold:I

.field private final foldMiddle:I

.field private keyDownTime:J

.field public mBlackBar:Landroid/view/View;

.field mDragController:Lcom/asus/reader/ui/DragController;

.field mPullButton:Landroid/widget/Button;

.field private mSlideParams:Landroid/widget/RelativeLayout$LayoutParams;

.field mSlideView:Landroid/view/View;

.field private tmpx:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/16 v0, 0x28

    iput v0, p0, Lcom/asus/reader/ui/DragFrame;->dxThreshold:I

    .line 26
    const/16 v0, 0x16b

    iput v0, p0, Lcom/asus/reader/ui/DragFrame;->foldMiddle:I

    .line 27
    const/16 v0, 0xa

    iput v0, p0, Lcom/asus/reader/ui/DragFrame;->autodx:I

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/asus/reader/ui/DragFrame;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/asus/reader/ui/DragFrame;->keyDownTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/asus/reader/ui/DragFrame;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/asus/reader/ui/DragFrame;->dx:I

    return v0
.end method

.method static synthetic access$200(Lcom/asus/reader/ui/DragFrame;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/asus/reader/ui/DragFrame;->slideTo(I)V

    return-void
.end method

.method private generateLaoutParams(IIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v2, 0x0

    .line 53
    iget-object v0, p0, Lcom/asus/reader/ui/DragFrame;->mSlideParams:Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/asus/reader/ui/DragFrame;->mSlideView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/asus/reader/ui/DragFrame;->mSlideParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/ui/DragFrame;->mSlideParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p1, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 61
    iget-object v0, p0, Lcom/asus/reader/ui/DragFrame;->mSlideParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method private moveSlideView(I)I
    .locals 9
    .parameter "dx"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/16 v6, -0x2d7

    const/4 v5, 0x0

    .line 65
    iget-object v2, p0, Lcom/asus/reader/ui/DragFrame;->mSlideView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int v0, v2, p1

    .line 66
    .local v0, target_left:I
    iget-object v2, p0, Lcom/asus/reader/ui/DragFrame;->mSlideView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    add-int v1, v2, p1

    .line 67
    .local v1, target_right:I
    if-ge v0, v6, :cond_1

    .line 68
    const/16 v0, -0x2d7

    .line 69
    iget-object v2, p0, Lcom/asus/reader/ui/DragFrame;->mSlideView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    const/16 v3, 0x2d7

    sub-int v1, v2, v3

    .line 75
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/asus/reader/ui/DragFrame;->mSlideView:Landroid/view/View;

    iget-object v3, p0, Lcom/asus/reader/ui/DragFrame;->mSlideView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/asus/reader/ui/DragFrame;->mSlideView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/view/View;->layout(IIII)V

    .line 76
    if-ne v0, v6, :cond_2

    .line 77
    iget-object v2, p0, Lcom/asus/reader/ui/DragFrame;->mBlackBar:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v2, p0, Lcom/asus/reader/ui/DragFrame;->mPullButton:Landroid/widget/Button;

    const v3, 0x7f0200aa

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 79
    iget-object v2, p0, Lcom/asus/reader/ui/DragFrame;->mDragController:Lcom/asus/reader/ui/DragController;

    invoke-virtual {v2, v5}, Lcom/asus/reader/ui/DragController;->setSlideState(Z)V

    .line 80
    iget-object v2, p0, Lcom/asus/reader/ui/DragFrame;->mSlideView:Landroid/view/View;

    iget-object v3, p0, Lcom/asus/reader/ui/DragFrame;->mSlideView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/asus/reader/ui/DragFrame;->mSlideView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-direct {p0, v0, v3, v1, v4}, Lcom/asus/reader/ui/DragFrame;->generateLaoutParams(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v2, v7

    .line 90
    :goto_1
    return v2

    .line 70
    :cond_1
    if-lez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 72
    iget-object v2, p0, Lcom/asus/reader/ui/DragFrame;->mSlideView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_0

    .line 82
    :cond_2
    if-nez v0, :cond_3

    .line 83
    iget-object v2, p0, Lcom/asus/reader/ui/DragFrame;->mBlackBar:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v2, p0, Lcom/asus/reader/ui/DragFrame;->mPullButton:Landroid/widget/Button;

    const v3, 0x7f0200a5

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 85
    iget-object v2, p0, Lcom/asus/reader/ui/DragFrame;->mDragController:Lcom/asus/reader/ui/DragController;

    invoke-virtual {v2, v7}, Lcom/asus/reader/ui/DragController;->setSlideState(Z)V

    .line 86
    iget-object v2, p0, Lcom/asus/reader/ui/DragFrame;->mSlideView:Landroid/view/View;

    iget-object v3, p0, Lcom/asus/reader/ui/DragFrame;->mSlideView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/asus/reader/ui/DragFrame;->mSlideView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-direct {p0, v0, v3, v1, v4}, Lcom/asus/reader/ui/DragFrame;->generateLaoutParams(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    const/4 v2, 0x2

    goto :goto_1

    .line 89
    :cond_3
    iget-object v2, p0, Lcom/asus/reader/ui/DragFrame;->mBlackBar:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    move v2, v5

    .line 90
    goto :goto_1
.end method

.method private slideTo(I)V
    .locals 2
    .parameter "location"

    .prologue
    .line 115
    const/16 v0, 0xa

    .line 116
    .local v0, dx:I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 117
    const/16 v0, -0xa

    .line 118
    :cond_0
    invoke-direct {p0, v0}, Lcom/asus/reader/ui/DragFrame;->moveSlideView(I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    return-void
.end method

.method private switchSlideView()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/asus/reader/ui/DragFrame;->mSlideView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    const/16 v1, 0x16b

    if-ge v0, v1, :cond_0

    .line 124
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/asus/reader/ui/DragFrame;->slideTo(I)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/asus/reader/ui/DragFrame;->slideTo(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/asus/reader/ui/DragFrame;->mDragController:Lcom/asus/reader/ui/DragController;

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/asus/reader/ui/DragFrame;->mDragController:Lcom/asus/reader/ui/DragController;

    invoke-virtual {v0, p1}, Lcom/asus/reader/ui/DragController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    .line 48
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 49
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/asus/reader/ui/DragFrame;->mDragController:Lcom/asus/reader/ui/DragController;

    invoke-virtual {v0, p1, p2}, Lcom/asus/reader/ui/DragController;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public notifyClickCategoty()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/asus/reader/ui/DragFrame;->mSlideView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/asus/reader/ui/DragFrame;->slideTo(I)V

    .line 97
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 133
    const v0, 0x7f0b0051

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/DragFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/asus/reader/ui/DragFrame;->mPullButton:Landroid/widget/Button;

    .line 135
    iget-object v0, p0, Lcom/asus/reader/ui/DragFrame;->mPullButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/asus/reader/ui/DragFrame;->mPullButton:Landroid/widget/Button;

    new-instance v1, Lcom/asus/reader/ui/DragFrame$1;

    invoke-direct {v1, p0}, Lcom/asus/reader/ui/DragFrame$1;-><init>(Lcom/asus/reader/ui/DragFrame;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    :cond_0
    const v0, 0x7f0b0050

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/DragFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/ui/DragFrame;->mSlideView:Landroid/view/View;

    .line 155
    const v0, 0x7f0b004f

    invoke-virtual {p0, v0}, Lcom/asus/reader/ui/DragFrame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/ui/DragFrame;->mBlackBar:Landroid/view/View;

    .line 156
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/asus/reader/ui/DragFrame;->mSlideView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/reader/ui/DragFrame;->mDragController:Lcom/asus/reader/ui/DragController;

    invoke-virtual {v0}, Lcom/asus/reader/ui/DragController;->getDragging()Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/asus/reader/ui/DragFrame;->keyDownTime:J

    .line 181
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/asus/reader/ui/DragFrame;->tmpx:F

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/ui/DragFrame;->mDragController:Lcom/asus/reader/ui/DragController;

    if-eqz v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/asus/reader/ui/DragFrame;->mDragController:Lcom/asus/reader/ui/DragController;

    invoke-virtual {v0, p1}, Lcom/asus/reader/ui/DragController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 186
    :goto_1
    return v0

    .line 163
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/asus/reader/ui/DragFrame;->mPullButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/asus/reader/ui/DragFrame;->tmpx:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/asus/reader/ui/DragFrame;->dx:I

    .line 165
    iget v0, p0, Lcom/asus/reader/ui/DragFrame;->dx:I

    invoke-direct {p0, v0}, Lcom/asus/reader/ui/DragFrame;->moveSlideView(I)I

    goto :goto_0

    .line 186
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/asus/reader/ui/DragFrame;->mSlideView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/ui/DragFrame;->mDragController:Lcom/asus/reader/ui/DragController;

    invoke-virtual {v0}, Lcom/asus/reader/ui/DragController;->getDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v2, v0

    .line 193
    .local v2, rawX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v3, v0

    .line 194
    .local v3, rawY:I
    iget-object v0, p0, Lcom/asus/reader/ui/DragFrame;->mDragController:Lcom/asus/reader/ui/DragController;

    iget-object v1, p0, Lcom/asus/reader/ui/DragFrame;->mPullButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/asus/reader/ui/DragFrame;->mSlideView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iget-object v5, p0, Lcom/asus/reader/ui/DragFrame;->mSlideView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/asus/reader/ui/DragController;->isInside(Landroid/view/View;IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/asus/reader/ui/DragFrame;->switchSlideView()V

    .line 197
    .end local v2           #rawX:I
    .end local v3           #rawY:I
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/ui/DragFrame;->mDragController:Lcom/asus/reader/ui/DragController;

    invoke-virtual {v0, p1}, Lcom/asus/reader/ui/DragController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setDragController(Lcom/asus/reader/ui/DragController;)V
    .locals 0
    .parameter "controller"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/asus/reader/ui/DragFrame;->mDragController:Lcom/asus/reader/ui/DragController;

    .line 37
    return-void
.end method

.method public setOrientation(Z)V
    .locals 2
    .parameter "islandscape"

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/asus/reader/ui/DragFrame;->mDragController:Lcom/asus/reader/ui/DragController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/DragController;->setSlideState(Z)V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/ui/DragFrame;->mDragController:Lcom/asus/reader/ui/DragController;

    invoke-virtual {v0, p1}, Lcom/asus/reader/ui/DragController;->setOrientation(Z)V

    .line 43
    return-void
.end method
