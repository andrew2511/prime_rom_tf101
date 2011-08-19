.class Lt/O;
.super Lt/Z;


# instance fields
.field final synthetic a:Lt/f;


# direct methods
.method constructor <init>(Lt/f;)V
    .locals 0

    iput-object p1, p0, Lt/O;->a:Lt/f;

    invoke-direct {p0, p1}, Lt/Z;-><init>(Lt/aD;)V

    return-void
.end method


# virtual methods
.method protected a(I)LG/u;
    .locals 2

    iget-object v0, p0, Lt/O;->c:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lt/O;->d(I)Lt/q;

    move-result-object v0

    invoke-virtual {v0}, Lt/q;->a()LG/w;

    move-result-object v0

    iget-object v1, p0, Lt/O;->c:[[B

    aget-object v1, v1, p1

    invoke-static {v0, v1}, LS/e;->a(LG/w;[B)LS/e;

    move-result-object v0

    goto :goto_0
.end method

.method protected c(I)[B
    .locals 1

    iget-object v0, p0, Lt/O;->c:[[B

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected l()I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lt/O;->c:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lt/O;->c:[[B

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lt/O;->c:[[B

    aget-object v1, v1, v0

    invoke-static {v1}, LS/e;->a([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    return v0

    :catch_0
    move-exception v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
