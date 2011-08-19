.class LaB/c;
.super LaB/f;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private h:Lk/l;

.field private i:LaB/f;


# direct methods
.method public constructor <init>(LaB/f;IIIIII)V
    .locals 1

    invoke-direct {p0}, LaB/f;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LaB/c;->i:LaB/f;

    invoke-virtual {p1}, LaB/f;->g()Lk/l;

    move-result-object v0

    iput-object v0, p0, LaB/c;->h:Lk/l;

    iput p2, p0, LaB/c;->b:I

    iput p3, p0, LaB/c;->c:I

    iput p4, p0, LaB/c;->d:I

    iput p5, p0, LaB/c;->e:I

    iput p6, p0, LaB/c;->f:I

    iput p7, p0, LaB/c;->g:I

    return-void
.end method

.method private i()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LaB/c;->h:Lk/l;

    const/4 v1, 0x0

    iput-object v1, p0, LaB/c;->h:Lk/l;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lk/l;->h()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private j()LaB/f;
    .locals 10

    const/4 v2, 0x0

    iget-object v0, p0, LaB/c;->i:LaB/f;

    if-nez v0, :cond_0

    new-instance v0, LaB/f;

    iget v1, p0, LaB/c;->b:I

    iget v3, p0, LaB/c;->c:I

    invoke-direct {v0, v1, v3}, LaB/f;-><init>(II)V

    iput-object v0, p0, LaB/c;->i:LaB/f;

    iget-object v0, p0, LaB/c;->i:LaB/f;

    invoke-virtual {v0}, LaB/f;->d()Lk/m;

    move-result-object v0

    iget-object v1, p0, LaB/c;->h:Lk/l;

    iget v4, p0, LaB/c;->b:I

    iget v5, p0, LaB/c;->c:I

    iget v6, p0, LaB/c;->d:I

    iget v7, p0, LaB/c;->e:I

    iget v8, p0, LaB/c;->f:I

    iget v9, p0, LaB/c;->g:I

    move v3, v2

    invoke-interface/range {v0 .. v9}, Lk/m;->a(Lk/l;IIIIIIII)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Graphics cannot scale image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LaB/c;->i:LaB/f;

    invoke-virtual {v2}, LaB/f;->d()Lk/m;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, LaB/c;->i:LaB/f;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    const/16 v0, 0x20

    iget-object v1, p0, LaB/c;->i:LaB/f;

    if-eqz v1, :cond_0

    iget-object v1, p0, LaB/c;->i:LaB/f;

    invoke-virtual {v1}, LaB/f;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public a(II)Lk/l;
    .locals 1

    invoke-direct {p0}, LaB/c;->j()LaB/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LaB/f;->a(II)Lk/l;

    move-result-object v0

    return-object v0
.end method

.method public a(IIIIII)Lk/l;
    .locals 7

    invoke-direct {p0}, LaB/c;->j()LaB/f;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, LaB/f;->a(IIIIII)Lk/l;

    move-result-object v0

    return-object v0
.end method

.method public a(Lk/m;II)V
    .locals 10

    iget-object v0, p0, LaB/c;->i:LaB/f;

    if-nez v0, :cond_0

    iget-object v1, p0, LaB/c;->h:Lk/l;

    iget v4, p0, LaB/c;->b:I

    iget v5, p0, LaB/c;->c:I

    iget v6, p0, LaB/c;->d:I

    iget v7, p0, LaB/c;->e:I

    iget v8, p0, LaB/c;->f:I

    iget v9, p0, LaB/c;->g:I

    move-object v0, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v9}, Lk/m;->a(Lk/l;IIIIIIII)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, LaB/c;->i:LaB/f;

    invoke-virtual {v0, p1, p2, p3}, LaB/f;->a(Lk/m;II)V

    goto :goto_0
.end method

.method public a([IIIIIII)V
    .locals 8

    invoke-direct {p0}, LaB/c;->j()LaB/f;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, LaB/f;->a([IIIIIII)V

    return-void
.end method

.method public b()V
    .locals 1

    iget v0, p0, LaB/c;->a:I

    if-gtz v0, :cond_0

    invoke-direct {p0}, LaB/c;->i()V

    :cond_0
    invoke-super {p0}, LaB/f;->b()V

    return-void
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, LaB/c;->j()LaB/f;

    move-result-object v0

    invoke-virtual {v0}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public d()Lk/m;
    .locals 1

    invoke-direct {p0}, LaB/c;->j()LaB/f;

    move-result-object v0

    invoke-virtual {v0}, LaB/f;->d()Lk/m;

    move-result-object v0

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, LaB/c;->c:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, LaB/c;->b:I

    return v0
.end method

.method protected finalize()V
    .locals 0

    invoke-direct {p0}, LaB/c;->i()V

    invoke-super {p0}, LaB/f;->finalize()V

    return-void
.end method
