.class Lt/k;
.super Lt/Z;


# instance fields
.field final synthetic a:Lt/as;


# direct methods
.method constructor <init>(Lt/as;)V
    .locals 0

    iput-object p1, p0, Lt/k;->a:Lt/as;

    invoke-direct {p0, p1}, Lt/Z;-><init>(Lt/aD;)V

    return-void
.end method


# virtual methods
.method protected a(I)LG/u;
    .locals 4

    iget-object v0, p0, Lt/k;->c:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lt/k;->d(I)Lt/q;

    move-result-object v0

    invoke-virtual {v0}, Lt/q;->a()LG/w;

    move-result-object v0

    iget-object v1, p0, Lt/k;->c:[[B

    aget-object v1, v1, p1

    iget-object v2, p0, Lt/k;->a:Lt/as;

    iget v2, v2, Lt/as;->g:I

    invoke-static {v0, v1, v2}, LG/P;->a(LG/w;[BI)LG/P;

    move-result-object v0

    iget-object v1, p0, Lt/k;->a:Lt/as;

    invoke-static {v1}, Lt/as;->a(Lt/as;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->p()Lac/p;

    move-result-object v1

    iget-object v2, p0, Lt/k;->a:Lt/as;

    invoke-static {v2}, Lt/as;->a(Lt/as;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, LG/P;->a(Lac/p;J)V

    goto :goto_0
.end method

.method protected b(I)[B
    .locals 2

    add-int/lit8 v0, p1, 0x4

    new-array v0, v0, [B

    iget v1, p0, Lt/k;->b:I

    invoke-static {v1, v0}, LG/P;->a(I[B)V

    return-object v0
.end method

.method protected c(I)[B
    .locals 1

    iget-object v0, p0, Lt/k;->c:[[B

    aget-object v0, v0, p1

    return-object v0
.end method
