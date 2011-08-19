.class public abstract Lcom/android/ex/carousel/CarouselView;
.super Landroid/renderscript/RSSurfaceView;
.source "CarouselView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/carousel/CarouselView$Info;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mController:Lcom/android/ex/carousel/CarouselController;

.field private mRS:Landroid/renderscript/RenderScriptGL;

.field private mRenderScript:Lcom/android/ex/carousel/CarouselRS;

.field private mTracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 119
    new-instance v0, Lcom/android/ex/carousel/CarouselController;

    invoke-direct {v0}, Lcom/android/ex/carousel/CarouselController;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/ex/carousel/CarouselView;-><init>(Landroid/content/Context;Lcom/android/ex/carousel/CarouselController;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 130
    new-instance v0, Lcom/android/ex/carousel/CarouselController;

    invoke-direct {v0}, Lcom/android/ex/carousel/CarouselController;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/ex/carousel/CarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/ex/carousel/CarouselController;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/ex/carousel/CarouselController;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "controller"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Landroid/renderscript/RSSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    iput-object p1, p0, Lcom/android/ex/carousel/CarouselView;->mContext:Landroid/content/Context;

    .line 136
    iput-object p3, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    .line 137
    const/4 v0, 0x1

    .line 138
    .local v0, useDepthBuffer:Z
    invoke-direct {p0}, Lcom/android/ex/carousel/CarouselView;->ensureRenderScript()V

    .line 141
    new-instance v1, Lcom/android/ex/carousel/CarouselView$1;

    invoke-direct {v1, p0}, Lcom/android/ex/carousel/CarouselView$1;-><init>(Lcom/android/ex/carousel/CarouselView;)V

    invoke-virtual {p0, v1}, Lcom/android/ex/carousel/CarouselView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/ex/carousel/CarouselController;)V
    .locals 1
    .parameter "context"
    .parameter "controller"

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/ex/carousel/CarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/ex/carousel/CarouselController;)V

    .line 124
    return-void
.end method

.method private ensureRenderScript()V
    .locals 5

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/ex/carousel/CarouselView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-nez v1, :cond_0

    .line 155
    new-instance v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    invoke-direct {v0}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>()V

    .line 157
    .local v0, sc:Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    const/16 v1, 0x10

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->setDepth(II)V

    .line 159
    invoke-virtual {p0, v0}, Lcom/android/ex/carousel/CarouselView;->createRenderScriptGL(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)Landroid/renderscript/RenderScriptGL;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ex/carousel/CarouselView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 161
    .end local v0           #sc:Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    :cond_0
    iget-object v1, p0, Lcom/android/ex/carousel/CarouselView;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-nez v1, :cond_1

    .line 162
    new-instance v1, Lcom/android/ex/carousel/CarouselRS;

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselView;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v3, p0, Lcom/android/ex/carousel/CarouselView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/ex/carousel/CarouselView;->getRenderScriptInfo()Lcom/android/ex/carousel/CarouselView$Info;

    move-result-object v4

    iget v4, v4, Lcom/android/ex/carousel/CarouselView$Info;->resId:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/ex/carousel/CarouselRS;-><init>(Landroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;I)V

    iput-object v1, p0, Lcom/android/ex/carousel/CarouselView;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    .line 164
    iget-object v1, p0, Lcom/android/ex/carousel/CarouselView;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v1}, Lcom/android/ex/carousel/CarouselRS;->resumeRendering()V

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselView;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v3, p0, Lcom/android/ex/carousel/CarouselView;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v1, v2, v3}, Lcom/android/ex/carousel/CarouselController;->setRS(Landroid/renderscript/RenderScriptGL;Lcom/android/ex/carousel/CarouselRS;)V

    .line 167
    return-void
.end method


# virtual methods
.method public createCards(I)V
    .locals 1
    .parameter "n"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->createCards(I)V

    .line 326
    return-void
.end method

.method public getCardCount()I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0}, Lcom/android/ex/carousel/CarouselController;->getCardCount()I

    move-result v0

    return v0
.end method

.method public abstract getRenderScriptInfo()Lcom/android/ex/carousel/CarouselView$Info;
.end method

