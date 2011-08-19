.class public abstract LG/ab;
.super Ljava/lang/Object;


# instance fields
.field protected a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(LG/z;)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, LG/ab;->h()I

    move-result v0

    invoke-virtual {p1}, LG/z;->a()I

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    move v0, v10

    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [LG/Q;

    invoke-virtual {p1}, LG/z;->c()LG/Q;

    move-result-object v3

    move v4, v10

    :goto_1
    if-ge v4, v0, :cond_4

    invoke-virtual {p0, v4, v2}, LG/ab;->a(I[LG/Q;)V

    move v5, v10

    move-object v6, v3

    :goto_2
    if-ge v5, v1, :cond_3

    invoke-virtual {p1, v5}, LG/z;->a(I)LG/Q;

    move-result-object v7

    aget-object v8, v2, v10

    aget-object v9, v2, v11

    invoke-static {v8, v9, v6, v7}, LG/H;->b(LG/Q;LG/Q;LG/Q;LG/Q;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v0, v11

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    move-object v6, v7

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move v0, v10

    goto :goto_0
.end method


# virtual methods
.method public abstract a(I)LG/Q;
.end method

.method public a()LG/R;
    .locals 1

    invoke-virtual {p0}, LG/ab;->c()LG/z;

    move-result-object v0

    invoke-virtual {v0}, LG/z;->b()LG/S;

    move-result-object v0

    invoke-static {v0}, LG/R;->a(LG/S;)LG/R;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(I[LG/Q;)V
.end method

.method public abstract a(LG/Q;)Z
.end method

.method public a(LG/z;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, LG/ab;->a()LG/R;

    move-result-object v0

    invoke-virtual {p1}, LG/z;->b()LG/S;

    move-result-object v1

    invoke-virtual {v0, v1}, LG/R;->b(LG/z;)Z

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

    invoke-virtual {p0, v1}, LG/ab;->a(LG/Q;)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, LG/ab;->c(LG/z;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public b(LG/z;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, LG/ab;->a()LG/R;

    move-result-object v0

    invoke-virtual {p1}, LG/z;->b()LG/S;

    move-result-object v1

    invoke-virtual {v0, v1}, LG/R;->b(LG/z;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, LG/z;->a(I)LG/Q;

    move-result-object v0

    invoke-virtual {p0, v0}, LG/ab;->a(LG/Q;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, LG/ab;->a(I)LG/Q;

    move-result-object v0

    invoke-virtual {p1, v0}, LG/z;->a(LG/Q;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, LG/ab;->c(LG/z;)Z

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

.method public abstract c()LG/z;
.end method

.method public abstract h()I
.end method
