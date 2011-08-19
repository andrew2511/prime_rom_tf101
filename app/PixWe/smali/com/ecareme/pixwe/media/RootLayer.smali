.class public abstract Lcom/ecareme/pixwe/media/RootLayer;
.super Lcom/ecareme/pixwe/media/Layer;
.source "RootLayer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/Layer;-><init>()V

    return-void
.end method


# virtual methods
.method public handleLowMemory()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 25
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public onSensorChanged(Lcom/ecareme/pixwe/media/RenderView;Landroid/hardware/SensorEvent;)V
    .locals 0
    .parameter "view"
    .parameter "e"

    .prologue
    .line 34
    return-void
.end method

.method public onSurfaceChanged(Lcom/ecareme/pixwe/media/RenderView;II)V
    .locals 0
    .parameter "view"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 31
    return-void
.end method

.method public onSurfaceCreated(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 0
    .parameter "renderView"
    .parameter "gl"

    .prologue
    .line 28
    return-void
.end method
