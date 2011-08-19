.class public Lcom/layar/core/ARView;
.super Landroid/opengl/GLSurfaceView;
.source "ARView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ARView"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 7
    .parameter "context"
    .parameter "renderer"

    .prologue
    const/16 v1, 0x8

    .line 21
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 22
    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/layar/core/ARView;->setEGLConfigChooser(IIIIII)V

    .line 23
    new-instance v0, Lcom/layar/core/ARView$1;

    invoke-direct {v0, p0}, Lcom/layar/core/ARView$1;-><init>(Lcom/layar/core/ARView;)V

    invoke-virtual {p0, v0}, Lcom/layar/core/ARView;->setGLWrapper(Landroid/opengl/GLSurfaceView$GLWrapper;)V

    .line 29
    invoke-virtual {p0}, Lcom/layar/core/ARView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 31
    invoke-virtual {p0, p2}, Lcom/layar/core/ARView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 33
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 45
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 38
    invoke-virtual {p0}, Lcom/layar/core/ARView;->getRenderMode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/layar/core/ARView;->requestRender()V

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/layar/core/ARView;->requestFocus()Z

    .line 40
    return-void
.end method
