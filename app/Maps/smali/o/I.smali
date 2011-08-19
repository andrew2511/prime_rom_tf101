.class public Lo/I;
.super Ljava/lang/Object;


# static fields
.field private static final a:Law/e;


# instance fields
.field private b:Law/e;

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Law/e;

    sget-object v1, LaG/b;->x:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    sput-object v0, Lo/I;->a:Law/e;

    return-void
.end method

.method public constructor <init>(Law/e;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/I;->b:Law/e;

    iput-object p1, p0, Lo/I;->b:Law/e;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lo/I;->c:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lo/I;->c:J

    return-wide v0
.end method

.method public a(Lcom/google/googlenav/bv;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x4

    iget-object v0, p1, Lcom/google/googlenav/bv;->a:Law/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/I;->b:Law/e;

    iget-object v1, p1, Lcom/google/googlenav/bv;->a:Law/e;

    invoke-virtual {v0, v4, v1}, Law/e;->a(ILaw/e;)V

    :cond_0
    iget-object v0, p1, Lcom/google/googlenav/bv;->b:Law/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/I;->b:Law/e;

    invoke-virtual {v0, v4}, Law/e;->i(I)I

    move-result v0

    move v1, v0

    move v0, v6

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lo/I;->b:Law/e;

    invoke-virtual {v2, v4, v0}, Law/e;->e(II)Law/e;

    move-result-object v2

    iget-object v3, p1, Lcom/google/googlenav/bv;->b:Law/e;

    invoke-static {v3, v2}, Lcom/google/googlenav/ai;->a(Law/e;Law/e;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lo/I;->b:Law/e;

    invoke-virtual {v2, v4, v0}, Law/e;->g(II)V

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/google/googlenav/bv;->c:Law/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/I;->b:Law/e;

    iget-object v1, p1, Lcom/google/googlenav/bv;->c:Law/e;

    invoke-virtual {v0, v5, v1}, Law/e;->a(ILaw/e;)V

    :cond_3
    iget-object v0, p1, Lcom/google/googlenav/bv;->d:Law/e;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/I;->b:Law/e;

    invoke-virtual {v0, v5}, Law/e;->i(I)I

    move-result v0

    move v1, v0

    move v0, v6

    :goto_1
    if-ge v0, v1, :cond_5

    iget-object v2, p0, Lo/I;->b:Law/e;

    invoke-virtual {v2, v5, v0}, Law/e;->e(II)Law/e;

    move-result-object v2

    iget-object v3, p1, Lcom/google/googlenav/bv;->d:Law/e;

    invoke-static {v3, v2}, Lcom/google/googlenav/ai;->a(Law/e;Law/e;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lo/I;->b:Law/e;

    invoke-virtual {v2, v5, v0}, Law/e;->g(II)V

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p1, Lcom/google/googlenav/bv;->e:Law/e;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/I;->b:Law/e;

    const/16 v1, 0x9

    iget-object v2, p1, Lcom/google/googlenav/bv;->e:Law/e;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    :cond_6
    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lo/I;->b:Law/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Law/e;->b(IZ)V

    return-void
.end method

.method public a(Law/e;)Z
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    iget-object v0, p0, Lo/I;->b:Law/e;

    invoke-virtual {v0, v4}, Law/e;->i(I)I

    move-result v0

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lo/I;->b:Law/e;

    invoke-virtual {v2, v4, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/googlenav/ai;->a(Law/e;Law/e;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method public b(Z)V
    .locals 2

    iget-object v0, p0, Lo/I;->b:Law/e;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Law/e;->b(IZ)V

    return-void
.end method

.method public b()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lo/I;->b:Law/e;

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/I;->b:Law/e;

    invoke-virtual {v0, v1}, Law/e;->b(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lo/I;->a:Law/e;

    invoke-virtual {v0, v1}, Law/e;->b(I)Z

    move-result v0

    goto :goto_0
.end method

.method public b(Law/e;)Z
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x0

    iget-object v0, p0, Lo/I;->b:Law/e;

    invoke-virtual {v0, v4}, Law/e;->i(I)I

    move-result v0

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lo/I;->b:Law/e;

    invoke-virtual {v2, v4, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/googlenav/ai;->a(Law/e;Law/e;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method public c()Z
    .locals 2

    const/4 v1, 0x2

    iget-object v0, p0, Lo/I;->b:Law/e;

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/I;->b:Law/e;

    invoke-virtual {v0, v1}, Law/e;->b(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lo/I;->a:Law/e;

    invoke-virtual {v0, v1}, Law/e;->b(I)Z

    move-result v0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    const/4 v1, 0x3

    iget-object v0, p0, Lo/I;->b:Law/e;

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/I;->b:Law/e;

    invoke-virtual {v0, v1}, Law/e;->b(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lo/I;->a:Law/e;

    invoke-virtual {v0, v1}, Law/e;->b(I)Z

    move-result v0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    const/4 v1, 0x3

    iget-object v0, p0, Lo/I;->b:Law/e;

    invoke-virtual {v0, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/I;->b:Law/e;

    invoke-virtual {v0, v1}, Law/e;->b(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lo/I;->a:Law/e;

    invoke-virtual {v0, v1}, Law/e;->b(I)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Law/e;
    .locals 2

    iget-object v0, p0, Lo/I;->b:Law/e;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    return-object v0
.end method

.method public g()Law/e;
    .locals 1

    iget-object v0, p0, Lo/I;->b:Law/e;

    return-object v0
.end method
