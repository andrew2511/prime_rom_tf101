.class public Lcom/asus/reader/book/CenterBar;
.super Ljava/lang/Object;
.source "CenterBar.java"


# static fields
.field public static ONE:I


# instance fields
.field public H:I

.field public HWratio:D

.field public TL:I

.field public TR:I

.field public Tmin:I

.field public W:I

.field public ch:I

.field public mI:Ljava/nio/ByteBuffer;

.field public mIndexBuffer:Ljava/nio/ByteBuffer;

.field private mLandscape:Z

.field public mNormalBuffer:Ljava/nio/IntBuffer;

.field public mTextureCoordBuffer:Ljava/nio/IntBuffer;

.field public mV:Ljava/nio/IntBuffer;

.field public mVertexBuffer:Ljava/nio/IntBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/high16 v0, 0x1

    sput v0, Lcom/asus/reader/book/CenterBar;->ONE:I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter "landscape"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget v0, Lcom/asus/reader/book/CenterBar;->ONE:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit16 v0, v0, 0x280

    iput v0, p0, Lcom/asus/reader/book/CenterBar;->TR:I

    .line 11
    sget v0, Lcom/asus/reader/book/CenterBar;->ONE:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit16 v0, v0, 0x280

    iput v0, p0, Lcom/asus/reader/book/CenterBar;->TL:I

    .line 12
    sget v0, Lcom/asus/reader/book/CenterBar;->ONE:I

    iput v0, p0, Lcom/asus/reader/book/CenterBar;->W:I

    .line 13
    iget v0, p0, Lcom/asus/reader/book/CenterBar;->W:I

    iput v0, p0, Lcom/asus/reader/book/CenterBar;->H:I

    .line 14
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/asus/reader/book/CenterBar;->HWratio:D

    .line 19
    sget v0, Lcom/asus/reader/book/FlippingPage;->chL:I

    iput v0, p0, Lcom/asus/reader/book/CenterBar;->ch:I

    .line 20
    sget v0, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    iput v0, p0, Lcom/asus/reader/book/CenterBar;->Tmin:I

    .line 23
    iput-boolean p1, p0, Lcom/asus/reader/book/CenterBar;->mLandscape:Z

    .line 24
    iget-boolean v0, p0, Lcom/asus/reader/book/CenterBar;->mLandscape:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/asus/reader/book/FlippingPage;->chL:I

    iput v0, p0, Lcom/asus/reader/book/CenterBar;->ch:I

    .line 25
    :goto_0
    return-void

    .line 24
    :cond_0
    sget v0, Lcom/asus/reader/book/FlippingPage;->chP:I

    iput v0, p0, Lcom/asus/reader/book/CenterBar;->ch:I

    goto :goto_0
.end method


# virtual methods
.method public bezier(IIDDDD)I
    .locals 16
    .parameter "m"
    .parameter "n"
    .parameter "p0"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"

    .prologue
    .line 114
    mul-int v12, p2, p2

    mul-int v12, v12, p2

    int-to-double v4, v12

    .line 115
    .local v4, n3:D
    mul-int v12, p1, p1

    int-to-double v0, v12

    .line 116
    .local v0, m2:D
    mul-int v12, p1, p1

    mul-int v12, v12, p1

    int-to-double v2, v12

    .line 117
    .local v2, m3:D
    sub-int v12, p2, p1

    int-to-double v6, v12

    .line 118
    .local v6, nm:D
    sub-int v12, p2, p1

    sub-int v13, p2, p1

    mul-int/2addr v12, v13

    int-to-double v8, v12

    .line 119
    .local v8, nm2:D
    sub-int v12, p2, p1

    sub-int v13, p2, p1

    mul-int/2addr v12, v13

    sub-int v13, p2, p1

    mul-int/2addr v12, v13

    int-to-double v10, v12

    .line 120
    .local v10, nm3:D
    mul-double v12, v2, p9

    const-wide/high16 v14, 0x4008

    mul-double/2addr v14, v0

    mul-double/2addr v14, v6

    mul-double v14, v14, p7

    add-double/2addr v12, v14

    mul-int/lit8 v14, p1, 0x3

    int-to-double v14, v14

    mul-double/2addr v14, v8

    mul-double v14, v14, p5

    add-double/2addr v12, v14

    mul-double v14, v10, p3

    add-double/2addr v12, v14

    div-double/2addr v12, v4

    double-to-int v12, v12

    return v12
