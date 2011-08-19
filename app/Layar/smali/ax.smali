.class final Lax;
.super Ljava/lang/Object;

# interfaces
.implements Lbg$a;


# instance fields
.field private final a:Lbh;

.field private final b:Lbk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbk",
            "<",
            "Lay",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final c:Z

.field private final d:Lav;

.field private final e:Lbd;

.field private f:Lao;


# direct methods
.method constructor <init>(Lbh;ZLbk;Lav;Lbd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbh;",
            "Z",
            "Lbk",
            "<",
            "Lay",
            "<*>;>;",
            "Lav;",
            "Lbd;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lax;->a:Lbh;

    iput-boolean p2, p0, Lax;->c:Z

    iput-object p3, p0, Lax;->b:Lbk;

    iput-object p4, p0, Lax;->d:Lav;

    iput-object p5, p0, Lax;->e:Lbd;

    return-void
.end method

.method private a(Laf;Lao;)V
    .locals 2

    iget-object v0, p0, Lax;->a:Lbh;

    invoke-virtual {v0}, Lbh;->a()Lag;

    move-result-object v0

    iget-object v1, p0, Lax;->f:Lao;

    invoke-virtual {v1}, Lao;->d()Lat;

    move-result-object v1

    invoke-interface {v0, p1}, Lag;->a(Laf;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lat;->a(Ljava/lang/String;Lao;)V

    return-void
.end method

.method private a(Laf;Lbi;)V
    .locals 1

    invoke-direct {p0, p2}, Lax;->d(Lbi;)Lao;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lax;->a(Laf;Lao;)V

    return-void
.end method

.method private a(Lao;)V
    .locals 0

    invoke-static {p1}, Lbm;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lax;->f:Lao;

    return-void
.end method

.method private static a(Laf;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lax;->b(Laf;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Laf;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Laf;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private d(Lbi;)Lao;
    .locals 7

    iget-object v0, p0, Lax;->a:Lbh;

    invoke-virtual {v0, p1}, Lbh;->a(Lbi;)Lbg;

    move-result-object v6

    new-instance v0, Lax;

    iget-object v1, p0, Lax;->a:Lbh;

    iget-boolean v2, p0, Lax;->c:Z

    iget-object v3, p0, Lax;->b:Lbk;

    iget-object v4, p0, Lax;->d:Lav;

    iget-object v5, p0, Lax;->e:Lbd;

    invoke-direct/range {v0 .. v5}, Lax;-><init>(Lbh;ZLbk;Lav;Lbd;)V

    invoke-virtual {v6, v0}, Lbg;->a(Lbg$a;)V

    iget-object v0, v0, Lax;->f:Lao;

    return-object v0
.end method

.method private e(Lbi;)Lao;
    .locals 5

    iget-object v0, p0, Lax;->b:Lbk;

    invoke-virtual {p1, v0}, Lbi;->a(Lbk;)Lbj;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v1, Lbj;->a:Ljava/lang/Object;

    check-cast v0, Lay;

    iget-object v1, v1, Lbj;->b:Ljava/lang/Object;

    check-cast v1, Lbi;

    invoke-virtual {p0, v1}, Lax;->a(Lbi;)V

    :try_start_0
    invoke-virtual {v1}, Lbi;->a()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v1, Lbi;->a:Ljava/lang/reflect/Type;

    iget-object v4, p0, Lax;->d:Lav;

    invoke-interface {v0, v2, v3, v4}, Lay;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lav;)Lao;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Las;->h()Las;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v1}, Lax;->b(Lbi;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lax;->b(Lbi;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lat;

    invoke-direct {v0}, Lat;-><init>()V

    invoke-direct {p0, v0}, Lax;->a(Lao;)V

    return-void
.end method

.method public final a(Laf;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    invoke-static {p1, p3}, Lax;->a(Laf;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lax;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Las;->h()Las;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lax;->a(Laf;Lao;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p3}, Lax;->b(Laf;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lbi;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p2, v2}, Lbi;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-direct {p0, p1, v1}, Lax;->a(Laf;Lbi;)V
    :try_end_0
    .catch Laa; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0, p1}, Laa;->a(Laf;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public final a(Lbi;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lax;->e:Lbd;

    invoke-virtual {v0, p1}, Lbd;->b(Lbi;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Laa;

    invoke-direct {v0, p1}, Laa;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lax;->e:Lbd;

    invoke-virtual {v0, p1}, Lbd;->a(Lbi;)Lbi;

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Las;->h()Las;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lax;->a(Lao;)V

    return-void

    :cond_0
    new-instance v0, Lau;

    invoke-direct {v0, p1}, Lau;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lak;

    invoke-direct {v0}, Lak;-><init>()V

    invoke-direct {p0, v0}, Lax;->a(Lao;)V

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p2}, Lbw;->a(Ljava/lang/reflect/Type;)Z

    move-result v1

    invoke-static {v1}, Lbm;->a(Z)V

    new-instance v1, Lbs;

    invoke-direct {v1, p2}, Lbs;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v1}, Lbs;->d()Ljava/lang/reflect/Type;

    move-result-object v1

    move v2, v5

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lbi;

    invoke-direct {v4, v3, v1, v5}, Lbi;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-virtual {v4}, Lbi;->a()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lax;->f:Lao;

    invoke-virtual {v3}, Lao;->e()Lak;

    move-result-object v3

    invoke-static {}, Las;->h()Las;

    move-result-object v4

    invoke-virtual {v3, v4}, Lak;->a(Lao;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v4}, Lax;->d(Lbi;)Lao;

    move-result-object v3

    iget-object v4, p0, Lax;->f:Lao;

    invoke-virtual {v4}, Lao;->e()Lak;

    move-result-object v4

    invoke-virtual {v4, v3}, Lak;->a(Lao;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final b()Lao;
    .locals 1

    iget-object v0, p0, Lax;->f:Lao;

    return-object v0
.end method

.method public final b(Laf;Ljava/lang/reflect/Type;Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    invoke-static {p1, p3}, Lax;->a(Laf;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lax;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Las;->h()Las;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lax;->a(Laf;Lao;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, p3}, Lax;->b(Laf;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lbi;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p2, v2}, Lbi;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-direct {p0, p1, v1}, Lax;->a(Laf;Lbi;)V
    :try_end_0
    .catch Laa; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0, p1}, Laa;->a(Laf;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public final b(Lbi;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lax;->e:Lbd;

    invoke-virtual {v0}, Lbd;->a()Lbi;

    :cond_0
    return-void
.end method

.method public final c(Laf;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lax;->f:Lao;

    invoke-virtual {v0}, Lao;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "condition failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Laa; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1, p3}, Laf;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lax;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Las;->h()Las;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lax;->a(Laf;Lao;)V

    :cond_1
    move v0, v4

    :goto_0
    return v0

    :cond_2
    new-instance v1, Lbi;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p2, v2}, Lbi;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Type;Z)V

    invoke-direct {p0, v1}, Lax;->e(Lbi;)Lao;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, v0}, Lax;->a(Laf;Lao;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Laa; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0, p1}, Laa;->a(Laf;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method

.method public final c(Lbi;)Z
    .locals 2

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1}, Lbi;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lax;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Las;->h()Las;

    move-result-object v0

    invoke-direct {p0, v0}, Lax;->a(Lao;)V

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lax;->e(Lbi;)Lao;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lax;->a(Lao;)V
    :try_end_0
    .catch Laa; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laa;->a(Laf;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method
