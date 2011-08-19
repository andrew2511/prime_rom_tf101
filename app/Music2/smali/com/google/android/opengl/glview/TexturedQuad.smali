.class public abstract Lcom/google/android/opengl/glview/TexturedQuad;
.super Lcom/google/android/opengl/glview/GLView;
.source "TexturedQuad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/opengl/glview/TexturedQuad$Pose;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION_IN_SEC:I = 0x1

.field protected static final FADE_TIME_MS:J = 0x1f4L

.field private static final FLOAT_SIZE_BYTES:I = 0x4


# instance fields
.field private mAnimationDurationInSec:F

.field private mAnimationTriggeredAtInMs:J

.field private mOffsetX:F

.field private mOffsetY:F

.field private mOffsetZ:F

.field private mOldOffsetX:F

.field private mOldOffsetY:F

.field private mOldOffsetZ:F

.field private mOldRotZ:F

.field private mOldX:F

.field private mOldY:F

.field private mOldZ:F

.field private mRotZ:F

.field private mTriangleVertices:Ljava/nio/FloatBuffer;

.field private mYfade0:F

.field private mYfade1:F

.field private mYmix0:F

.field private mYmix1:F


# direct methods
.method public constructor <init>(IFF)V
    .locals 0
    .parameter "id"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/opengl/glview/GLView;-><init>(I)V

    .line 65
    invoke-virtual {p0, p2, p3}, Lcom/google/android/opengl/glview/TexturedQuad;->internalSetExtent(FF)V

    .line 66
    return-void
.end method

.method private static lerp(FFF)F
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "u"

    .prologue
    .line 291
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method private needAnimation()Z
    .locals 2

    .prologue
    .line 326
    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldRotZ:F

    iget v1, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotZ:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldX:F

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->x()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldY:F

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->y()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldZ:F

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->z()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldOffsetX:F

    iget v1, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldOffsetY:F

    iget v1, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldOffsetZ:F

    iget v1, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetZ:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private quadNeedsRezzing(Lcom/google/android/opengl/glview/GLCanvas;)Z
    .locals 6
    .parameter "glCanvas"

    .prologue
    .line 101
    iget v4, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mYmix0:F

    iget v5, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mYfade0:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 102
    .local v0, minY:F
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->height()F

    move-result v4

    sub-float v2, v4, v0

    .line 103
    .local v2, rezzArea:F
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->y()F

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->y()F

    move-result v5

    sub-float/2addr v4, v5

    sub-float v3, v4, v2

    .line 104
    .local v3, topY:F
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gez v4, :cond_0

    const/4 v4, 0x1

    move v1, v4

    .line 106
    .local v1, quadIsRezzin:Z
    :goto_0
    return v1

    .line 104
    .end local v1           #quadIsRezzin:Z
    :cond_0
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0
.end method

.method private updateMixAndFadeLimits(Lcom/google/android/opengl/glview/GLCanvas;)V
    .locals 4
    .parameter "glCanvas"

    .prologue
    .line 111
    const/high16 v1, 0x4268

    .line 112
    .local v1, topBarHeight:F
    const/high16 v0, 0x420c

    .line 113
    .local v0, tansitionHeight:F
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->height()F

    move-result v2

    add-float v3, v1, v0

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mYmix0:F

    .line 114
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->height()F

    move-result v2

    sub-float/2addr v2, v1

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mYmix1:F

    .line 115
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->height()F

    move-result v2

    sub-float/2addr v2, v1

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mYfade0:F

    .line 116
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->height()F

    move-result v2

    const/high16 v3, 0x4000

    div-float v3, v1, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mYfade1:F

    .line 117
    return-void
.end method


