.class public Lcom/android/camera/Switcher;
.super Landroid/widget/ImageView;
.source "Switcher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Switcher$OnSwitchListener;
    }
.end annotation


# instance fields
.field private final DISABLED_COLOR:I

.field private mAnimationStartPosition:I

.field private mAnimationStartTime:J

.field private mListener:Lcom/android/camera/Switcher$OnSwitchListener;

.field private mPosition:I

.field private mSwitch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-boolean v0, p0, Lcom/android/camera/Switcher;->mSwitch:Z

    .line 50
    iput v0, p0, Lcom/android/camera/Switcher;->mPosition:I

    .line 51
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/Switcher;->mAnimationStartTime:J

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/Switcher;->DISABLED_COLOR:I

    .line 58
    return-void
.end method

.method private startParkingAnimation()V
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/Switcher;->mAnimationStartTime:J

    .line 120
    iget v0, p0, Lcom/android/camera/Switcher;->mPosition:I

    iput v0, p0, Lcom/android/camera/Switcher;->mAnimationStartPosition:I

    .line 121
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getAvailableLength()I

    move-result v0

    .line 136
    .local v0, available:I
    invoke-virtual {p0, p1}, Lcom/android/camera/Switcher;->trackTouch(Landroid/view/MotionEvent;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/Switcher;->mPosition:I

    .line 137
    iget v1, p0, Lcom/android/camera/Switcher;->mPosition:I

    if-gez v1, :cond_1

    .line 138
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/Switcher;->mPosition:I

    .line 142
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/Switcher;->invalidate()V

    .line 143
    return-void

    .line 139
    :cond_1
    iget v1, p0, Lcom/android/camera/Switcher;->mPosition:I

    if-le v1, v0, :cond_0

    .line 140
    iput v0, p0, Lcom/android/camera/Switcher;->mPosition:I

    goto :goto_0
.end method

.method private tryToSetSwitch(Z)V
    .locals 1
    .parameter "onOff"

    .prologue
    .line 69
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/Switcher;->mSwitch:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/android/camera/Switcher;->startParkingAnimation()V

    .line 83
    :goto_0
    return-void

    .line 73
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/android/camera/Switcher;->mSwitch:Z

    .line 74
    iget-object v0, p0, Lcom/android/camera/Switcher;->mListener:Lcom/android/camera/Switcher$OnSwitchListener;

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/android/camera/Switcher;->mListener:Lcom/android/camera/Switcher$OnSwitchListener;

    invoke-interface {v0, p0, p1}, Lcom/android/camera/Switcher$OnSwitchListener;->onSwitchChanged(Lcom/android/camera/Switcher;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/Switcher;->mSwitch:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-direct {p0}, Lcom/android/camera/Switcher;->startParkingAnimation()V

    goto :goto_0

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 81
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/Switcher;->startParkingAnimation()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/camera/Switcher;->startParkingAnimation()V

    throw v0
.end method


# virtual methods
.method public addTouchView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 193
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 194
    return-void
.end method

.method protected getAvailableLength()I
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getLogicalPosition()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/android/camera/Switcher;->mPosition:I

    return v0
.end method

.method protected getOffsetLeftToDraw()I
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getOffsetTopToDraw()I
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/android/camera/Switcher;->mPosition:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const-wide/16 v10, -0x1

    const/4 v9, 0x0

    .line 160
    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 162
    .local v3, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    if-nez v7, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getAvailableLength()I

    move-result v0

    .line 168
    .local v0, available:I
    iget-wide v7, p0, Lcom/android/camera/Switcher;->mAnimationStartTime:J

    cmp-long v7, v7, v10

    if-eqz v7, :cond_9

    .line 169
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v5

    .line 170
    .local v5, time:J
    iget-wide v7, p0, Lcom/android/camera/Switcher;->mAnimationStartTime:J

    sub-long v7, v5, v7

    long-to-int v1, v7

    .line 171
    .local v1, deltaTime:I
    iget v7, p0, Lcom/android/camera/Switcher;->mAnimationStartPosition:I

    iget-boolean v8, p0, Lcom/android/camera/Switcher;->mSwitch:Z

    if-eqz v8, :cond_5

    move v8, v1

    :goto_1
    mul-int/lit16 v8, v8, 0xc8

    div-int/lit16 v8, v8, 0x3e8

    add-int/2addr v7, v8

    iput v7, p0, Lcom/android/camera/Switcher;->mPosition:I

    .line 173
    iget v7, p0, Lcom/android/camera/Switcher;->mPosition:I

    if-gez v7, :cond_2

    iput v9, p0, Lcom/android/camera/Switcher;->mPosition:I

    .line 174
    :cond_2
    iget v7, p0, Lcom/android/camera/Switcher;->mPosition:I

    if-le v7, v0, :cond_3

    iput v0, p0, Lcom/android/camera/Switcher;->mPosition:I

    .line 175
    :cond_3
    iget v7, p0, Lcom/android/camera/Switcher;->mPosition:I

    iget-boolean v8, p0, Lcom/android/camera/Switcher;->mSwitch:Z

    if-eqz v8, :cond_6

    move v8, v0

    :goto_2
    if-ne v7, v8, :cond_7

    const/4 v7, 0x1

    move v2, v7

    .line 176
    .local v2, done:Z
    :goto_3
    if-nez v2, :cond_8

    .line 177
    invoke-virtual {p0}, Lcom/android/camera/Switcher;->invalidate()V

    .line 184
    .end local v1           #deltaTime:I
    .end local v2           #done:Z
    .end local v5           #time:J
    :cond_4
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v4

    .line 185
    .local v4, saveCount:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 186
    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getOffsetLeftToDraw()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getOffsetTopToDraw()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 187
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 188
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 171
    .end local v4           #saveCount:I
    .restart local v1       #deltaTime:I
    .restart local v5       #time:J
    :cond_5
    neg-int v8, v1

    goto :goto_1

    :cond_6
    move v8, v9

    .line 175
    goto :goto_2

    :cond_7
    move v2, v9

    goto :goto_3

    .line 179
    .restart local v2       #done:Z
    :cond_8
    iput-wide v10, p0, Lcom/android/camera/Switcher;->mAnimationStartTime:J

    goto :goto_4

    .line 181
    .end local v1           #deltaTime:I
    .end local v2           #done:Z
    .end local v5           #time:J
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/Switcher;->isPressed()Z

    move-result v7

    if-nez v7, :cond_4

    .line 182
    iget-boolean v7, p0, Lcom/android/camera/Switcher;->mSwitch:Z

    if-eqz v7, :cond_a

    move v7, v0

    :goto_5
    iput v7, p0, Lcom/android/camera/Switcher;->mPosition:I

    goto :goto_4

    :cond_a
    move v7, v9

    goto :goto_5
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getLeft()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getTop()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 201
    invoke-virtual {p0, p2}, Lcom/android/camera/Switcher;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 202
    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    invoke-virtual {p0}, Lcom/android/camera/Switcher;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 115
    :goto_0
    return v0

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    move v0, v3

    .line 115
    goto :goto_0

    .line 95
    :pswitch_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/Switcher;->mAnimationStartTime:J

    .line 96
    invoke-virtual {p0, v3}, Lcom/android/camera/Switcher;->setPressed(Z)V

    .line 97
    invoke-direct {p0, p1}, Lcom/android/camera/Switcher;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 101
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/camera/Switcher;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 105
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/camera/Switcher;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 106
    iget v0, p0, Lcom/android/camera/Switcher;->mPosition:I

    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getAvailableLength()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_1

    move v0, v3

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/camera/Switcher;->tryToSetSwitch(Z)V

    .line 107
    invoke-virtual {p0, v2}, Lcom/android/camera/Switcher;->setPressed(Z)V

    goto :goto_1

    :cond_1
    move v0, v2

    .line 106
    goto :goto_2

    .line 111
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/camera/Switcher;->mSwitch:Z

    invoke-direct {p0, v0}, Lcom/android/camera/Switcher;->tryToSetSwitch(Z)V

    .line 112
    invoke-virtual {p0, v2}, Lcom/android/camera/Switcher;->setPressed(Z)V

    goto :goto_1

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 209
    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 210
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 211
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    iget v1, p0, Lcom/android/camera/Switcher;->DISABLED_COLOR:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public setOnSwitchListener(Lcom/android/camera/Switcher$OnSwitchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/camera/Switcher;->mListener:Lcom/android/camera/Switcher$OnSwitchListener;

    .line 87
    return-void
.end method

.method public setSwitch(Z)V
    .locals 1
    .parameter "onOff"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/camera/Switcher;->mSwitch:Z

    if-ne v0, p1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/Switcher;->mSwitch:Z

    .line 63
    invoke-virtual {p0}, Lcom/android/camera/Switcher;->invalidate()V

    goto :goto_0
.end method

.method protected trackTouch(Landroid/view/MotionEvent;)I
    .locals 2
    .parameter "event"

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/Switcher;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method
