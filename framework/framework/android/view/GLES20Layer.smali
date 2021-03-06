.class Landroid/view/GLES20Layer;
.super Landroid/view/HardwareLayer;
.source "GLES20Layer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GLES20Layer$Finalizer;
    }
.end annotation


# instance fields
.field private final mCanvas:Landroid/view/GLES20Canvas;

.field private final mFinalizer:Landroid/view/GLES20Layer$Finalizer;

.field private mLayer:I

.field private mLayerHeight:I

.field private mLayerWidth:I


# direct methods
.method constructor <init>(IIZ)V
    .registers 9
    .parameter "width"
    .parameter "height"
    .parameter "isOpaque"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/HardwareLayer;-><init>(IIZ)V

    .line 38
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 39
    .local v0, layerInfo:[I
    invoke-static {p1, p2, p3, v0}, Landroid/view/GLES20Canvas;->nCreateLayer(IIZ[I)I

    move-result v1

    iput v1, p0, Landroid/view/GLES20Layer;->mLayer:I

    .line 40
    iget v1, p0, Landroid/view/GLES20Layer;->mLayer:I

    if-eqz v1, :cond_31

    .line 41
    aget v1, v0, v3

    iput v1, p0, Landroid/view/GLES20Layer;->mLayerWidth:I

    .line 42
    aget v1, v0, v4

    iput v1, p0, Landroid/view/GLES20Layer;->mLayerHeight:I

    .line 44
    new-instance v1, Landroid/view/GLES20Canvas;

    iget v2, p0, Landroid/view/GLES20Layer;->mLayer:I

    if-nez p3, :cond_22

    move v3, v4

    :cond_22
    invoke-direct {v1, v2, v3}, Landroid/view/GLES20Canvas;-><init>(IZ)V

    iput-object v1, p0, Landroid/view/GLES20Layer;->mCanvas:Landroid/view/GLES20Canvas;

    .line 45
    new-instance v1, Landroid/view/GLES20Layer$Finalizer;

    iget v2, p0, Landroid/view/GLES20Layer;->mLayer:I

    invoke-direct {v1, v2}, Landroid/view/GLES20Layer$Finalizer;-><init>(I)V

    iput-object v1, p0, Landroid/view/GLES20Layer;->mFinalizer:Landroid/view/GLES20Layer$Finalizer;

    .line 50
    :goto_30
    return-void

    .line 47
    :cond_31
    iput-object v2, p0, Landroid/view/GLES20Layer;->mCanvas:Landroid/view/GLES20Canvas;

    .line 48
    iput-object v2, p0, Landroid/view/GLES20Layer;->mFinalizer:Landroid/view/GLES20Layer$Finalizer;

    goto :goto_30
.end method


# virtual methods
.method destroy()V
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Landroid/view/GLES20Layer;->mFinalizer:Landroid/view/GLES20Layer$Finalizer;

    invoke-virtual {v0}, Landroid/view/GLES20Layer$Finalizer;->destroy()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    .line 107
    return-void
.end method

.method end(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "currentCanvas"

    .prologue
    .line 90
    instance-of v0, p1, Landroid/view/GLES20Canvas;

    if-eqz v0, :cond_9

    .line 91
    check-cast p1, Landroid/view/GLES20Canvas;

    .end local p1
    invoke-virtual {p1}, Landroid/view/GLES20Canvas;->resume()V

    .line 93
    :cond_9
    return-void
.end method

.method getCanvas()Landroid/view/HardwareCanvas;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Landroid/view/GLES20Layer;->mCanvas:Landroid/view/GLES20Canvas;

    return-object v0
.end method

.method public getLayer()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    return v0
.end method

.method isValid()Z
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Landroid/view/GLES20Layer;->mLayer:I

    if-eqz v0, :cond_e

    iget v0, p0, Landroid/view/GLES20Layer;->mLayerWidth:I

    if-lez v0, :cond_e

    iget v0, p0, Landroid/view/GLES20Layer;->mLayerHeight:I

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method resize(II)V
    .registers 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/view/GLES20Layer;->isValid()Z

    move-result v1

    if-eqz v1, :cond_a

    if-lez p1, :cond_a

    if-gtz p2, :cond_b

    .line 81
    :cond_a
    :goto_a
    return-void

    .line 70
    :cond_b
    iput p1, p0, Landroid/view/GLES20Layer;->mWidth:I

    .line 71
    iput p2, p0, Landroid/view/GLES20Layer;->mHeight:I

    .line 73
    iget v1, p0, Landroid/view/GLES20Layer;->mLayerWidth:I

    if-ne p1, v1, :cond_17

    iget v1, p0, Landroid/view/GLES20Layer;->mLayerHeight:I

    if-eq p2, v1, :cond_a

    .line 74
    :cond_17
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 76
    .local v0, layerInfo:[I
    iget v1, p0, Landroid/view/GLES20Layer;->mLayer:I

    invoke-static {v1, p1, p2, v0}, Landroid/view/GLES20Canvas;->nResizeLayer(III[I)V

    .line 78
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Landroid/view/GLES20Layer;->mLayerWidth:I

    .line 79
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Landroid/view/GLES20Layer;->mLayerHeight:I

    goto :goto_a
.end method

.method start(Landroid/graphics/Canvas;)Landroid/view/HardwareCanvas;
    .registers 3
    .parameter "currentCanvas"

    .prologue
    .line 97
    instance-of v0, p1, Landroid/view/GLES20Canvas;

    if-eqz v0, :cond_9

    .line 98
    check-cast p1, Landroid/view/GLES20Canvas;

    .end local p1
    invoke-virtual {p1}, Landroid/view/GLES20Canvas;->interrupt()V

    .line 100
    :cond_9
    invoke-virtual {p0}, Landroid/view/GLES20Layer;->getCanvas()Landroid/view/HardwareCanvas;

    move-result-object v0

    return-object v0
.end method
