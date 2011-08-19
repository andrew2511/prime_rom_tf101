.class public Lcom/layar/ui/RotateLayout;
.super Landroid/widget/LinearLayout;
.source "RotateLayout.java"

# interfaces
.implements Lcom/layar/ui/RotationListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field static sInstances:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/ui/RotateLayout;",
            ">;"
        }
    .end annotation
.end field

.field static sLockRotation:Z


# instance fields
.field invMat:Landroid/graphics/Matrix;

.field mUseNewImplementation:Z

.field newDirtyF:Landroid/graphics/RectF;

.field rotMat:Landroid/graphics/Matrix;

.field private rotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/layar/ui/RotateLayout;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/ui/RotateLayout;->TAG:Ljava/lang/String;

    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/layar/ui/RotateLayout;->sLockRotation:Z

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/layar/ui/RotateLayout;->sInstances:Ljava/util/ArrayList;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/layar/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/layar/ui/RotateLayout;->rotMat:Landroid/graphics/Matrix;

    .line 25
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/layar/ui/RotateLayout;->invMat:Landroid/graphics/Matrix;

    .line 26
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/layar/ui/RotateLayout;->newDirtyF:Landroid/graphics/RectF;

    .line 30
    iput-boolean v1, p0, Lcom/layar/ui/RotateLayout;->mUseNewImplementation:Z

    .line 32
    sget-boolean v0, Lcom/layar/util/MyConfig;->FORCE_LANDSCAPE:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/layar/ui/RotateLayout;->rotation:I

    .line 84
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLockRotation()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/layar/ui/RotateLayout;->sLockRotation:Z

    return v0
.end method

