.class public Lcom/google/android/street/Projector;
.super Ljava/lang/Object;
.source "Projector.java"


# instance fields
.field private final mGrabber:Lcom/google/android/street/MatrixGrabber;

.field private final mView:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/street/Projector;->mView:[I

    .line 24
    new-instance v0, Lcom/google/android/street/MatrixGrabber;

    invoke-direct {v0}, Lcom/google/android/street/MatrixGrabber;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/Projector;->mGrabber:Lcom/google/android/street/MatrixGrabber;

    .line 25
    return-void
.end method


# virtual methods
.method public getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/street/Projector;->mGrabber:Lcom/google/android/street/MatrixGrabber;

    invoke-virtual {v0, p1}, Lcom/google/android/street/MatrixGrabber;->getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 109
    return-void
.end method

.method public getCurrentProjection(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/street/Projector;->mGrabber:Lcom/google/android/street/MatrixGrabber;

    invoke-virtual {v0, p1}, Lcom/google/android/street/MatrixGrabber;->getCurrentProjection(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 97
    return-void
.end method

.method public project([FI[FI)V
    .locals 11
    .parameter "obj"
    .parameter "objOffset"
    .parameter "win"
    .parameter "winOffset"

    .prologue
    const/4 v4, 0x0

    .line 58
    aget v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    add-int/lit8 v2, p2, 0x2

    aget v2, p1, v2

    iget-object v3, p0, Lcom/google/android/street/Projector;->mGrabber:Lcom/google/android/street/MatrixGrabber;

    iget-object v3, v3, Lcom/google/android/street/MatrixGrabber;->mModelView:[F

    iget-object v5, p0, Lcom/google/android/street/Projector;->mGrabber:Lcom/google/android/street/MatrixGrabber;

    iget-object v5, v5, Lcom/google/android/street/MatrixGrabber;->mProjection:[F

    iget-object v7, p0, Lcom/google/android/street/Projector;->mView:[I

    move v6, v4

    move v8, v4

    move-object v9, p3

    move v10, p4

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLU;->gluProject(FFF[FI[FI[II[FI)I

    .line 61
    return-void
.end method

.method public setCurrentView(IIII)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/street/Projector;->mView:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 37
    iget-object v0, p0, Lcom/google/android/street/Projector;->mView:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 38
    iget-object v0, p0, Lcom/google/android/street/Projector;->mView:[I

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 39
    iget-object v0, p0, Lcom/google/android/street/Projector;->mView:[I

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 40
    return-void
.end method

.method public unproject([FI[F[FI)V
    .locals 11
    .parameter "win"
    .parameter "winOffset"
    .parameter "modelViewMatrix"
    .parameter "obj"
    .parameter "objOffset"

    .prologue
    .line 80
    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/google/android/street/Projector;->mGrabber:Lcom/google/android/street/MatrixGrabber;

    iget-object v0, v0, Lcom/google/android/street/MatrixGrabber;->mModelView:[F

    move-object v3, v0

    .line 82
    .local v3, modelView:[F
    :goto_0
    aget v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget v1, p1, v1

    add-int/lit8 v2, p2, 0x2

    aget v2, p1, v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/street/Projector;->mGrabber:Lcom/google/android/street/MatrixGrabber;

    iget-object v5, v5, Lcom/google/android/street/MatrixGrabber;->mProjection:[F

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/street/Projector;->mView:[I

    const/4 v8, 0x0

    move-object v9, p4

    move/from16 v10, p5

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLU;->gluUnProject(FFF[FI[FI[II[FI)I

    .line 85
    return-void

    .end local v3           #modelView:[F
    :cond_0
    move-object v3, p3

    .line 80
    goto :goto_0
.end method
