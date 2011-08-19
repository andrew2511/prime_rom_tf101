.class public abstract Lcom/google/android/music/albumwall/Label;
.super Lcom/google/android/opengl/glview/TexturedQuad;
.source "Label.java"


# instance fields
.field protected mModel:Lcom/google/android/music/albumwall/Model;


# direct methods
.method public constructor <init>(IFFLcom/google/android/music/albumwall/Model;)V
    .locals 0
    .parameter "id"
    .parameter "width"
    .parameter "height"
    .parameter "model"

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/TexturedQuad;-><init>(IFF)V

    .line 11
    iput-object p4, p0, Lcom/google/android/music/albumwall/Label;->mModel:Lcom/google/android/music/albumwall/Model;

    .line 12
    return-void
.end method


# virtual methods
.method public drawBehind(Lcom/google/android/opengl/glview/GLCanvas;F)Z
    .locals 13
    .parameter "glCanvas"
    .parameter "dt"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v4, 0x4000

    .line 16
    invoke-virtual {p0, v7}, Lcom/google/android/music/albumwall/Label;->testAndFlags(I)Z

    move-result v10

    .line 17
    .local v10, highlighted:Z
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/music/albumwall/Label;->testAndFlags(I)Z

    move-result v9

    .line 18
    .local v9, highlightable:Z
    if-eqz v9, :cond_0

    if-eqz v10, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->getConfiguration()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/music/albumwall/AlbumWallConfig;

    .line 20
    .local v8, config:Lcom/google/android/music/albumwall/AlbumWallConfig;
    invoke-virtual {v8}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelHighlightMarginX()F

    move-result v11

    .line 21
    .local v11, mx:F
    invoke-virtual {v8}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelHighlightMarginY()F

    move-result v12

    .line 22
    .local v12, my:F
    neg-float v1, v11

    neg-float v2, v12

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Label;->width()F

    move-result v0

    mul-float v3, v4, v11

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/Label;->height()F

    move-result v0

    mul-float/2addr v4, v12

    add-float/2addr v4, v0

    invoke-virtual {v8}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getHighlightColor()[F

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/opengl/glview/GLCanvas;->drawFlatRect(FFFF[FIZ)V

    .line 24
    const-string v0, "drawFlatRect"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 26
    .end local v8           #config:Lcom/google/android/music/albumwall/AlbumWallConfig;
    .end local v11           #mx:F
    .end local v12           #my:F
    :cond_0
    return v6
.end method

.method protected getLoadingTextureId()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/music/albumwall/Label;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/Model;->getLabelLoadingTextureId()I

    move-result v0

    return v0
.end method
