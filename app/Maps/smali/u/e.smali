.class public Lu/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Law/e;

.field private b:[Lu/c;

.field private c:[Lu/i;

.field private d:I

.field private e:Lf/h;

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lu/e;->d:I

    iput v2, p0, Lu/e;->f:I

    iput v2, p0, Lu/e;->g:I

    iput v0, p0, Lu/e;->h:I

    new-instance v0, Law/e;

    sget-object v1, Ls/v;->m:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iput-object v0, p0, Lu/e;->a:Law/e;

    new-array v0, v2, [Lu/c;

    iput-object v0, p0, Lu/e;->b:[Lu/c;

    new-array v0, v2, [Lu/i;

    iput-object v0, p0, Lu/e;->c:[Lu/i;

    return-void
.end method

.method private K()[Lu/c;
    .locals 11

    const/16 v1, 0x13

    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lu/e;->a:Law/e;

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v8, [Lu/c;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lu/e;->a:Law/e;

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v10}, Law/e;->i(I)I

    move-result v1

    new-array v2, v1, [Lu/c;

    move v3, v8

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v10, v3}, Law/e;->e(II)Law/e;

    move-result-object v4

    invoke-virtual {v4, v9}, Law/e;->h(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v9}, Law/e;->d(I)I

    move-result v5

    :goto_2
    new-instance v6, Lu/c;

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v5, v4}, Lu/c;-><init>(ILjava/lang/String;)V

    aput-object v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    move v5, v8

    goto :goto_2
.end method

.method private L()V
    .locals 13

    const/16 v12, 0x6b

    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x0

    iget-object v0, p0, Lu/e;->a:Law/e;

    invoke-virtual {v0, v12}, Law/e;->i(I)I

    move-result v0

    new-array v0, v0, [Lu/i;

    iput-object v0, p0, Lu/e;->c:[Lu/i;

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget-object v0, p0, Lu/e;->c:[Lu/i;

    array-length v0, v0

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Lu/e;->a:Law/e;

    invoke-virtual {v0, v12, v6}, Law/e;->e(II)Law/e;

    move-result-object v0

    invoke-virtual {v0, v9}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v9}, Law/e;->f(I)Law/e;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/aM;->e(Law/e;)Ljava/util/Date;

    move-result-object v1

    move-object v3, v1

    :goto_1
    invoke-virtual {v0, v10}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v10}, Law/e;->f(I)Law/e;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/aM;->e(Law/e;)Ljava/util/Date;

    move-result-object v1

    move-object v4, v1

    :goto_2
    invoke-virtual {v0, v11}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v11}, Law/e;->f(I)Law/e;

    move-result-object v1

    invoke-static {v1}, Lf/I;->c(Law/e;)Lf/h;

    move-result-object v1

    move-object v5, v1

    :goto_3
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lu/e;->c:[Lu/i;

    new-instance v0, Lu/i;

    invoke-direct/range {v0 .. v5}, Lu/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lf/h;)V

    aput-object v0, v7, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    move-object v5, v8

    goto :goto_3

    :cond_2
    move-object v4, v8

    goto :goto_2

    :cond_3
    move-object v3, v8

    goto :goto_1
.end method

.method static a(Law/e;)I
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Law/e;->d(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method static b(Law/e;)I
    .locals 3

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Law/e;->d(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method private e(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lu/e;->b:[Lu/c;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lu/e;->b:[Lu/c;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lu/c;->a()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lu/c;->b()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/google/googlenav/d;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public B()[Lu/c;
    .locals 1

    iget-object v0, p0, Lu/e;->b:[Lu/c;

    return-object v0
.end method

.method public C()I
    .locals 4

    iget-object v0, p0, Lu/e;->a:Law/e;

    invoke-virtual {v0}, Law/e;->e()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    const/4 v1, 0x0

    move v3, v1

    move v1, v0

    move v0, v3

    :goto_0
    iget-object v2, p0, Lu/e;->b:[Lu/c;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lu/e;->b:[Lu/c;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lu/c;->d()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public D()Z
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    return v0
.end method

.method public E()I
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v0

    return v0
.end method

.method public F()Z
    .locals 1

    iget-boolean v0, p0, Lu/e;->j:Z

    return v0
.end method

.method public G()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu/e;->j:Z

    return-void
.end method

.method public H()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/e;->j:Z

    return-void
.end method

.method public I()[Lu/i;
    .locals 1

    iget-object v0, p0, Lu/e;->c:[Lu/i;

    return-object v0
.end method

.method public J()Z
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/16 v1, 0x17

    invoke-static {v0, v1}, Law/b;->h(Law/e;I)Z

    move-result v0

    return v0
.end method

.method public a()I
    .locals 1

    iget v0, p0, Lu/e;->f:I

    return v0
.end method

.method public a(Lu/v;)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lu/e;->i:Z

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lu/e;->z()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/v;->j(I)Lu/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lu/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lu/b;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lu/b;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Law/e;->h(II)V

    return-void
.end method

.method public a(J)V
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1, p2}, Law/e;->b(IJ)V

    return-void
.end method

.method public a(Lf/h;)V
    .locals 0

    iput-object p1, p0, Lu/e;->e:Lf/h;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Law/e;->b(ILjava/lang/String;)V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lu/e;->g:I

    return v0
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Law/e;->h(II)V

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lu/e;->h:I

    return v0
.end method

.method public c(I)V
    .locals 2

    iput p1, p0, Lu/e;->d:I

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Law/e;->h(II)V

    return-void
.end method

.method public c(Law/e;)V
    .locals 8

    const/16 v7, 0x15

    const/16 v6, 0x13

    const/4 v5, 0x2

    const/4 v4, -0x1

    iput v4, p0, Lu/e;->d:I

    iput-object p1, p0, Lu/e;->a:Law/e;

    invoke-direct {p0}, Lu/e;->K()[Lu/c;

    move-result-object v0

    iput-object v0, p0, Lu/e;->b:[Lu/c;

    invoke-direct {p0}, Lu/e;->L()V

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lu/e;->e(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lu/e;->a:Law/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lu/e;->a:Law/e;

    invoke-virtual {v3, v5}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lu/e;->a:Law/e;

    invoke-virtual {v0, v6}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lu/e;->a:Law/e;

    invoke-virtual {v0, v6}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lu/e;->a(Law/e;)I

    move-result v1

    iput v1, p0, Lu/e;->f:I

    invoke-static {v0}, Lu/e;->b(Law/e;)I

    move-result v1

    iput v1, p0, Lu/e;->g:I

    const/4 v1, 0x7

    invoke-static {v0, v1, v4}, Law/b;->c(Law/e;II)I

    move-result v0

    iput v0, p0, Lu/e;->h:I

    :cond_1
    iget-object v0, p0, Lu/e;->a:Law/e;

    invoke-virtual {v0, v7}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu/e;->a:Law/e;

    invoke-virtual {v0, v7}, Law/e;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lu/e;->i:Z

    :cond_2
    return-void
.end method

.method public d()Law/e;
    .locals 1

    iget-object v0, p0, Lu/e;->a:Law/e;

    return-object v0
.end method

.method public d(I)V
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Law/e;->h(II)V

    return-void
.end method

.method public e()Lf/h;
    .locals 1

    iget-object v0, p0, Lu/e;->e:Lf/h;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Law/e;
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    return-object v0
.end method

.method public h()Lf/h;
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lf/I;->c(Law/e;)Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/16 v1, 0x6d

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/16 v1, 0x6e

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Lf/h;
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lf/I;->c(Law/e;)Lf/h;

    move-result-object v0

    return-object v0
.end method

.method public m()Law/e;
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    return-object v0
.end method

.method public n()Z
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    return v0
.end method

.method public o()I
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v0

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()I
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Law/b;->e(Law/e;I)I

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    return v0
.end method

.method public s()I
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Law/b;->e(Law/e;I)I

    move-result v0

    return v0
.end method

.method public t()J
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Law/b;->f(Law/e;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public u()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/16 v1, 0xd

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()I
    .locals 2

    iget v0, p0, Lu/e;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Law/b;->e(Law/e;I)I

    move-result v0

    iput v0, p0, Lu/e;->d:I

    :cond_0
    iget v0, p0, Lu/e;->d:I

    return v0
.end method

.method public w()Z
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Law/e;->b(I)Z

    move-result v0

    return v0
.end method

.method public x()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()I
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Law/b;->e(Law/e;I)I

    move-result v0

    return v0
.end method

.method public z()I
    .locals 2

    iget-object v0, p0, Lu/e;->a:Law/e;

    const/16 v1, 0xf

    invoke-static {v0, v1}, Law/b;->g(Law/e;I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method
