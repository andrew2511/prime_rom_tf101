.class public LN/g;
.super LN/j;


# instance fields
.field private c:Lcom/google/googlenav/aG;


# direct methods
.method public constructor <init>(Li/x;)V
    .locals 0

    invoke-direct {p0, p1}, LN/j;-><init>(Li/x;)V

    return-void
.end method

.method private b()Lcom/google/googlenav/aG;
    .locals 1

    iget-object v0, p0, LN/g;->c:Lcom/google/googlenav/aG;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/bf;)I
    .locals 1

    invoke-direct {p0}, LN/g;->b()Lcom/google/googlenav/aG;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/aG;->e()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)Lcom/google/googlenav/aG;
    .locals 1

    iget-object v0, p0, LN/g;->a:Li/x;

    invoke-virtual {v0}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, LN/g;->b()Lcom/google/googlenav/aG;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Z
    .locals 8

    const/16 v7, 0xf

    const/16 v4, 0xc

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, LN/j;->a()Z

    move-result v0

    iget-object v1, p0, LN/g;->c:Lcom/google/googlenav/aG;

    iget-object v2, p0, LN/g;->b:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->ao()[Lcom/google/googlenav/aG;

    move-result-object v2

    iget-object v3, p0, LN/g;->a:Li/x;

    invoke-virtual {v3}, Li/x;->aX()Lf/l;

    move-result-object v3

    invoke-virtual {v3}, Lf/l;->a()I

    move-result v3

    if-ge v3, v4, :cond_1

    aget-object v2, v2, v5

    iput-object v2, p0, LN/g;->c:Lcom/google/googlenav/aG;

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, LN/g;->c:Lcom/google/googlenav/aG;

    if-eq v1, v0, :cond_4

    :cond_0
    move v0, v6

    :goto_1
    return v0

    :cond_1
    if-lt v3, v4, :cond_2

    if-ge v3, v7, :cond_2

    aget-object v2, v2, v6

    iput-object v2, p0, LN/g;->c:Lcom/google/googlenav/aG;

    goto :goto_0

    :cond_2
    if-lt v3, v7, :cond_3

    const/16 v4, 0x13

    if-ge v3, v4, :cond_3

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iput-object v2, p0, LN/g;->c:Lcom/google/googlenav/aG;

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    aget-object v2, v2, v3

    iput-object v2, p0, LN/g;->c:Lcom/google/googlenav/aG;

    goto :goto_0

    :cond_4
    move v0, v5

    goto :goto_1
.end method

.method public b(Lcom/google/googlenav/bf;)I
    .locals 1

    invoke-direct {p0}, LN/g;->b()Lcom/google/googlenav/aG;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/aG;->f()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
