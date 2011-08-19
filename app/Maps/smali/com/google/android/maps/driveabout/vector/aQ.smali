.class public Lcom/google/android/maps/driveabout/vector/aQ;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lak/h;

.field private b:LG/Q;

.field private c:I

.field private final d:LG/Q;

.field private e:Lcom/google/android/maps/driveabout/vector/t;

.field private f:Lcom/google/android/maps/driveabout/vector/bv;


# direct methods
.method public constructor <init>(Lak/h;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LG/Q;

    invoke-direct {v0, v1, v1}, LG/Q;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aQ;->b:LG/Q;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aQ;->c:I

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aQ;->d:LG/Q;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aQ;->e:Lcom/google/android/maps/driveabout/vector/t;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aQ;->f:Lcom/google/android/maps/driveabout/vector/bv;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aQ;->a:Lak/h;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/bF;LG/Q;)LG/Q;
    .locals 10

    const/4 v9, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->b()LG/Q;

    move-result-object v1

    invoke-virtual {v1}, LG/Q;->f()I

    move-result v2

    invoke-virtual {p2}, LG/Q;->f()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->q()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1}, LG/Q;->g()I

    move-result v3

    invoke-virtual {p2}, LG/Q;->g()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->q()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->d()I

    move-result v4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->e()I

    move-result v5

    div-int/lit8 v6, v4, 0x2

    div-int/lit8 v7, v5, 0x2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gt v8, v4, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-le v8, v5, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    neg-int v1, v6

    if-ge v2, v1, :cond_4

    neg-int v1, v4

    :goto_1
    neg-int v2, v7

    if-ge v3, v2, :cond_5

    neg-int v2, v5

    :goto_2
    if-nez v2, :cond_3

    if-eqz v1, :cond_1

    :cond_3
    int-to-float v0, v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->q()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v1, v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->q()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aQ;->d:LG/Q;

    invoke-virtual {v2, v0, v1}, LG/Q;->d(II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aQ;->d:LG/Q;

    invoke-virtual {p2, v0}, LG/Q;->e(LG/Q;)LG/Q;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-le v2, v6, :cond_7

    move v1, v4

    goto :goto_1

    :cond_5
    if-le v3, v7, :cond_6

    move v2, v5

    goto :goto_2

    :cond_6
    move v2, v9

    goto :goto_2

    :cond_7
    move v1, v9

    goto :goto_1
.end method

.method a(LG/Q;LG/Q;ILG/R;)V
    .locals 8

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aQ;->b:LG/Q;

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/aQ;->c:I

    invoke-virtual {p1}, LG/Q;->a()I

    move-result v0

    invoke-virtual {p1}, LG/Q;->c()I

    move-result v1

    invoke-virtual {p4}, LG/R;->e()I

    move-result v2

    int-to-double v2, v2

    int-to-double v4, v0

    const-wide v6, 0x3eb0c6f7a0b5ed8dL

    mul-double/2addr v4, v6

    const-wide v6, 0x3f91df46a2529d39L

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x3fd5752a00000000L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {p4}, LG/R;->d()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3fd5752a00000000L

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aQ;->f:Lcom/google/android/maps/driveabout/vector/bv;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aQ;->f:Lcom/google/android/maps/driveabout/vector/bv;

    invoke-interface {v4}, Lcom/google/android/maps/driveabout/vector/bv;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v4, 0x1

    :goto_0
    const/4 v5, 0x1

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v7, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p2}, LG/Q;->a()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p2}, LG/Q;->c()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v7, p3}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v7, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v7, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v7, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {v7, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aQ;->a:Lak/h;

    const/4 v1, 0x7

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lak/h;->a(I[BZZZ)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aQ;->e:Lcom/google/android/maps/driveabout/vector/t;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aQ;->e:Lcom/google/android/maps/driveabout/vector/t;

    invoke-interface {v0, p1, p3}, Lcom/google/android/maps/driveabout/vector/t;->a(LG/Q;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->b()LG/Q;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x1e

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aQ;->c:I

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->t()LG/F;

    move-result-object v2

    invoke-virtual {v2}, LG/F;->a()LG/R;

    move-result-object v2

    invoke-virtual {p0, v0, v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aQ;->a(LG/Q;LG/Q;ILG/R;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aQ;->b:LG/Q;

    invoke-virtual {v2, v0}, LG/Q;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aQ;->b:LG/Q;

    invoke-virtual {p0, p1, v2}, Lcom/google/android/maps/driveabout/vector/aQ;->a(Lcom/google/android/maps/driveabout/vector/bF;LG/Q;)LG/Q;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aQ;->b:LG/Q;

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, LG/Q;->d(LG/Q;)F

    move-result v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/aQ;->b:LG/Q;

    invoke-virtual {v0, v4}, LG/Q;->d(LG/Q;)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->t()LG/F;

    move-result-object v3

    invoke-virtual {v3}, LG/F;->a()LG/R;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/aQ;->a(LG/Q;LG/Q;ILG/R;)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aQ;->f:Lcom/google/android/maps/driveabout/vector/bv;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/t;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aQ;->e:Lcom/google/android/maps/driveabout/vector/t;

    return-void
.end method
