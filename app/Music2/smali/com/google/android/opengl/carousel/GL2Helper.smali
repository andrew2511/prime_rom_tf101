.class public Lcom/google/android/opengl/carousel/GL2Helper;
.super Ljava/lang/Object;
.source "GL2Helper.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final FLOAT_SIZE_BYTES:I = 0x4

.field private static final QUAD_VERTEX_NUM:I = 0xc

.field private static final TAG:Ljava/lang/String; = "GL2Helper"

.field public static final TRIANGLE_UV_OFFSET:I = 0x3

.field public static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field private static mQuadVertices:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const/16 v0, 0x30

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/google/android/opengl/carousel/GL2Helper;->mQuadVertices:Ljava/nio/FloatBuffer;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkGlError(Ljava/lang/String;)V
    .locals 4
    .parameter "op"

    .prologue
    .line 37
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, error:I
    if-eqz v0, :cond_0

    .line 38
    const-string v1, "GL2Helper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_0
    return-void
.end method

.method public static clamp(FFF)F
    .locals 1
    .parameter "amount"
    .parameter "low"
    .parameter "high"

    .prologue
    .line 123
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    .line 124
    move p0, p1

    .line 128
    :cond_0
    :goto_0
    return p0

    .line 125
    :cond_1
    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    .line 126
    move p0, p2

    goto :goto_0
.end method

.method public static convertNormalizedToPixelCoordinates([FFF)Z
    .locals 9
    .parameter "screenCoord"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v8, 0x3f80

    const/high16 v7, 0x3f00

    const/4 v4, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 79
    aget v2, p0, v4

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 80
    const-string v2, "GL2Helper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad transform while converting from normalized to pixel coordinates: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 94
    :goto_0
    return v2

    .line 84
    :cond_0
    aget v2, p0, v4

    div-float v1, v8, v2

    .line 85
    .local v1, inv:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_1

    .line 86
    aget v2, p0, v0

    mul-float/2addr v2, v1

    aput v2, p0, v0

    .line 87
    aget v2, p0, v0

    add-float/2addr v2, v8

    aput v2, p0, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 90
    :cond_1
    aget v2, p0, v5

    mul-float/2addr v2, v7

    mul-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    aput v2, p0, v5

    .line 91
    aget v2, p0, v6

    mul-float/2addr v2, v7

    mul-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    aput v2, p0, v6

    .line 92
    const/4 v2, 0x2

    const/high16 v3, -0x4100

    const/4 v4, 0x2

    aget v4, p0, v4

    mul-float/2addr v3, v4

    aput v3, p0, v2

    move v2, v6

    .line 94
    goto :goto_0
.end method

.method public static drawQuad([F)Z
    .locals 6
    .parameter "vertexData"

    .prologue
    const/4 v0, 0x0

    .line 102
    array-length v1, p0

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    .line 112
    :goto_0
    return v0

    .line 104
    :cond_0
    sget-object v1, Lcom/google/android/opengl/carousel/GL2Helper;->mQuadVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    .line 105
    sget-object v1, Lcom/google/android/opengl/carousel/GL2Helper;->mQuadVertices:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 107
    const/4 v1, 0x3

    const/16 v2, 0x1406

    sget-object v5, Lcom/google/android/opengl/carousel/GL2Helper;->mQuadVertices:Ljava/nio/FloatBuffer;

    move v3, v0

    move v4, v0

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 110
    const/4 v1, 0x6

    const/4 v2, 0x4

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 112
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "drawable"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v3, 0x0

    .line 186
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 187
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 188
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {p0, v3, v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 189
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 191
    return-object v0
.end method

.method public static getRandomVector([F)V
    .locals 3
    .parameter "color"

    .prologue
    .line 59
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 60
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, p0, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_0
    return-void
.end method

.method public static getViewPortWidth()[I
    .locals 3

    .prologue
    .line 66
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 67
    .local v0, viewport:[I
    const/16 v1, 0xba2

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 69
    return-object v0
.end method

.method public static loadPerspectiveMatrix([FFFFF)V
    .locals 8
    .parameter "matrix"
    .parameter "fovy"
    .parameter "aspect"
    .parameter "near"
    .parameter "far"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 48
    float-to-double v0, p3

    float-to-double v2, p1

    const-wide v4, 0x400921fb54442d18L

    mul-double/2addr v2, v4

    const-wide v4, 0x4076800000000000L

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v5, v0

    .line 49
    .local v5, top:F
    neg-float v4, v5

    .line 50
    .local v4, bottom:F
    mul-float v2, v4, p2

    .line 51
    .local v2, left:F
    mul-float v3, v5, p2

    .line 52
    .local v3, right:F
    const/4 v1, 0x0

    move-object v0, p0

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 53
    return-void
.end method

.method public static printIntArray([I)V
    .locals 8
    .parameter "array"

    .prologue
    .line 199
    array-length v4, p0

    .line 200
    .local v4, length:I
    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v4, 0xa

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 201
    .local v5, sb:Ljava/lang/StringBuilder;
    const-string v6, "[ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    move-object v1, p0

    .local v1, arr$:[I
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, v1, v2

    .line 203
    .local v0, a:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    .end local v0           #a:I
    :cond_0
    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v6, "GL2Helper"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method public static proportionPoint(FFF)F
    .locals 3
    .parameter "left"
    .parameter "right"
    .parameter "t"

    .prologue
    .line 140
    const/high16 v1, 0x3f80

    sub-float/2addr v1, p2

    mul-float/2addr v1, p0

    mul-float v2, p1, p2

    add-float v0, v1, v2

    .line 141
    .local v0, v:F
    return v0
.end method

.method public static proportionPoint([F[FF)[F
    .locals 5
    .parameter "left"
    .parameter "right"
    .parameter "t"

    .prologue
    .line 152
    array-length v1, p0

    .line 153
    .local v1, len:I
    new-array v2, v1, [F

    .line 154
    .local v2, r:[F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 155
    aget v3, p0, v0

    aget v4, p1, v0

    invoke-static {v3, v4, p2}, Lcom/google/android/opengl/carousel/GL2Helper;->proportionPoint(FFF)F

    move-result v3

    aput v3, v2, v0

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    return-object v2
.end method

.method public static setVector12f([FFFFFFFFFFFFF)V
    .locals 1
    .parameter "vector"
    .parameter "v0"
    .parameter "v1"
    .parameter "v2"
    .parameter "v3"
    .parameter "v4"
    .parameter "v5"
    .parameter "v6"
    .parameter "v7"
    .parameter "v8"
    .parameter "v9"
    .parameter "v10"
    .parameter "v11"

    .prologue
    .line 167
    const/4 v0, 0x0

    aput p1, p0, v0

    .line 168
    const/4 v0, 0x1

    aput p2, p0, v0

    .line 169
    const/4 v0, 0x2

    aput p3, p0, v0

    .line 170
    const/4 v0, 0x3

    aput p4, p0, v0

    .line 171
    const/4 v0, 0x4

    aput p5, p0, v0

    .line 172
    const/4 v0, 0x5

    aput p6, p0, v0

    .line 173
    const/4 v0, 0x6

    aput p7, p0, v0

    .line 174
    const/4 v0, 0x7

    aput p8, p0, v0

    .line 175
    const/16 v0, 0x8

    aput p9, p0, v0

    .line 176
    const/16 v0, 0x9

    aput p10, p0, v0

    .line 177
    const/16 v0, 0xa

    aput p11, p0, v0

    .line 178
    const/16 v0, 0xb

    aput p12, p0, v0

    .line 179
    return-void
.end method
