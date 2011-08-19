.class public Lcom/google/android/opengl/glview/GLCamera;
.super Ljava/lang/Object;
.source "GLCamera.java"


# static fields
.field private static final FULL_PERSPECTIVE:Z = true


# instance fields
.field private mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

.field private mProjMatrix:[F

.field private mVMatrix:[F


# direct methods
.method public constructor <init>(Lcom/google/android/opengl/glview/GLCanvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    const/16 v1, 0x10

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCamera;->mVMatrix:[F

    .line 12
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLCamera;->mProjMatrix:[F

    .line 16
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLCamera;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    .line 17
    return-void
.end method


# virtual methods
.method public setCamera(II)V
    .locals 24
    .parameter "width"
    .parameter "height"

    .prologue
    .line 20
    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, v4

    move v1, v5

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 22
    const/high16 v10, 0x447a

    .line 23
    .local v10, znear:F
    const/high16 v11, 0x44fa

    .line 24
    .local v11, zfar:F
    sub-float v4, v11, v10

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-float v23, v4, v10

    .line 25
    .local v23, zcenter:F
    move/from16 v0, p1

    int-to-float v0, v0

    move v4, v0

    mul-float/2addr v4, v10

    div-float v4, v4, v23

    const/high16 v5, 0x3f00

    mul-float v7, v4, v5

    .line 26
    .local v7, right:F
    move/from16 v0, p2

    int-to-float v0, v0

    move v4, v0

    mul-float/2addr v4, v10

    div-float v4, v4, v23

    const/high16 v5, 0x3f00

    mul-float v9, v4, v5

    .line 27
    .local v9, bottom:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GLCamera;->mProjMatrix:[F

    move-object v4, v0

    const/4 v5, 0x0

    neg-float v6, v7

    neg-float v8, v9

    invoke-static/range {v4 .. v11}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 28
    div-int/lit8 v4, p1, 0x2

    int-to-float v14, v4

    .line 29
    .local v14, centerX:F
    div-int/lit8 v4, p2, 0x2

    int-to-float v15, v4

    .line 30
    .local v15, centerY:F
    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v16, v0

    .line 31
    .local v16, eyeZ:F
    const/16 v19, 0x0

    .line 32
    .local v19, atZ:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GLCamera;->mVMatrix:[F

    move-object v12, v0

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/high16 v21, -0x4080

    const/16 v22, 0x0

    move/from16 v17, v14

    move/from16 v18, v15

    invoke-static/range {v12 .. v22}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GLCamera;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GLCamera;->mProjMatrix:[F

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/google/android/opengl/glview/GLCanvas;->setProjectionMatrix([FI)V

    .line 41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GLCamera;->mCanvas:Lcom/google/android/opengl/glview/GLCanvas;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GLCamera;->mVMatrix:[F

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/google/android/opengl/glview/GLCanvas;->setViewMatrix([FI)V

    .line 42
    return-void
.end method

.method public tiltCameraOnX(F)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 46
    return-void
.end method

.method public tiltCameraOnY(F)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 50
    return-void
.end method

.method public tiltCameraOnZ(F)V
    .locals 0
    .parameter "angle"

    .prologue
    .line 54
    return-void
.end method
