.class public Lcom/google/googlenav/ab;
.super Lak/m;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Z

.field private e:Lcom/google/googlenav/bo;

.field private f:Lcom/google/googlenav/bd;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/bd;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ab;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/ab;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/googlenav/ab;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/googlenav/ab;->f:Lcom/google/googlenav/bd;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x41

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/g;->i:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    new-instance v1, Law/e;

    sget-object v2, LaG/c;->d:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/googlenav/ab;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Law/e;->b(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/google/googlenav/ab;->b:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Law/e;->b(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/google/googlenav/ab;->c:Ljava/lang/String;

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/googlenav/ab;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v4, v1}, Law/e;->b(ILaw/e;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Ls/g;->j:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Law/e;->d(I)I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/google/googlenav/ab;->d:Z

    iget-boolean v1, p0, Lcom/google/googlenav/ab;->d:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/bB;->h(Law/e;)Lcom/google/googlenav/bo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ab;->e:Lcom/google/googlenav/bo;

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public i_()V
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/ab;->f:Lcom/google/googlenav/bd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ab;->f:Lcom/google/googlenav/bd;

    iget-boolean v1, p0, Lcom/google/googlenav/ab;->d:Z

    iget-object v2, p0, Lcom/google/googlenav/ab;->e:Lcom/google/googlenav/bo;

    iget-object v3, p0, Lcom/google/googlenav/ab;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/bd;->a(ZLcom/google/googlenav/bo;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public m_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
