.class public LE/b;
.super LE/c;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/S;Lt/as;Landroid/net/wifi/WifiManager$WifiLock;Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/v;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, LE/c;-><init>(Lcom/google/googlenav/android/S;Lt/as;Landroid/net/wifi/WifiManager$WifiLock;Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/v;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, LE/b;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->e()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    :goto_0
    iget-object v1, p0, LE/b;->b:Lt/as;

    invoke-virtual {v1}, Lt/as;->j()Z

    move-result v1

    iget-object v2, p0, LE/b;->a:Lcom/google/googlenav/android/S;

    invoke-virtual {v2}, Lcom/google/googlenav/android/S;->e()Z

    move-result v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-nez v2, :cond_5

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_2

    const-string v0, "r"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v1, :cond_3

    const-string v1, "c"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v2, :cond_4

    const-string v1, "n"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LE/b;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    iget-object v2, p0, LE/b;->e:Lcom/google/googlenav/prefetch/android/v;

    const-string v3, "n"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/v;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    :goto_4
    return v0

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    const-string v1, ""

    goto :goto_2

    :cond_4
    const-string v1, ""

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_4
.end method

.method public b()Z
    .locals 4

    iget-object v0, p0, LE/b;->b:Lt/as;

    invoke-virtual {v0}, Lt/as;->j()Z

    move-result v0

    iget-object v1, p0, LE/b;->a:Lcom/google/googlenav/android/S;

    invoke-virtual {v1}, Lcom/google/googlenav/android/S;->e()Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_3

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_1

    const-string v0, "c"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v1, :cond_2

    const-string v1, "n"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LE/b;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    iget-object v2, p0, LE/b;->e:Lcom/google/googlenav/prefetch/android/v;

    const-string v3, "u"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/v;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_2
.end method
