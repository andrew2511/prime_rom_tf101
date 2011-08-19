.class public final LG/Q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field a:I

.field b:I

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LG/Q;->a:I

    iput p2, p0, LG/Q;->b:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LG/Q;->a:I

    iput p2, p0, LG/Q;->b:I

    iput p3, p0, LG/Q;->c:I

    return-void
.end method

.method public constructor <init>(LG/Q;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, LG/Q;->a:I

    iput v0, p0, LG/Q;->a:I

    iget v0, p1, LG/Q;->b:I

    iput v0, p0, LG/Q;->b:I

    iget v0, p1, LG/Q;->c:I

    iput v0, p0, LG/Q;->c:I

    return-void
.end method

.method public static a(D)D
    .locals 4

    const-wide v0, 0x41731680b1202bfeL

    const-wide v2, 0x3f91df46a2529d39L

    mul-double/2addr v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x41c0

    div-double v0, v2, v0

    return-wide v0
.end method

.method public static a(LG/Q;LG/Q;)D
    .locals 5

    invoke-virtual {p1, p0}, LG/Q;->f(LG/Q;)LG/Q;

    move-result-object v0

    iget v1, v0, LG/Q;->a:I

    int-to-double v1, v1

    iget v0, v0, LG/Q;->b:I

    int-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x404ca5dc1a63c1f8L

    mul-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    const-wide v2, 0x4076800000000000L

    add-double/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public static a(LG/Q;LG/Q;LG/Q;LG/Q;)F
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, LG/Q;->a(LG/Q;LG/Q;LG/Q;ZLG/Q;)V

    invoke-virtual {p2, p3}, LG/Q;->c(LG/Q;)F

    move-result v0

    return v0
.end method

.method public static a(DD)LG/Q;
    .locals 1

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, LG/Q;->b(DD)V

    return-object v0
.end method

.method public static a(FF)LG/Q;
    .locals 7

    const v0, 0x40490fdb

    mul-float/2addr v0, p0

    const/high16 v1, 0x4334

    div-float/2addr v0, v1

    new-instance v1, LG/Q;

    float-to-double v2, p1

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    float-to-double v3, p1

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-int v0, v3

    invoke-direct {v1, v2, v0}, LG/Q;-><init>(II)V

    return-object v1
.end method

.method public static a(II)LG/Q;
    .locals 6

    const-wide v4, 0x3e7ad7f29abcaf48L

    int-to-double v0, p0

    mul-double/2addr v0, v4

    int-to-double v2, p1

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, LG/Q;->a(DD)LG/Q;

    move-result-object v0

    return-object v0
.end method

.method public static a(LG/Q;)LG/Q;
    .locals 4

    new-instance v0, LG/Q;

    iget v1, p0, LG/Q;->a:I

    iget v2, p0, LG/Q;->b:I

    iget v3, p0, LG/Q;->c:I

    invoke-direct {v0, v1, v2, v3}, LG/Q;-><init>(III)V

    return-object v0
.end method

.method public static a(LG/y;)LG/Q;
    .locals 2

    invoke-virtual {p0}, LG/y;->a()I

    move-result v0

    invoke-virtual {p0}, LG/y;->b()I

    move-result v1

    invoke-static {v0, v1}, LG/Q;->b(II)LG/Q;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;LG/w;)LG/Q;
    .locals 3

    iget v0, p1, LG/w;->c:I

    if-gez v0, :cond_0

    iget v0, p1, LG/w;->c:I

    neg-int v0, v0

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v1

    shr-int/2addr v1, v0

    iget v2, p1, LG/w;->a:I

    add-int/2addr v1, v2

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v2

    shr-int v0, v2, v0

    iget v2, p1, LG/w;->b:I

    add-int/2addr v0, v2

    new-instance v2, LG/Q;

    invoke-direct {v2, v1, v0}, LG/Q;-><init>(II)V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, LG/w;->c:I

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v1

    shl-int/2addr v1, v0

    iget v2, p1, LG/w;->a:I

    add-int/2addr v1, v2

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v2

    shl-int v0, v2, v0

    iget v2, p1, LG/w;->b:I

    add-int/2addr v0, v2

    new-instance v2, LG/Q;

    invoke-direct {v2, v1, v0}, LG/Q;-><init>(II)V

    move-object v0, v2

    goto :goto_0