# virtual methods
.method protected createVertexData()Ljava/nio/FloatBuffer;
    .locals 4

    .prologue
    .line 78
    const/16 v2, 0x18

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    .line 84
    .local v1, triangleVerticesData:[F
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 86
    .local v0, buffer:Ljava/nio/FloatBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 87
    return-object v0

    .line 78
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method protected drawBehind(Lcom/google/android/opengl/glview/GLCanvas;F)Z
    .locals 1
    .parameter "glCanvas"
    .parameter "dt"

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method protected drawForeground(Lcom/google/android/opengl/glview/GLCanvas;I)Z
    .locals 1
    .parameter "glCanvas"
    .parameter "textureChannel"

    .prologue
    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method protected drawMesh(Lcom/google/android/opengl/glview/GLCanvas;)V
    .locals 3
    .parameter "glCanvas"

    .prologue
    .line 250
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 251
    const-string v0, "glDrawArrays"

    invoke-static {v0}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method protected ensureVertexData()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mTriangleVertices:Ljava/nio/FloatBuffer;

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->createVertexData()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 75
    :cond_0
    return-void
.end method

.method protected getLoadingTextureId()I
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method protected getTextureFadeInFactor()F
    .locals 1

    .prologue
    .line 279
    const/high16 v0, 0x3f80

    return v0
.end method

.method protected abstract getTextureId()I
.end method

.method public layout(ZFF)V
    .locals 0
    .parameter "horizontal"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 337
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/opengl/glview/TexturedQuad;->internalLayout(ZFF)V

    .line 338
    return-void
.end method

.method public onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z
    .locals 24
    .parameter "glCanvas"
    .parameter "dt"

    .prologue
    .line 121
    const/4 v10, 0x0

    .line 122
    .local v10, animating:Z
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->ensureVertexData()V

    .line 123
    const-string v20, "start"

    invoke-static/range {v20 .. v20}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->pushMatrix()V

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->getFrameTime()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationTriggeredAtInMs:J

    move-wide/from16 v22, v0

    sub-long v11, v20, v22

    .line 126
    .local v11, animationDelayInMs:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationDurationInSec:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_0

    move-wide v0, v11

    long-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationDurationInSec:F

    move/from16 v21, v0

    const/high16 v22, 0x447a

    mul-float v21, v21, v22

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_0

    .line 128
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationDurationInSec:F

    .line 129
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationTriggeredAtInMs:J

    .line 131
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationDurationInSec:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_4

    .line 132
    const/4 v10, 0x1

    .line 133
    move-wide v0, v11

    long-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationDurationInSec:F

    move/from16 v21, v0

    const/high16 v22, 0x447a

    mul-float v21, v21, v22

    div-float v13, v20, v21

    .line 134
    .local v13, animationU:F
    new-instance v17, Lcom/google/android/opengl/glview/Spline;

    invoke-direct/range {v17 .. v17}, Lcom/google/android/opengl/glview/Spline;-><init>()V

    .line 135
    .local v17, s:Lcom/google/android/opengl/glview/Spline;
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/opengl/glview/Spline;->setEaseOut()V

    .line 136
    move-object/from16 v0, v17

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/Spline;->approximatedInterpolatedValue(F)F

    move-result v13

    .line 137
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldOffsetX:F

    move/from16 v21, v0

    add-float v20, v20, v21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->x()F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetX:F

    move/from16 v22, v0

    add-float v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    move v2, v13

    invoke-static {v0, v1, v2}, Lcom/google/android/opengl/glview/TexturedQuad;->lerp(FFF)F

    move-result v7

    .line 138
    .local v7, animX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldY:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldOffsetY:F

    move/from16 v21, v0

    add-float v20, v20, v21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->y()F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetY:F

    move/from16 v22, v0

    add-float v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    move v2, v13

    invoke-static {v0, v1, v2}, Lcom/google/android/opengl/glview/TexturedQuad;->lerp(FFF)F

    move-result v8

    .line 139
    .local v8, animY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldZ:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldOffsetZ:F

    move/from16 v21, v0

    add-float v20, v20, v21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->z()F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetZ:F

    move/from16 v22, v0

    add-float v21, v21, v22

    move/from16 v0, v20

    move/from16 v1, v21

    move v2, v13

    invoke-static {v0, v1, v2}, Lcom/google/android/opengl/glview/TexturedQuad;->lerp(FFF)F

    move-result v9

    .line 140
    .local v9, animZ:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldRotZ:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotZ:F

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move v2, v13

    invoke-static {v0, v1, v2}, Lcom/google/android/opengl/glview/TexturedQuad;->lerp(FFF)F

    move-result v6

    .line 141
    .local v6, animRotZ:F
    move-object/from16 v0, p1

    move v1, v7

    move v2, v8

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/opengl/glview/GLCanvas;->translate(FFF)V

    .line 142
    const/16 v20, 0x0

    cmpl-float v20, v6, v20

    if-eqz v20, :cond_1

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->width()F

    move-result v20

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->height()F

    move-result v21

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/opengl/glview/GLCanvas;->translate(FFF)V

    .line 144
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/high16 v22, 0x3f80

    move-object/from16 v0, p1

    move v1, v6

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/opengl/glview/GLCanvas;->rotateAngleAxis(FFFF)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->width()F

    move-result v20

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->height()F

    move-result v21

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/opengl/glview/GLCanvas;->translate(FFF)V

    .line 156
    .end local v6           #animRotZ:F
    .end local v7           #animX:F
    .end local v8           #animY:F
    .end local v9           #animZ:F
    .end local v13           #animationU:F
    .end local v17           #s:Lcom/google/android/opengl/glview/Spline;
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mTriangleVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 157
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->bindPose()V

    .line 158
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/opengl/glview/TexturedQuad;->setQuadScale(Lcom/google/android/opengl/glview/GLCanvas;)V

    .line 160
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/opengl/glview/TexturedQuad;->drawBehind(Lcom/google/android/opengl/glview/GLCanvas;F)Z

    move-result v20

    or-int v10, v10, v20

    .line 162
    const/4 v14, 0x0

    .line 163
    .local v14, drawQuad:Z
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->getLoadingTextureId()I

    move-result v15

    .line 164
    .local v15, loadingId:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->getTextureId()I

    move-result v19

    .line 165
    .local v19, textureId:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->getAlpha()F

    move-result v5

    .line 167
    .local v5, alpha:F
    const/16 v18, 0x0

    .line 169
    .local v18, textureChannel:I
    invoke-direct/range {p0 .. p1}, Lcom/google/android/opengl/glview/TexturedQuad;->updateMixAndFadeLimits(Lcom/google/android/opengl/glview/GLCanvas;)V

    .line 170
    invoke-direct/range {p0 .. p1}, Lcom/google/android/opengl/glview/TexturedQuad;->quadNeedsRezzing(Lcom/google/android/opengl/glview/GLCanvas;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 171
    if-nez v15, :cond_5

    .line 172
    if-eqz v19, :cond_2

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexturedRezzingProgram()V

    .line 174
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mYfade0:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mYfade1:F

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/glview/GLCanvas;->setFade(FF)V

    .line 175
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture0(I)V

    .line 176
    const/4 v14, 0x1

    .line 235
    :cond_2
    :goto_1
    if-eqz v14, :cond_3

    .line 236
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/opengl/glview/TexturedQuad;->drawMesh(Lcom/google/android/opengl/glview/GLCanvas;)V

    .line 239
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/glview/TexturedQuad;->drawForeground(Lcom/google/android/opengl/glview/GLCanvas;I)Z

    move-result v20

    or-int v10, v10, v20

    .line 241
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->popMatrix()V

    .line 242
    return v10

    .line 148
    .end local v5           #alpha:F
    .end local v14           #drawQuad:Z
    .end local v15           #loadingId:I
    .end local v18           #textureChannel:I
    .end local v19           #textureId:I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->x()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetX:F

    move/from16 v21, v0

    add-float v20, v20, v21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->y()F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetY:F

    move/from16 v22, v0

    add-float v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->z()F

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetZ:F

    move/from16 v23, v0

    add-float v22, v22, v23

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/opengl/glview/GLCanvas;->translate(FFF)V

    .line 149
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotZ:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_1

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->width()F

    move-result v20

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->height()F

    move-result v21

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/opengl/glview/GLCanvas;->translate(FFF)V

    .line 151
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotZ:F

    move/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/high16 v23, 0x3f80

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/opengl/glview/GLCanvas;->rotateAngleAxis(FFFF)V

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->width()F

    move-result v20

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->height()F

    move-result v21

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/opengl/glview/GLCanvas;->translate(FFF)V

    goto/16 :goto_0

    .line 179
    .restart local v5       #alpha:F
    .restart local v14       #drawQuad:Z
    .restart local v15       #loadingId:I
    .restart local v18       #textureChannel:I
    .restart local v19       #textureId:I
    :cond_5
    if-eqz v19, :cond_6

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->getTextureFadeInFactor()F

    move-result v16

    .line 181
    .local v16, mix:F
    move v0, v5

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->setMultiTextureRezzingProgram()V

    .line 183
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setMix(F)V

    .line 184
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mYmix0:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mYmix1:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mYfade0:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mYfade1:F

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/opengl/glview/GLCanvas;->setMixAndFade(FFFF)V

    .line 185
    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture0(I)V

    .line 186
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture1(I)V

    .line 187
    const/16 v18, 0x1

    .line 193
    .end local v16           #mix:F
    :goto_2
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 189
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexturedRezzingProgram()V

    .line 190
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mYfade0:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/TexturedQuad;->mYfade1:F

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/glview/GLCanvas;->setFade(FF)V

    .line 191
    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture0(I)V

    goto :goto_2

    .line 197
    :cond_7
    if-nez v15, :cond_9

    .line 198
    if-eqz v19, :cond_2

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->getTextureFadeInFactor()F

    move-result v20

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->getAlpha()F

    move-result v21

    mul-float v20, v20, v21

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->getAlpha()F

    move-result v21

    mul-float v16, v20, v21

    .line 200
    .restart local v16       #mix:F
    const/16 v20, 0x0

    cmpl-float v20, v16, v20

    if-lez v20, :cond_2

    .line 201
    const/high16 v20, 0x3f80

    cmpg-float v20, v16, v20

    if-gez v20, :cond_8

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->setFadeTexturedProgram()V

    .line 204
    const/high16 v20, 0x3f80

    sub-float v20, v20, v16

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setMix(F)V

    .line 205
    const/4 v10, 0x1

    .line 209
    :goto_3
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture0(I)V

    .line 210
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 207
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexturedProgram()V

    goto :goto_3

    .line 214
    .end local v16           #mix:F
    :cond_9
    if-eqz v19, :cond_b

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/opengl/glview/TexturedQuad;->getTextureFadeInFactor()F

    move-result v16

    .line 216
    .restart local v16       #mix:F
    move v0, v5

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 217
    const/high16 v20, 0x3f80

    cmpg-float v20, v16, v20

    if-gez v20, :cond_a

    .line 218
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->setMultiTextureProgram()V

    .line 219
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setMix(F)V

    .line 220
    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture0(I)V

    .line 221
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture1(I)V

    .line 222
    const/16 v18, 0x1

    .line 223
    const/4 v10, 0x1

    .line 232
    .end local v16           #mix:F
    :goto_4
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 225
    .restart local v16       #mix:F
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexturedProgram()V

    .line 226
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture0(I)V

    goto :goto_4

    .line 229
    .end local v16           #mix:F
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexturedProgram()V

    .line 230
    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture0(I)V

    goto :goto_4
.end method

.method public savePose(Lcom/google/android/opengl/glview/TexturedQuad$Pose;J)V
    .locals 1
    .parameter "state"
    .parameter "frameTime"

    .prologue
    .line 297
    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotZ:F

    iput v0, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mRotZ:F

    .line 298
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->x()F

    move-result v0

    iput v0, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mX:F

    .line 299
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->y()F

    move-result v0

    iput v0, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mY:F

    .line 300
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->z()F

    move-result v0

    iput v0, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mZ:F

    .line 301
    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetX:F

    iput v0, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mOffsetX:F

    .line 302
    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetY:F

    iput v0, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mOffsetY:F

    .line 303
    iget v0, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetZ:F

    iput v0, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mOffsetZ:F

    .line 304
    iput-wide p2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mSavedAt:J

    .line 305
    return-void
.end method

.method public setOffset(FFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 95
    iput p1, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetX:F

    .line 96
    iput p2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetY:F

    .line 97
    iput p3, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOffsetZ:F

    .line 98
    return-void
.end method

.method public setOldPose(Lcom/google/android/opengl/glview/TexturedQuad$Pose;J)V
    .locals 4
    .parameter "state"
    .parameter "frameTime"

    .prologue
    .line 308
    iget v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mRotZ:F

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldRotZ:F

    .line 309
    iget v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mX:F

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldX:F

    .line 310
    iget v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mY:F

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldY:F

    .line 311
    iget v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mZ:F

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldZ:F

    .line 312
    iget v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mOffsetX:F

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldOffsetX:F

    .line 313
    iget v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mOffsetY:F

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldOffsetY:F

    .line 314
    iget v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mOffsetZ:F

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mOldOffsetZ:F

    .line 315
    iget-wide v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mSavedAt:J

    sub-long v0, p2, v2

    .line 316
    .local v0, timeElapsedAfterSaveInMs:J
    const-wide/16 v2, 0x3e8

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->needAnimation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationDurationInSec:F

    .line 318
    iget-wide v2, p1, Lcom/google/android/opengl/glview/TexturedQuad$Pose;->mSavedAt:J

    iput-wide v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationTriggeredAtInMs:J

    .line 323
    :goto_0
    return-void

    .line 320
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationDurationInSec:F

    .line 321
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mAnimationTriggeredAtInMs:J

    goto :goto_0
.end method

.method protected setQuadScale(Lcom/google/android/opengl/glview/GLCanvas;)V
    .locals 3
    .parameter "glCanvas"

    .prologue
    const/4 v2, 0x0

    .line 246
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/TexturedQuad;->height()F

    move-result v1

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/google/android/opengl/glview/GLCanvas;->setQuadScale(FFFF)V

    .line 247
    return-void
.end method

.method public setRotation(F)V
    .locals 0
    .parameter "r"

    .prologue
    .line 91
    iput p1, p0, Lcom/google/android/opengl/glview/TexturedQuad;->mRotZ:F

    .line 92
    return-void
.end method
