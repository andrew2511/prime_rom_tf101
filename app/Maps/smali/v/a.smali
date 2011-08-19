.class public Lv/a;
.super Ljava/lang/Object;

# interfaces
.implements Lh/eJ;
.implements Lv/C;
.implements Lv/l;
.implements Lv/u;


# instance fields
.field private a:Z

.field private final b:Lv/m;

.field private final c:Lv/s;

.field private final d:Lv/b;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lh/eY;

.field private h:Ljava/util/List;


# direct methods
.method public constructor <init>(Lv/m;Lh/eY;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SYNC_DATA_LOCAL"

    iput-object v0, p0, Lv/a;->e:Ljava/lang/String;

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lv/a;->h:Ljava/util/List;

    iput-object p1, p0, Lv/a;->b:Lv/m;

    iput-object p2, p0, Lv/a;->g:Lh/eY;

    new-instance v0, Lv/s;

    invoke-direct {v0}, Lv/s;-><init>()V

    iput-object v0, p0, Lv/a;->c:Lv/s;

    new-instance v0, Lv/b;

    invoke-direct {v0}, Lv/b;-><init>()V

    iput-object v0, p0, Lv/a;->d:Lv/b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv/a;->f:Z

    invoke-direct {p0}, Lv/a;->i()V

    return-void
.end method

.method private a(Law/e;Ljava/util/List;)V
    .locals 5

    const/4 v4, 0x2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v4}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Law/e;

    invoke-virtual {p0, v4}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p2, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private c(Law/e;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Law/e;->d(I)I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x6

    invoke-static {p1, v1}, Law/b;->h(Law/e;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lv/a;->c:Lv/s;

    invoke-virtual {v1, v0}, Lv/s;->d(I)V

    invoke-direct {p0, v0}, Lv/a;->e(I)V

    :cond_1
    invoke-virtual {p1, v7}, Law/e;->i(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    invoke-virtual {p1, v7, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-virtual {v3, v6}, Law/e;->h(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lv/a;->c:Lv/s;

    invoke-virtual {v4, v0, v3}, Lv/s;->a(ILaw/e;)Z

    :cond_2
    invoke-virtual {v3, v5}, Law/e;->h(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lv/a;->d:Lv/b;

    invoke-virtual {v4, v0, v3}, Lv/b;->b(ILaw/e;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lv/a;->d:Lv/b;

    invoke-virtual {p1, v6}, Law/e;->e(I)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lv/b;->a(IJ)V

    goto :goto_0
.end method

.method private declared-synchronized d(ILjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lv/a;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/u;

    invoke-interface {v0, p1, p2}, Lv/u;->c(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method private d(Law/e;)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Law/e;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lv/a;->f:Z

    :cond_0
    return-void
.end method

.method private d(Z)V
    .locals 1

    iput-boolean p1, p0, Lv/a;->a:Z

    if-eqz p1, :cond_0

    const-string v0, "SYNC_DATA"

    :goto_0
    iput-object v0, p0, Lv/a;->e:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "SYNC_DATA_LOCAL"

    goto :goto_0
.end method

.method private e(I)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lv/a;->d(ILjava/lang/String;)V

    return-void
.end method

.method private e(ILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "n="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    const-string v2, "i"

    invoke-static {v1, v2, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private e(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv/a;->f:Z

    invoke-virtual {p0}, Lv/a;->d()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lv/a;->d(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lv/a;->d()V

    :goto_0
    invoke-direct {p0}, Lv/a;->j()V

    invoke-virtual {p0}, Lv/a;->b()V

    invoke-virtual {p0}, Lv/a;->c()V

    return-void

    :cond_0
    iget-object v0, p0, Lv/a;->d:Lv/b;

    invoke-virtual {v0}, Lv/b;->b()V

    invoke-virtual {p0}, Lv/a;->e()V

    goto :goto_0
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lv/a;->c:Lv/s;

    invoke-virtual {v0, p0}, Lv/s;->a(Lv/u;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lv/a;->d(Z)V

    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lv/a;->c:Lv/s;

    invoke-virtual {v0}, Lv/s;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lv/a;->e(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private k()Law/e;
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, LaX/b;->d:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget-boolean v2, p0, Lv/a;->f:Z

    invoke-virtual {v0, v1, v2}, Law/e;->b(IZ)V

    return-object v0
.end method


# virtual methods
.method public a()Law/e;
    .locals 1

    iget-object v0, p0, Lv/a;->d:Lv/b;

    invoke-virtual {v0}, Lv/b;->a()Law/e;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/String;)Law/e;
    .locals 2

    iget-object v0, p0, Lv/a;->d:Lv/b;

    invoke-virtual {v0, p1, p2}, Lv/b;->a(ILjava/lang/String;)Law/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lv/a;->c:Lv/s;

    invoke-virtual {v0, p1, p2}, Lv/s;->a(ILjava/lang/String;)Law/e;

    move-result-object v0

    goto :goto_0
.end method

.method public a(I)Ljava/util/List;
    .locals 4

    iget-object v0, p0, Lv/a;->c:Lv/s;

    invoke-virtual {v0, p1}, Lv/s;->a(I)Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lv/a;->d:Lv/b;

    invoke-virtual {v0, p1}, Lv/b;->b(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/e;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lv/a;->a(Law/e;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public a(Law/e;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-boolean v0, p0, Lv/a;->a:Z

    if-nez v0, :cond_1

    const-string v0, "UNKNOWN"

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "MyPlaces: updateStorage called with sync off"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v3}, Law/e;->i(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v3, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    invoke-direct {p0, v2}, Lv/a;->c(Law/e;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v4}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v4}, Law/e;->f(I)Law/e;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v3, v1}, Law/b;->c(Law/e;II)I

    move-result v0

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/j;->a(I)V

    goto :goto_0
.end method

.method a(Lh/eY;)V
    .locals 0

    iput-object p1, p0, Lv/a;->g:Lh/eY;

    return-void
.end method

.method public declared-synchronized a(Lv/u;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lv/a;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Z)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lv/a;->d:Lv/b;

    invoke-virtual {v0, v2}, Lv/b;->b(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lv/a;->e(ILjava/lang/String;)V

    invoke-direct {p0, v2}, Lv/a;->e(Z)V

    return-void
.end method

.method public a(ILaw/e;)Z
    .locals 3

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Law/e;->f(I)Law/e;

    move-result-object v0

    iget-object v1, p0, Lv/a;->d:Lv/b;

    invoke-virtual {v1, p1, v0}, Lv/b;->a(ILaw/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lv/a;->d(ILjava/lang/String;)V

    invoke-virtual {p0}, Lv/a;->c()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)Lv/C;
    .locals 1

    iget-object v0, p0, Lv/a;->c:Lv/s;

    invoke-virtual {v0, p1}, Lv/s;->b(I)Lv/C;

    return-object p0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lv/a;->c:Lv/s;

    invoke-virtual {v0}, Lv/s;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lv/a;->c(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lv/a;->c:Lv/s;

    invoke-virtual {v0, p1, p2}, Lv/s;->b(ILjava/lang/String;)V

    return-void
.end method

.method public b(Law/e;)V
    .locals 1

    iget-object v0, p0, Lv/a;->d:Lv/b;

    invoke-virtual {v0, p1}, Lv/b;->a(Law/e;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lv/a;->d:Lv/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lv/b;->b(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "2"

    invoke-direct {p0, v0, v1}, Lv/a;->e(ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lv/a;->e(Z)V

    return-void
.end method

.method public b(ILaw/e;)Z
    .locals 1

    iget-object v0, p0, Lv/a;->c:Lv/s;

    invoke-virtual {v0, p1, p2}, Lv/s;->a(ILaw/e;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 2

    iget-boolean v0, p0, Lv/a;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lv/a;->d:Lv/b;

    invoke-virtual {v0}, Lv/b;->a()Law/e;

    move-result-object v0

    iget-object v1, p0, Lv/a;->b:Lv/m;

    invoke-interface {v1, v0}, Lv/m;->b(Law/e;)V

    iget-object v1, p0, Lv/a;->d:Lv/b;

    invoke-virtual {v1, v0}, Lv/b;->a(Law/e;)V

    goto :goto_0
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lv/a;->d:Lv/b;

    invoke-virtual {v0, p1}, Lv/b;->a(I)V

    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lv/a;->d(ILjava/lang/String;)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 4

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    :try_start_0
    new-instance v1, Law/e;

    sget-object v2, LaX/b;->e:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    const/4 v2, 0x1

    invoke-direct {p0}, Lv/a;->k()Law/e;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Law/e;->b(ILaw/e;)V

    const/4 v2, 0x2

    iget-object v3, p0, Lv/a;->c:Lv/s;

    invoke-virtual {v3}, Lv/s;->c()Law/e;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Law/e;->b(ILaw/e;)V

    const/4 v2, 0x3

    iget-object v3, p0, Lv/a;->d:Lv/b;

    invoke-virtual {v3}, Lv/b;->d()Law/e;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Law/e;->b(ILaw/e;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v3, v1}, Law/b;->a(Ljava/io/DataOutput;Law/e;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v2, p0, Lv/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ln/a;->b([BLjava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "UNKNOWNError saving Sync prefs"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "UNKNOWNOOME saving Sync prefs"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lv/a;->c:Lv/s;

    invoke-virtual {v0, p1}, Lv/s;->d(I)V

    iget-object v0, p0, Lv/a;->d:Lv/b;

    invoke-virtual {v0, p1}, Lv/b;->c(I)V

    return-void
.end method

.method public e()V
    .locals 3

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    iget-object v1, p0, Lv/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ln/a;->c(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    sget-object v0, LaX/b;->e:Law/f;

    invoke-static {v0, v1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v1

    invoke-direct {p0, v1}, Lv/a;->d(Law/e;)V

    iget-object v1, p0, Lv/a;->c:Lv/s;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lv/s;->a(Law/e;)V

    iget-object v1, p0, Lv/a;->d:Lv/b;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lv/b;->b(Law/e;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UNKNOWNError loading Sync prefs"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public f()V
    .locals 8

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-boolean v0, p0, Lv/a;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->y()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lv/a;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lv/a;->d:Lv/b;

    invoke-virtual {v0}, Lv/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    invoke-direct {p0, v5, v0}, Lv/a;->e(ILjava/lang/String;)V

    iput-boolean v5, p0, Lv/a;->f:Z

    :cond_2
    iget-boolean v0, p0, Lv/a;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lv/a;->g:Lh/eY;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lv/a;->g:Lh/eY;

    const/16 v1, 0x414

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x413

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v6, v3

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lh/eJ;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lv/a;->f:Z

    invoke-direct {p0, v0}, Lv/a;->e(Z)V

    goto :goto_0
.end method

.method public g()V
    .locals 1

    iget-boolean v0, p0, Lv/a;->a:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lv/a;->b:Lv/m;

    invoke-interface {v0}, Lv/m;->b()V

    iget-object v0, p0, Lv/a;->c:Lv/s;

    invoke-virtual {v0}, Lv/s;->b()V

    iget-object v0, p0, Lv/a;->d:Lv/b;

    invoke-virtual {v0}, Lv/b;->b()V

    invoke-virtual {p0}, Lv/a;->d()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lv/a;->d(Z)V

    invoke-virtual {p0}, Lv/a;->e()V

    invoke-direct {p0}, Lv/a;->j()V

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lv/a;->a:Z

    return v0
.end method