.method public interpretLongPressEvents()Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 561
    invoke-super {p0}, Landroid/renderscript/RSSurfaceView;->onAttachedToWindow()V

    .line 562
    invoke-direct {p0}, Lcom/android/ex/carousel/CarouselView;->ensureRenderScript()V

    .line 563
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 550
    invoke-super {p0}, Landroid/renderscript/RSSurfaceView;->onDetachedFromWindow()V

    .line 551
    iput-object v1, p0, Lcom/android/ex/carousel/CarouselView;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    .line 552
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    .line 553
    iput-object v1, p0, Lcom/android/ex/carousel/CarouselView;->mRS:Landroid/renderscript/RenderScriptGL;

    .line 554
    invoke-virtual {p0}, Lcom/android/ex/carousel/CarouselView;->destroyRenderScriptGL()V

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    iget-object v1, p0, Lcom/android/ex/carousel/CarouselView;->mRS:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/ex/carousel/CarouselView;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/carousel/CarouselController;->setRS(Landroid/renderscript/RenderScriptGL;Lcom/android/ex/carousel/CarouselRS;)V

    .line 557
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    .line 567
    invoke-super {p0, p1}, Landroid/renderscript/RSSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 568
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 570
    .local v0, action:I
    iget-object v2, p0, Lcom/android/ex/carousel/CarouselView;->mRenderScript:Lcom/android/ex/carousel/CarouselRS;

    if-nez v2, :cond_0

    move v2, v7

    .line 596
    :goto_0
    return v2

    .line 574
    :cond_0
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v2, v7

    .line 596
    goto :goto_0

    .line 576
    :pswitch_0
    iput-boolean v7, p0, Lcom/android/ex/carousel/CarouselView;->mTracking:Z

    .line 577
    iget-object v2, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/ex/carousel/CarouselController;->onTouchStarted(FFJ)V

    goto :goto_1

    .line 581
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/ex/carousel/CarouselView;->mTracking:Z

    if-eqz v2, :cond_1

    .line 582
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 583
    iget-object v2, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/ex/carousel/CarouselController;->onTouchMoved(FFJ)V

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 586
    :cond_2
    iget-object v2, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/ex/carousel/CarouselController;->onTouchMoved(FFJ)V

    goto :goto_1

    .line 591
    .end local v1           #i:I
    :pswitch_2
    iget-object v2, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/ex/carousel/CarouselController;->onTouchStopped(FFJ)V

    .line 592
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/ex/carousel/CarouselView;->mTracking:Z

    goto :goto_1

    .line 574
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCallback(Lcom/android/ex/carousel/CarouselRS$CarouselCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setCallback(Lcom/android/ex/carousel/CarouselRS$CarouselCallback;)V

    .line 477
    return-void
.end method

.method public setDefaultBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setDefaultBitmap(Landroid/graphics/Bitmap;)V

    .line 375
    return-void
.end method

.method public setDetailTextureForItem(IFFFFLandroid/graphics/Bitmap;)V
    .locals 7
    .parameter "n"
    .parameter "offx"
    .parameter "offy"
    .parameter "loffx"
    .parameter "loffy"
    .parameter "bitmap"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/ex/carousel/CarouselController;->setDetailTextureForItem(IFFFFLandroid/graphics/Bitmap;)V

    .line 363
    return-void
.end method

.method public setGeometryForItem(ILandroid/renderscript/Mesh;)V
    .locals 1
    .parameter "n"
    .parameter "mesh"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/CarouselController;->setGeometryForItem(ILandroid/renderscript/Mesh;)V

    .line 213
    return-void
.end method

.method public setLoadingBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 387
    return-void
.end method

.method public setMatrixForItem(I[F)V
    .locals 1
    .parameter "n"
    .parameter "matrix"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/CarouselController;->setMatrixForItem(I[F)V

    .line 222
    return-void
.end method

.method public setRezInCardCount(F)V
    .locals 1
    .parameter "n"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setRezInCardCount(F)V

    .line 533
    return-void
.end method

.method public setSlotCount(I)V
    .locals 1
    .parameter "n"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setSlotCount(I)V

    .line 232
    return-void
.end method

.method public setStartAngle(F)V
    .locals 1
    .parameter "angle"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setStartAngle(F)V

    .line 489
    return-void
.end method

.method public setTextureForItem(ILandroid/graphics/Bitmap;)V
    .locals 1
    .parameter "n"
    .parameter "bitmap"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1, p2}, Lcom/android/ex/carousel/CarouselController;->setTextureForItem(ILandroid/graphics/Bitmap;)V

    .line 344
    return-void
.end method

.method public setVisibleSlots(I)V
    .locals 1
    .parameter "n"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0, p1}, Lcom/android/ex/carousel/CarouselController;->setVisibleSlots(I)V

    .line 241
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/renderscript/RSSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 173
    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0}, Lcom/android/ex/carousel/CarouselController;->onSurfaceChanged()V

    .line 174
    return-void
.end method
