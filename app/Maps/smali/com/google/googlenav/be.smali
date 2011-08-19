.class public Lcom/google/googlenav/be;
.super Lak/m;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Lcom/google/googlenav/aj;

.field private e:Z

.field private f:J

.field private g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJJLcom/google/googlenav/aj;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/be;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/be;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/googlenav/be;->c:I

    iput-wide p4, p0, Lcom/google/googlenav/be;->f:J

    iput-wide p6, p0, Lcom/google/googlenav/be;->g:J

    iput-object p8, p0, Lcom/google/googlenav/be;->d:Lcom/google/googlenav/aj;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x5c

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 8

    const-wide/high16 v6, -0x8000

    const/4 v5, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/g;->k:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    new-instance v1, Law/e;

    sget-object v2, LaG/c;->f:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    iget-object v2, p0, Lcom/google/googlenav/be;->a:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Law/e;->b(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/google/googlenav/be;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/googlenav/be;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/googlenav/be;->c:I

    invoke-virtual {v1, v2, v3}, Law/e;->h(II)V

    iget-wide v2, p0, Lcom/google/googlenav/be;->f:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/google/googlenav/be;->f:J

    invoke-virtual {v1, v2, v3, v4}, Law/e;->b(IJ)V

    :cond_1
    iget-wide v2, p0, Lcom/google/googlenav/be;->g:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/google/googlenav/be;->g:J

    invoke-virtual {v1, v2, v3, v4}, Law/e;->b(IJ)V

    :cond_2
    invoke-virtual {v0, v5, v1}, Law/e;->b(ILaw/e;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 2

    const/4 v1, 0x1

    sget-object v0, Ls/g;->l:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Law/e;->d(I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/googlenav/be;->e:Z

    iget-boolean v0, p0, Lcom/google/googlenav/be;->e:Z

    if-nez v0, :cond_0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i_()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/be;->d:Lcom/google/googlenav/aj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/be;->d:Lcom/google/googlenav/aj;

    iget-boolean v1, p0, Lcom/google/googlenav/be;->e:Z

    invoke-interface {v0, v1}, Lcom/google/googlenav/aj;->a(Z)V

    :cond_0
    return-void
.end method

.method public m_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
