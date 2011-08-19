.class public final Lf/S;
.super Lf/A;


# instance fields
.field private final a:I

.field private final b:[[Lf/h;

.field private final c:Lf/h;


# direct methods
.method public constructor <init>([Lf/h;III[[Lf/h;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lf/A;-><init>([Lf/h;II)V

    iput p4, p0, Lf/S;->a:I

    iput-object p5, p0, Lf/S;->b:[[Lf/h;

    invoke-direct {p0}, Lf/S;->m()Lf/h;

    move-result-object v0

    iput-object v0, p0, Lf/S;->c:Lf/h;

    return-void
.end method

.method public static a([JLf/h;Lf/l;)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-nez p0, :cond_0

    move v0, v10

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p2}, Lf/h;->a(Lf/l;)I

    move-result v0

    invoke-virtual {p1, p2}, Lf/h;->b(Lf/l;)I

    move-result v1

    move v2, v11

    move v3, v10

    move v4, v10

    :goto_1
    array-length v5, p0

    sub-int/2addr v5, v11

    if-ge v3, v5, :cond_5

    aget-wide v5, p0, v3

    invoke-static {v5, v6}, Lcom/google/googlenav/ui/J;->a(J)I

    move-result v5

    aget-wide v6, p0, v3

    invoke-static {v6, v7}, Lcom/google/googlenav/ui/J;->b(J)I

    move-result v6

    aget-wide v7, p0, v2

    invoke-static {v7, v8}, Lcom/google/googlenav/ui/J;->a(J)I

    move-result v7

    aget-wide v8, p0, v2

    invoke-static {v8, v9}, Lcom/google/googlenav/ui/J;->b(J)I

    move-result v8

    if-gt v6, v1, :cond_1

    if-lt v1, v8, :cond_2

    :cond_1
    if-gt v8, v1, :cond_3

    if-ge v1, v6, :cond_3

    :cond_2
    sub-int/2addr v7, v5

    sub-int v9, v1, v6

    mul-int/2addr v7, v9

    sub-int v6, v8, v6

    div-int v6, v7, v6

    add-int/2addr v5, v6

    if-ge v0, v5, :cond_3

    if-nez v4, :cond_4

    move v4, v11

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v4, v10

    goto :goto_2

    :cond_5
    move v0, v4

    goto :goto_0
.end method

.method public static b(Law/e;)Lf/S;
    .locals 9

    const/16 v8, 0xc

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Law/e;->d(I)I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Law/e;->d(I)I

    move-result v3

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Law/e;->d(I)I

    move-result v4

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    move v2, v4

    :goto_0
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Law/e;->c(I)[B

    move-result-object v0

    invoke-static {v0}, Lf/S;->a([B)[Lf/h;

    move-result-object v1

    const/4 v0, 0x0

    check-cast v0, [[Lf/h;

    invoke-virtual {p0, v8}, Law/e;->i(I)I

    move-result v5

    if-lez v5, :cond_0

    new-array v0, v5, [[Lf/h;

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    invoke-virtual {p0, v8, v6}, Law/e;->b(II)[B

    move-result-object v7

    invoke-static {v7}, Lf/A;->a([B)[Lf/h;

    move-result-object v7

    aput-object v7, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    move-object v5, v0

    new-instance v0, Lf/S;

    invoke-direct/range {v0 .. v5}, Lf/S;-><init>([Lf/h;III[[Lf/h;)V

    return-object v0

    :cond_1
    move v2, v0

    goto :goto_0
.end method

.method private m()Lf/h;
    .locals 9

    const-wide/16 v3, 0x0

    invoke-virtual {p0}, Lf/S;->h()[Lf/h;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    move-wide v5, v3

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v7, v0, v2

    invoke-virtual {v7}, Lf/h;->b()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    aget-object v7, v0, v2

    invoke-virtual {v7}, Lf/h;->d()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    int-to-long v7, v1

    div-long/2addr v5, v7

    int-to-long v0, v1

    div-long v0, v3, v0

    new-instance v2, Lf/h;

    long-to-int v3, v5

    long-to-int v0, v0

    invoke-direct {v2, v3, v0}, Lf/h;-><init>(II)V

    return-object v2
.end method


# virtual methods
.method public ap_()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lf/S;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lf/S;->a:I

    return v0
.end method

.method public g()Lf/h;
    .locals 1

    iget-object v0, p0, Lf/S;->c:Lf/h;

    return-object v0
.end method

.method public i()[[Lf/h;
    .locals 1

    iget-object v0, p0, Lf/S;->b:[[Lf/h;

    return-object v0
.end method

.method public j()Law/e;
    .locals 4

    new-instance v0, Law/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/16 v1, 0x9

    invoke-virtual {p0}, Lf/S;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/16 v1, 0x8

    invoke-virtual {p0}, Lf/S;->k()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/16 v1, 0xb

    iget v2, p0, Lf/S;->a:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/16 v1, 0xa

    invoke-virtual {p0}, Lf/S;->h()[Lf/h;

    move-result-object v2

    invoke-static {v2}, Lf/S;->a([Lf/h;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(I[B)V

    iget-object v1, p0, Lf/S;->b:[[Lf/h;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lf/S;->b:[[Lf/h;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const/16 v2, 0xc

    iget-object v3, p0, Lf/S;->b:[[Lf/h;

    aget-object v3, v3, v1

    invoke-static {v3}, Lf/S;->a([Lf/h;)[B

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Law/e;->a(I[B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
