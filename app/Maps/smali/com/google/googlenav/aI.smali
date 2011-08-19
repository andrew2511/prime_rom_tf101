.class public Lcom/google/googlenav/aI;
.super Lak/m;


# instance fields
.field a:Z

.field b:Ljava/util/List;

.field private final c:I

.field private final d:J

.field private final e:Lcom/google/googlenav/w;

.field private f:I


# direct methods
.method public constructor <init>(IJLcom/google/googlenav/w;)V
    .locals 1

    invoke-direct {p0}, Lak/m;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/aI;->b:Ljava/util/List;

    iput p1, p0, Lcom/google/googlenav/aI;->c:I

    iput-wide p2, p0, Lcom/google/googlenav/aI;->d:J

    iput-object p4, p0, Lcom/google/googlenav/aI;->e:Lcom/google/googlenav/w;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x73

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 4

    new-instance v0, Law/e;

    sget-object v1, Ls/l;->d:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/googlenav/aI;->c:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/googlenav/aI;->d:J

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    sget-object v0, Ls/l;->f:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-virtual {v0, v4}, Law/e;->h(I)Z

    move-result v1

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lcom/google/googlenav/aI;->a:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/aI;->f:I

    :cond_0
    return v4

    :cond_1
    invoke-virtual {v0, v4}, Law/e;->d(I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/aI;->f:I

    iget v1, p0, Lcom/google/googlenav/aI;->f:I

    if-nez v1, :cond_2

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/google/googlenav/aI;->a:Z

    iget-boolean v1, p0, Lcom/google/googlenav/aI;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, v5}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {v0, v5}, Law/e;->i(I)I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/aI;->b:Ljava/util/List;

    invoke-virtual {v0, v5, v1}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public i_()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/aI;->e:Lcom/google/googlenav/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/aI;->e:Lcom/google/googlenav/w;

    iget-boolean v1, p0, Lcom/google/googlenav/aI;->a:Z

    iget-object v2, p0, Lcom/google/googlenav/aI;->b:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/w;->a(ZLjava/util/List;)V

    :cond_0
    return-void
.end method

.method public m_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n_()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/aI;->e:Lcom/google/googlenav/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/aI;->e:Lcom/google/googlenav/w;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/w;->a(ZLjava/util/List;)V

    :cond_0
    return-void
.end method
