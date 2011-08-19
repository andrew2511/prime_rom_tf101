.class public LB/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stages cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, LB/c;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, LB/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)LB/k;
    .locals 1

    iget-object v0, p0, LB/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LB/k;

    return-object p0
.end method

.method public a(II)LB/u;
    .locals 1

    iget-object v0, p0, LB/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LB/k;

    invoke-virtual {p0, p2}, LB/k;->a(I)LB/u;

    move-result-object v0

    return-object v0
.end method

.method public a(LB/l;)LB/u;
    .locals 2

    iget v0, p1, LB/l;->a:I

    iget v1, p1, LB/l;->b:I

    invoke-virtual {p0, v0, v1}, LB/c;->a(II)LB/u;

    move-result-object v0

    return-object v0
.end method

.method public a(LB/b;)Z
    .locals 2

    iget-object v0, p1, LB/b;->a:LB/l;

    invoke-virtual {p0, v0}, LB/c;->b(LB/l;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, LB/b;->a:LB/l;

    invoke-virtual {p0, v0}, LB/c;->e(LB/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, LB/b;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)I
    .locals 1

    iget-object v0, p0, LB/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LB/k;

    invoke-virtual {p0}, LB/k;->a()I

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, LB/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, LB/c;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/k;

    invoke-virtual {v0}, LB/k;->a()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, LB/c;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LB/k;

    invoke-virtual {p0, v2}, LB/k;->a(I)LB/u;

    move-result-object v0

    invoke-virtual {v0}, LB/u;->p()LB/h;

    move-result-object v0

    sget-object v1, LB/h;->a:LB/h;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method b(II)Z
    .locals 1

    invoke-virtual {p0, p1}, LB/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, LB/c;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(LB/l;)Z
    .locals 2

    iget v0, p1, LB/l;->a:I

    invoke-virtual {p0}, LB/c;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p1, LB/l;->a:I

    if-ltz v0, :cond_0

    iget v0, p1, LB/l;->b:I

    iget v1, p1, LB/l;->a:I

    invoke-virtual {p0, v1}, LB/c;->b(I)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p1, LB/l;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(I)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c(II)Z
    .locals 1

    invoke-virtual {p0, p1}, LB/c;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, LB/c;->d(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(LB/l;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v0, p1, LB/l;->a:I

    invoke-virtual {p0}, LB/c;->a()I

    move-result v1

    if-lt v0, v1, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, LB/c;->a(LB/l;)LB/u;

    move-result-object v0

    iget v1, p1, LB/l;->a:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, LB/c;->a(I)LB/k;

    move-result-object v1

    invoke-virtual {v1, v5}, LB/k;->a(I)LB/u;

    move-result-object v1

    invoke-virtual {v0}, LB/u;->w()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, LB/u;->w()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, LB/u;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, LB/u;->w()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v6

    :goto_1
    invoke-virtual {v0}, LB/u;->p()LB/h;

    move-result-object v3

    sget-object v4, LB/h;->d:LB/h;

    if-ne v3, v4, :cond_2

    invoke-virtual {v1}, LB/u;->p()LB/h;

    move-result-object v3

    sget-object v4, LB/h;->b:LB/h;

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, LB/u;->ai_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, LB/u;->ai_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v2, :cond_2

    move v0, v6

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_1

    :cond_2
    move v0, v5

    goto :goto_0
.end method

.method d(I)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d(II)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0, p1}, LB/c;->b(I)I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(LB/l;)Z
    .locals 1

    iget v0, p1, LB/l;->a:I

    invoke-virtual {p0, v0}, LB/c;->c(I)Z

    move-result v0

    return v0
.end method

.method e(I)Z
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, LB/c;->a()I

    move-result v0

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(LB/l;)Z
    .locals 2

    iget v0, p1, LB/l;->a:I

    iget v1, p1, LB/l;->b:I

    invoke-virtual {p0, v0, v1}, LB/c;->c(II)Z

    move-result v0

    return v0
.end method

.method public f(LB/l;)Z
    .locals 1

    iget v0, p1, LB/l;->a:I

    invoke-virtual {p0, v0}, LB/c;->e(I)Z

    move-result v0

    return v0
.end method

.method public g(LB/l;)Z
    .locals 2

    iget v0, p1, LB/l;->a:I

    iget v1, p1, LB/l;->b:I

    invoke-virtual {p0, v0, v1}, LB/c;->d(II)Z

    move-result v0

    return v0
.end method
