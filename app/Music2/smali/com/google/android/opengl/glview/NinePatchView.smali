.class public Lcom/google/android/opengl/glview/NinePatchView;
.super Lcom/google/android/opengl/glview/TexturedQuad;
.source "NinePatchView.java"


# instance fields
.field private mManageNinePatch:Z

.field private mNinePatch:Lcom/google/android/opengl/glview/NinePatch;


# direct methods
.method public constructor <init>(IFFLandroid/content/res/Resources;ILandroid/graphics/Bitmap$Config;)V
    .locals 1
    .parameter "id"
    .parameter "width"
    .parameter "height"
    .parameter "resources"
    .parameter "resourceId"
    .parameter "config"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/TexturedQuad;-><init>(IFF)V

    .line 26
    new-instance v0, Lcom/google/android/opengl/glview/NinePatch;

    invoke-direct {v0, p4, p5, p6}, Lcom/google/android/opengl/glview/NinePatch;-><init>(Landroid/content/res/Resources;ILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/google/android/opengl/glview/NinePatchView;->mNinePatch:Lcom/google/android/opengl/glview/NinePatch;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/opengl/glview/NinePatchView;->mManageNinePatch:Z

    .line 28
    return-void
.end method

.method public constructor <init>(IFFLcom/google/android/opengl/glview/NinePatch;)V
    .locals 1
    .parameter "id"
    .parameter "width"
    .parameter "height"
    .parameter "ninePatch"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/TexturedQuad;-><init>(IFF)V

    .line 19
    iput-object p4, p0, Lcom/google/android/opengl/glview/NinePatchView;->mNinePatch:Lcom/google/android/opengl/glview/NinePatch;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/opengl/glview/NinePatchView;->mManageNinePatch:Z

    .line 21
    return-void
.end method


# virtual methods
.method protected createVertexData()Ljava/nio/FloatBuffer;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/opengl/glview/NinePatchView;->mNinePatch:Lcom/google/android/opengl/glview/NinePatch;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/NinePatch;->getVertexData()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected drawMesh(Lcom/google/android/opengl/glview/GLCanvas;)V
    .locals 1
    .parameter "glCanvas"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/opengl/glview/NinePatchView;->mNinePatch:Lcom/google/android/opengl/glview/NinePatch;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/glview/NinePatch;->drawMesh(Lcom/google/android/opengl/glview/GLCanvas;)V

    .line 38
    return-void
.end method

.method public freeOpenGlResources()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->freeOpenGlResources()V

    .line 61
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/NinePatchView;->mManageNinePatch:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/google/android/opengl/glview/NinePatchView;->mNinePatch:Lcom/google/android/opengl/glview/NinePatch;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/NinePatch;->freeOpenGlResources()V

    .line 64
    :cond_0
    return-void
.end method

.method protected getTextureId()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/opengl/glview/NinePatchView;->mNinePatch:Lcom/google/android/opengl/glview/NinePatch;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/NinePatch;->getTextureId()I

    move-result v0

    return v0
.end method

.method public onSurfaceCreated(Lcom/google/android/opengl/glview/GLCanvas;)V
    .locals 1
    .parameter "glCanvas"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/google/android/opengl/glview/TexturedQuad;->onSurfaceCreated(Lcom/google/android/opengl/glview/GLCanvas;)V

    .line 53
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/NinePatchView;->mManageNinePatch:Z

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/google/android/opengl/glview/NinePatchView;->mNinePatch:Lcom/google/android/opengl/glview/NinePatch;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/NinePatch;->eglContexCleared()V

    .line 56
    :cond_0
    return-void
.end method

.method protected setQuadScale(Lcom/google/android/opengl/glview/GLCanvas;)V
    .locals 3
    .parameter "glCanvas"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/opengl/glview/NinePatchView;->mNinePatch:Lcom/google/android/opengl/glview/NinePatch;

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/NinePatchView;->width()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/NinePatchView;->height()F

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/opengl/glview/NinePatch;->setQuadScale(Lcom/google/android/opengl/glview/GLCanvas;FF)V

    .line 33
    return-void
.end method
