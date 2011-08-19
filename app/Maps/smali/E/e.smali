.class public LE/e;
.super LE/c;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/S;Lt/as;Landroid/net/wifi/WifiManager$WifiLock;Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/v;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, LE/c;-><init>(Lcom/google/googlenav/android/S;Lt/as;Landroid/net/wifi/WifiManager$WifiLock;Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/v;)V

    return-void
.end method

.method private d()Z
    .locals 2

    iget-object v0, p0, LE/e;->a:Lcom/google/googlenav/android/S;

    invoke-virtual {v0}, Lcom/google/googlenav/android/S;->b()I

    move-result v0

    const/16 v1, 0x3c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Z
    .locals 2

    iget-object v0, p0, LE/e;->a:Lcom/google/googlenav/android/S;

    invoke-virtual {v0}, Lcom/google/googlenav/android/S;->b()I

    move-result v0

    const/16 v1, 0x35

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()Z
    .locals 1

    iget-object v0, p0, LE/e;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-static {v0}, Lcom/google/googlenav/android/CacheSettingsPreferenceActivity;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, LE/e;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->e()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v6

    :goto_0
    invoke-direct {p0}, LE/e;->d()Z

    move-result v1

    iget-object v2, p0, LE/e;->b:Lt/as;

    invoke-virtual {v2}, Lt/as;->j()Z

    move-result v2

    iget-object v3, p0, LE/e;->a:Lcom/google/googlenav/android/S;

    invoke-virtual {v3}, Lcom/google/googlenav/android/S;->f()Z

    move-result v3

    iget-object v4, p0, LE/e;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-virtual {v4}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->g()Z

    move-result v4

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-nez v3, :cond_7

    :cond_0
    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_3

    const-string v0, "r"

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v1, :cond_4

    const-string v1, "b"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v2, :cond_5

    const-string v1, "c"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v3, :cond_6

    const-string v1, "d"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LE/e;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    iget-object v2, p0, LE/e;->e:Lcom/google/googlenav/prefetch/android/v;

    const-string v3, "n"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/v;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LE/e;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->f()V

    :cond_1
    move v0, v5

    :goto_5
    return v0

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_1

    :cond_4
    const-string v1, ""

    goto :goto_2

    :cond_5
    const-string v1, ""

    goto :goto_3

    :cond_6
    const-string v1, ""

    goto :goto_4

    :cond_7
    invoke-direct {p0}, LE/e;->f()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, LE/e;->a:Lcom/google/googlenav/android/S;

    invoke-virtual {v0}, Lcom/google/googlenav/android/S;->c()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, LE/e;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    iget-object v1, p0, LE/e;->e:Lcom/google/googlenav/prefetch/android/v;

    const-string v2, "n"

    const-string v3, "e"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/v;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LE/e;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->f()V

    move v0, v5

    goto :goto_5

    :cond_8
    iget-object v0, p0, LE/e;->c:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    move v0, v5

    :goto_6
    int-to-long v1, v0

    sget-wide v3, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_a

    iget-object v1, p0, LE/e;->a:Lcom/google/googlenav/android/S;

    invoke-virtual {v1}, Lcom/google/googlenav/android/S;->d()Z

    move-result v1

    if-eqz v1, :cond_9

    move v0, v6

    goto :goto_5

    :cond_9
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    iget-object v0, p0, LE/e;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    iget-object v1, p0, LE/e;->e:Lcom/google/googlenav/prefetch/android/v;

    const-string v2, "n"

    const-string v3, "w"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/v;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LE/e;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->f()V

    iget-object v0, p0, LE/e;->c:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    move v0, v5

    goto :goto_5

    :cond_b
    iget-object v0, p0, LE/e;->a:Lcom/google/googlenav/android/S;

    invoke-virtual {v0}, Lcom/google/googlenav/android/S;->e()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, LE/e;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    iget-object v1, p0, LE/e;->e:Lcom/google/googlenav/prefetch/android/v;

    const-string v2, "n"

    const-string v3, "n"

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/v;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, LE/e;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->f()V

    move v0, v5

    goto :goto_5

    :cond_c
    move v0, v6

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_7
.end method

.method public b()Z
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, LE/e;->a:Lcom/google/googlenav/android/S;

    invoke-virtual {v0}, Lcom/google/googlenav/android/S;->a()Z

    move-result v0

    invoke-direct {p0}, LE/e;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LE/e;->a:Lcom/google/googlenav/android/S;

    invoke-virtual {v1}, Lcom/google/googlenav/android/S;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v5

    :goto_0
    invoke-direct {p0}, LE/e;->e()Z

    move-result v2

    iget-object v3, p0, LE/e;->b:Lt/as;

    invoke-virtual {v3}, Lt/as;->j()Z

    move-result v3

    iget-object v4, p0, LE/e;->a:Lcom/google/googlenav/android/S;

    invoke-virtual {v4}, Lcom/google/googlenav/android/S;->f()Z

    move-result v4

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-nez v4, :cond_8

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_3

    const-string v0, "p"

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v1, :cond_4

    const-string v1, "n"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v2, :cond_5

    const-string v1, "d"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v3, :cond_6

    const-string v1, "c"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v4, :cond_7

    const-string v1, "b"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LE/e;->d:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    iget-object v2, p0, LE/e;->e:Lcom/google/googlenav/prefetch/android/v;

    const-string v3, "u"

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/googlenav/prefetch/android/PrefetcherService;->a(Lcom/google/googlenav/prefetch/android/v;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    :goto_6
    return v0

    :cond_2
    move v1, v6

    goto :goto_0

    :cond_3
    const-string v0, ""

    goto :goto_1

    :cond_4
    const-string v1, ""

    goto :goto_2

    :cond_5
    const-string v1, ""

    goto :goto_3

    :cond_6
    const-string v1, ""

    goto :goto_4

    :cond_7
    const-string v1, ""

    goto :goto_5

    :cond_8
    move v0, v5

    goto :goto_6
.end method
