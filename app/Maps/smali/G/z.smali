.class public abstract LG/z;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(LG/z;)Z
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, LG/z;->a()I

    move-result v0

    invoke-virtual {p1}, LG/z;->a()I

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    move v0, v9

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, LG/z;->c()LG/Q;

    move-result-object v2

    invoke-virtual {p1}, LG/z;->c()LG/Q;

    move-result-object v3

    move-object v4, v2

    move v2, v9

    :goto_1
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, LG/z;->a(I)LG/Q;

    move-result-object v5

    move v6, v9

    move-object v7, v3

    :goto_2
    if-ge v6, v1, :cond_3

    invoke-virtual {p1, v6}, LG/z;->a(I)LG/Q;

    move-result-object v8

    invoke-static {v4, v5, v7, v8}, LG/H;->b(LG/Q;LG/Q;LG/Q;LG/Q;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    move-object v7, v8

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    move-object v4, v5

    goto :goto_1

    :cond_4
    move v0, v9

    goto :goto_0
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract a(I)LG/Q;
.end method

.method public abstract a(LG/Q;)Z
.end method

.method public a(LG/z;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, LG/z;->b()LG/S;

    move-result-object v0

    invoke-virtual {p1}, LG/z;->b()LG/S;

    move-result-object v1

    invoke-virtual {v0, v1}, LG/S;->b(LG/z;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v2

    :goto_1
    invoke-virtual {p1}, LG/z;->a()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, LG/z;->a(I)LG/Q;

    move-result-object v1

    invoke-virtual {p0, v1}, LG/z;->a(LG/Q;)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, LG/z;->c(LG/z;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public b()LG/S;
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, LG/z;->a(I)LG/Q;

    move-result-object v0

    invoke-virtual {v0}, LG/Q;->f()I

    move-result v0

    invoke-virtual {p0, v1}, LG/z;->a(I)LG/Q;

    move-result-object v1

    invoke-virtual {v1}, LG/Q;->g()I

    move-result v1

    const/4 v2, 0x1

    move v3, v0

    move v4, v0

    move v0, v2

    move v2, v1

    :goto_0
    invoke-virtual {p0}, LG/z;->a()I

    move-result v5

    if-ge v0, v5, :cond_0

    invoke-virtual {p0, v0}, LG/z;->a(I)LG/Q;

    move-result-object v5

    invoke-virtual {v5}, LG/Q;->f()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, v0}, LG/z;->a(I)LG/Q;

    move-result-object v5

    invoke-virtual {v5}, LG/Q;->f()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v0}, LG/z;->a(I)LG/Q;

    move-result-object v5

    invoke-virtual {v5}, LG/Q;->g()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v0}, LG/z;->a(I)LG/Q;

    move-result-object v5

    invoke-virtual {v5}, LG/Q;->g()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, LG/S;

    new-instance v5, LG/Q;

    invoke-direct {v5, v4, v2}, LG/Q;-><init>(II)V

    new-instance v2, LG/Q;

    invoke-direct {v2, v3, v1}, LG/Q;-><init>(II)V

    invoke-direct {v0, v5, v2}, LG/S;-><init>(LG/Q;LG/Q;)V

    return-object v0
.end method

.method public b(LG/z;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, LG/z;->b()LG/S;

    move-result-object v0

    invoke-virtual {p1}, LG/z;->b()LG/S;

    move-result-object v1

    invoke-virtual {v0, v1}, LG/S;->b(LG/z;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, LG/z;->a(I)LG/Q;

    move-result-object v0

    invoke-virtual {p0, v0}, LG/z;->a(LG/Q;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, LG/z;->a(I)LG/Q;

    move-result-object v0

    invoke-virtual {p1, v0}, LG/z;->a(LG/Q;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, LG/z;->c(LG/z;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public c()LG/Q;
    .locals 2

    invoke-virtual {p0}, LG/z;->a()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, LG/z;->a(I)LG/Q;

    move-result-object v0

    return-object v0
.end method
