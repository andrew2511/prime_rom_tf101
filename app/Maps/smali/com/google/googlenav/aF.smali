.class public Lcom/google/googlenav/aF;
.super Lak/m;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Law/e;

.field private final c:Lh/fP;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/google/googlenav/y;

.field private final f:Z

.field private g:Z

.field private h:Lcom/google/googlenav/bG;


# direct methods
.method public constructor <init>(Ljava/lang/String;Law/e;Lh/fP;Ljava/lang/String;ZLcom/google/googlenav/y;)V
    .locals 2

    invoke-direct {p0}, Lak/m;-><init>()V

    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/googlenav/aF;->a:Ljava/lang/String;

    :goto_0
    iput-object p2, p0, Lcom/google/googlenav/aF;->b:Law/e;

    iput-object p3, p0, Lcom/google/googlenav/aF;->c:Lh/fP;

    iput-object p4, p0, Lcom/google/googlenav/aF;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/googlenav/aF;->f:Z

    iput-object p6, p0, Lcom/google/googlenav/aF;->e:Lcom/google/googlenav/y;

    return-void

    :cond_0
    if-eqz p3, :cond_1

    const/16 v0, 0x106

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aF;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot kill kittens! Add some content, dammit."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/g;->g:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    new-instance v1, Law/e;

    sget-object v2, LaG/c;->b:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/googlenav/aF;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Law/e;->b(ILjava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Law/e;->h(II)V

    iget-object v2, p0, Lcom/google/googlenav/aF;->b:Law/e;

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/googlenav/aF;->b:Law/e;

    invoke-virtual {v1, v2, v3}, Law/e;->b(ILaw/e;)V

    :cond_0
    iget-boolean v2, p0, Lcom/google/googlenav/aF;->f:Z

    invoke-virtual {v1, v5, v2}, Law/e;->b(IZ)V

    iget-object v2, p0, Lcom/google/googlenav/aF;->c:Lh/fP;

    if-eqz v2, :cond_1

    new-instance v2, Law/e;

    sget-object v3, LaG/c;->a:Law/f;

    invoke-direct {v2, v3}, Law/e;-><init>(Law/f;)V

    iget-object v3, p0, Lcom/google/googlenav/aF;->c:Lh/fP;

    iget-object v3, v3, Lh/fP;->a:[B

    invoke-virtual {v2, v4, v3}, Law/e;->b(I[B)V

    iget-object v3, p0, Lcom/google/googlenav/aF;->c:Lh/fP;

    iget-object v3, v3, Lh/fP;->b:Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Law/e;->a(ILjava/lang/String;)V

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Law/e;->b(ILaw/e;)V

    :cond_1
    iget-object v2, p0, Lcom/google/googlenav/aF;->d:Ljava/lang/String;

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/googlenav/aF;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Law/e;->b(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {v0, v4, v1}, Law/e;->b(ILaw/e;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Ls/g;->h:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Law/e;->d(I)I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/google/googlenav/aF;->g:Z

    iget-boolean v1, p0, Lcom/google/googlenav/aF;->g:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/bG;

    invoke-direct {v1, v0}, Lcom/google/googlenav/bG;-><init>(Law/e;)V

    iput-object v1, p0, Lcom/google/googlenav/aF;->h:Lcom/google/googlenav/bG;

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public i_()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/aF;->e:Lcom/google/googlenav/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/aF;->e:Lcom/google/googlenav/y;

    iget-boolean v1, p0, Lcom/google/googlenav/aF;->g:Z

    iget-object v2, p0, Lcom/google/googlenav/aF;->h:Lcom/google/googlenav/bG;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/y;->a(ZLcom/google/googlenav/bG;)V

    :cond_0
    return-void
.end method

.method public m_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
