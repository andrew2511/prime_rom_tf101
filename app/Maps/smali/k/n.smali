.class public Lk/n;
.super Ljava/lang/Object;

# interfaces
.implements Lk/m;


# instance fields
.field private a:Lk/m;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>(Lk/m;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p5}, Lk/n;->a(Lk/m;IIII)V

    return-void
.end method

.method private a()Z
    .locals 5

    iget v0, p0, Lk/n;->l:I

    if-lez v0, :cond_0

    iget v0, p0, Lk/n;->m:I

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lk/n;->a:Lk/m;

    invoke-interface {v0}, Lk/m;->b()I

    move-result v0

    iput v0, p0, Lk/n;->n:I

    iget-object v0, p0, Lk/n;->a:Lk/m;

    invoke-interface {v0}, Lk/m;->c()I

    move-result v0

    iput v0, p0, Lk/n;->o:I

    iget-object v0, p0, Lk/n;->a:Lk/m;

    invoke-interface {v0}, Lk/m;->d()I

    move-result v0

    iput v0, p0, Lk/n;->p:I

    iget-object v0, p0, Lk/n;->a:Lk/m;

    invoke-interface {v0}, Lk/m;->e()I

    move-result v0

    iput v0, p0, Lk/n;->q:I

    iget-object v0, p0, Lk/n;->a:Lk/m;

    iget v1, p0, Lk/n;->j:I

    iget v2, p0, Lk/n;->k:I

    iget v3, p0, Lk/n;->l:I

    iget v4, p0, Lk/n;->m:I

    invoke-interface {v0, v1, v2, v3, v4}, Lk/m;->a(IIII)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(I)I
    .locals 2

    iget v0, p0, Lk/n;->b:I

    add-int/2addr v0, p1

    iget v1, p0, Lk/n;->h:I

    add-int/2addr v0, v1

    return v0
.end method

.method private d(I)I
    .locals 2

    iget v0, p0, Lk/n;->c:I

    add-int/2addr v0, p1

    iget v1, p0, Lk/n;->i:I

    add-int/2addr v0, v1

    return v0
.end method

.method private e(I)I
    .locals 2

    iget v0, p0, Lk/n;->b:I

    sub-int v0, p1, v0

    iget v1, p0, Lk/n;->h:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private f(I)I
    .locals 2

    iget v0, p0, Lk/n;->c:I

    sub-int v0, p1, v0

    iget v1, p0, Lk/n;->i:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private f()V
    .locals 5

    iget-object v0, p0, Lk/n;->a:Lk/m;

    iget v1, p0, Lk/n;->n:I

    iget v2, p0, Lk/n;->o:I

    iget v3, p0, Lk/n;->p:I

    iget v4, p0, Lk/n;->q:I

    invoke-interface {v0, v1, v2, v3, v4}, Lk/m;->a(IIII)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lk/n;->a:Lk/m;

    invoke-interface {v0, p1}, Lk/m;->a(I)V

    return-void
.end method

.method public a(IIII)V
    .locals 3

    invoke-direct {p0, p1}, Lk/n;->c(I)I

    move-result v0

    iput v0, p0, Lk/n;->j:I

    invoke-direct {p0, p2}, Lk/n;->d(I)I

    move-result v0

    iput v0, p0, Lk/n;->k:I

    iput p3, p0, Lk/n;->l:I

    iput p4, p0, Lk/n;->m:I

    iget v0, p0, Lk/n;->b:I

    iget v1, p0, Lk/n;->j:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lk/n;->l:I

    iget v1, p0, Lk/n;->b:I

    iget v2, p0, Lk/n;->j:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lk/n;->l:I

    iget v0, p0, Lk/n;->b:I

    iput v0, p0, Lk/n;->j:I

    :cond_0
    iget v0, p0, Lk/n;->c:I

    iget v1, p0, Lk/n;->k:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lk/n;->m:I

    iget v1, p0, Lk/n;->c:I

    iget v2, p0, Lk/n;->k:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lk/n;->m:I

    iget v0, p0, Lk/n;->c:I

    iput v0, p0, Lk/n;->k:I

    :cond_1
    iget v0, p0, Lk/n;->j:I

    iget v1, p0, Lk/n;->l:I

    add-int/2addr v0, v1

    iget v1, p0, Lk/n;->f:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lk/n;->f:I

    iget v1, p0, Lk/n;->j:I

    sub-int/2addr v0, v1

    iput v0, p0, Lk/n;->l:I

    :cond_2
    iget v0, p0, Lk/n;->k:I

    iget v1, p0, Lk/n;->m:I

    add-int/2addr v0, v1

    iget v1, p0, Lk/n;->g:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lk/n;->g:I

    iget v1, p0, Lk/n;->k:I

    sub-int/2addr v0, v1

    iput v0, p0, Lk/n;->m:I

    :cond_3
    return-void
.end method

