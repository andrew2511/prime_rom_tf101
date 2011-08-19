.class public Lcom/google/android/music/albumwall/BackgroundView;
.super Lcom/google/android/opengl/glview/GLView;
.source "BackgroundView.java"


# static fields
.field private static final ANIMATION_DURATION_IN_SEC:F = 1.0f

.field private static final ANIMATION_TOTAL_TIME_IN_SEC:F = 2.0f

.field private static final FADE_START_TIME:F = 1.0f

.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final STATE_FADING:I = 0x3

.field private static final STATE_NOT_ANIMATING:I = 0x1

.field private static final STATE_START:I = 0x0

.field private static final STATE_WAITING_TO_START_FADE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BackgroundView"


# instance fields
.field private mA:F

.field private mAnimationState:I

.field private mAnimationTime:F

.field private mB:F

.field private mBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private mCurrentItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

.field private mDefaultBackground:Landroid/graphics/drawable/Drawable;

.field private mG:F

.field private mModel:Lcom/google/android/music/albumwall/Model;

.field private mNextItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

.field private mPreviousItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

.field private mQuadHeight:F

.field private mQuadWidth:F

.field private mR:F

.field private mTextureId:[I

.field private mTriangleVertices:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lcom/google/android/music/albumwall/Model;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap$Config;)V
    .locals 1
    .parameter "model"
    .parameter "defaultBackground"
    .parameter "config"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/opengl/glview/GLView;-><init>(I)V

    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/music/albumwall/BackgroundView;->mTextureId:[I

    .line 65
    iput-object p1, p0, Lcom/google/android/music/albumwall/BackgroundView;->mModel:Lcom/google/android/music/albumwall/Model;

    .line 66
    iput-object p2, p0, Lcom/google/android/music/albumwall/BackgroundView;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    .line 67
    iput-object p3, p0, Lcom/google/android/music/albumwall/BackgroundView;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 68
    return-void
.end method

.method private clearTextureIds()V
    .locals 3

    .prologue
    .line 235
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/google/android/music/albumwall/BackgroundView;->mTextureId:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/google/android/music/albumwall/BackgroundView;->mTextureId:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_0
    return-void
.end method

.method private getDefaultBackgroundTextureId()I
    .locals 9

    .prologue
    const/16 v8, 0xde1

    const/4 v7, 0x0

    .line 201
    iget-object v5, p0, Lcom/google/android/music/albumwall/BackgroundView;->mTextureId:[I

    aget v3, v5, v7

    .line 202
    .local v3, textureId:I
    if-nez v3, :cond_0

    iget-object v5, p0, Lcom/google/android/music/albumwall/BackgroundView;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 203
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/android/music/albumwall/BackgroundView;->mTextureId:[I

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 204
    iget-object v5, p0, Lcom/google/android/music/albumwall/BackgroundView;->mTextureId:[I

    aget v3, v5, v7

    .line 205
    invoke-static {v8, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 206
    invoke-static {}, Lcom/google/android/opengl/glview/GLCanvas;->setDefaultNPOTTextureState()V

    .line 207
    iget-object v5, p0, Lcom/google/android/music/albumwall/BackgroundView;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 208
    .local v4, width:I
    iget-object v5, p0, Lcom/google/android/music/albumwall/BackgroundView;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 209
    .local v2, height:I
    iget-object v5, p0, Lcom/google/android/music/albumwall/BackgroundView;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 210
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 211
    .local v1, canvas:Landroid/graphics/Canvas;
    iget-object v5, p0, Lcom/google/android/music/albumwall/BackgroundView;->mDefaultBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 212
    invoke-static {v8, v7, v0, v7}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 213
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 215
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #height:I
    .end local v4           #width:I
    :cond_0
    return v3
.end method

.method private updateItems()V
    .locals 3

    .prologue
    .line 179
    iget v1, p0, Lcom/google/android/music/albumwall/BackgroundView;->mAnimationState:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 180
    iget-object v1, p0, Lcom/google/android/music/albumwall/BackgroundView;->mModel:Lcom/google/android/music/albumwall/Model;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/Model;->getBackgroundItem()Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    move-result-object v0

    .line 181
    .local v0, item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    if-eqz v0, :cond_0

    .line 182
    iget-object v1, p0, Lcom/google/android/music/albumwall/BackgroundView;->mCurrentItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    if-ne v0, v1, :cond_1

    .line 184
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/music/albumwall/BackgroundView;->mAnimationState:I

    .line 198
    .end local v0           #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    :cond_0
    :goto_0
    return-void

    .line 185
    .restart local v0       #item:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/albumwall/BackgroundView;->mNextItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    if-eq v0, v1, :cond_0

    .line 187
    iput-object v0, p0, Lcom/google/android/music/albumwall/BackgroundView;->mNextItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    .line 188
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/music/albumwall/BackgroundView;->mAnimationState:I

    .line 189
    iget v1, p0, Lcom/google/android/music/albumwall/BackgroundView;->mAnimationState:I

    if-nez v1, :cond_2

    .line 191
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/google/android/music/albumwall/BackgroundView;->mAnimationTime:F

    goto :goto_0

    .line 193
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/albumwall/BackgroundView;->mAnimationTime:F

    goto :goto_0
.end method


# virtual methods
.method protected ensureVertexData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/BackgroundView;->width()F

    move-result v2

    .line 75
    .local v2, width:F
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/BackgroundView;->height()F

    move-result v0

    .line 76
    .local v0, height:F
    iget-object v3, p0, Lcom/google/android/music/albumwall/BackgroundView;->mTriangleVertices:Ljava/nio/FloatBuffer;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/google/android/music/albumwall/BackgroundView;->mQuadWidth:F

    cmpl-float v3, v3, v2

    if-nez v3, :cond_0

    iget v3, p0, Lcom/google/android/music/albumwall/BackgroundView;->mQuadHeight:F

    cmpl-float v3, v3, v0

    if-nez v3, :cond_0

    .line 90
    :goto_0
    return-void

    .line 79
    :cond_0
    iput v2, p0, Lcom/google/android/music/albumwall/BackgroundView;->mQuadWidth:F

    .line 80
    iput v0, p0, Lcom/google/android/music/albumwall/BackgroundView;->mQuadHeight:F

    .line 81
    const/16 v3, 0x18

    new-array v1, v3, [F

    aput v4, v1, v6

    const/4 v3, 0x1

    aput v4, v1, v3

    const/4 v3, 0x2

    aput v4, v1, v3

    const/4 v3, 0x3

    aput v4, v1, v3

    const/4 v3, 0x4

    aput v4, v1, v3

    const/4 v3, 0x5

    aput v4, v1, v3

    const/4 v3, 0x6

    aput v2, v1, v3

    const/4 v3, 0x7

    aput v4, v1, v3

    const/16 v3, 0x8

    aput v4, v1, v3

    const/16 v3, 0x9

    aput v4, v1, v3

    const/16 v3, 0xa

    aput v5, v1, v3

    const/16 v3, 0xb

    aput v4, v1, v3

    const/16 v3, 0xc

    aput v4, v1, v3

    const/16 v3, 0xd

    aput v0, v1, v3

    const/16 v3, 0xe

    aput v4, v1, v3

    const/16 v3, 0xf

    aput v4, v1, v3

    const/16 v3, 0x10

    aput v4, v1, v3

    const/16 v3, 0x11

    aput v5, v1, v3

    const/16 v3, 0x12

    aput v2, v1, v3

    const/16 v3, 0x13

    aput v0, v1, v3

    const/16 v3, 0x14

    aput v4, v1, v3

    const/16 v3, 0x15

    aput v4, v1, v3

    const/16 v3, 0x16

    aput v5, v1, v3

    const/16 v3, 0x17

    aput v5, v1, v3

    .line 87
    .local v1, triangleVerticesData:[F
    array-length v3, v1

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/albumwall/BackgroundView;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 89
    iget-object v3, p0, Lcom/google/android/music/albumwall/BackgroundView;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public freeOpenGlResources()V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/music/albumwall/BackgroundView;->mTextureId:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/BackgroundView;->mTextureId:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 231
    invoke-direct {p0}, Lcom/google/android/music/albumwall/BackgroundView;->clearTextureIds()V

    .line 232
    return-void
.end method

.method public layout(ZFF)V
    .locals 0
    .parameter "horizontal"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 220
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/BackgroundView;->internalLayout(ZFF)V

    .line 221
    return-void
.end method

.method public onDrawFrame(Lcom/google/android/opengl/glview/GLCanvas;F)Z
    .locals 12
    .parameter "glCanvas"
    .parameter "dt"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, animating:Z
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/BackgroundView;->ensureVertexData()V

    .line 102
    invoke-direct {p0}, Lcom/google/android/music/albumwall/BackgroundView;->updateItems()V

    .line 103
    const-string v5, "start"

    invoke-static {v5}, Lcom/google/android/opengl/glview/GLCanvas;->checkGlError(Ljava/lang/String;)V

    .line 105
    iget-object v5, p0, Lcom/google/android/music/albumwall/BackgroundView;->mTriangleVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v5}, Lcom/google/android/opengl/glview/GLCanvas;->setVertices(Ljava/nio/FloatBuffer;)V

    .line 106
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->bindPose()V

    .line 108
    const/4 v3, 0x0

    .line 109
    .local v3, textureId0:I
    const/4 v4, 0x0

    .line 111
    .local v4, textureId1:I
    iget v5, p0, Lcom/google/android/music/albumwall/BackgroundView;->mAnimationState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    iget v5, p0, Lcom/google/android/music/albumwall/BackgroundView;->mAnimationTime:F

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_0

    .line 112
    iput v11, p0, Lcom/google/android/music/albumwall/BackgroundView;->mAnimationState:I

    .line 113
    iget-object v5, p0, Lcom/google/android/music/albumwall/BackgroundView;->mCurrentItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    iput-object v5, p0, Lcom/google/android/music/albumwall/BackgroundView;->mPreviousItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    .line 114
    iget-object v5, p0, Lcom/google/android/music/albumwall/BackgroundView;->mNextItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    iput-object v5, p0, Lcom/google/android/music/albumwall/BackgroundView;->mCurrentItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    .line 117
    :cond_0
    iget v5, p0, Lcom/google/android/music/albumwall/BackgroundView;->mAnimationState:I

    if-ne v5, v11, :cond_8

    move v1, v9

    .line 119
    .local v1, crossFadeAnimation:Z
    :goto_0
    if-eqz v1, :cond_9

    .line 121
    iget-object v5, p0, Lcom/google/android/music/albumwall/BackgroundView;->mPreviousItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    if-eqz v5, :cond_1

    .line 122
    iget-object v5, p0, Lcom/google/android/music/albumwall/BackgroundView;->mModel:Lcom/google/android/music/albumwall/Model;

    iget-object v6, p0, Lcom/google/android/music/albumwall/BackgroundView;->mPreviousItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    invoke-virtual {v5, v6}, Lcom/google/android/music/albumwall/Model;->getItemBackgroundTextureId(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)I

    move-result v3

    .line 124
    :cond_1
    if-nez v3, :cond_2

    .line 125
    invoke-direct {p0}, Lcom/google/android/music/albumwall/BackgroundView;->getDefaultBackgroundTextureId()I

    move-result v3

    .line 127
    :cond_2
    iget-object v5, p0, Lcom/google/android/music/albumwall/BackgroundView;->mCurrentItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    if-eqz v5, :cond_3

    .line 128
    iget-object v5, p0, Lcom/google/android/music/albumwall/BackgroundView;->mModel:Lcom/google/android/music/albumwall/Model;

    iget-object v6, p0, Lcom/google/android/music/albumwall/BackgroundView;->mCurrentItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    invoke-virtual {v5, v6}, Lcom/google/android/music/albumwall/Model;->getItemBackgroundTextureId(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)I

    move-result v4

    .line 130
    :cond_3
    if-nez v4, :cond_4

    .line 131
    move v4, v3

    .line 140
    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    if-ne v3, v4, :cond_6

    .line 141
    :cond_5
    const/4 v1, 0x0

    .line 144
    :cond_6
    if-eqz v1, :cond_a

    .line 145
    iget v5, p0, Lcom/google/android/music/albumwall/BackgroundView;->mAnimationTime:F

    sub-float v2, v5, v7

    .line 146
    .local v2, mix:F
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->setMultiTextureProgram()V

    .line 147
    invoke-virtual {p1, v3}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture0(I)V

    .line 148
    invoke-virtual {p1, v4}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture1(I)V

    .line 149
    invoke-virtual {p1, v2}, Lcom/google/android/opengl/glview/GLCanvas;->setMix(F)V

    .line 150
    invoke-virtual {p1, v7, v7, v8, v8}, Lcom/google/android/opengl/glview/GLCanvas;->setQuadScale(FFFF)V

    .line 160
    .end local v2           #mix:F
    :goto_2
    const/16 v5, 0xbe2

    invoke-static {v5}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 162
    const/4 v5, 0x5

    const/4 v6, 0x4

    invoke-static {v5, v10, v6}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 164
    const/16 v5, 0xbe2

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 166
    iget v5, p0, Lcom/google/android/music/albumwall/BackgroundView;->mAnimationState:I

    if-eq v5, v9, :cond_7

    .line 168
    const/4 v0, 0x1

    .line 169
    iget v5, p0, Lcom/google/android/music/albumwall/BackgroundView;->mAnimationTime:F

    add-float/2addr v5, p2

    iput v5, p0, Lcom/google/android/music/albumwall/BackgroundView;->mAnimationTime:F

    .line 170
    iget v5, p0, Lcom/google/android/music/albumwall/BackgroundView;->mAnimationTime:F

    const/high16 v6, 0x4000

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_7

    .line 171
    iput v9, p0, Lcom/google/android/music/albumwall/BackgroundView;->mAnimationState:I

    .line 175
    :cond_7
    return v0

    .end local v1           #crossFadeAnimation:Z
    :cond_8
    move v1, v10

    .line 117
    goto :goto_0

    .line 133
    .restart local v1       #crossFadeAnimation:Z
    :cond_9
    iget-object v5, p0, Lcom/google/android/music/albumwall/BackgroundView;->mCurrentItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    if-eqz v5, :cond_4

    .line 134
    iget-object v5, p0, Lcom/google/android/music/albumwall/BackgroundView;->mModel:Lcom/google/android/music/albumwall/Model;

    iget-object v6, p0, Lcom/google/android/music/albumwall/BackgroundView;->mCurrentItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    invoke-virtual {v5, v6}, Lcom/google/android/music/albumwall/Model;->getItemBackgroundTextureId(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)I

    move-result v3

    .line 135
    if-nez v3, :cond_4

    .line 136
    invoke-direct {p0}, Lcom/google/android/music/albumwall/BackgroundView;->getDefaultBackgroundTextureId()I

    move-result v3

    goto :goto_1

    .line 151
    :cond_a
    if-eqz v3, :cond_b

    .line 152
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->setTexturedProgram()V

    .line 153
    invoke-virtual {p1, v3}, Lcom/google/android/opengl/glview/GLCanvas;->setTexture0(I)V

    .line 154
    invoke-virtual {p1, v7, v7, v8, v8}, Lcom/google/android/opengl/glview/GLCanvas;->setQuadScale(FFFF)V

    goto :goto_2

    .line 156
    :cond_b
    iget v5, p0, Lcom/google/android/music/albumwall/BackgroundView;->mR:F

    iget v6, p0, Lcom/google/android/music/albumwall/BackgroundView;->mG:F

    iget v7, p0, Lcom/google/android/music/albumwall/BackgroundView;->mB:F

    iget v8, p0, Lcom/google/android/music/albumwall/BackgroundView;->mA:F

    invoke-virtual {p1, v5, v6, v7, v8}, Lcom/google/android/opengl/glview/GLCanvas;->setFlatColor(FFFF)V

    .line 157
    invoke-virtual {p1}, Lcom/google/android/opengl/glview/GLCanvas;->setFlatProgram()V

    goto :goto_2
.end method

.method public onSurfaceCreated(Lcom/google/android/opengl/glview/GLCanvas;)V
    .locals 0
    .parameter "glCanvas"

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/google/android/music/albumwall/BackgroundView;->clearTextureIds()V

    .line 226
    return-void
.end method

.method public setColor(FFFF)V
    .locals 0
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 93
    iput p1, p0, Lcom/google/android/music/albumwall/BackgroundView;->mR:F

    .line 94
    iput p2, p0, Lcom/google/android/music/albumwall/BackgroundView;->mG:F

    .line 95
    iput p3, p0, Lcom/google/android/music/albumwall/BackgroundView;->mB:F

    .line 96
    iput p4, p0, Lcom/google/android/music/albumwall/BackgroundView;->mA:F

    .line 97
    return-void
.end method
