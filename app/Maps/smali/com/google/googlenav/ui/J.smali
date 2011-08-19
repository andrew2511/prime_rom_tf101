.class public Lcom/google/googlenav/ui/J;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Lcom/google/googlenav/ui/r;

.field private b:Lf/l;

.field private c:[[[J


# direct methods
.method public constructor <init>([Lcom/google/googlenav/ui/r;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p1, v0

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iput-object p1, p0, Lcom/google/googlenav/ui/J;->a:[Lcom/google/googlenav/ui/r;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/J;->b:Lf/l;

    return-void
.end method

.method private static a(IIII)I
    .locals 2

    const/4 v1, 0x0

    if-gez p2, :cond_1

    const/16 v0, 0x8

    :goto_0
    if-gez p3, :cond_3

    const/4 v1, 0x2

    :cond_0
    :goto_1
    or-int/2addr v0, v1

    return v0

    :cond_1
    if-le p2, p0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    if-le p3, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static a(J)I
    .locals 2

    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private static a(Lcom/google/googlenav/ui/aU;)I
    .locals 1

    invoke-interface {p0}, Lcom/google/googlenav/ui/aU;->i()[[Lf/h;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Lcom/google/googlenav/ui/aU;->i()[[Lf/h;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(II)J
    .locals 5

    const/16 v4, 0x20

    int-to-long v0, p0

    shl-long/2addr v0, v4

    int-to-long v2, p1

    shl-long/2addr v2, v4

    ushr-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method static a(IIII[I)V
    .locals 10

    const/16 v8, 0xfa0

    const/16 v7, -0xfa0

    sub-int v0, p0, p2

    sub-int v1, p1, p3

    if-gt p0, v8, :cond_0

    if-ge p0, v7, :cond_5

    :cond_0
    if-lez p0, :cond_2

    move v2, v8

    :goto_0
    sub-int v3, v2, p2

    int-to-long v3, v3

    int-to-long v5, v1

    mul-long/2addr v3, v5

    int-to-long v5, v0

    div-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v3, p3

    move v9, v3

    move v3, v2

    move v2, v9

    :goto_1
    if-gt v2, v8, :cond_1

    if-ge v2, v7, :cond_4

    :cond_1
    add-int v2, v1, p3

    if-lez v2, :cond_3

    move v2, v8

    :goto_2
    sub-int v3, v2, p3

    int-to-long v3, v3

    int-to-long v5, v0

    mul-long/2addr v3, v5

    int-to-long v0, v1

    div-long v0, v3, v0

    long-to-int v0, v0

    add-int/2addr v0, p2

    move v1, v0

    move v0, v2

    :goto_3
    const/4 v2, 0x0

    aput v1, p4, v2

    const/4 v1, 0x1

    aput v0, p4, v1

    return-void

    :cond_2
    move v2, v7

    goto :goto_0

    :cond_3
    move v2, v7

    goto :goto_2

    :cond_4
    move v0, v2

    move v1, v3

    goto :goto_3

    :cond_5
    move v2, p1

    move v3, p0

    goto :goto_1
.end method

.method private a(Lcom/google/googlenav/ui/aR;IIIILcom/google/googlenav/ui/ba;Lf/l;)V
    .locals 8

    const/4 v1, -0x1

    invoke-interface {p6}, Lcom/google/googlenav/ui/ba;->c()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-interface {p6}, Lcom/google/googlenav/ui/ba;->e()I

    move-result v0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p6}, Lcom/google/googlenav/ui/ba;->f()Lf/h;

    move-result-object v0

    invoke-interface {p6}, Lcom/google/googlenav/ui/ba;->g()I

    move-result v1

    invoke-virtual {p7, v1}, Lf/l;->a(I)I

    move-result v3

    invoke-interface {p6}, Lcom/google/googlenav/ui/ba;->h()I

    move-result v1

    invoke-virtual {p7, v1}, Lf/l;->a(I)I

    move-result v4

    invoke-virtual {v0, p7}, Lf/h;->a(Lf/l;)I

    move-result v1

    sub-int/2addr v1, p2

    invoke-virtual {v0, p7}, Lf/h;->b(Lf/l;)I

    move-result v0

    sub-int v2, v0, p3

    div-int/lit8 v0, v3, 0x2

    sub-int v0, v1, v0

    div-int/lit8 v5, v4, 0x2

    sub-int v5, v2, v5

    invoke-static {p4, p5, v0, v5}, Lcom/google/googlenav/ui/J;->a(IIII)I

    move-result v0

    div-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v1

    div-int/lit8 v6, v4, 0x2

    add-int/2addr v6, v2

    invoke-static {p4, p5, v5, v6}, Lcom/google/googlenav/ui/J;->a(IIII)I

    move-result v5

    and-int/2addr v0, v5

    if-nez v0, :cond_0

    invoke-interface {p6, p7}, Lcom/google/googlenav/ui/ba;->a(Lf/l;)I

    move-result v5

    invoke-interface {p6}, Lcom/google/googlenav/ui/ba;->c()I

    move-result v6

    invoke-interface {p6}, Lcom/google/googlenav/ui/ba;->e()I

    move-result v7

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/google/googlenav/ui/aR;->a(IIIIIII)V

    goto :goto_0
.end method

.method private a(Lcom/google/googlenav/ui/aR;IIII[JLcom/google/googlenav/ui/aU;Lf/l;)V
    .locals 18

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-wide v8, p6, v8

    invoke-static {v8, v9}, Lcom/google/googlenav/ui/J;->a(J)I

    move-result v8

    sub-int v8, v8, p2

    aput v8, v5, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aget-wide v8, p6, v8

    invoke-static {v8, v9}, Lcom/google/googlenav/ui/J;->b(J)I

    move-result v8

    sub-int v8, v8, p3

    aput v8, v5, v7

    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    move/from16 v0, p4

    move/from16 v1, p5

    move v2, v7

    move v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/ui/J;->a(IIII)I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    move/from16 v16, v10

    move v10, v7

    move/from16 v7, v16

    move/from16 v17, v8

    move v8, v9

    move/from16 v9, v17

    :goto_0
    move-object/from16 v0, p6

    array-length v0, v0

    move v11, v0

    if-ge v7, v11, :cond_6

    const/4 v11, 0x0

    aget-wide v12, p6, v7

    invoke-static {v12, v13}, Lcom/google/googlenav/ui/J;->a(J)I

    move-result v12

    sub-int v12, v12, p2

    aput v12, v4, v11

    const/4 v11, 0x1

    aget-wide v13, p6, v7

    invoke-static {v13, v14}, Lcom/google/googlenav/ui/J;->b(J)I

    move-result v13

    sub-int v13, v13, p3

    aput v13, v4, v11

    move/from16 v0, p4

    move/from16 v1, p5

    move v2, v12

    move v3, v13

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/ui/J;->a(IIII)I

    move-result v11

    and-int/2addr v10, v11

    if-nez v10, :cond_5

    if-nez v8, :cond_0

    invoke-interface/range {p7 .. p7}, Lcom/google/googlenav/ui/aU;->c()I

    move-result v8

    invoke-interface/range {p7 .. p8}, Lcom/google/googlenav/ui/aU;->a(Lf/l;)I

    move-result v10

    invoke-interface/range {p7 .. p7}, Lcom/google/googlenav/ui/aU;->f()I

    move-result v12

    move-object/from16 v0, p1

    move v1, v8

    move v2, v10

    move v3, v12

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/aR;->a(III)V

    const/4 v8, 0x1

    :cond_0
    invoke-static {v4}, Lcom/google/googlenav/ui/J;->a([I)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v12, 0x0

    aget v12, v4, v12

    const/4 v13, 0x1

    aget v13, v4, v13

    const/4 v14, 0x0

    aget v14, v5, v14

    const/4 v15, 0x1

    aget v15, v5, v15

    invoke-static {v12, v13, v14, v15, v6}, Lcom/google/googlenav/ui/J;->a(IIII[I)V

    :cond_1
    invoke-static {v5}, Lcom/google/googlenav/ui/J;->a([I)Z

    move-result v12

    if-nez v12, :cond_2

    const/4 v12, 0x0

    aget v12, v5, v12

    const/4 v13, 0x1

    aget v13, v5, v13

    const/4 v14, 0x0

    aget v14, v4, v14

    const/4 v15, 0x1

    aget v15, v4, v15

    invoke-static {v12, v13, v14, v15, v5}, Lcom/google/googlenav/ui/J;->a(IIII[I)V

    :cond_2
    if-eqz v10, :cond_3

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    move v3, v9

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/aR;->a([I[IZ)V

    :goto_1
    if-nez v10, :cond_4

    const/4 v9, 0x1

    :goto_2
    const/4 v10, 0x0

    const/4 v12, 0x0

    aget v12, v4, v12

    aput v12, v5, v10

    const/4 v10, 0x1

    const/4 v12, 0x1

    aget v12, v4, v12

    aput v12, v5, v10

    add-int/lit8 v7, v7, 0x1

    move v10, v11

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v5

    move v3, v9

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/aR;->a([I[IZ)V

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    const/4 v9, 0x1

    goto :goto_2

    :cond_6
    if-eqz v8, :cond_7

    invoke-interface/range {p1 .. p1}, Lcom/google/googlenav/ui/aR;->a()V

    :cond_7
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/aR;IIII[[JLcom/google/googlenav/ui/aU;Lf/l;)V
    .locals 10

    const/4 v0, 0x0

    invoke-static/range {p7 .. p7}, Lcom/google/googlenav/ui/J;->a(Lcom/google/googlenav/ui/aU;)I

    move-result v1

    new-array v2, v1, [[J

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-object v4, p6, v4

    invoke-static {p2, p3, v4}, Lcom/google/googlenav/ui/J;->a(II[J)[J

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x0

    aget-wide v3, v3, v4

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/J;->a(J)I

    move-result v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/J;->b(J)I

    move-result v4

    invoke-static {p4, p5, v3, v4}, Lcom/google/googlenav/ui/J;->a(IIII)I

    move-result v3

    const/4 v4, 0x1

    move v5, v3

    move v9, v3

    move v3, v4

    move v4, v9

    :goto_0
    const/4 v6, 0x0

    aget-object v6, v2, v6

    array-length v6, v6

    if-ge v3, v6, :cond_0

    const/4 v6, 0x0

    aget-object v6, v2, v6

    aget-wide v6, v6, v3

    invoke-static {v6, v7}, Lcom/google/googlenav/ui/J;->a(J)I

    move-result v6

    const/4 v7, 0x0

    aget-object v7, v2, v7

    aget-wide v7, v7, v3

    invoke-static {v7, v8}, Lcom/google/googlenav/ui/J;->b(J)I

    move-result v7

    invoke-static {p4, p5, v6, v7}, Lcom/google/googlenav/ui/J;->a(IIII)I

    move-result v6

    and-int/2addr v5, v6

    if-nez v5, :cond_2

    const/4 v0, 0x1

    :cond_0
    const/16 v3, 0xf

    if-ne v4, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    if-ge v0, v1, :cond_3

    aget-object v3, p6, v0

    invoke-static {p2, p3, v3}, Lcom/google/googlenav/ui/J;->a(II[J)[J

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    or-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    move v5, v6

    goto :goto_0

    :cond_3
    invoke-interface/range {p7 .. p7}, Lcom/google/googlenav/ui/aU;->c()I

    move-result v0

    invoke-interface/range {p7 .. p8}, Lcom/google/googlenav/ui/aU;->a(Lf/l;)I

    move-result v1

    invoke-interface/range {p7 .. p7}, Lcom/google/googlenav/ui/aU;->e()I

    move-result v3

    invoke-interface {p1, v2, v0, v1, v3}, Lcom/google/googlenav/ui/aR;->a([[JIII)V

    :cond_4
    return-void
.end method

.method private a(Lf/l;)V
    .locals 13

    iget-object v0, p0, Lcom/google/googlenav/ui/J;->b:Lf/l;

    if-ne p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/J;->a:[Lcom/google/googlenav/ui/r;

    array-length v0, v0

    new-array v0, v0, [[[J

    iput-object v0, p0, Lcom/google/googlenav/ui/J;->c:[[[J

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/ui/J;->a:[Lcom/google/googlenav/ui/r;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/J;->a:[Lcom/google/googlenav/ui/r;

    aget-object v0, v0, v1

    instance-of v0, v0, Lcom/google/googlenav/ui/aU;

    if-nez v0, :cond_3

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/ui/J;->a:[Lcom/google/googlenav/ui/r;

    aget-object v0, v0, v1

    check-cast v0, Lcom/google/googlenav/ui/aU;

    invoke-static {v0}, Lcom/google/googlenav/ui/J;->a(Lcom/google/googlenav/ui/aU;)I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/J;->c:[[[J

    new-array v4, v2, [[J

    aput-object v4, v3, v1

    invoke-static {v0}, Lcom/google/googlenav/ui/J;->b(Lcom/google/googlenav/ui/aU;)[[Lf/h;

    move-result-object v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    array-length v5, v4

    new-array v5, v5, [J

    const/4 v6, 0x1

    iput-object p1, p0, Lcom/google/googlenav/ui/J;->b:Lf/l;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v4, v8

    iget-object v9, p0, Lcom/google/googlenav/ui/J;->b:Lf/l;

    invoke-virtual {v8, v9}, Lf/h;->a(Lf/l;)I

    move-result v8

    const/4 v9, 0x0

    aget-object v9, v4, v9

    iget-object v10, p0, Lcom/google/googlenav/ui/J;->b:Lf/l;

    invoke-virtual {v9, v10}, Lf/h;->b(Lf/l;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/google/googlenav/ui/J;->a(II)J

    move-result-wide v8

    aput-wide v8, v5, v7

    const/4 v7, 0x1

    move v12, v7

    move v7, v6

    move v6, v12

    :goto_2
    array-length v8, v4

    if-ge v6, v8, :cond_6

    aget-object v8, v4, v6

    iget-object v9, p0, Lcom/google/googlenav/ui/J;->b:Lf/l;

    invoke-virtual {v8, v9}, Lf/h;->a(Lf/l;)I

    move-result v8

    aget-object v9, v4, v6

    iget-object v10, p0, Lcom/google/googlenav/ui/J;->b:Lf/l;

    invoke-virtual {v9, v10}, Lf/h;->b(Lf/l;)I

    move-result v9

    const/4 v10, 0x1

    sub-int v10, v7, v10

    aget-wide v10, v5, v10

    invoke-static {v10, v11}, Lcom/google/googlenav/ui/J;->a(J)I

    move-result v10

    sub-int v10, v8, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/4 v11, 0x2

    if-gt v10, v11, :cond_4

    const/4 v10, 0x1

    sub-int v10, v7, v10

    aget-wide v10, v5, v10

    invoke-static {v10, v11}, Lcom/google/googlenav/ui/J;->b(J)I

    move-result v10

    sub-int v10, v9, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/4 v11, 0x2

    if-gt v10, v11, :cond_4

    array-length v10, v4

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ne v6, v10, :cond_5

    :cond_4
    invoke-static {v8, v9}, Lcom/google/googlenav/ui/J;->a(II)J

    move-result-wide v8

    aput-wide v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/google/googlenav/ui/J;->c:[[[J

    aget-object v4, v4, v1

    new-array v6, v7, [J

    aput-object v6, v4, v3

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/google/googlenav/ui/J;->c:[[[J

    aget-object v6, v6, v1

    aget-object v6, v6, v3

    const/4 v8, 0x0

    invoke-static {v5, v4, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method

.method protected static a([I)Z
    .locals 5

    const/16 v4, 0xfa0

    const/16 v3, -0xfa0

    const/4 v2, 0x1

    const/4 v1, 0x0

    aget v0, p0, v1

    if-gt v0, v4, :cond_0

    aget v0, p0, v1

    if-lt v0, v3, :cond_0

    aget v0, p0, v2

    if-gt v0, v4, :cond_0

    aget v0, p0, v2

    if-lt v0, v3, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static a(II[J)[J
    .locals 5

    array-length v0, p2

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    aget-wide v2, p2, v1

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/J;->a(J)I

    move-result v2

    sub-int/2addr v2, p0

    aget-wide v3, p2, v1

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/J;->b(J)I

    move-result v3

    sub-int/2addr v3, p1

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/J;->a(II)J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static b(J)I
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private static b(Lcom/google/googlenav/ui/aU;)[[Lf/h;
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-interface {p0}, Lcom/google/googlenav/ui/aU;->i()[[Lf/h;

    move-result-object v0

    if-nez v0, :cond_1

    new-array v0, v4, [[Lf/h;

    invoke-interface {p0}, Lcom/google/googlenav/ui/aU;->h()[Lf/h;

    move-result-object v1

    aput-object v1, v0, v2

    :cond_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/google/googlenav/ui/J;->a(Lcom/google/googlenav/ui/aU;)I

    move-result v0

    new-array v0, v0, [[Lf/h;

    invoke-interface {p0}, Lcom/google/googlenav/ui/aU;->h()[Lf/h;

    move-result-object v1

    aput-object v1, v0, v2

    move v1, v4

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    invoke-interface {p0}, Lcom/google/googlenav/ui/aU;->i()[[Lf/h;

    move-result-object v2

    sub-int v3, v1, v4

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 4

    const/4 v3, 0x0

    move v0, v3

    move v1, v3

    :goto_0
    iget-object v2, p0, Lcom/google/googlenav/ui/J;->a:[Lcom/google/googlenav/ui/r;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/googlenav/ui/J;->a:[Lcom/google/googlenav/ui/r;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/google/googlenav/ui/r;->b()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v3

    :goto_1
    return v0

    :cond_0
    mul-int/lit8 v1, v1, 0x1d

    iget-object v2, p0, Lcom/google/googlenav/ui/J;->a:[Lcom/google/googlenav/ui/r;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/google/googlenav/ui/r;->a()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public a(Lcom/google/googlenav/ui/aR;IIIILf/l;)V
    .locals 13

    invoke-virtual {p0}, Lcom/google/googlenav/ui/J;->a()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/J;->a(Lf/l;)V

    const/4 v2, 0x0

    move v11, v2

    :goto_0
    iget-object v2, p0, Lcom/google/googlenav/ui/J;->a:[Lcom/google/googlenav/ui/r;

    array-length v2, v2

    if-ge v11, v2, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/ui/J;->a:[Lcom/google/googlenav/ui/r;

    aget-object v2, v2, v11

    instance-of v2, v2, Lcom/google/googlenav/ui/ba;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/googlenav/ui/J;->a:[Lcom/google/googlenav/ui/r;

    aget-object v8, v2, v11

    check-cast v8, Lcom/google/googlenav/ui/ba;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/google/googlenav/ui/J;->a(Lcom/google/googlenav/ui/aR;IIIILcom/google/googlenav/ui/ba;Lf/l;)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/googlenav/ui/J;->a:[Lcom/google/googlenav/ui/r;

    aget-object v9, v2, v11

    check-cast v9, Lcom/google/googlenav/ui/aU;

    iget-object v2, p0, Lcom/google/googlenav/ui/J;->a:[Lcom/google/googlenav/ui/r;

    aget-object v2, v2, v11

    invoke-interface {v2}, Lcom/google/googlenav/ui/r;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/googlenav/ui/J;->c:[[[J

    aget-object v8, v2, v11

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lcom/google/googlenav/ui/J;->a(Lcom/google/googlenav/ui/aR;IIII[[JLcom/google/googlenav/ui/aU;Lf/l;)V

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    move v12, v2

    :goto_2
    iget-object v2, p0, Lcom/google/googlenav/ui/J;->c:[[[J

    aget-object v2, v2, v11

    array-length v2, v2

    if-ge v12, v2, :cond_2

    iget-object v2, p0, Lcom/google/googlenav/ui/J;->c:[[[J

    aget-object v2, v2, v11

    aget-object v8, v2, v12

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lcom/google/googlenav/ui/J;->a(Lcom/google/googlenav/ui/aR;IIII[JLcom/google/googlenav/ui/aU;Lf/l;)V

    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_2
.end method

.method public a(Lcom/google/googlenav/ui/r;Lf/l;)[J
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/J;->a(Lf/l;)V

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/ui/J;->a:[Lcom/google/googlenav/ui/r;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/ui/J;->a:[Lcom/google/googlenav/ui/r;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/J;->c:[[[J

    aget-object v0, v1, v0

    aget-object v0, v0, v2

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