.method public a(IIIIII)V
    .locals 7

    invoke-direct {p0}, Lk/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lk/n;->a:Lk/m;

    invoke-direct {p0, p1}, Lk/n;->c(I)I

    move-result v1

    invoke-direct {p0, p2}, Lk/n;->d(I)I

    move-result v2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lk/m;->a(IIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lk/n;->f()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lk/n;->f()V

    throw v0
.end method

.method public a(Ljava/lang/String;II)V
    .locals 3

    invoke-direct {p0}, Lk/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lk/n;->a:Lk/m;

    invoke-direct {p0, p2}, Lk/n;->c(I)I

    move-result v1

    invoke-direct {p0, p3}, Lk/n;->d(I)I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lk/m;->a(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lk/n;->f()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lk/n;->f()V

    throw v0
.end method

.method public a(Lk/f;)V
    .locals 1

    iget-object v0, p0, Lk/n;->a:Lk/m;

    invoke-interface {v0, p1}, Lk/m;->a(Lk/f;)V

    return-void
.end method

.method public a(Lk/l;II)V
    .locals 3

    invoke-direct {p0}, Lk/n;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lk/n;->a:Lk/m;

    invoke-direct {p0, p2}, Lk/n;->c(I)I

    move-result v1

    invoke-direct {p0, p3}, Lk/n;->d(I)I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lk/m;->a(Lk/l;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-direct {p0}, Lk/n;->f()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lk/n;->f()V

    throw v0
.end method

.method public a(Lk/m;IIII)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lk/n;->a:Lk/m;

    iput p2, p0, Lk/n;->b:I

    iput p3, p0, Lk/n;->c:I

    iput p4, p0, Lk/n;->d:I

    iput p5, p0, Lk/n;->e:I

    iget v0, p0, Lk/n;->b:I

    iget v1, p0, Lk/n;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lk/n;->f:I

    iget v0, p0, Lk/n;->c:I

    iget v1, p0, Lk/n;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lk/n;->g:I

    iget v0, p0, Lk/n;->b:I

    iput v0, p0, Lk/n;->j:I

    iget v0, p0, Lk/n;->c:I

    iput v0, p0, Lk/n;->k:I

    iput p4, p0, Lk/n;->l:I

    iput p5, p0, Lk/n;->m:I

    iput v2, p0, Lk/n;->h:I

    iput v2, p0, Lk/n;->i:I

    return-void
.end method

.method public a(Lk/l;IIIIIIII)Z
    .locals 10

    invoke-direct {p0}, Lk/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lk/n;->a:Lk/m;

    invoke-direct {p0, p2}, Lk/n;->c(I)I

    move-result v2

    invoke-direct {p0, p3}, Lk/n;->d(I)I

    move-result v3

    move-object v1, p1

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lk/m;->a(Lk/l;IIIIIIII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-direct {p0}, Lk/n;->f()V

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lk/n;->f()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Z)Z
    .locals 1

    iget-object v0, p0, Lk/n;->a:Lk/m;

    invoke-interface {v0, p1}, Lk/m;->a(Z)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lk/n;->j:I

    invoke-direct {p0, v0}, Lk/n;->e(I)I

    move-result v0

    return v0
.end method

.method public b(IIII)V
    .locals 3

    invoke-direct {p0}, Lk/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lk/n;->a:Lk/m;

    invoke-direct {p0, p1}, Lk/n;->c(I)I

    move-result v1

    invoke-direct {p0, p2}, Lk/n;->d(I)I

    move-result v2

    invoke-interface {v0, v1, v2, p3, p4}, Lk/m;->b(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lk/n;->f()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lk/n;->f()V

    throw v0
.end method

.method public b(IIIIII)V
    .locals 7

    invoke-direct {p0}, Lk/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lk/n;->a:Lk/m;

    invoke-direct {p0, p1}, Lk/n;->c(I)I

    move-result v1

    invoke-direct {p0, p2}, Lk/n;->d(I)I

    move-result v2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lk/m;->b(IIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lk/n;->f()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lk/n;->f()V

    throw v0
.end method

.method public b(I)Z
    .locals 1

    iget-object v0, p0, Lk/n;->a:Lk/m;

    invoke-interface {v0, p1}, Lk/m;->b(I)Z

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lk/n;->k:I

    invoke-direct {p0, v0}, Lk/n;->f(I)I

    move-result v0

    return v0
.end method

.method public c(IIII)V
    .locals 3

    invoke-direct {p0}, Lk/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lk/n;->a:Lk/m;

    invoke-direct {p0, p1}, Lk/n;->c(I)I

    move-result v1

    invoke-direct {p0, p2}, Lk/n;->d(I)I

    move-result v2

    invoke-interface {v0, v1, v2, p3, p4}, Lk/m;->c(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lk/n;->f()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lk/n;->f()V

    throw v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lk/n;->l:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lk/n;->m:I

    return v0
.end method

.method public g()Lk/f;
    .locals 1

    iget-object v0, p0, Lk/n;->a:Lk/m;

    invoke-interface {v0}, Lk/m;->g()Lk/f;

    move-result-object v0

    return-object v0
.end method
