.class public Lcom/android/videoeditor/widgets/HandleView;
.super Landroid/widget/ImageView;
.source "HandleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/videoeditor/widgets/HandleView$MoveListener;
    }
.end annotation


# instance fields
.field private final mArrowLeft:Landroid/graphics/drawable/Drawable;

.field private final mArrowRight:Landroid/graphics/drawable/Drawable;

.field private mBeginLimitReached:Z

.field private mEndLimitReached:Z

.field private mLastDeltaX:I

.field private mLastMoveX:F

.field private mListener:Lcom/android/videoeditor/widgets/HandleView$MoveListener;

.field private mMoveStarted:Z

.field private mStartMoveX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 95
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/videoeditor/widgets/HandleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/videoeditor/widgets/HandleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f020027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    .line 81
    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    .line 82
    return-void
.end method

.method private endActionMove(F)V
    .locals 4
    .parameter "eventX"

    .prologue
    .line 198
    iget-boolean v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mMoveStarted:Z

    if-eqz v1, :cond_0

    .line 199
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mMoveStarted:Z

    .line 201
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mListener:Lcom/android/videoeditor/widgets/HandleView$MoveListener;

    if-eqz v1, :cond_0

    .line 202
    iget v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mStartMoveX:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 203
    .local v0, deltaX:I
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->getId()I

    move-result v1

    const v2, 0x7f08001d

    if-ne v1, v2, :cond_1

    .line 204
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mListener:Lcom/android/videoeditor/widgets/HandleView$MoveListener;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/videoeditor/widgets/HandleView$MoveListener;->onMoveEnd(Lcom/android/videoeditor/widgets/HandleView;II)V

    .line 210
    .end local v0           #deltaX:I
    :cond_0
    :goto_0
    return-void

    .line 206
    .restart local v0       #deltaX:I
    :cond_1
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mListener:Lcom/android/videoeditor/widgets/HandleView$MoveListener;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->getLeft()I

    move-result v2

    invoke-interface {v1, p0, v2, v0}, Lcom/android/videoeditor/widgets/HandleView$MoveListener;->onMoveEnd(Lcom/android/videoeditor/widgets/HandleView;II)V

    goto :goto_0
.end method


# virtual methods
.method public endMove()V
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/HandleView;->mMoveStarted:Z

    if-eqz v0, :cond_0

    .line 128
    iget v0, p0, Lcom/android/videoeditor/widgets/HandleView;->mLastMoveX:F

    invoke-direct {p0, v0}, Lcom/android/videoeditor/widgets/HandleView;->endActionMove(F)V

    .line 130
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 217
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 219
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/HandleView;->mBeginLimitReached:Z

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/videoeditor/widgets/HandleView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/HandleView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 222
    iget-object v0, p0, Lcom/android/videoeditor/widgets/HandleView;->mArrowLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 225
    :cond_0
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/HandleView;->mEndLimitReached:Z

    if-nez v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/videoeditor/widgets/HandleView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/videoeditor/widgets/HandleView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/videoeditor/widgets/HandleView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 228
    iget-object v0, p0, Lcom/android/videoeditor/widgets/HandleView;->mArrowRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 230
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v4, 0x1

    .line 137
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 189
    :cond_0
    :goto_0
    return v4

    .line 141
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 144
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mListener:Lcom/android/videoeditor/widgets/HandleView$MoveListener;

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mListener:Lcom/android/videoeditor/widgets/HandleView$MoveListener;

    invoke-interface {v1, p0}, Lcom/android/videoeditor/widgets/HandleView$MoveListener;->onMoveBegin(Lcom/android/videoeditor/widgets/HandleView;)V

    .line 148
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mStartMoveX:F

    .line 149
    iput-boolean v4, p0, Lcom/android/videoeditor/widgets/HandleView;->mMoveStarted:Z

    .line 154
    :goto_1
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mLastDeltaX:I

    goto :goto_0

    .line 151
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mMoveStarted:Z

    goto :goto_1

    .line 159
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mMoveStarted:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/videoeditor/widgets/HandleView;->mStartMoveX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 161
    .local v0, deltaX:I
    iget v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mLastDeltaX:I

    if-eq v0, v1, :cond_0

    .line 162
    iput v0, p0, Lcom/android/videoeditor/widgets/HandleView;->mLastDeltaX:I

    .line 164
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mListener:Lcom/android/videoeditor/widgets/HandleView$MoveListener;

    if-eqz v1, :cond_3

    .line 165
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->getId()I

    move-result v1

    const v2, 0x7f08001d

    if-ne v1, v2, :cond_4

    .line 166
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mListener:Lcom/android/videoeditor/widgets/HandleView$MoveListener;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/videoeditor/widgets/HandleView$MoveListener;->onMove(Lcom/android/videoeditor/widgets/HandleView;II)Z

    .line 172
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mLastMoveX:F

    goto :goto_0

    .line 168
    :cond_4
    iget-object v1, p0, Lcom/android/videoeditor/widgets/HandleView;->mListener:Lcom/android/videoeditor/widgets/HandleView$MoveListener;

    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->getLeft()I

    move-result v2

    invoke-interface {v1, p0, v2, v0}, Lcom/android/videoeditor/widgets/HandleView$MoveListener;->onMove(Lcom/android/videoeditor/widgets/HandleView;II)Z

    goto :goto_2

    .line 180
    .end local v0           #deltaX:I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/videoeditor/widgets/HandleView;->endActionMove(F)V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setLimitReached(ZZ)V
    .locals 1
    .parameter "beginLimitReached"
    .parameter "endLimitReached"

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/HandleView;->mBeginLimitReached:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/videoeditor/widgets/HandleView;->mEndLimitReached:Z

    if-ne p2, v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 117
    :cond_0
    iput-boolean p1, p0, Lcom/android/videoeditor/widgets/HandleView;->mBeginLimitReached:Z

    .line 118
    iput-boolean p2, p0, Lcom/android/videoeditor/widgets/HandleView;->mEndLimitReached:Z

    .line 120
    invoke-virtual {p0}, Lcom/android/videoeditor/widgets/HandleView;->invalidate()V

    goto :goto_0
.end method

.method public setListener(Lcom/android/videoeditor/widgets/HandleView$MoveListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/videoeditor/widgets/HandleView;->mListener:Lcom/android/videoeditor/widgets/HandleView$MoveListener;

    .line 103
    return-void
.end method