.end method

.method public setsize(II)V
    .locals 24
    .parameter "width"
    .parameter "height"

    .prologue
    .line 28
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/asus/reader/book/CenterBar;->mLandscape:Z

    move v4, v0

    if-eqz v4, :cond_0

    const/high16 v4, 0x4000

    move/from16 v0, p2

    int-to-float v0, v0

    move v5, v0

    mul-float/2addr v4, v5

    move/from16 v0, p1

    int-to-float v0, v0

    move v5, v0

    div-float/2addr v4, v5

    float-to-double v4, v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/asus/reader/book/CenterBar;->HWratio:D

    .line 30
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->W:I

    move v4, v0

    int-to-double v4, v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/CenterBar;->HWratio:D

    move-wide v6, v0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/asus/reader/book/CenterBar;->H:I

    .line 31
    const/16 v4, 0xc

    move v0, v4

    new-array v0, v0, [I

    move-object/from16 v23, v0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->TL:I

    move v5, v0

    neg-int v5, v5

    aput v5, v23, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->H:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->ch:I

    move v6, v0

    div-int/2addr v5, v6

    aput v5, v23, v4

    const/4 v4, 0x2

    const/16 v5, -0x19

    aput v5, v23, v4

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->TL:I

    move v5, v0

    neg-int v5, v5

    aput v5, v23, v4

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->H:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->ch:I

    move v7, v0

    div-int/2addr v6, v7

    sub-int/2addr v5, v6

    aput v5, v23, v4

    const/4 v4, 0x5

    const/16 v5, -0x19

    aput v5, v23, v4

    const/4 v4, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->TR:I

    move v5, v0

    aput v5, v23, v4

    const/4 v4, 0x7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->H:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->ch:I

    move v6, v0

    div-int/2addr v5, v6

    aput v5, v23, v4

    const/16 v4, 0x8

    const/16 v5, -0x19

    aput v5, v23, v4

    const/16 v4, 0x9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->TR:I

    move v5, v0

    aput v5, v23, v4

    const/16 v4, 0xa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->H:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->ch:I

    move v7, v0

    div-int/2addr v6, v7

    sub-int/2addr v5, v6

    aput v5, v23, v4

    const/16 v4, 0xb

    const/16 v5, -0x19

    aput v5, v23, v4

    .line 37
    .local v23, vertices:[I
    const/4 v4, 0x4

    move v0, v4

    new-array v0, v0, [B

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    .line 38
    .local v16, indices:[B
    const/16 v4, 0x8

    move v0, v4

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v20, v4

    const/4 v4, 0x1

    sget v5, Lcom/asus/reader/book/CenterBar;->ONE:I

    aput v5, v20, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    aput v5, v20, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput v5, v20, v4

    const/4 v4, 0x4

    sget v5, Lcom/asus/reader/book/CenterBar;->ONE:I

    mul-int/lit8 v5, v5, 0x5

    div-int/lit8 v5, v5, 0x6

    aput v5, v20, v4

    const/4 v4, 0x5

    sget v5, Lcom/asus/reader/book/CenterBar;->ONE:I

    aput v5, v20, v4

    const/4 v4, 0x6

    sget v5, Lcom/asus/reader/book/CenterBar;->ONE:I

    mul-int/lit8 v5, v5, 0x5

    div-int/lit8 v5, v5, 0x6

    aput v5, v20, v4

    const/4 v4, 0x7

    const/4 v5, 0x0

    aput v5, v20, v4

    .line 44
    .local v20, texture:[I
    const/16 v4, 0xc

    move v0, v4

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v18, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v18, v4

    const/4 v4, 0x2

    sget v5, Lcom/asus/reader/book/CenterBar;->ONE:I

    aput v5, v18, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput v5, v18, v4

    const/4 v4, 0x4

    const/4 v5, 0x0

    aput v5, v18, v4

    const/4 v4, 0x5

    sget v5, Lcom/asus/reader/book/CenterBar;->ONE:I

    aput v5, v18, v4

    const/4 v4, 0x6

    const/4 v5, 0x0

    aput v5, v18, v4

    const/4 v4, 0x7

    const/4 v5, 0x0

    aput v5, v18, v4

    const/16 v4, 0x8

    sget v5, Lcom/asus/reader/book/CenterBar;->ONE:I

    aput v5, v18, v4

    const/16 v4, 0x9

    const/4 v5, 0x0

    aput v5, v18, v4

    const/16 v4, 0xa

    const/4 v5, 0x0

    aput v5, v18, v4

    const/16 v4, 0xb

    sget v5, Lcom/asus/reader/book/CenterBar;->ONE:I

    aput v5, v18, v4

    .line 50
    .local v18, normal:[I
    move-object/from16 v0, v23

    array-length v0, v0

    move v4, v0

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v22

    .line 51
    .local v22, vbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 52
    invoke-virtual/range {v22 .. v22}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/book/CenterBar;->mVertexBuffer:Ljava/nio/IntBuffer;

    .line 53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/CenterBar;->mVertexBuffer:Ljava/nio/IntBuffer;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v23

    array-length v0, v0

    move v6, v0

    move-object v0, v4

    move-object/from16 v1, v23

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/CenterBar;->mVertexBuffer:Ljava/nio/IntBuffer;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 56
    move-object/from16 v0, v20

    array-length v0, v0

    move v4, v0

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v19

    .line 57
    .local v19, tbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 58
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/book/CenterBar;->mTextureCoordBuffer:Ljava/nio/IntBuffer;

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/CenterBar;->mTextureCoordBuffer:Ljava/nio/IntBuffer;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/CenterBar;->mTextureCoordBuffer:Ljava/nio/IntBuffer;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 62
    move-object/from16 v0, v16

    array-length v0, v0

    move v4, v0

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/book/CenterBar;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/CenterBar;->mIndexBuffer:Ljava/nio/ByteBuffer;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/CenterBar;->mIndexBuffer:Ljava/nio/ByteBuffer;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    move-object/from16 v0, v18

    array-length v0, v0

    move v4, v0

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v17

    .line 67
    .local v17, nbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 68
    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/book/CenterBar;->mNormalBuffer:Ljava/nio/IntBuffer;

    .line 69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/CenterBar;->mNormalBuffer:Ljava/nio/IntBuffer;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/CenterBar;->mNormalBuffer:Ljava/nio/IntBuffer;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 73
    const/16 v4, 0x30

    move v0, v4

    new-array v0, v0, [I

    move-object/from16 v21, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v21, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v21, v4

    const/4 v4, 0x2

    const/16 v5, -0x1e

    aput v5, v21, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput v5, v21, v4

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->H:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->ch:I

    move v6, v0

    div-int/2addr v5, v6

    sget v6, Lcom/asus/reader/book/CenterBar;->ONE:I

    div-int/lit16 v6, v6, 0x2ee

    add-int/2addr v5, v6

    aput v5, v21, v4

    const/4 v4, 0x5

    const/16 v5, -0x1e

    aput v5, v21, v4

    const/4 v15, 0x6

    const/4 v5, 0x1

    const/4 v6, 0x3

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->Tmin:I

    move v4, v0

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    int-to-double v11, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->Tmin:I

    move v4, v0

    int-to-double v13, v4

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v14}, Lcom/asus/reader/book/CenterBar;->bezier(IIDDDD)I

    move-result v4

    sget v5, Lcom/asus/reader/book/CenterBar;->ONE:I

    mul-int/lit8 v5, v5, 0x2

    div-int/lit16 v5, v5, 0x280

    add-int/2addr v4, v5

    aput v4, v21, v15

    const/4 v15, 0x7

    const/4 v5, 0x1

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->H:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->ch:I

    move v7, v0

    div-int/2addr v4, v7

    int-to-double v7, v4

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v14}, Lcom/asus/reader/book/CenterBar;->bezier(IIDDDD)I

    move-result v4

    aput v4, v21, v15

    const/16 v4, 0x8

    const/16 v5, -0x1e

    aput v5, v21, v4

    const/16 v15, 0x9

    const/4 v5, 0x2

    const/4 v6, 0x3

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->Tmin:I

    move v4, v0

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    int-to-double v11, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->Tmin:I

    move v4, v0

    int-to-double v13, v4

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v14}, Lcom/asus/reader/book/CenterBar;->bezier(IIDDDD)I

    move-result v4

    sget v5, Lcom/asus/reader/book/CenterBar;->ONE:I

    mul-int/lit8 v5, v5, 0x8

    div-int/lit16 v5, v5, 0x280

    add-int/2addr v4, v5

    aput v4, v21, v15

    const/16 v15, 0xa

    const/4 v5, 0x2

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->H:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->ch:I

    move v7, v0

    div-int/2addr v4, v7

    int-to-double v7, v4

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v14}, Lcom/asus/reader/book/CenterBar;->bezier(IIDDDD)I

    move-result v4

    aput v4, v21, v15

    const/16 v4, 0xb

    const/16 v5, -0x1e

    aput v5, v21, v4

    const/16 v4, 0xc

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->Tmin:I

    move v5, v0

    aput v5, v21, v4

    const/16 v4, 0xd

    const/4 v5, 0x0

    aput v5, v21, v4

    const/16 v4, 0xe

    const/16 v5, -0x1e

    aput v5, v21, v4

    const/16 v15, 0xf

    const/4 v5, 0x1

    const/4 v6, 0x3

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->Tmin:I

    move v4, v0

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    int-to-double v11, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->Tmin:I

    move v4, v0

    int-to-double v13, v4

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v14}, Lcom/asus/reader/book/CenterBar;->bezier(IIDDDD)I

    move-result v4

    neg-int v4, v4

    sget v5, Lcom/asus/reader/book/CenterBar;->ONE:I

    mul-int/lit8 v5, v5, 0x2

    div-int/lit16 v5, v5, 0x280

    sub-int/2addr v4, v5

    aput v4, v21, v15

    const/16 v15, 0x10

    const/4 v5, 0x1

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->H:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->ch:I

    move v7, v0

    div-int/2addr v4, v7

    int-to-double v7, v4

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v14}, Lcom/asus/reader/book/CenterBar;->bezier(IIDDDD)I

    move-result v4

    aput v4, v21, v15

    const/16 v4, 0x11

    const/16 v5, -0x1e

    aput v5, v21, v4

    const/16 v15, 0x12

    const/4 v5, 0x2

    const/4 v6, 0x3

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->Tmin:I

    move v4, v0

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    int-to-double v11, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->Tmin:I

    move v4, v0

    int-to-double v13, v4

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v14}, Lcom/asus/reader/book/CenterBar;->bezier(IIDDDD)I

    move-result v4

    neg-int v4, v4

    sget v5, Lcom/asus/reader/book/CenterBar;->ONE:I

    mul-int/lit8 v5, v5, 0x8

    div-int/lit16 v5, v5, 0x280

    sub-int/2addr v4, v5

    aput v4, v21, v15

    const/16 v15, 0x13

    const/4 v5, 0x2

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->H:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->ch:I

    move v7, v0

    div-int/2addr v4, v7

    int-to-double v7, v4

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v14}, Lcom/asus/reader/book/CenterBar;->bezier(IIDDDD)I

    move-result v4

    aput v4, v21, v15

    const/16 v4, 0x14

    const/16 v5, -0x1e

    aput v5, v21, v4

    const/16 v4, 0x15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->Tmin:I

    move v5, v0

    neg-int v5, v5

    aput v5, v21, v4

    const/16 v4, 0x16

    const/4 v5, 0x0

    aput v5, v21, v4

    const/16 v4, 0x17

    const/16 v5, -0x1e

    aput v5, v21, v4

    const/16 v4, 0x18

    const/4 v5, 0x0

    aput v5, v21, v4

    const/16 v4, 0x19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->H:I

    move v5, v0

    aput v5, v21, v4

    const/16 v4, 0x1a

    const/16 v5, -0x1e

    aput v5, v21, v4

    const/16 v4, 0x1b

    const/4 v5, 0x0

    aput v5, v21, v4

    const/16 v4, 0x1c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->H:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->ch:I

    move v7, v0

    div-int/2addr v6, v7

    sub-int/2addr v5, v6

    sget v6, Lcom/asus/reader/book/CenterBar;->ONE:I

    div-int/lit16 v6, v6, 0x2ee

    sub-int/2addr v5, v6

    aput v5, v21, v4

    const/16 v4, 0x1d

    const/16 v5, -0x1e

    aput v5, v21, v4

    const/16 v15, 0x1e

    const/4 v5, 0x1

    const/4 v6, 0x3

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->Tmin:I

    move v4, v0

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    int-to-double v11, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->Tmin:I

    move v4, v0

    int-to-double v13, v4

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v14}, Lcom/asus/reader/book/CenterBar;->bezier(IIDDDD)I

    move-result v4

    sget v5, Lcom/asus/reader/book/CenterBar;->ONE:I

    mul-int/lit8 v5, v5, 0x2

    div-int/lit16 v5, v5, 0x280

    add-int/2addr v4, v5

    aput v4, v21, v15

    const/16 v15, 0x1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->H:I

    move/from16 v16, v0

    .end local v16           #indices:[B
    const/4 v5, 0x1

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->H:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->ch:I

    move v7, v0

    div-int/2addr v4, v7

    int-to-double v7, v4

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v14}, Lcom/asus/reader/book/CenterBar;->bezier(IIDDDD)I

    move-result v4

    sub-int v4, v16, v4

    aput v4, v21, v15

    const/16 v4, 0x20

    const/16 v5, -0x1e

    aput v5, v21, v4

    const/16 v15, 0x21

    const/4 v5, 0x2

    const/4 v6, 0x3

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->Tmin:I

    move v4, v0

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    int-to-double v11, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->Tmin:I

    move v4, v0

    int-to-double v13, v4

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v14}, Lcom/asus/reader/book/CenterBar;->bezier(IIDDDD)I

    move-result v4

    sget v5, Lcom/asus/reader/book/CenterBar;->ONE:I

    mul-int/lit8 v5, v5, 0x8

    div-int/lit16 v5, v5, 0x280

    add-int/2addr v4, v5

    aput v4, v21, v15

    const/16 v15, 0x22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->H:I

    move/from16 v16, v0

    const/4 v5, 0x2

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->H:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->ch:I

    move v7, v0

    div-int/2addr v4, v7

    int-to-double v7, v4

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v14}, Lcom/asus/reader/book/CenterBar;->bezier(IIDDDD)I

    move-result v4

    sub-int v4, v16, v4

    aput v4, v21, v15

    const/16 v4, 0x23

    const/16 v5, -0x1e

    aput v5, v21, v4

    const/16 v4, 0x24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->Tmin:I

    move v5, v0

    aput v5, v21, v4

    const/16 v4, 0x25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->H:I

    move v5, v0

    aput v5, v21, v4

    const/16 v4, 0x26

    const/16 v5, -0x1e

    aput v5, v21, v4

    const/16 v15, 0x27

    const/4 v5, 0x1

    const/4 v6, 0x3

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->Tmin:I

    move v4, v0

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    int-to-double v11, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->Tmin:I

    move v4, v0

    int-to-double v13, v4

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v14}, Lcom/asus/reader/book/CenterBar;->bezier(IIDDDD)I

    move-result v4

    neg-int v4, v4

    sget v5, Lcom/asus/reader/book/CenterBar;->ONE:I

    mul-int/lit8 v5, v5, 0x2

    div-int/lit16 v5, v5, 0x280

    sub-int/2addr v4, v5

    aput v4, v21, v15

    const/16 v15, 0x28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->H:I

    move/from16 v16, v0

    const/4 v5, 0x1

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->H:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->ch:I

    move v7, v0

    div-int/2addr v4, v7

    int-to-double v7, v4

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v14}, Lcom/asus/reader/book/CenterBar;->bezier(IIDDDD)I

    move-result v4

    sub-int v4, v16, v4

    aput v4, v21, v15

    const/16 v4, 0x29

    const/16 v5, -0x1e

    aput v5, v21, v4

    const/16 v15, 0x2a

    const/4 v5, 0x2

    const/4 v6, 0x3

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->Tmin:I

    move v4, v0

    mul-int/lit8 v4, v4, 0x2

    div-int/lit8 v4, v4, 0x3

    int-to-double v11, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->Tmin:I

    move v4, v0

    int-to-double v13, v4

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v14}, Lcom/asus/reader/book/CenterBar;->bezier(IIDDDD)I

    move-result v4

    neg-int v4, v4

    sget v5, Lcom/asus/reader/book/CenterBar;->ONE:I

    mul-int/lit8 v5, v5, 0x8

    div-int/lit16 v5, v5, 0x280

    sub-int/2addr v4, v5

    aput v4, v21, v15

    const/16 v15, 0x2b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->H:I

    move/from16 v16, v0

    const/4 v5, 0x2

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->H:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->ch:I

    move v7, v0

    div-int/2addr v4, v7

    int-to-double v7, v4

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v14}, Lcom/asus/reader/book/CenterBar;->bezier(IIDDDD)I

    move-result v4

    sub-int v4, v16, v4

    aput v4, v21, v15

    const/16 v4, 0x2c

    const/16 v5, -0x1e

    aput v5, v21, v4

    const/16 v4, 0x2d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->Tmin:I

    move v5, v0

    neg-int v5, v5

    aput v5, v21, v4

    const/16 v4, 0x2e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/CenterBar;->H:I

    move v5, v0

    aput v5, v21, v4

    const/16 v4, 0x2f

    const/16 v5, -0x1e

    aput v5, v21, v4

    .line 91
    .local v21, v:[I
    move-object/from16 v0, v21

    array-length v0, v0

    move v4, v0

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/book/CenterBar;->mV:Ljava/nio/IntBuffer;

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/CenterBar;->mV:Ljava/nio/IntBuffer;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/CenterBar;->mV:Ljava/nio/IntBuffer;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 94
    const/16 v4, 0x24

    new-array v15, v4, [B

    fill-array-data v15, :array_1

    .line 108
    .local v15, i:[B
    array-length v4, v15

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/asus/reader/book/CenterBar;->mI:Ljava/nio/ByteBuffer;

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/CenterBar;->mI:Ljava/nio/ByteBuffer;

    move-object v4, v0

    invoke-virtual {v4, v15}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/CenterBar;->mI:Ljava/nio/ByteBuffer;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 111
    return-void

    .line 29
    .end local v15           #i:[B
    .end local v17           #nbb:Ljava/nio/ByteBuffer;
    .end local v18           #normal:[I
    .end local v19           #tbb:Ljava/nio/ByteBuffer;
    .end local v20           #texture:[I
    .end local v21           #v:[I
    .end local v22           #vbb:Ljava/nio/ByteBuffer;
    .end local v23           #vertices:[I
    :cond_0
    move/from16 v0, p2

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move v5, v0

    div-float/2addr v4, v5

    float-to-double v4, v4

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/asus/reader/book/CenterBar;->HWratio:D

    goto/16 :goto_0

    .line 37
    :array_0
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x3t
    .end array-data

    .line 94
    :array_1
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x0t
        0x2t
        0x3t
        0x0t
        0x3t
        0x4t
        0x0t
        0x5t
        0x1t
        0x0t
        0x6t
        0x5t
        0x0t
        0x7t
        0x6t
        0x8t
        0xat
        0x9t
        0x8t
        0xbt
        0xat
        0x8t
        0xct
        0xbt
        0x8t
        0x9t
        0xdt
        0x8t
        0xdt
        0xet
        0x8t
        0xet
        0xft
    .end array-data
.end method
