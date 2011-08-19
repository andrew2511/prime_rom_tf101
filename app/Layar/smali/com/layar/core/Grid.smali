.class public Lcom/layar/core/Grid;
.super Ljava/lang/Object;
.source "Grid.java"


# static fields
.field private static final AXIS_LINE_COUNT:I = 0xe1

.field private static final GRID_RADIUS:I = 0x1f40

.field private static final ONE:I = 0x10000


# instance fields
.field private final lineBuffer:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/16 v9, 0x1518

    new-array v4, v9, [I

    .line 27
    .local v4, lines:[I
    const/4 v3, 0x0

    .line 28
    .local v3, currentLine:I
    const/4 v2, 0x0

    .local v2, count:I
    :goto_0
    const/16 v9, 0xe1

    if-lt v2, v9, :cond_0

    .line 51
    const/4 v3, 0x0

    .line 52
    :goto_1
    const/16 v9, 0x1c2

    if-lt v2, v9, :cond_3

    .line 76
    invoke-static {v4}, Lcom/layar/core/Grid;->makeIntBuffer([I)Ljava/nio/IntBuffer;

    move-result-object v9

    iput-object v9, p0, Lcom/layar/core/Grid;->lineBuffer:Ljava/nio/IntBuffer;

    .line 77
    return-void

    .line 30
    :cond_0
    int-to-float v9, v3

    invoke-direct {p0, v9}, Lcom/layar/core/Grid;->getPosForLineId(F)F

    move-result v5

    .line 31
    .local v5, posx:F
    const/high16 v9, 0x45fa

    sub-float v7, v9, v5

    .line 33
    .local v7, px:F
    const/16 v9, 0x70

    if-ge v3, v9, :cond_1

    const/high16 v9, -0x4080

    mul-float/2addr v7, v9

    .line 36
    :cond_1
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x3f80

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    const/4 v7, 0x0

    .line 39
    :cond_2
    const v9, 0x4c742400

    mul-float v10, v7, v7

    sub-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v1, v9

    .line 41
    .local v1, correspondingY:F
    mul-int/lit8 v9, v2, 0x6

    add-int/lit8 v9, v9, 0x0

    const/high16 v10, 0x4780

    mul-float/2addr v10, v7

    float-to-int v10, v10

    aput v10, v4, v9

    .line 42
    mul-int/lit8 v9, v2, 0x6

    add-int/lit8 v9, v9, 0x1

    const/high16 v10, 0x4780

    neg-float v11, v1

    mul-float/2addr v10, v11

    float-to-int v10, v10

    aput v10, v4, v9

    .line 43
    mul-int/lit8 v9, v2, 0x6

    add-int/lit8 v9, v9, 0x2

    const/4 v10, 0x0

    aput v10, v4, v9

    .line 44
    mul-int/lit8 v9, v2, 0x6

    add-int/lit8 v9, v9, 0x3

    const/high16 v10, 0x4780

    mul-float/2addr v10, v7

    float-to-int v10, v10

    aput v10, v4, v9

    .line 45
    mul-int/lit8 v9, v2, 0x6

    add-int/lit8 v9, v9, 0x4

    const/high16 v10, 0x4780

    mul-float/2addr v10, v1

    float-to-int v10, v10

    aput v10, v4, v9

    .line 46
    mul-int/lit8 v9, v2, 0x6

    add-int/lit8 v9, v9, 0x5

    const/4 v10, 0x0

    aput v10, v4, v9

    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 28
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    .end local v1           #correspondingY:F
    .end local v5           #posx:F
    .end local v7           #px:F
    :cond_3
    int-to-float v9, v3

    invoke-direct {p0, v9}, Lcom/layar/core/Grid;->getPosForLineId(F)F

    move-result v6

    .line 56
    .local v6, posy:F
    const/high16 v9, 0x45fa

    sub-float v8, v9, v6

    .line 58
    .local v8, py:F
    const/16 v9, 0x70

    if-ge v3, v9, :cond_4

    const/high16 v9, -0x4080

    mul-float/2addr v8, v9

    .line 61
    :cond_4
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x3f80

    cmpg-float v9, v9, v10

    if-gez v9, :cond_5

    const/4 v8, 0x0

    .line 64
    :cond_5
    const v9, 0x4c742400

    mul-float v10, v8, v8

    sub-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v0, v9

    .line 66
    .local v0, correspondingX:F
    mul-int/lit8 v9, v2, 0x6

    add-int/lit8 v9, v9, 0x0

    const/high16 v10, 0x4780

    neg-float v11, v0

    mul-float/2addr v10, v11

    float-to-int v10, v10

    aput v10, v4, v9

    .line 67
    mul-int/lit8 v9, v2, 0x6

    add-int/lit8 v9, v9, 0x1

    const/high16 v10, 0x4780

    mul-float/2addr v10, v8

    float-to-int v10, v10

    aput v10, v4, v9

    .line 68
    mul-int/lit8 v9, v2, 0x6

    add-int/lit8 v9, v9, 0x2

    const/4 v10, 0x0

    aput v10, v4, v9

    .line 69
    mul-int/lit8 v9, v2, 0x6

    add-int/lit8 v9, v9, 0x3

    const/high16 v10, 0x4780

    mul-float/2addr v10, v0

    float-to-int v10, v10

    aput v10, v4, v9

    .line 70
    mul-int/lit8 v9, v2, 0x6

    add-int/lit8 v9, v9, 0x4

    const/high16 v10, 0x4780

    mul-float/2addr v10, v8

    float-to-int v10, v10

    aput v10, v4, v9

    .line 71
    mul-int/lit8 v9, v2, 0x6

    add-int/lit8 v9, v9, 0x5

    const/4 v10, 0x0

    aput v10, v4, v9

    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method private getPosForLineId(F)F
    .locals 4
    .parameter "lineid"

    .prologue
    .line 19
    const/high16 v0, 0x4360

    div-float v0, p1, v0

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x45fa

    mul-float/2addr v0, v1

    return v0
.end method

.method public static makeIntBuffer([I)Ljava/nio/IntBuffer;
    .locals 3
    .parameter "arr"

    .prologue
    .line 100
    array-length v2, p0

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 101
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 102
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    .line 103
    .local v1, ib:Ljava/nio/IntBuffer;
    invoke-virtual {v1, p0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 104
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 105
    return-object v1
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 5
    .parameter "gl"
    .parameter "eyeHeight"

    .prologue
    const/high16 v4, 0x3f80

    const v3, 0x8000

    .line 80
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 81
    const/high16 v1, 0x3fe0

    sub-float v1, p2, v1

    const/high16 v2, 0x40c0

    div-float/2addr v1, v2

    add-float v0, v1, v4

    .line 82
    .local v0, scale:F
    invoke-interface {p1, v0, v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 84
    const v1, 0x8078

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 85
    const/16 v1, 0xde1

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 86
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 87
    const/high16 v1, 0x1

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    .line 88
    const/16 v1, 0x3333

    invoke-interface {p1, v3, v3, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/layar/core/Grid;->drawLines(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 90
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 91
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 92
    return-void
.end method

.method public drawLines(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/4 v3, 0x0

    .line 95
    const/4 v0, 0x3

    const/16 v1, 0x140c

    iget-object v2, p0, Lcom/layar/core/Grid;->lineBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 96
    const/4 v0, 0x1

    const/16 v1, 0x384

    invoke-interface {p1, v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 97
    return-void
.end method
