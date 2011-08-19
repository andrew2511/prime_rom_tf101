.class LJ/c;
.super Lak/m;


# instance fields
.field final synthetic a:LJ/d;

.field private final b:LA/p;

.field private final c:Law/e;

.field private final d:Lf/h;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private g:Law/e;


# direct methods
.method public constructor <init>(LJ/d;Ljava/lang/String;Law/e;Lf/h;I)V
    .locals 4

    iput-object p1, p0, LJ/c;->a:LJ/d;

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p2, p0, LJ/c;->e:Ljava/lang/String;

    iput-object p3, p0, LJ/c;->c:Law/e;

    iput-object p4, p0, LJ/c;->d:Lf/h;

    iput p5, p0, LJ/c;->f:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remoteSuggest ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, LA/p;

    const-string v2, "rsd"

    const/16 v3, 0x16

    invoke-direct {v1, v0, v2, v3}, LA/p;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, LJ/c;->b:LA/p;

    iget-object v0, p0, LJ/c;->b:LA/p;

    invoke-virtual {v0}, LA/p;->a()V

    return-void
.end method

.method private a(I)I
    .locals 1

    iget-object v0, p0, LJ/c;->a:LJ/d;

    invoke-static {v0}, LJ/d;->d(LJ/d;)I

    move-result v0

    return v0
.end method

.method private l()LJ/a;
    .locals 13

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v12, 0x2

    new-instance v9, LJ/a;

    iget-object v0, p0, LJ/c;->g:Law/e;

    invoke-virtual {v0, v5}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, LJ/a;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, LJ/c;->g:Law/e;

    invoke-virtual {v0, v12}, Law/e;->i(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJ/c;->g:Law/e;

    invoke-virtual {v0, v12, v7}, Law/e;->e(II)Law/e;

    move-result-object v10

    move v11, v7

    :goto_0
    invoke-virtual {v10, v12}, Law/e;->i(I)I

    move-result v0

    if-ge v11, v0, :cond_0

    invoke-virtual {v10, v12, v11}, Law/e;->e(II)Law/e;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v4

    invoke-virtual {v0, v5}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v12}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    :goto_1
    new-instance v0, LJ/o;

    invoke-direct {p0, v4}, LJ/c;->a(I)I

    move-result v6

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, LJ/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    invoke-virtual {v9, v0}, LJ/a;->a(LJ/o;)V

    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_0

    :cond_0
    return-object v9

    :cond_1
    move-object v3, v0

    goto :goto_1
.end method


# virtual methods
.method public X_()V
    .locals 1

    invoke-super {p0}, Lak/m;->X_()V

    iget-object v0, p0, LJ/c;->b:LA/p;

    invoke-virtual {v0}, LA/p;->c()V

    return-void
.end method

.method public a()I
    .locals 1

    const/16 v0, 0x4c

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/f;->c:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x5

    iget-object v2, p0, LJ/c;->a:LJ/d;

    invoke-static {v2}, LJ/d;->c(LJ/d;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    iget v1, p0, LJ/c;->f:I

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    iget v2, p0, LJ/c;->f:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    :cond_0
    iget-object v1, p0, LJ/c;->c:Law/e;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, LJ/c;->c:Law/e;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    :cond_1
    iget-object v1, p0, LJ/c;->d:Lf/h;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, LJ/c;->d:Lf/h;

    invoke-static {v2}, Lf/I;->c(Lf/h;)Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    :cond_2
    const/4 v1, 0x1

    iget-object v2, p0, LJ/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 1

    sget-object v0, Ls/f;->d:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    iput-object v0, p0, LJ/c;->g:Law/e;

    const/4 v0, 0x1

    return v0
.end method

.method public h_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i_()V
    .locals 3

    const/4 v1, 0x3

    iget-object v0, p0, LJ/c;->g:Law/e;

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJ/c;->g:Law/e;

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Law/b;->c(Law/e;II)I

    move-result v0

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/j;->a(I)V

    :cond_0
    iget-object v0, p0, LJ/c;->b:LA/p;

    invoke-virtual {v0}, LA/p;->b()V

    iget-object v0, p0, LJ/c;->a:LJ/d;

    invoke-static {v0}, LJ/d;->b(LJ/d;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LJ/c;->I_()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    monitor-enter p0

    :goto_1
    :try_start_0
    iget-object v0, p0, LJ/c;->a:LJ/d;

    invoke-static {v0}, LJ/d;->b(LJ/d;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, LJ/c;->a:LJ/d;

    invoke-static {v0}, LJ/d;->b(LJ/d;)Ljava/util/Vector;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ/c;

    iget-object v1, p0, LJ/c;->a:LJ/d;

    invoke-static {v1}, LJ/d;->b(LJ/d;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    if-ne v0, p0, :cond_4

    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LJ/c;->a:LJ/d;

    invoke-virtual {v0}, LJ/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LJ/c;->a:LJ/d;

    invoke-direct {p0}, LJ/c;->l()LJ/a;

    move-result-object v1

    invoke-virtual {v0, v1}, LJ/d;->a(LJ/a;)V

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {v0}, LJ/c;->X_()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public m_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
