.class public Lcom/layar/core/CircularGrid;
.super Ljava/lang/Object;
.source "CircularGrid.java"


# static fields
.field private static final INTERVAL:I = 0x2

.field private static final LINE_COUNT:I = 0x1f8

.field private static final RINGS:I = 0x14

.field private static final SEGMENTS:I = 0x18


# instance fields
.field private final lineBuffer:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    const/16 v9, 0x18

    const/high16 v7, 0x4220

    const/4 v8, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v6, 0xbd0

    new-array v3, v6, [I

    .line 22
    .local v3, lines:[I
    const/4 v4, 0x0

    .line 24
    .local v4, p:I
    const/high16 v0, 0x4170

    .line 26
    .local v0, angleIncrement:F
    const/4 v1, 0x0

    .local v1, i:I
    move v5, v4

    .end local v4           #p:I
    .local v5, p:I
    :goto_0
    if-lt v1, v9, :cond_0

    .line 33
    const/4 v1, 0x1

    move v4, v5

    .end local v5           #p:I
    .restart local v4       #p:I
    :goto_1
    const/16 v6, 0x14

    if-le v1, v6, :cond_1

    .line 44
    invoke-static {v3}, Lcom/layar/core/CircularGrid;->makeIntBuffer([I)Ljava/nio/IntBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/layar/core/CircularGrid;->lineBuffer:Ljava/nio/IntBuffer;

    .line 45
    return-void

    .line 27
    .end local v4           #p:I
    .restart local v5       #p:I
    :cond_0
    add-int/lit8 v4, v5, 0x1

    .end local v5           #p:I
    .restart local v4       #p:I
    aput v8, v3, v5

    add-int/lit8 v5, v4, 0x1

    .end local v4           #p:I
    .restart local v5       #p:I
    aput v8, v3, v4

    add-int/lit8 v4, v5, 0x1

    .end local v5           #p:I
    .restart local v4       #p:I
    aput v8, v3, v5

    .line 28
    add-int/lit8 v5, v4, 0x1

    .end local v4           #p:I
    .restart local v5       #p:I
    int-to-float v6, v1

    mul-float/2addr v6, v0

    invoke-direct {p0, v6, v7}, Lcom/layar/core/CircularGrid;->calculateX(FF)I

    move-result v6

    aput v6, v3, v4

    .line 29
    add-int/lit8 v4, v5, 0x1

    .end local v5           #p:I
    .restart local v4       #p:I
    int-to-float v6, v1

    mul-float/2addr v6, v0

    invoke-direct {p0, v6, v7}, Lcom/layar/core/CircularGrid;->calculateY(FF)I

    move-result v6

    aput v6, v3, v5

    .line 30
    add-int/lit8 v5, v4, 0x1

    .end local v4           #p:I
    .restart local v5       #p:I
    aput v8, v3, v4

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    .end local v5           #p:I
    .restart local v4       #p:I
    :cond_1
    const/4 v2, 0x0

    .local v2, j:I
    move v5, v4

    .end local v4           #p:I
    .restart local v5       #p:I
    :goto_2
    if-lt v2, v9, :cond_2

    .line 33
    add-int/lit8 v1, v1, 0x1

    move v4, v5

    .end local v5           #p:I
    .restart local v4       #p:I
    goto :goto_1

    .line 35
    .end local v4           #p:I
    .restart local v5       #p:I
    :cond_2
    add-int/lit8 v4, v5, 0x1

    .end local v5           #p:I
    .restart local v4       #p:I
    int-to-float v6, v2

    mul-float/2addr v6, v0

    mul-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    invoke-direct {p0, v6, v7}, Lcom/layar/core/CircularGrid;->calculateX(FF)I

    move-result v6

    aput v6, v3, v5

    .line 36
    add-int/lit8 v5, v4, 0x1

    .end local v4           #p:I
    .restart local v5       #p:I
    int-to-float v6, v2

    mul-float/2addr v6, v0

    mul-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    invoke-direct {p0, v6, v7}, Lcom/layar/core/CircularGrid;->calculateY(FF)I

    move-result v6

    aput v6, v3, v4

    .line 37
    add-int/lit8 v4, v5, 0x1

    .end local v5           #p:I
    .restart local v4       #p:I
    aput v8, v3, v5

    .line 38
    add-int/lit8 v5, v4, 0x1

    .end local v4           #p:I
    .restart local v5       #p:I
    add-int/lit8 v6, v2, 0x1

    int-to-float v6, v6

    mul-float/2addr v6, v0

    mul-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    invoke-direct {p0, v6, v7}, Lcom/layar/core/CircularGrid;->calculateX(FF)I

    move-result v6

    aput v6, v3, v4

    .line 39
    add-int/lit8 v4, v5, 0x1

    .end local v5           #p:I
    .restart local v4       #p:I
    add-int/lit8 v6, v2, 0x1

    int-to-float v6, v6

    mul-float/2addr v6, v0

    mul-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    invoke-direct {p0, v6, v7}, Lcom/layar/core/CircularGrid;->calculateY(FF)I

    move-result v6

    aput v6, v3, v5

    .line 40
    add-int/lit8 v5, v4, 0x1

    .end local v4           #p:I
    .restart local v5       #p:I
    aput v8, v3, v4

    .line 34
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private calculateX(FF)I
    .locals 4
    .parameter "angle"
    .parameter "distance"

    .prologue
    .line 48
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    float-to-double v2, p2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x40f0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private calculateY(FF)I
    .locals 4
    .parameter "angle"
    .parameter "distance"

    .prologue
    .line 52
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    float-to-double v2, p2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x40f0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public static makeIntBuffer([I)Ljava/nio/IntBuffer;
    .locals 3
    .parameter "arr"

    .prologue
    .line 72
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 73
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 74
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 75
    .local v1, ib:Ljava/nio/IntBuffer;
    invoke-virtual {v1, p0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 76
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 77
    return-object v1
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 2
    .parameter "gl"
    .parameter "fade"

    .prologue
    const v1, 0x8000

    .line 57
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 58
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 59
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 60
    const/high16 v0, 0x1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    .line 61
    const v0, 0x464ccc00

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-interface {p1, v1, v1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/layar/core/CircularGrid;->drawLines(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 63
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 64
    return-void
.end method

.method public drawLines(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/4 v3, 0x0

    .line 67
    const/4 v0, 0x3

    const/16 v1, 0x140c

    iget-object v2, p0, Lcom/layar/core/CircularGrid;->lineBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 68
    const/4 v0, 0x1

    const/16 v1, 0x3f0

    invoke-interface {p1, v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 69
    return-void
.end method
