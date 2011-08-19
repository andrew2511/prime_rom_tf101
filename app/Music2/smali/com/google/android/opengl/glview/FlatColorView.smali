.class public Lcom/google/android/opengl/glview/FlatColorView;
.super Lcom/google/android/opengl/glview/GLView;
.source "FlatColorView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FlatColorView"


# instance fields
.field private mColor:[F


# direct methods
.method public constructor <init>(IFFFF)V
    .locals 0
    .parameter "id"
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLView;-><init>(I)V

    .line 16
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/google/android/opengl/glview/FlatColorView;->setColor(FFFF)V

    .line 17
    return-void
.end method

.method public constructor <init>(I[F)V
    .locals 0
    .parameter "id"
    .parameter "color"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLView;-><init>(I)V

    .line 21
    iput-object p2, p0, Lcom/google/android/opengl/glview/FlatColorView;->mColor:[F

    .line 22
    return-void
.end method


# virtual methods
.method public onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z
    .locals 9
    .parameter "glCanvas"
    .parameter "dt"

    .prologue
    .line 37
    const/4 v8, 0x0

    .line 38
    .local v8, animating:Z
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/FlatColorView;->x()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/FlatColorView;->y()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/FlatColorView;->width()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/FlatColorView;->height()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/opengl/glview/FlatColorView;->mColor:[F

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/opengl/glview/GLCanvas;->drawFlatRect(FFFF[FIZ)V

    .line 39
    return v8
.end method

.method public setColor(FFFF)V
    .locals 2
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/opengl/glview/FlatColorView;->mColor:[F

    .line 26
    iget-object v0, p0, Lcom/google/android/opengl/glview/FlatColorView;->mColor:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 27
    iget-object v0, p0, Lcom/google/android/opengl/glview/FlatColorView;->mColor:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 28
    iget-object v0, p0, Lcom/google/android/opengl/glview/FlatColorView;->mColor:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 29
    iget-object v0, p0, Lcom/google/android/opengl/glview/FlatColorView;->mColor:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 30
    return-void
.end method
