.class public abstract Lcom/ecareme/pixwe/media/Layer;
.super Ljava/lang/Object;
.source "Layer.java"


# instance fields
.field mHeight:F

.field mHidden:Z

.field mWidth:F

.field mX:F

.field mY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/ecareme/pixwe/media/Layer;->mX:F

    .line 25
    iput v0, p0, Lcom/ecareme/pixwe/media/Layer;->mY:F

    .line 26
    iput v0, p0, Lcom/ecareme/pixwe/media/Layer;->mWidth:F

    .line 27
    iput v0, p0, Lcom/ecareme/pixwe/media/Layer;->mHeight:F

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/Layer;->mHidden:Z

    .line 23
    return-void
.end method


# virtual methods
.method public containsPoint(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public abstract generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V
.end method

.method public final getHeight()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/ecareme/pixwe/media/Layer;->mHeight:F

    return v0
.end method

.method public final getWidth()F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/ecareme/pixwe/media/Layer;->mWidth:F

    return v0
.end method

.method public final getX()F
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/ecareme/pixwe/media/Layer;->mX:F

    return v0
.end method

.method public final getY()F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/ecareme/pixwe/media/Layer;->mY:F

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/Layer;->mHidden:Z

    return v0
.end method

.method protected onHiddenChanged()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method protected onSizeChanged()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method protected onSurfaceCreated(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 0
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 94
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public renderBlended(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 0
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 81
    return-void
.end method

.method public renderOpaque(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 0
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 78
    return-void
.end method

.method public setHidden(Z)V
    .locals 1
    .parameter "hidden"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/ecareme/pixwe/media/Layer;->mHidden:Z

    if-eq v0, p1, :cond_0

    .line 65
    iput-boolean p1, p0, Lcom/ecareme/pixwe/media/Layer;->mHidden:Z

    .line 66
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/Layer;->onHiddenChanged()V

    .line 68
    :cond_0
    return-void
.end method

.method public final setPosition(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 39
    iput p1, p0, Lcom/ecareme/pixwe/media/Layer;->mX:F

    .line 40
    iput p2, p0, Lcom/ecareme/pixwe/media/Layer;->mY:F

    .line 41
    return-void
.end method

.method public final setSize(FF)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 52
    iget v0, p0, Lcom/ecareme/pixwe/media/Layer;->mWidth:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ecareme/pixwe/media/Layer;->mHeight:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    iput p1, p0, Lcom/ecareme/pixwe/media/Layer;->mWidth:F

    .line 54
    iput p2, p0, Lcom/ecareme/pixwe/media/Layer;->mHeight:F

    .line 55
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/Layer;->onSizeChanged()V

    .line 57
    :cond_1
    return-void
.end method

.method public update(Lcom/ecareme/pixwe/media/RenderView;F)Z
    .locals 1
    .parameter "view"
    .parameter "frameInterval"

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method
