.class public Lcom/google/googlenav/aZ;
.super Ljava/lang/Object;


# instance fields
.field private final a:Law/e;

.field private final b:I

.field private final c:Z

.field private final d:I


# direct methods
.method public constructor <init>(Law/e;)V
    .locals 3

    const/4 v2, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/aZ;->a:Law/e;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Law/b;->c(Law/e;II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/aZ;->d:I

    invoke-static {p1, v2}, Law/b;->e(Law/e;I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/aZ;->b:I

    invoke-virtual {p1, v2}, Law/e;->h(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/aZ;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/aZ;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/aZ;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/aZ;)Law/e;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aZ;->a:Law/e;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/aZ;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x1518

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    move v0, v5

    :goto_0
    iget-boolean v1, p0, Lcom/google/googlenav/aZ;->c:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/googlenav/aZ;->d:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    move v1, v5

    :goto_1
    and-int/2addr v0, v1

    :cond_0
    return v0

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/aZ;->c:Z

    return v0
.end method

.method public c()J
    .locals 6

    invoke-virtual {p0}, Lcom/google/googlenav/aZ;->g()J

    move-result-wide v0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-interface {v2}, Lac/p;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public d()Law/e;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/aZ;->a:Law/e;

    return-object v0
.end method

.method public e()Law/e;
    .locals 5

    const/4 v4, 0x2

    new-instance v0, Law/e;

    sget-object v1, Ls/b;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/aZ;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    iget-object v1, p0, Lcom/google/googlenav/aZ;->a:Law/e;

    invoke-virtual {v1, v4}, Law/e;->d(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Law/e;->h(II)V

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/aZ;->d:I

    return v0
.end method

.method public g()J
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/aZ;->a:Law/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Law/e;->e(I)J

    move-result-wide v0

    iget v2, p0, Lcom/google/googlenav/aZ;->b:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
