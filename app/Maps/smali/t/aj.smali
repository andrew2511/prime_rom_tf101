.class Lt/aj;
.super Lt/Z;


# instance fields
.field final synthetic a:Lt/M;


# direct methods
.method constructor <init>(Lt/M;)V
    .locals 0

    iput-object p1, p0, Lt/aj;->a:Lt/M;

    invoke-direct {p0, p1}, Lt/Z;-><init>(Lt/aD;)V

    return-void
.end method


# virtual methods
.method protected a(I)LG/u;
    .locals 6

    const/16 v3, 0x100

    iget-object v0, p0, Lt/aj;->c:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, LG/G;

    invoke-virtual {p0, p1}, Lt/aj;->d(I)Lt/q;

    move-result-object v1

    invoke-virtual {v1}, Lt/q;->a()LG/w;

    move-result-object v1

    invoke-virtual {p0}, Lt/aj;->l()I

    move-result v2

    iget-object v4, p0, Lt/aj;->c:[[B

    aget-object v5, v4, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, LG/G;-><init>(LG/w;III[B)V

    goto :goto_0
.end method

.method protected c(I)[B
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lt/aj;->c:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    iget-object v0, p0, Lt/aj;->c:[[B

    aget-object v0, v0, p1

    array-length v0, v0

    add-int/lit8 v0, v0, 0x20

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    :try_start_0
    invoke-virtual {p0, p1}, Lt/aj;->d(I)Lt/q;

    move-result-object v0

    invoke-virtual {v0}, Lt/q;->a()LG/w;

    move-result-object v0

    invoke-virtual {p0}, Lt/aj;->l()I

    move-result v1

    const/16 v2, 0x100

    const/16 v3, 0x100

    iget-object v4, p0, Lt/aj;->c:[[B

    aget-object v4, v4, p1

    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static/range {v0 .. v5}, LG/G;->a(LG/w;III[BLjava/io/DataOutput;)V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v7

    goto :goto_0
.end method