.end method

.method public static a(LG/Q;FLG/Q;)V
    .locals 1

    iget v0, p0, LG/Q;->a:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p2, LG/Q;->a:I

    iget v0, p0, LG/Q;->b:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p2, LG/Q;->b:I

    iget v0, p0, LG/Q;->c:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p2, LG/Q;->c:I

    return-void
.end method

.method public static a(LG/Q;LG/Q;FLG/Q;)V
    .locals 2

    iget v0, p1, LG/Q;->a:I

    iget v1, p0, LG/Q;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iget v1, p0, LG/Q;->a:I

    add-int/2addr v0, v1

    iput v0, p3, LG/Q;->a:I

    iget v0, p1, LG/Q;->b:I

    iget v1, p0, LG/Q;->b:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iget v1, p0, LG/Q;->b:I

    add-int/2addr v0, v1

    iput v0, p3, LG/Q;->b:I

    iget v0, p1, LG/Q;->c:I

    iget v1, p0, LG/Q;->c:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iget v1, p0, LG/Q;->c:I

    add-int/2addr v0, v1

    iput v0, p3, LG/Q;->c:I

    return-void
.end method

.method public static a(LG/Q;LG/Q;LG/Q;)V
    .locals 2

    iget v0, p0, LG/Q;->a:I

    iget v1, p1, LG/Q;->a:I

    add-int/2addr v0, v1

    iput v0, p2, LG/Q;->a:I

    iget v0, p0, LG/Q;->b:I

    iget v1, p1, LG/Q;->b:I

    add-int/2addr v0, v1

    iput v0, p2, LG/Q;->b:I

    iget v0, p0, LG/Q;->c:I

    iget v1, p1, LG/Q;->c:I

    add-int/2addr v0, v1

    iput v0, p2, LG/Q;->c:I

    return-void
.end method

.method public static a(LG/Q;LG/Q;LG/Q;ZLG/Q;)V
    .locals 2

    invoke-static {p0, p1, p2}, LG/Q;->d(LG/Q;LG/Q;LG/Q;)F

    move-result v0

    if-eqz p3, :cond_2

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    invoke-virtual {p4, p0}, LG/Q;->b(LG/Q;)V

    :goto_0
    return-void

    :cond_0
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    invoke-virtual {p4, p1}, LG/Q;->b(LG/Q;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, v0, p4}, LG/Q;->a(LG/Q;LG/Q;FLG/Q;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, v0, p4}, LG/Q;->a(LG/Q;LG/Q;FLG/Q;)V

    goto :goto_0
.end method

