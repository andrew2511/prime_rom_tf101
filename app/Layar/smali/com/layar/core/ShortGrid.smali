.class public Lcom/layar/core/ShortGrid;
.super Ljava/lang/Object;
.source "ShortGrid.java"


# static fields
.field private static final LINE_COUNT:I = 0x52

.field private static final LINE_INTERVAL:I = 0x2

.field private static final LINE_RANGE:I = 0x280000

.field private static final LINE_STEPS:I = 0x14


# instance fields
.field private final lineBuffer:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    const/high16 v9, -0x28

    const/high16 v8, 0x28

    const/4 v7, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/16 v6, 0x1ec

    new-array v2, v6, [I

    .line 21
    .local v2, lines:[I
    const/4 v4, 0x0

    .line 22
    .local v4, p:I
    const/high16 v3, 0x28

    .line 24
    .local v3, offset:I
    const/4 v1, 0x1

    .local v1, i:I
    move v5, v4

    .end local v4           #p:I
    .local v5, p:I
    :goto_0
    const/16 v6, 0x14

    if-le v1, v6, :cond_0

    .line 39
    add-int/lit8 v4, v5, 0x1

    .end local v5           #p:I
    .restart local v4       #p:I
    aput v9, v2, v5

    add-int/lit8 v5, v4, 0x1

    .end local v4           #p:I
    .restart local v5       #p:I
    aput v7, v2, v4

    add-int/lit8 v4, v5, 0x1

    .end local v5           #p:I
    .restart local v4       #p:I
    aput v7, v2, v5

    .line 40
    add-int/lit8 v5, v4, 0x1

    .end local v4           #p:I
    .restart local v5       #p:I
    aput v8, v2, v4

    add-int/lit8 v4, v5, 0x1

    .end local v5           #p:I
    .restart local v4       #p:I
    aput v7, v2, v5

    add-int/lit8 v5, v4, 0x1

    .end local v4           #p:I
    .restart local v5       #p:I
    aput v7, v2, v4

    .line 41
    add-int/lit8 v4, v5, 0x1

    .end local v5           #p:I
    .restart local v4       #p:I
    aput v7, v2, v5

    add-int/lit8 v5, v4, 0x1

    .end local v4           #p:I
    .restart local v5       #p:I
    aput v9, v2, v4

    add-int/lit8 v4, v5, 0x1

    .end local v5           #p:I
    .restart local v4       #p:I
    aput v7, v2, v5

    .line 42
    add-int/lit8 v5, v4, 0x1

    .end local v4           #p:I
    .restart local v5       #p:I
    aput v7, v2, v4

    add-int/lit8 v4, v5, 0x1

    .end local v5           #p:I
    .restart local v4       #p:I
    aput v8, v2, v5

    add-int/lit8 v5, v4, 0x1

    .end local v4           #p:I
    .restart local v5       #p:I
    aput v7, v2, v4

    .line 44
    invoke-static {v2}, Lcom/layar/core/ShortGrid;->makeIntBuffer([I)Ljava/nio/IntBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/layar/core/ShortGrid;->lineBuffer:Ljava/nio/IntBuffer;

    .line 45
    return-void

    .line 26
    :cond_0
    invoke-direct {p0, v3, v8}, Lcom/layar/core/ShortGrid;->cuttOff(II)I

    move-result v0

    .line 28
    .local v0, cuttOff:I
    add-int/lit8 v4, v5, 0x1

    .end local v5           #p:I
    .restart local v4       #p:I
    neg-int v6, v0

    aput v6, v2, v5

    add-int/lit8 v5, v4, 0x1

    .end local v4           #p:I
    .restart local v5       #p:I
    neg-int v6, v3

    aput v6, v2, v4

    add-int/lit8 v4, v5, 0x1

    .end local v5           #p:I
    .restart local v4       #p:I
    aput v7, v2, v5

    .line 29
    add-int/lit8 v5, v4, 0x1

    .end local v4           #p:I
    .restart local v5       #p:I
    aput v0, v2, v4

    add-int/lit8 v4, v5, 0x1

    .end local v5           #p:I
    .restart local v4       #p:I
    neg-int v6, v3

    aput v6, v2, v5

    add-int/lit8 v5, v4, 0x1

    .end local v4           #p:I
    .restart local v5       #p:I
    aput v7, v2, v4

    .line 30
    add-int/lit8 v4, v5, 0x1

    .end local v5           #p:I
    .restart local v4       #p:I
    neg-int v6, v0

    aput v6, v2, v5

    add-int/lit8 v5, v4, 0x1

    .end local v4           #p:I
    .restart local v5       #p:I
    aput v3, v2, v4

    add-int/lit8 v4, v5, 0x1

    .end local v5           #p:I
    .restart local v4       #p:I
    aput v7, v2, v5

    .line 31
    add-int/lit8 v5, v4, 0x1

    .end local v4           #p:I
    .restart local v5       #p:I
    aput v0, v2, v4

    add-int/lit8 v4, v5, 0x1

    .end local v5           #p:I
    .restart local v4       #p:I
    aput v3, v2, v5

    add-int/lit8 v5, v4, 0x1

    .end local v4           #p:I
    .restart local v5       #p:I
    aput v7, v2, v4

    .line 32
    add-int/lit8 v4, v5, 0x1

    .end local v5           #p:I
    .restart local v4       #p:I
    neg-int v6, v3

    aput v6, v2, v5

    add-int/lit8 v5, v4, 0x1

    .end local v4           #p:I
    .restart local v5       #p:I
    neg-int v6, v0

    aput v6, v2, v4

    add-int/lit8 v4, v5, 0x1

    .end local v5           #p:I
    .restart local v4       #p:I
    aput v7, v2, v5

    .line 33
    add-int/lit8 v5, v4, 0x1

    .end local v4           #p:I
    .restart local v5       #p:I
    neg-int v6, v3

    aput v6, v2, v4

    add-int/lit8 v4, v5, 0x1

    .end local v5           #p:I
    .restart local v4       #p:I
    aput v0, v2, v5

    add-int/lit8 v5, v4, 0x1

    .end local v4           #p:I
    .restart local v5       #p:I
    aput v7, v2, v4

    .line 34
    add-int/lit8 v4, v5, 0x1

    .end local v5           #p:I
    .restart local v4       #p:I
    aput v3, v2, v5

    add-int/lit8 v5, v4, 0x1

    .end local v4           #p:I
    .restart local v5       #p:I
    neg-int v6, v0

    aput v6, v2, v4

    add-int/lit8 v4, v5, 0x1

    .end local v5           #p:I
    .restart local v4       #p:I
    aput v7, v2, v5

    .line 35
    add-int/lit8 v5, v4, 0x1

    .end local v4           #p:I
    .restart local v5       #p:I
    aput v3, v2, v4

    add-int/lit8 v4, v5, 0x1

    .end local v5           #p:I
    .restart local v4       #p:I
    aput v0, v2, v5

    add-int/lit8 v5, v4, 0x1

    .end local v4           #p:I
    .restart local v5       #p:I
    aput v7, v2, v4

    .line 36
    const/high16 v6, 0x2

    sub-int/2addr v3, v6

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private cuttOff(II)I
    .locals 8
    .parameter "offset"
    .parameter "distance"

    .prologue
    const/high16 v5, 0x4780

    .line 48
    int-to-float v4, p1

    div-float/2addr v4, v5

    float-to-double v2, v4

    .line 49
    .local v2, of:D
    int-to-float v4, p2

    div-float/2addr v4, v5

    float-to-double v0, v4

    .line 51
    .local v0, df:D
    mul-double v4, v0, v0

    mul-double v6, v2, v2

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/high16 v5, 0x1

    mul-int/2addr v4, v5

    return v4
.end method

.method public static makeIntBuffer([I)Ljava/nio/IntBuffer;
    .locals 3
    .parameter "arr"

    .prologue
    .line 70
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 71
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 72
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 73
    .local v1, ib:Ljava/nio/IntBuffer;
    invoke-virtual {v1, p0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 74
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 75
    return-object v1
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 2
    .parameter "gl"
    .parameter "fade"

    .prologue
    const v1, 0x8000

    .line 55
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 56
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 57
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 58
    const/high16 v0, 0x1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    .line 59
    const v0, 0x464ccc00

    mul-float/2addr v0, p2

    float-to-int v0, v0

    invoke-interface {p1, v1, v1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 60
    invoke-virtual {p0, p1}, Lcom/layar/core/ShortGrid;->drawLines(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 61
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 62
    return-void
.end method

.method public drawLines(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/4 v3, 0x0

    .line 65
    const/4 v0, 0x3

    const/16 v1, 0x140c

    iget-object v2, p0, Lcom/layar/core/ShortGrid;->lineBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 66
    const/4 v0, 0x1

    const/16 v1, 0xa4

    invoke-interface {p1, v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 67
    return-void
.end method
