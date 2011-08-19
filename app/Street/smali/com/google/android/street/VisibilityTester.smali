.class Lcom/google/android/street/VisibilityTester;
.super Ljava/lang/Object;
.source "VisibilityTester.java"


# instance fields
.field private final mMVP:[F

.field private final mMatrixGrabber:Lcom/google/android/street/MatrixGrabber;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/street/VisibilityTester;->mMVP:[F

    .line 20
    new-instance v0, Lcom/google/android/street/MatrixGrabber;

    invoke-direct {v0}, Lcom/google/android/street/MatrixGrabber;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/VisibilityTester;->mMatrixGrabber:Lcom/google/android/street/MatrixGrabber;

    .line 21
    return-void
.end method


# virtual methods
.method public frustumCullSpheres([FII[III)I
    .locals 8
    .parameter "spheres"
    .parameter "spheresOffset"
    .parameter "spheresCount"
    .parameter "results"
    .parameter "resultsOffset"
    .parameter "resultsCapacity"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/street/VisibilityTester;->mMVP:[F

    const/4 v1, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/opengl/Visibility;->frustumCullSpheres([FI[FII[III)I

    move-result v0

    return v0
.end method

.method public getCurrentState(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    const/4 v1, 0x0

    .line 30
    iget-object v0, p0, Lcom/google/android/street/VisibilityTester;->mMatrixGrabber:Lcom/google/android/street/MatrixGrabber;

    invoke-virtual {v0, p1}, Lcom/google/android/street/MatrixGrabber;->getCurrentState(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 34
    iget-object v0, p0, Lcom/google/android/street/VisibilityTester;->mMVP:[F

    iget-object v2, p0, Lcom/google/android/street/VisibilityTester;->mMatrixGrabber:Lcom/google/android/street/MatrixGrabber;

    iget-object v2, v2, Lcom/google/android/street/MatrixGrabber;->mProjection:[F

    iget-object v3, p0, Lcom/google/android/street/VisibilityTester;->mMatrixGrabber:Lcom/google/android/street/MatrixGrabber;

    iget-object v4, v3, Lcom/google/android/street/MatrixGrabber;->mModelView:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 36
    return-void
.end method

.method public isVisibileTriangleList([FI[CII)I
    .locals 7
    .parameter "position"
    .parameter "positionOffset"
    .parameter "indices"
    .parameter "indicesOffset"
    .parameter "indexCount"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/street/VisibilityTester;->mMVP:[F

    const/4 v1, 0x0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Landroid/opengl/Visibility;->visibilityTest([FI[FI[CII)I

    move-result v0

    return v0
.end method
