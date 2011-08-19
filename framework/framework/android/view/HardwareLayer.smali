.class abstract Landroid/view/HardwareLayer;
.super Ljava/lang/Object;
.source "HardwareLayer.java"


# instance fields
.field mHeight:I

.field final mOpaque:Z

.field mWidth:I


# direct methods
.method constructor <init>(IIZ)V
    .registers 4
    .parameter "width"
    .parameter "height"
    .parameter "isOpaque"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Landroid/view/HardwareLayer;->mWidth:I

    .line 44
    iput p2, p0, Landroid/view/HardwareLayer;->mHeight:I

    .line 45
    iput-boolean p3, p0, Landroid/view/HardwareLayer;->mOpaque:Z

    .line 46
    return-void
.end method


# virtual methods
.method abstract destroy()V
.end method

.method abstract end(Landroid/graphics/Canvas;)V
.end method

.method abstract getCanvas()Landroid/view/HardwareCanvas;
.end method

.method getHeight()I
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Landroid/view/HardwareLayer;->mHeight:I

    return v0
.end method

.method getWidth()I
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Landroid/view/HardwareLayer;->mWidth:I

    return v0
.end method

.method isOpaque()Z
    .registers 2

    .prologue
    .line 72
    iget-boolean v0, p0, Landroid/view/HardwareLayer;->mOpaque:Z

    return v0
.end method

.method abstract isValid()Z
.end method

.method abstract resize(II)V
.end method

.method abstract start(Landroid/graphics/Canvas;)Landroid/view/HardwareCanvas;
.end method