.method static a(Ljava/io/DataInput;LG/w;[II)V
    .locals 6

    const/4 v5, 0x0

    mul-int/lit8 v0, p3, 0x3

    iget v1, p1, LG/w;->c:I

    if-gez v1, :cond_0

    iget v1, p1, LG/w;->c:I

    neg-int v1, v1

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shr-int/2addr v3, v1

    iget v4, p1, LG/w;->a:I

    add-int/2addr v3, v4

    aput v3, p2, v0

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shr-int v1, v3, v1

    iget v3, p1, LG/w;->b:I

    add-int/2addr v1, v3

    aput v1, p2, v2

    add-int/lit8 v1, v0, 0x1

    aput v5, p2, v0

    :goto_0
    return-void

    :cond_0
    iget v1, p1, LG/w;->c:I

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shl-int/2addr v3, v1

    iget v4, p1, LG/w;->a:I

    add-int/2addr v3, v4

    aput v3, p2, v0

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shl-int v1, v3, v1

    iget v3, p1, LG/w;->b:I

    add-int/2addr v1, v3

    aput v1, p2, v2

    add-int/lit8 v1, v0, 0x1

    aput v5, p2, v0

    goto :goto_0
.end method

.method static a([IILG/w;Ljava/io/DataOutput;)V
    .locals 4

    mul-int/lit8 v0, p1, 0x3

    iget v1, p2, LG/w;->c:I

    if-gez v1, :cond_0

    iget v1, p2, LG/w;->c:I

    neg-int v1, v1

    aget v2, p0, v0

    iget v3, p2, LG/w;->a:I

    sub-int/2addr v2, v3

    shl-int/2addr v2, v1

    invoke-interface {p3, v2}, Ljava/io/DataOutput;->writeShort(I)V

    add-int/lit8 v0, v0, 0x1

    aget v0, p0, v0

    iget v2, p2, LG/w;->b:I

    sub-int/2addr v0, v2

    shl-int/2addr v0, v1

    invoke-interface {p3, v0}, Ljava/io/DataOutput;->writeShort(I)V

    :goto_0
    return-void

    :cond_0
    iget v1, p2, LG/w;->c:I

    aget v2, p0, v0

    iget v3, p2, LG/w;->a:I

    sub-int/2addr v2, v3

    shr-int/2addr v2, v1

    invoke-interface {p3, v2}, Ljava/io/DataOutput;->writeShort(I)V

    add-int/lit8 v0, v0, 0x1

    aget v0, p0, v0

    iget v2, p2, LG/w;->b:I

    sub-int/2addr v0, v2

    shr-int/2addr v0, v1

    invoke-interface {p3, v0}, Ljava/io/DataOutput;->writeShort(I)V

    goto :goto_0
.end method

.method public static b(LG/Q;LG/Q;)F
    .locals 4

    iget v0, p0, LG/Q;->a:I

    int-to-float v0, v0

    iget v1, p1, LG/Q;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, LG/Q;->b:I

    int-to-float v1, v1

    iget v2, p1, LG/Q;->b:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, LG/Q;->c:I

    int-to-float v2, v2

    iget v3, p1, LG/Q;->c:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method public static b(LG/Q;LG/Q;LG/Q;LG/Q;)F
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, LG/Q;->a(LG/Q;LG/Q;LG/Q;ZLG/Q;)V

    invoke-virtual {p2, p3}, LG/Q;->d(LG/Q;)F

    move-result v0

    return v0
.end method

.method public static b(II)LG/Q;
    .locals 6

    const-wide v4, 0x3eb0c6f7a0b5ed8dL

    int-to-double v0, p0

    mul-double/2addr v0, v4

    int-to-double v2, p1

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, LG/Q;->a(DD)LG/Q;

    move-result-object v0

    return-object v0
.end method

.method public static b(LG/Q;FLG/Q;)V
    .locals 2

    invoke-virtual {p0}, LG/Q;->i()F

    move-result v0

    iget v1, p0, LG/Q;->a:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p2, LG/Q;->a:I

    iget v1, p0, LG/Q;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p2, LG/Q;->b:I

    iget v1, p0, LG/Q;->c:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float v0, v1, v0

    float-to-int v0, v0

    iput v0, p2, LG/Q;->c:I

    return-void
.end method

.method public static b(LG/Q;LG/Q;LG/Q;)V
    .locals 2

    iget v0, p0, LG/Q;->a:I

    iget v1, p1, LG/Q;->a:I

    sub-int/2addr v0, v1

    iput v0, p2, LG/Q;->a:I

    iget v0, p0, LG/Q;->b:I

    iget v1, p1, LG/Q;->b:I

    sub-int/2addr v0, v1

    iput v0, p2, LG/Q;->b:I

    iget v0, p0, LG/Q;->c:I

    iget v1, p1, LG/Q;->c:I

    sub-int/2addr v0, v1

    iput v0, p2, LG/Q;->c:I

    return-void
.end method

.method static b(Ljava/io/DataInput;LG/w;[II)V
    .locals 5

    mul-int/lit8 v0, p3, 0x3

    iget v1, p1, LG/w;->c:I

    if-gez v1, :cond_0

    iget v1, p1, LG/w;->c:I

    neg-int v1, v1

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shr-int/2addr v3, v1

    iget v4, p1, LG/w;->a:I

    add-int/2addr v3, v4

    aput v3, p2, v0

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shr-int/2addr v3, v1

    iget v4, p1, LG/w;->b:I

    add-int/2addr v3, v4

    aput v3, p2, v2

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    shr-int v1, v2, v1

    aput v1, p2, v0

    :goto_0
    return-void

    :cond_0
    iget v1, p1, LG/w;->c:I

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shl-int/2addr v3, v1

    iget v4, p1, LG/w;->a:I

    add-int/2addr v3, v4

    aput v3, p2, v0

    add-int/lit8 v0, v2, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readShort()S

    move-result v3

    shl-int/2addr v3, v1

    iget v4, p1, LG/w;->b:I

    add-int/2addr v3, v4

    aput v3, p2, v2

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    shl-int v1, v2, v1

    aput v1, p2, v0

    goto :goto_0
.end method

.method static b([IILG/w;Ljava/io/DataOutput;)V
    .locals 4

    mul-int/lit8 v0, p1, 0x3

    iget v1, p2, LG/w;->c:I

    if-gez v1, :cond_0

    iget v1, p2, LG/w;->c:I

    neg-int v1, v1

    aget v2, p0, v0

    iget v3, p2, LG/w;->a:I

    sub-int/2addr v2, v3

    shl-int/2addr v2, v1

    invoke-interface {p3, v2}, Ljava/io/DataOutput;->writeShort(I)V

    add-int/lit8 v2, v0, 0x1

    aget v2, p0, v2

    iget v3, p2, LG/w;->b:I

    sub-int/2addr v2, v3

    shl-int/2addr v2, v1

    invoke-interface {p3, v2}, Ljava/io/DataOutput;->writeShort(I)V

    add-int/lit8 v0, v0, 0x2

    aget v0, p0, v0

    shl-int/2addr v0, v1

    invoke-interface {p3, v0}, Ljava/io/DataOutput;->writeInt(I)V

    :goto_0
    return-void

    :cond_0
    iget v1, p2, LG/w;->c:I

    aget v2, p0, v0

    iget v3, p2, LG/w;->a:I

    sub-int/2addr v2, v3

    shr-int/2addr v2, v1

    invoke-interface {p3, v2}, Ljava/io/DataOutput;->writeShort(I)V

    add-int/lit8 v2, v0, 0x1

    aget v2, p0, v2

    iget v3, p2, LG/w;->b:I

    sub-int/2addr v2, v3

    shr-int/2addr v2, v1

    invoke-interface {p3, v2}, Ljava/io/DataOutput;->writeShort(I)V

    add-int/lit8 v0, v0, 0x2

    aget v0, p0, v0

    shr-int/2addr v0, v1

    invoke-interface {p3, v0}, Ljava/io/DataOutput;->writeInt(I)V

    goto :goto_0
.end method

.method public static c(II)LG/Q;
    .locals 6

    const-wide v4, 0x3ee4f8b588e368f1L

    int-to-double v0, p0

    mul-double/2addr v0, v4

    int-to-double v2, p1

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, LG/Q;->a(DD)LG/Q;

    move-result-object v0

    return-object v0
.end method

.method public static c(LG/Q;LG/Q;LG/Q;)V
    .locals 16

    move-object/from16 v0, p0

    iget v0, v0, LG/Q;->a:I

    move v2, v0

    int-to-long v2, v2

    move-object/from16 v0, p0

    iget v0, v0, LG/Q;->b:I

    move v4, v0

    int-to-long v4, v4

    move-object/from16 v0, p0

    iget v0, v0, LG/Q;->c:I

    move/from16 p0, v0

    move/from16 v0, p0

    int-to-long v0, v0

    move-wide v6, v0

    move-object/from16 v0, p1

    iget v0, v0, LG/Q;->a:I

    move/from16 p0, v0

    move/from16 v0, p0

    int-to-long v0, v0

    move-wide v8, v0

    move-object/from16 v0, p1

    iget v0, v0, LG/Q;->b:I

    move/from16 p0, v0

    move/from16 v0, p0

    int-to-long v0, v0

    move-wide v10, v0

    move-object/from16 v0, p1

    iget v0, v0, LG/Q;->c:I

    move/from16 p0, v0

    move/from16 v0, p0

    int-to-long v0, v0

    move-wide/from16 p0, v0

    mul-long v12, v4, p0

    mul-long v14, v6, v10

    sub-long/2addr v12, v14

    long-to-int v12, v12

    move v0, v12

    move-object/from16 v1, p2

    iput v0, v1, LG/Q;->a:I

    mul-long/2addr v6, v8

    mul-long p0, p0, v2

    sub-long p0, v6, p0

    move-wide/from16 v0, p0

    long-to-int v0, v0

    move/from16 p0, v0

    move/from16 v0, p0

    move-object/from16 v1, p2

    iput v0, v1, LG/Q;->b:I

    mul-long p0, v2, v10

    mul-long v2, v4, v8

    sub-long p0, p0, v2

    move-wide/from16 v0, p0

    long-to-int v0, v0

    move/from16 p0, v0

    move/from16 v0, p0

    move-object/from16 v1, p2

    iput v0, v1, LG/Q;->c:I

    return-void
.end method

.method public static d(LG/Q;LG/Q;LG/Q;)F
    .locals 7

    iget v0, p1, LG/Q;->a:I

    iget v1, p0, LG/Q;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p1, LG/Q;->b:I

    iget v2, p0, LG/Q;->b:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p1, LG/Q;->c:I

    iget v3, p0, LG/Q;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p2, LG/Q;->a:I

    iget v4, p0, LG/Q;->a:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p2, LG/Q;->b:I

    iget v5, p0, LG/Q;->b:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p2, LG/Q;->c:I

    iget v6, p0, LG/Q;->c:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v3, v0

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v5

    add-float/2addr v3, v4

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float v1, v2, v2

    add-float/2addr v0, v1

    div-float v0, v3, v0

    return v0
.end method

.method public static f(II)Z
    .locals 2

    const/high16 v1, 0x2000

    const/high16 v0, -0x2000

    if-lt p0, v0, :cond_0

    if-ge p0, v1, :cond_0

    if-lt p1, v0, :cond_0

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 4

    invoke-virtual {p0}, LG/Q;->b()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public a(LG/Q;F)LG/Q;
    .locals 1

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    invoke-static {p0, p1, p2, v0}, LG/Q;->a(LG/Q;LG/Q;FLG/Q;)V

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, LG/Q;->a:I

    return-void
.end method

.method public a(III)V
    .locals 0

    iput p1, p0, LG/Q;->a:I

    iput p2, p0, LG/Q;->b:I

    iput p3, p0, LG/Q;->c:I

    return-void
.end method

.method public a(I[II)V
    .locals 6

    const/16 v5, 0x10

    iget v0, p0, LG/Q;->a:I

    int-to-long v0, v0

    shl-long/2addr v0, v5

    int-to-long v2, p1

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, LG/Q;->b:I

    int-to-long v1, v1

    shl-long/2addr v1, v5

    int-to-long v3, p1

    div-long/2addr v1, v3

    long-to-int v1, v1

    iget v2, p0, LG/Q;->c:I

    int-to-long v2, v2

    shl-long/2addr v2, v5

    int-to-long v4, p1

    div-long/2addr v2, v4

    long-to-int v2, v2

    aput v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    aput v2, p2, v0

    return-void
.end method

.method public a(LG/w;Ljava/io/DataOutput;)V
    .locals 3

    iget v0, p1, LG/w;->c:I

    if-gez v0, :cond_0

    iget v0, p1, LG/w;->c:I

    neg-int v0, v0

    iget v1, p0, LG/Q;->a:I

    iget v2, p1, LG/w;->a:I

    sub-int/2addr v1, v2

    shl-int/2addr v1, v0

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeShort(I)V

    iget v1, p0, LG/Q;->b:I

    iget v2, p1, LG/w;->b:I

    sub-int/2addr v1, v2

    shl-int v0, v1, v0

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeShort(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, LG/w;->c:I

    iget v1, p0, LG/Q;->a:I

    iget v2, p1, LG/w;->a:I

    sub-int/2addr v1, v2

    shr-int/2addr v1, v0

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeShort(I)V

    iget v1, p0, LG/Q;->b:I

    iget v2, p1, LG/w;->b:I

    sub-int/2addr v1, v2

    shr-int v0, v1, v0

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeShort(I)V

    goto :goto_0
.end method

.method public a([II)V
    .locals 3

    mul-int/lit8 v0, p2, 0x3

    iget v1, p0, LG/Q;->a:I

    aput v1, p1, v0

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, LG/Q;->b:I

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, LG/Q;->c:I

    aput v1, p1, v0

    return-void
.end method

.method public b()D
    .locals 6

    iget v0, p0, LG/Q;->b:I

    int-to-double v0, v0

    const-wide v2, 0x3e3921fb54442d18L

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    const-wide v4, 0x3fe921fb54442d18L

    sub-double/2addr v0, v4

    mul-double/2addr v0, v2

    const-wide v2, 0x404ca5dc1a63c1f8L

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public b(DD)V
    .locals 8

    const-wide v6, 0x41a45f306dc9c883L

    const-wide v2, 0x3f91df46a2529d39L

    mul-double v0, p1, v2

    mul-double/2addr v2, p3

    const-wide/high16 v4, 0x3fe0

    mul-double/2addr v0, v4

    const-wide v4, 0x3fe921fb54442d18L

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    mul-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v2, v0}, LG/Q;->d(II)V

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, LG/Q;->b:I

    return-void
.end method

.method public b(LG/Q;)V
    .locals 1

    iget v0, p1, LG/Q;->a:I

    iput v0, p0, LG/Q;->a:I

    iget v0, p1, LG/Q;->b:I

    iput v0, p0, LG/Q;->b:I

    iget v0, p1, LG/Q;->c:I

    iput v0, p0, LG/Q;->c:I

    return-void
.end method

.method public c(LG/Q;)F
    .locals 4

    iget v0, p0, LG/Q;->a:I

    iget v1, p1, LG/Q;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, LG/Q;->b:I

    iget v2, p1, LG/Q;->b:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, LG/Q;->c:I

    iget v3, p1, LG/Q;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public c()I
    .locals 4

    invoke-virtual {p0}, LG/Q;->d()D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, LG/Q;->c:I

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, LG/Q;

    invoke-virtual {p0, p1}, LG/Q;->k(LG/Q;)I

    move-result v0

    return v0
.end method

.method public d()D
    .locals 6

    const-wide v4, 0x4076800000000000L

    iget v0, p0, LG/Q;->a:I

    int-to-double v0, v0

    const-wide v2, 0x3e3921fb54442d18L

    mul-double/2addr v0, v2

    const-wide v2, 0x404ca5dc1a63c1f8L

    mul-double/2addr v0, v2

    :goto_0
    const-wide v2, 0x4066800000000000L

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    sub-double/2addr v0, v4

    goto :goto_0

    :cond_0
    :goto_1
    const-wide v2, -0x3f99800000000000L

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    add-double/2addr v0, v4

    goto :goto_1

    :cond_1
    return-wide v0
.end method

.method public d(LG/Q;)F
    .locals 4

    iget v0, p0, LG/Q;->a:I

    iget v1, p1, LG/Q;->a:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, LG/Q;->b:I

    iget v2, p1, LG/Q;->b:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, LG/Q;->c:I

    iget v3, p1, LG/Q;->c:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method public d(II)V
    .locals 1

    iput p1, p0, LG/Q;->a:I

    iput p2, p0, LG/Q;->b:I

    const/4 v0, 0x0

    iput v0, p0, LG/Q;->c:I

    return-void
.end method

.method public e()D
    .locals 2

    invoke-virtual {p0}, LG/Q;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, LG/Q;->a(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public e(LG/Q;)LG/Q;
    .locals 5

    new-instance v0, LG/Q;

    iget v1, p0, LG/Q;->a:I

    iget v2, p1, LG/Q;->a:I

    add-int/2addr v1, v2

    iget v2, p0, LG/Q;->b:I

    iget v3, p1, LG/Q;->b:I

    add-int/2addr v2, v3

    iget v3, p0, LG/Q;->c:I

    iget v4, p1, LG/Q;->c:I

    add-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, LG/Q;-><init>(III)V

    return-object v0
.end method

.method public e(II)V
    .locals 6

    const-wide v4, 0x3eb0c6f7a0b5ed8dL

    int-to-double v0, p1

    mul-double/2addr v0, v4

    int-to-double v2, p2

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, LG/Q;->b(DD)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    instance-of v0, p1, LG/Q;

    if-eqz v0, :cond_1

    check-cast p1, LG/Q;

    iget v0, p0, LG/Q;->a:I

    iget v1, p1, LG/Q;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p0, LG/Q;->b:I

    iget v1, p1, LG/Q;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, LG/Q;->c:I

    iget v1, p1, LG/Q;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public f()I
    .locals 1

    iget v0, p0, LG/Q;->a:I

    return v0
.end method

.method public f(LG/Q;)LG/Q;
    .locals 5

    new-instance v0, LG/Q;

    iget v1, p0, LG/Q;->a:I

    iget v2, p1, LG/Q;->a:I

    sub-int/2addr v1, v2

    iget v2, p0, LG/Q;->b:I

    iget v3, p1, LG/Q;->b:I

    sub-int/2addr v2, v3

    iget v3, p0, LG/Q;->c:I

    iget v4, p1, LG/Q;->c:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, LG/Q;-><init>(III)V

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, LG/Q;->b:I

    return v0
.end method

.method public g(LG/Q;)LG/Q;
    .locals 1

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    invoke-static {p0, p1, v0}, LG/Q;->c(LG/Q;LG/Q;LG/Q;)V

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, LG/Q;->c:I

    return v0
.end method

.method public h(LG/Q;)V
    .locals 4

    const/high16 v3, 0x4000

    const/high16 v2, 0x2000

    const/high16 v1, -0x2000

    iget v0, p0, LG/Q;->a:I

    iput v0, p1, LG/Q;->a:I

    iget v0, p0, LG/Q;->c:I

    iput v0, p1, LG/Q;->c:I

    :goto_0
    iget v0, p1, LG/Q;->a:I

    if-ge v0, v1, :cond_0

    iget v0, p1, LG/Q;->a:I

    add-int/2addr v0, v3

    iput v0, p1, LG/Q;->a:I

    goto :goto_0

    :cond_0
    :goto_1
    iget v0, p1, LG/Q;->a:I

    if-lt v0, v2, :cond_1

    iget v0, p1, LG/Q;->a:I

    sub-int/2addr v0, v3

    iput v0, p1, LG/Q;->a:I

    goto :goto_1

    :cond_1
    iget v0, p0, LG/Q;->b:I

    if-ge v0, v1, :cond_2

    iput v1, p1, LG/Q;->b:I

    :goto_2
    return-void

    :cond_2
    iget v0, p0, LG/Q;->b:I

    if-lt v0, v2, :cond_3

    const v0, 0x1fffffff

    iput v0, p1, LG/Q;->b:I

    goto :goto_2

    :cond_3
    iget v0, p0, LG/Q;->b:I

    iput v0, p1, LG/Q;->b:I

    goto :goto_2
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, LG/Q;->a:I

    iget v1, p0, LG/Q;->b:I

    iget v2, p0, LG/Q;->c:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    shr-int/lit8 v3, v2, 0xd

    xor-int/2addr v0, v3

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    shl-int/lit8 v3, v0, 0x8

    xor-int/2addr v1, v3

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    shr-int/lit8 v3, v1, 0xd

    xor-int/2addr v2, v3

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    shr-int/lit8 v3, v2, 0xc

    xor-int/2addr v0, v3

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    shl-int/lit8 v3, v0, 0x10

    xor-int/2addr v1, v3

    sub-int/2addr v2, v0

    sub-int/2addr v2, v1

    shr-int/lit8 v3, v1, 0x5

    xor-int/2addr v2, v3

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    shr-int/lit8 v3, v2, 0x3

    xor-int/2addr v0, v3

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    shl-int/lit8 v3, v0, 0xa

    xor-int/2addr v1, v3

    sub-int v0, v2, v0

    sub-int/2addr v0, v1

    shr-int/lit8 v1, v1, 0xf

    xor-int/2addr v0, v1

    return v0
.end method

.method public i()F
    .locals 4

    iget v0, p0, LG/Q;->a:I

    int-to-float v0, v0

    iget v1, p0, LG/Q;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, LG/Q;->b:I

    int-to-float v1, v1

    iget v2, p0, LG/Q;->b:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, LG/Q;->c:I

    int-to-float v2, v2

    iget v3, p0, LG/Q;->c:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public i(LG/Q;)V
    .locals 3

    const/high16 v2, 0x4000

    iget v0, p0, LG/Q;->a:I

    iput v0, p1, LG/Q;->a:I

    iget v0, p0, LG/Q;->b:I

    iput v0, p1, LG/Q;->b:I

    iget v0, p0, LG/Q;->c:I

    iput v0, p1, LG/Q;->c:I

    :goto_0
    iget v0, p1, LG/Q;->a:I

    const/high16 v1, -0x2000

    if-ge v0, v1, :cond_0

    iget v0, p1, LG/Q;->a:I

    add-int/2addr v0, v2

    iput v0, p1, LG/Q;->a:I

    goto :goto_0

    :cond_0
    :goto_1
    iget v0, p1, LG/Q;->a:I

    const/high16 v1, 0x2000

    if-lt v0, v1, :cond_1

    iget v0, p1, LG/Q;->a:I

    sub-int/2addr v0, v2

    iput v0, p1, LG/Q;->a:I

    goto :goto_1

    :cond_1
    return-void
.end method

.method public j(LG/Q;)V
    .locals 4

    const/high16 v3, 0x2000

    const v2, 0x1fffffff

    const/high16 v1, -0x2000

    iget v0, p0, LG/Q;->a:I

    if-ge v0, v1, :cond_0

    iput v1, p1, LG/Q;->a:I

    :goto_0
    iget v0, p0, LG/Q;->b:I

    if-ge v0, v1, :cond_2

    iput v1, p1, LG/Q;->b:I

    :goto_1
    iget v0, p0, LG/Q;->c:I

    iput v0, p1, LG/Q;->c:I

    return-void

    :cond_0
    iget v0, p0, LG/Q;->a:I

    if-lt v0, v3, :cond_1

    iput v2, p1, LG/Q;->a:I

    goto :goto_0

    :cond_1
    iget v0, p0, LG/Q;->a:I

    iput v0, p1, LG/Q;->a:I

    goto :goto_0

    :cond_2
    iget v0, p0, LG/Q;->b:I

    if-lt v0, v3, :cond_3

    iput v2, p1, LG/Q;->b:I

    goto :goto_1

    :cond_3
    iget v0, p0, LG/Q;->b:I

    iput v0, p1, LG/Q;->b:I

    goto :goto_1
.end method

.method public j()Z
    .locals 2

    iget v0, p0, LG/Q;->a:I

    iget v1, p0, LG/Q;->b:I

    invoke-static {v0, v1}, LG/Q;->f(II)Z

    move-result v0

    return v0
.end method

.method public k(LG/Q;)I
    .locals 2

    iget v0, p0, LG/Q;->a:I

    iget v1, p1, LG/Q;->a:I

    if-ne v0, v1, :cond_1

    iget v0, p0, LG/Q;->b:I

    iget v1, p1, LG/Q;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, LG/Q;->c:I

    iget v1, p1, LG/Q;->c:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, LG/Q;->b:I

    iget v1, p1, LG/Q;->b:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, LG/Q;->a:I

    iget v1, p1, LG/Q;->a:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public k()Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%f,%f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, LG/Q;->b()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, LG/Q;->d()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LG/Q;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LG/Q;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LG/Q;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