.method public static setLockRotation(Z)V
    .locals 4
    .parameter "doLockRotation"

    .prologue
    .line 44
    sput-boolean p0, Lcom/layar/ui/RotateLayout;->sLockRotation:Z

    .line 46
    sget-object v1, Lcom/layar/ui/RotateLayout;->sInstances:Ljava/util/ArrayList;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v2, Lcom/layar/ui/RotateLayout;->sInstances:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 46
    monitor-exit v1

    .line 50
    return-void

    .line 47
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/ui/RotateLayout;

    .line 48
    .local v0, view:Lcom/layar/ui/RotateLayout;
    sget-boolean v3, Lcom/layar/ui/RotateLayout;->sLockRotation:Z

    invoke-virtual {v0, v3}, Lcom/layar/ui/RotateLayout;->lockRotation(Z)V

    goto :goto_0

    .line 46
    .end local v0           #view:Lcom/layar/ui/RotateLayout;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 119
    iget-object v0, p0, Lcom/layar/ui/RotateLayout;->invMat:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 120
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 122
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    const/4 v1, 0x2

    new-array v0, v1, [F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    aput v1, v0, v3

    .line 177
    .local v0, xy:[F
    iget-object v1, p0, Lcom/layar/ui/RotateLayout;->rotMat:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 178
    aget v1, v0, v2

    aget v2, v0, v3

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 179
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 185
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getLayoutRotation()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/layar/ui/RotateLayout;->rotation:I

    return v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 2
    .parameter "location"
    .parameter "dirty"

    .prologue
    .line 194
    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 195
    iget-object v0, p0, Lcom/layar/ui/RotateLayout;->newDirtyF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 196
    iget-object v0, p0, Lcom/layar/ui/RotateLayout;->invMat:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/layar/ui/RotateLayout;->newDirtyF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 197
    iget-object v0, p0, Lcom/layar/ui/RotateLayout;->newDirtyF:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 198
    invoke-virtual {p0, p2}, Lcom/layar/ui/RotateLayout;->invalidate(Landroid/graphics/Rect;)V

    .line 199
    const/4 v0, 0x0

    return-object v0
.end method

.method public lockRotation(Z)V
    .locals 2
    .parameter "doLockRotation"

    .prologue
    .line 57
    if-eqz p1, :cond_0

    .line 58
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/layar/ui/RotateLayout;->setRotation(I)V

    .line 59
    :cond_0
    sput-boolean p1, Lcom/layar/ui/RotateLayout;->sLockRotation:Z

    .line 60
    if-nez p1, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/layar/ui/RotateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/layar/util/SensorHelper;->getInstance(Landroid/content/Context;)Lcom/layar/util/SensorHelper;

    move-result-object v0

    .line 63
    .local v0, rotationObserver:Lcom/layar/ui/RotationChangeInformer;
    invoke-interface {v0}, Lcom/layar/ui/RotationChangeInformer;->getLayoutRotation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/layar/ui/RotateLayout;->setRotation(I)V

    .line 65
    .end local v0           #rotationObserver:Lcom/layar/ui/RotationChangeInformer;
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 88
    sget-object v1, Lcom/layar/ui/RotateLayout;->sInstances:Ljava/util/ArrayList;

    monitor-enter v1

    .line 89
    :try_start_0
    sget-object v2, Lcom/layar/ui/RotateLayout;->sInstances:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-boolean v1, p0, Lcom/layar/ui/RotateLayout;->mUseNewImplementation:Z

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/layar/ui/RotateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/layar/util/SensorHelper;->getInstance(Landroid/content/Context;)Lcom/layar/util/SensorHelper;

    move-result-object v0

    .line 95
    .local v0, rotationObserver:Lcom/layar/ui/RotationChangeInformer;
    invoke-interface {v0, p0}, Lcom/layar/ui/RotationChangeInformer;->registerRotationListener(Lcom/layar/ui/RotationListener;)V

    .line 96
    sget-boolean v1, Lcom/layar/ui/RotateLayout;->sLockRotation:Z

    if-nez v1, :cond_0

    .line 97
    invoke-interface {v0}, Lcom/layar/ui/RotationChangeInformer;->getLayoutRotation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/layar/ui/RotateLayout;->setRotation(I)V

    .line 99
    .end local v0           #rotationObserver:Lcom/layar/ui/RotationChangeInformer;
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 100
    return-void

    .line 88
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 104
    sget-object v1, Lcom/layar/ui/RotateLayout;->sInstances:Ljava/util/ArrayList;

    monitor-enter v1

    .line 105
    :try_start_0
    sget-object v2, Lcom/layar/ui/RotateLayout;->sInstances:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 104
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    iget-boolean v1, p0, Lcom/layar/ui/RotateLayout;->mUseNewImplementation:Z

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/layar/ui/RotateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/layar/util/SensorHelper;->getInstance(Landroid/content/Context;)Lcom/layar/util/SensorHelper;

    move-result-object v0

    .line 111
    .local v0, rotationObserver:Lcom/layar/ui/RotationChangeInformer;
    invoke-interface {v0, p0}, Lcom/layar/ui/RotationChangeInformer;->unregisterRotationListener(Lcom/layar/ui/RotationListener;)V

    .line 113
    .end local v0           #rotationObserver:Lcom/layar/ui/RotationChangeInformer;
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 114
    return-void

    .line 104
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 127
    iget v0, p0, Lcom/layar/ui/RotateLayout;->rotation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/layar/ui/RotateLayout;->rotation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p2

    move v4, p5

    move v5, p4

    .line 128
    invoke-super/range {v0 .. v5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 131
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 141
    iget v0, p0, Lcom/layar/ui/RotateLayout;->rotation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/layar/ui/RotateLayout;->rotation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 142
    :cond_0
    invoke-super {p0, p2, p1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 146
    :goto_0
    invoke-virtual {p0}, Lcom/layar/ui/RotateLayout;->rotateMeasureMent()V

    .line 147
    return-void

    .line 144
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method protected rotateMeasureMent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    iget v0, p0, Lcom/layar/ui/RotateLayout;->rotation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/layar/ui/RotateLayout;->rotation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/layar/ui/RotateLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/layar/ui/RotateLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/layar/ui/RotateLayout;->setMeasuredDimension(II)V

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/layar/ui/RotateLayout;->rotMat:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 157
    iget v0, p0, Lcom/layar/ui/RotateLayout;->rotation:I

    packed-switch v0, :pswitch_data_0

    .line 171
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/layar/ui/RotateLayout;->rotMat:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/layar/ui/RotateLayout;->invMat:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 172
    return-void

    .line 159
    :pswitch_1
    iget-object v0, p0, Lcom/layar/ui/RotateLayout;->rotMat:Landroid/graphics/Matrix;

    const/high16 v1, 0x4334

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 160
    iget-object v0, p0, Lcom/layar/ui/RotateLayout;->rotMat:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/layar/ui/RotateLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/layar/ui/RotateLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 163
    :pswitch_2
    iget-object v0, p0, Lcom/layar/ui/RotateLayout;->rotMat:Landroid/graphics/Matrix;

    const/high16 v1, 0x42b4

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 164
    iget-object v0, p0, Lcom/layar/ui/RotateLayout;->rotMat:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/layar/ui/RotateLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 167
    :pswitch_3
    iget-object v0, p0, Lcom/layar/ui/RotateLayout;->rotMat:Landroid/graphics/Matrix;

    const/high16 v1, 0x4387

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 168
    iget-object v0, p0, Lcom/layar/ui/RotateLayout;->rotMat:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/layar/ui/RotateLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public rotationChanged(I)V
    .locals 1
    .parameter "newRotation"

    .prologue
    .line 204
    sget-boolean v0, Lcom/layar/ui/RotateLayout;->sLockRotation:Z

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {p0, p1}, Lcom/layar/ui/RotateLayout;->setRotation(I)V

    .line 206
    :cond_0
    return-void
.end method

.method public setRotation(I)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 35
    sget-boolean v0, Lcom/layar/util/MyConfig;->FORCE_LANDSCAPE:Z

    if-eqz v0, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget v0, p0, Lcom/layar/ui/RotateLayout;->rotation:I

    if-eq v0, p1, :cond_0

    .line 38
    iput p1, p0, Lcom/layar/ui/RotateLayout;->rotation:I

    .line 39
    invoke-virtual {p0}, Lcom/layar/ui/RotateLayout;->requestLayout()V

    .line 40
    invoke-virtual {p0}, Lcom/layar/ui/RotateLayout;->postInvalidate()V

    goto :goto_0
.end method

.method public useNewImplementation(Z)V
    .locals 1
    .parameter "useNew"

    .prologue
    .line 68
    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/layar/ui/RotateLayout;->sLockRotation:Z

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/layar/ui/RotateLayout;->setRotation(I)V

    .line 71
    :cond_0
    iput-boolean p1, p0, Lcom/layar/ui/RotateLayout;->mUseNewImplementation:Z

    .line 72
    return-void
.end method
