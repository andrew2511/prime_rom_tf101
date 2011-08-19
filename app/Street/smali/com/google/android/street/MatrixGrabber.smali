.class Lcom/google/android/street/MatrixGrabber;
.super Ljava/lang/Object;
.source "MatrixGrabber.java"


# instance fields
.field public final mModelView:[F

.field public final mProjection:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/street/MatrixGrabber;->mModelView:[F

    .line 17
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/google/android/street/MatrixGrabber;->mProjection:[F

    .line 18
    return-void
.end method

.method private getMatrix(Ljavax/microedition/khronos/opengles/GL10;I[F)V
    .locals 4
    .parameter "gl"
    .parameter "mode"
    .parameter "mat"

    .prologue
    .line 55
    instance-of v2, p1, Lcom/google/android/street/GLMatrixWrapper;

    if-eqz v2, :cond_0

    .line 56
    move-object v0, p1

    check-cast v0, Lcom/google/android/street/GLMatrixWrapper;

    move-object v1, v0

    .line 57
    .local v1, gl2:Lcom/google/android/street/GLMatrixWrapper;
    invoke-virtual {v1, p2}, Lcom/google/android/street/GLMatrixWrapper;->glMatrixMode(I)V

    .line 58
    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Lcom/google/android/street/GLMatrixWrapper;->getMatrix([FI)V

    .line 62
    return-void

    .line 60
    .end local v1           #gl2:Lcom/google/android/street/GLMatrixWrapper;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "gl must be GLMatrixWrapper"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 40
    const/16 v0, 0x1700

    iget-object v1, p0, Lcom/google/android/street/MatrixGrabber;->mModelView:[F

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/street/MatrixGrabber;->getMatrix(Ljavax/microedition/khronos/opengles/GL10;I[F)V

    .line 41
    return-void
.end method

.method public getCurrentProjection(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 51
    const/16 v0, 0x1701

    iget-object v1, p0, Lcom/google/android/street/MatrixGrabber;->mProjection:[F

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/street/MatrixGrabber;->getMatrix(Ljavax/microedition/khronos/opengles/GL10;I[F)V

    .line 52
    return-void
.end method

.method public getCurrentState(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "gl"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/street/MatrixGrabber;->getCurrentProjection(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/street/MatrixGrabber;->getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 30
    return-void
.end method
