.class public final LG/m;
.super Ljava/lang/Object;


# instance fields
.field private final a:[I

.field private volatile b:LG/S;

.field private volatile c:F


# direct methods
.method private constructor <init>([I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG/m;->a:[I

    const/high16 v0, -0x4080

    iput v0, p0, LG/m;->c:F

    return-void
.end method

.method synthetic constructor <init>([ILG/N;)V
    .locals 0

    invoke-direct {p0, p1}, LG/m;-><init>([I)V

    return-void
.end method

.method private a(FIIILG/Q;LG/Q;LG/Q;LG/Q;[Z)I
    .locals 15

    move-object v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, LG/m;->a(ILG/Q;)V

    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, LG/m;->a(ILG/Q;)V

    const/4 v4, -0x1

    add-int v5, p3, p2

    move v8, v4

    move v4, v5

    move/from16 v5, p1

    :goto_0
    const/4 v6, 0x1

    sub-int v6, p4, v6

    if-gt v4, v6, :cond_0

    move-object v0, p0

    move v1, v4

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v2}, LG/m;->a(ILG/Q;)V

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p8

    move-object/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, LG/Q;->b(LG/Q;LG/Q;LG/Q;LG/Q;)F

    move-result v6

    cmpl-float v7, v6, v5

    if-lez v7, :cond_3

    move v5, v6

    move v6, v4

    :goto_1
    add-int v4, v4, p2

    move v8, v6

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    if-ltz v8, :cond_2

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    aput-boolean v5, p9, v8

    add-int/lit8 v5, p3, 0x1

    if-le v8, v5, :cond_1

    move-object v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-direct/range {v4 .. v13}, LG/m;->a(FIIILG/Q;LG/Q;LG/Q;LG/Q;[Z)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    :cond_1
    const/4 v5, 0x1

    sub-int v5, p4, v5

    if-ge v8, v5, :cond_2

    move-object v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-direct/range {v5 .. v14}, LG/m;->a(FIIILG/Q;LG/Q;LG/Q;LG/Q;[Z)I

    move-result v5

    add-int/2addr v4, v5

    :cond_2
    return v4

    :cond_3
    move v6, v8

    goto :goto_1
.end method

.method public static a(LG/Q;LG/Q;)LG/m;
    .locals 2

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LG/Q;->a([II)V

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, LG/Q;->a([II)V

    new-instance v1, LG/m;

    invoke-direct {v1, v0}, LG/m;-><init>([I)V

    return-object v1
.end method

.method public static a(Ljava/io/DataInput;LG/w;)LG/m;
    .locals 3

    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v0

    mul-int/lit8 v1, v0, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-static {p0, p1, v1, v2}, LG/Q;->a(Ljava/io/DataInput;LG/w;[II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, LG/m;

    invoke-direct {v0, v1}, LG/m;-><init>([I)V

    return-object v0
.end method

.method public static a([I)LG/m;
    .locals 1

    new-instance v0, LG/m;

    invoke-direct {v0, p0}, LG/m;-><init>([I)V

    return-object v0
.end method


# virtual methods
.method public a(F)LG/Q;
    .locals 5

    const/4 v3, 0x0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0, v3}, LG/m;->a(I)LG/Q;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, LG/m;->c()LG/Q;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, LG/m;->d()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0}, LG/m;->b()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move v2, v0

    move v0, v3

    :goto_1
    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, LG/m;->b(I)F

    move-result v3

    cmpl-float v4, v3, v2

    if-ltz v4, :cond_2

    div-float v1, v2, v3

    new-instance v2, LG/Q;

    invoke-direct {v2}, LG/Q;-><init>()V

    new-instance v3, LG/Q;

    invoke-direct {v3}, LG/Q;-><init>()V

    invoke-virtual {p0, v0, v2}, LG/m;->a(ILG/Q;)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v3}, LG/m;->a(ILG/Q;)V

    invoke-static {v2, v3, v1, v3}, LG/Q;->a(LG/Q;LG/Q;FLG/Q;)V

    move-object v0, v3

    goto :goto_0

    :cond_2
    sub-float/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, LG/m;->c()LG/Q;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)LG/Q;
    .locals 5

    mul-int/lit8 v0, p1, 0x3

    new-instance v1, LG/Q;

    iget-object v2, p0, LG/m;->a:[I

    aget v2, v2, v0

    iget-object v3, p0, LG/m;->a:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    iget-object v4, p0, LG/m;->a:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v4, v0

    invoke-direct {v1, v2, v3, v0}, LG/Q;-><init>(III)V

    return-object v1
.end method

.method public a()LG/S;
    .locals 3

    iget-object v0, p0, LG/m;->b:LG/S;

    if-nez v0, :cond_0

    invoke-virtual {p0}, LG/m;->b()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    invoke-static {p0}, LG/S;->a(LG/m;)LG/S;

    move-result-object v0

    iput-object v0, p0, LG/m;->b:LG/S;

    :cond_0
    :goto_0
    iget-object v0, p0, LG/m;->b:LG/S;

    return-object v0

    :cond_1
    new-instance v0, LG/S;

    new-instance v1, LG/Q;

    invoke-direct {v1}, LG/Q;-><init>()V

    new-instance v2, LG/Q;

    invoke-direct {v2}, LG/Q;-><init>()V

    invoke-direct {v0, v1, v2}, LG/S;-><init>(LG/Q;LG/Q;)V

    iput-object v0, p0, LG/m;->b:LG/S;

    goto :goto_0
.end method

.method public a(ILG/Q;)V
    .locals 3

    mul-int/lit8 v0, p1, 0x3

    iget-object v1, p0, LG/m;->a:[I

    aget v1, v1, v0

    iput v1, p2, LG/Q;->a:I

    iget-object v1, p0, LG/m;->a:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iput v1, p2, LG/Q;->b:I

    iget-object v1, p0, LG/m;->a:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    iput v0, p2, LG/Q;->c:I

    return-void
.end method

.method public a(ILG/Q;LG/Q;)V
    .locals 3

    mul-int/lit8 v0, p1, 0x3

    iget-object v1, p0, LG/m;->a:[I

    aget v1, v1, v0

    iget v2, p2, LG/Q;->a:I

    sub-int/2addr v1, v2

    iput v1, p3, LG/Q;->a:I

    iget-object v1, p0, LG/m;->a:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iget v2, p2, LG/Q;->b:I

    sub-int/2addr v1, v2

    iput v1, p3, LG/Q;->b:I

    iget-object v1, p0, LG/m;->a:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    iget v1, p2, LG/Q;->c:I

    sub-int/2addr v0, v1

    iput v0, p3, LG/Q;->c:I

    return-void
.end method

.method public a(LG/Q;)V
    .locals 3

    iget-object v0, p0, LG/m;->a:[I

    array-length v0, v0

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    iget-object v1, p0, LG/m;->a:[I

    aget v1, v1, v0

    iput v1, p1, LG/Q;->a:I

    iget-object v1, p0, LG/m;->a:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iput v1, p1, LG/Q;->b:I

    iget-object v1, p0, LG/m;->a:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v1, v0

    iput v0, p1, LG/Q;->c:I

    return-void
.end method

.method public a(LG/w;Ljava/io/DataOutput;)V
    .locals 3

    invoke-virtual {p0}, LG/m;->b()I

    move-result v0

    invoke-static {p2, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, LG/m;->a:[I

    invoke-static {v2, v1, p1, p2}, LG/Q;->a([IILG/w;Ljava/io/DataOutput;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(FI)[Z
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, LG/m;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    new-array v9, v0, [Z

    array-length v1, v9

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    move v0, v3

    :goto_0
    array-length v1, v9

    if-ge v0, v1, :cond_1

    aput-boolean v4, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aput-boolean v4, v9, v3

    sub-int v1, v0, v4

    aput-boolean v4, v9, v1

    mul-float v1, p1, p1

    sub-int v4, v0, v4

    new-instance v5, LG/Q;

    invoke-direct {v5}, LG/Q;-><init>()V

    new-instance v6, LG/Q;

    invoke-direct {v6}, LG/Q;-><init>()V

    new-instance v7, LG/Q;

    invoke-direct {v7}, LG/Q;-><init>()V

    new-instance v8, LG/Q;

    invoke-direct {v8}, LG/Q;-><init>()V

    move-object v0, p0

    move v2, p2

    invoke-direct/range {v0 .. v9}, LG/m;->a(FIIILG/Q;LG/Q;LG/Q;LG/Q;[Z)I

    :cond_1
    return-object v9
.end method

.method public b(I)F
    .locals 6

    mul-int/lit8 v0, p1, 0x3

    add-int/lit8 v1, v0, 0x3

    iget-object v2, p0, LG/m;->a:[I

    add-int/lit8 v3, v0, 0x1

    aget v0, v2, v0

    iget-object v2, p0, LG/m;->a:[I

    add-int/lit8 v4, v1, 0x1

    aget v1, v2, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, LG/m;->a:[I

    add-int/lit8 v2, v3, 0x1

    aget v1, v1, v3

    iget-object v3, p0, LG/m;->a:[I

    add-int/lit8 v5, v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, LG/m;->a:[I

    add-int/lit8 v4, v2, 0x1

    aget v2, v3, v2

    iget-object v3, p0, LG/m;->a:[I

    add-int/lit8 v4, v5, 0x1

    aget v3, v3, v5

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float v1, v2, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, LG/m;->a:[I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public b(F)LG/m;
    .locals 11

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, LG/m;->a:[I

    array-length v0, v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LG/m;->a:[I

    array-length v0, v0

    div-int/lit8 v10, v0, 0x3

    new-array v9, v10, [Z

    aput-boolean v2, v9, v3

    sub-int v0, v10, v2

    aput-boolean v2, v9, v0

    mul-float v1, p1, p1

    sub-int v4, v10, v2

    new-instance v5, LG/Q;

    invoke-direct {v5}, LG/Q;-><init>()V

    new-instance v6, LG/Q;

    invoke-direct {v6}, LG/Q;-><init>()V

    new-instance v7, LG/Q;

    invoke-direct {v7}, LG/Q;-><init>()V

    new-instance v8, LG/Q;

    invoke-direct {v8}, LG/Q;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, LG/m;->a(FIIILG/Q;LG/Q;LG/Q;LG/Q;[Z)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    if-ne v0, v10, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_1
    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [I

    move v1, v3

    move v2, v3

    :goto_1
    if-ge v1, v10, :cond_3

    aget-boolean v3, v9, v1

    if-eqz v3, :cond_2

    mul-int/lit8 v3, v1, 0x3

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, LG/m;->a:[I

    add-int/lit8 v6, v3, 0x1

    aget v3, v5, v3

    aput v3, v0, v2

    add-int/lit8 v2, v4, 0x1

    iget-object v3, p0, LG/m;->a:[I

    add-int/lit8 v5, v6, 0x1

    aget v3, v3, v6

    aput v3, v0, v4

    add-int/lit8 v3, v2, 0x1

    iget-object v4, p0, LG/m;->a:[I

    add-int/lit8 v6, v5, 0x1

    aget v4, v4, v5

    aput v4, v0, v2

    move v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, LG/m;

    invoke-direct {v1, v0}, LG/m;-><init>([I)V

    move-object v0, v1

    goto :goto_0
.end method

.method public c(I)F
    .locals 4

    mul-int/lit8 v0, p1, 0x3

    iget-object v1, p0, LG/m;->a:[I

    add-int/lit8 v2, v0, 0x3

    aget v1, v1, v2

    iget-object v2, p0, LG/m;->a:[I

    aget v2, v2, v0

    sub-int/2addr v1, v2

    iget-object v2, p0, LG/m;->a:[I

    add-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, LG/m;->a:[I

    add-int/lit8 v0, v0, 0x1

    aget v0, v3, v0

    sub-int v0, v2, v0

    invoke-static {v1, v0}, LG/H;->a(II)F

    move-result v0

    return v0
.end method

.method public c()LG/Q;
    .locals 5

    iget-object v0, p0, LG/m;->a:[I

    array-length v0, v0

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    new-instance v1, LG/Q;

    iget-object v2, p0, LG/m;->a:[I

    aget v2, v2, v0

    iget-object v3, p0, LG/m;->a:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    iget-object v4, p0, LG/m;->a:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v4, v0

    invoke-direct {v1, v2, v3, v0}, LG/Q;-><init>(III)V

    return-object v1
.end method

.method public d()F
    .locals 4

    const/4 v2, 0x0

    iget v0, p0, LG/m;->c:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p0}, LG/m;->b()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, LG/m;->b(I)F

    move-result v3

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v2, p0, LG/m;->c:F

    :cond_1
    iget v0, p0, LG/m;->c:F

    return v0
.end method

.method public e()LG/m;
    .locals 7

    iget-object v0, p0, LG/m;->a:[I

    array-length v0, v0

    new-array v1, v0, [I

    iget-object v2, p0, LG/m;->a:[I

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, LG/m;->a:[I

    array-length v4, v4

    if-ge v3, v4, :cond_0

    sub-int v4, v0, v3

    const/4 v5, 0x3

    sub-int/2addr v4, v5

    aget v4, v2, v4

    aput v4, v1, v3

    add-int/lit8 v4, v3, 0x1

    sub-int v5, v0, v3

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    aget v5, v2, v5

    aput v5, v1, v4

    add-int/lit8 v4, v3, 0x2

    sub-int v5, v0, v3

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget v5, v2, v5

    aput v5, v1, v4

    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_0
    new-instance v0, LG/m;

    invoke-direct {v0, v1}, LG/m;-><init>([I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, LG/m;

    if-eqz v0, :cond_1

    check-cast p1, LG/m;

    iget-object v0, p0, LG/m;->a:[I

    iget-object v1, p1, LG/m;->a:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, LG/m;->a:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit16 v0, v0, 0xa0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LG/m;->a:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method
