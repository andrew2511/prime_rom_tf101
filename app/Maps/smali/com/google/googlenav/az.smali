.class public Lcom/google/googlenav/az;
.super Lo/aN;


# static fields
.field private static c:Lcom/google/googlenav/az;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method protected constructor <init>(LaU/a;Lh/eY;Lcom/google/googlenav/bL;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lo/aN;-><init>(LaU/a;Lh/eY;Lcom/google/googlenav/bL;Lo/bx;)V

    iput-object v0, p0, Lcom/google/googlenav/az;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(LaU/a;Lh/eY;Lcom/google/googlenav/bL;)Lcom/google/googlenav/az;
    .locals 1

    new-instance v0, Lcom/google/googlenav/az;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlenav/az;-><init>(LaU/a;Lh/eY;Lcom/google/googlenav/bL;)V

    sput-object v0, Lcom/google/googlenav/az;->c:Lcom/google/googlenav/az;

    sget-object v0, Lcom/google/googlenav/az;->c:Lcom/google/googlenav/az;

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/az;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/az;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/16 v0, 0x55

    const-string v1, "o"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static a(Z)V
    .locals 1

    const-string v0, "RATINGS_TERMS_ACCEPTED_SETTING"

    invoke-static {p0, v0}, Lcom/google/googlenav/az;->a(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/az;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/googlenav/az;->s()V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "RATINGS_USER_IDENTITY"

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    :goto_0
    invoke-interface {v0, v1, v2}, Ln/a;->a(Ljava/lang/String;[B)Z

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-interface {v0}, Ln/a;->a()V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static d(Law/e;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Law/e;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Law/e;->b(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static l()Lcom/google/googlenav/az;
    .locals 1

    sget-object v0, Lcom/google/googlenav/az;->c:Lcom/google/googlenav/az;

    return-object v0
.end method

.method public static o()Z
    .locals 1

    const-string v0, "RATINGS_TERMS_ACCEPTED_SETTING"

    invoke-static {v0}, Lcom/google/googlenav/az;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static p()Z
    .locals 2

    const-string v0, "POST_REVIEW_TO_TWITTER_PREF"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lac/i;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static z()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "RATINGS_USER_IDENTITY"

    invoke-interface {v0, v1}, Ln/a;->b_(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized R_()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lo/aN;->R_()V

    const/16 v0, 0x55

    const-string v1, "l"

    const-string v2, "s"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lh/eY;LaU/a;Lo/aN;Z)Lo/X;
    .locals 6

    new-instance v0, Lcom/google/googlenav/bC;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/bC;-><init>(Lcom/google/googlenav/az;Lh/eY;LaU/a;Lo/aN;Z)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/google/googlenav/az;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Law/e;)Z
    .locals 2

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/az;->d(Law/e;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/az;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/googlenav/az;->e(Law/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/az;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/googlenav/az;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized an_()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lo/aN;->an_()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/googlenav/az;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/login/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/az;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public ao_()V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0}, Lo/aN;->ao_()V

    invoke-static {v1}, Lcom/google/googlenav/az;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/google/googlenav/login/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/az;->b(Z)V

    const/16 v0, 0x55

    const-string v1, "l"

    const-string v2, "e"

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public b()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/googlenav/az;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/az;->b:Lh/eY;

    const/16 v1, 0x312

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x321

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/login/h;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    const-string v0, "POST_REVIEW_TO_TWITTER_PREF"

    invoke-static {v0, p1}, Lac/i;->a(Ljava/lang/String;Z)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-interface {v0}, Ln/a;->a()V

    return-void
.end method

.method public c(Z)V
    .locals 1

    const-string v0, "REVIEW_TWITTER_INTERSTITIAL_SEEN"

    invoke-static {v0, p1}, Lac/i;->a(Ljava/lang/String;Z)V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-interface {v0}, Ln/a;->a()V

    return-void
.end method

.method protected m()Ljava/lang/String;
    .locals 1

    const-string v0, "RATINGS_TERMS_ACCEPTED_SETTING"

    return-object v0
.end method

.method protected n()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected q()V
    .locals 5

    const/16 v0, 0x55

    const-string v1, "o"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "r=l"

    aput-object v4, v2, v3

    invoke-static {v2}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public y()Z
    .locals 2

    const-string v0, "REVIEW_TWITTER_INTERSTITIAL_SEEN"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lac/i;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
