.class public Lcom/google/android/music/albumwall/ThumbOverlay;
.super Lcom/google/android/opengl/glview/TexturedQuad;
.source "ThumbOverlay.java"


# instance fields
.field private mModel:Lcom/google/android/music/albumwall/Model;

.field private mOffsetX:F

.field private mOffsetY:F


# direct methods
.method public constructor <init>(IFFFFLcom/google/android/music/albumwall/Model;)V
    .locals 0
    .parameter "id"
    .parameter "offsetX"
    .parameter "offsetY"
    .parameter "w"
    .parameter "h"
    .parameter "model"

    .prologue
    .line 12
    invoke-direct {p0, p1, p4, p5}, Lcom/google/android/opengl/glview/TexturedQuad;-><init>(IFF)V

    .line 13
    iput p2, p0, Lcom/google/android/music/albumwall/ThumbOverlay;->mOffsetX:F

    .line 14
    iput p3, p0, Lcom/google/android/music/albumwall/ThumbOverlay;->mOffsetY:F

    .line 15
    iput-object p6, p0, Lcom/google/android/music/albumwall/ThumbOverlay;->mModel:Lcom/google/android/music/albumwall/Model;

    .line 16
    return-void
.end method


# virtual methods
.method public getTextureId()I
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/music/albumwall/ThumbOverlay;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model;->getThumbOverlayTextureId()I

    move-result v0

    return v0
.end method

.method public onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z
    .locals 3
    .parameter "glCanvas"
    .parameter "dt"

    .prologue
    .line 24
    iget v1, p0, Lcom/google/android/music/albumwall/ThumbOverlay;->mOffsetX:F

    neg-float v1, v1

    iget v2, p0, Lcom/google/android/music/albumwall/ThumbOverlay;->mOffsetY:F

    neg-float v2, v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/opengl/glview/GLCanvas;->adjustUIOffset(FF)V

    .line 25
    invoke-super {p0, p1, p2}, Lcom/google/android/opengl/glview/TexturedQuad;->onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z

    move-result v0

    .line 26
    .local v0, result:Z
    iget v1, p0, Lcom/google/android/music/albumwall/ThumbOverlay;->mOffsetX:F

    iget v2, p0, Lcom/google/android/music/albumwall/ThumbOverlay;->mOffsetY:F

    invoke-virtual {p1, v1, v2}, Lcom/google/android/opengl/glview/GLCanvas;->adjustUIOffset(FF)V

    .line 27
    return v0
.end method
