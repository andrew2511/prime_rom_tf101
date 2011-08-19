.class public Lo/aq;
.super Ljava/lang/Object;


# instance fields
.field private final a:Law/e;


# direct methods
.method public constructor <init>(Law/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/aq;->a:Law/e;

    return-void
.end method

.method private d(I)Law/e;
    .locals 2

    iget-object v0, p0, Lo/aq;->a:Law/e;

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/16 v0, 0x9

    :cond_0
    :goto_0
    iget-object v1, p0, Lo/aq;->a:Law/e;

    invoke-static {v1, v0}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private u()Law/e;
    .locals 2

    iget-object v0, p0, Lo/aq;->a:Law/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aq;->a:Law/e;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)D
    .locals 4

    invoke-direct {p0, p1}, Lo/aq;->d(I)Law/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const-wide/16 v2, 0x3c

    invoke-static {v0, v1, v2, v3}, Law/b;->a(Law/e;IJ)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059

    div-double/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x3fe3333333333333L

    goto :goto_0
.end method

.method public a()I
    .locals 3

    iget-object v0, p0, Lo/aq;->a:Law/e;

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Law/b;->c(Law/e;II)I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 3

    iget-object v0, p0, Lo/aq;->a:Law/e;

    const/4 v1, 0x2

    const v2, 0xea60

    invoke-static {v0, v1, v2}, Law/b;->c(Law/e;II)I

    move-result v0

    return v0
.end method

.method public b(I)I
    .locals 3

    const/4 v2, 0x2

    const/4 v0, 0x4

    if-ne v2, p1, :cond_0

    move v0, v2

    :cond_0
    invoke-direct {p0, p1}, Lo/aq;->d(I)Law/e;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1, v2, v0}, Law/b;->c(Law/e;II)I

    move-result v0

    :cond_1
    return v0
.end method

.method public c()I
    .locals 3

    iget-object v0, p0, Lo/aq;->a:Law/e;

    const/4 v1, 0x3

    const v2, 0x249f00

    invoke-static {v0, v1, v2}, Law/b;->c(Law/e;II)I

    move-result v0

    return v0
.end method

.method public c(I)J
    .locals 4

    const-wide/32 v1, 0x493e0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    move-wide v0, v1

    :goto_0
    invoke-direct {p0, p1}, Lo/aq;->d(I)Law/e;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    invoke-static {v2, v3, v0, v1}, Law/b;->a(Law/e;IJ)J

    move-result-wide v0

    :cond_0
    return-wide v0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-wide/32 v0, 0xea60

    goto :goto_0

    :cond_2
    move-wide v0, v1

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lo/aq;->a:Law/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aq;->a:Law/e;

    const/16 v1, 0xe

    invoke-static {v0, v1}, Law/b;->h(Law/e;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 3

    iget-object v0, p0, Lo/aq;->a:Law/e;

    const/16 v1, 0xf

    const v2, 0x249f00

    invoke-static {v0, v1, v2}, Law/b;->c(Law/e;II)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    instance-of v0, p1, Lo/aq;

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lo/aq;

    invoke-virtual {p0}, Lo/aq;->a()I

    move-result v0

    invoke-virtual {p1}, Lo/aq;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lo/aq;->b()I

    move-result v0

    invoke-virtual {p1}, Lo/aq;->b()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lo/aq;->c()I

    move-result v0

    invoke-virtual {p1}, Lo/aq;->c()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lo/aq;->f()I

    move-result v0

    invoke-virtual {p1}, Lo/aq;->f()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lo/aq;->g()I

    move-result v0

    invoke-virtual {p1}, Lo/aq;->g()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lo/aq;->h()I

    move-result v0

    invoke-virtual {p1}, Lo/aq;->h()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lo/aq;->i()Z

    move-result v0

    invoke-virtual {p1}, Lo/aq;->i()Z

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lo/aq;->j()J

    move-result-wide v0

    invoke-virtual {p1}, Lo/aq;->j()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo/aq;->k()D

    move-result-wide v0

    invoke-virtual {p1}, Lo/aq;->k()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo/aq;->l()I

    move-result v0

    invoke-virtual {p1}, Lo/aq;->l()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v6}, Lo/aq;->a(I)D

    move-result-wide v0

    invoke-virtual {p1, v6}, Lo/aq;->a(I)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0, v5}, Lo/aq;->a(I)D

    move-result-wide v0

    invoke-virtual {p1, v5}, Lo/aq;->a(I)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0, v4}, Lo/aq;->a(I)D

    move-result-wide v0

    invoke-virtual {p1, v4}, Lo/aq;->a(I)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0, v6}, Lo/aq;->b(I)I

    move-result v0

    invoke-virtual {p1, v6}, Lo/aq;->b(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v5}, Lo/aq;->b(I)I

    move-result v0

    invoke-virtual {p1, v5}, Lo/aq;->b(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v4}, Lo/aq;->b(I)I

    move-result v0

    invoke-virtual {p1, v4}, Lo/aq;->b(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v6}, Lo/aq;->c(I)J

    move-result-wide v0

    invoke-virtual {p1, v6}, Lo/aq;->c(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0, v5}, Lo/aq;->c(I)J

    move-result-wide v0

    invoke-virtual {p1, v5}, Lo/aq;->c(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0, v4}, Lo/aq;->c(I)J

    move-result-wide v0

    invoke-virtual {p1, v4}, Lo/aq;->c(I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo/aq;->m()I

    move-result v0

    invoke-virtual {p1}, Lo/aq;->m()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lo/aq;->n()I

    move-result v0

    invoke-virtual {p1}, Lo/aq;->n()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lo/aq;->o()J

    move-result-wide v0

    invoke-virtual {p1}, Lo/aq;->o()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo/aq;->p()I

    move-result v0

    invoke-virtual {p1}, Lo/aq;->p()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lo/aq;->q()I

    move-result v0

    invoke-virtual {p1}, Lo/aq;->q()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lo/aq;->r()I

    move-result v0

    invoke-virtual {p1}, Lo/aq;->r()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lo/aq;->s()J

    move-result-wide v0

    invoke-virtual {p1}, Lo/aq;->s()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo/aq;->t()Z

    move-result v0

    invoke-virtual {p1}, Lo/aq;->t()Z

    move-result v1

    if-ne v0, v1, :cond_1

    move v0, v5

    goto/16 :goto_0

    :cond_1
    move v0, v4

    goto/16 :goto_0
.end method

.method public f()I
    .locals 4

    const/4 v3, 0x4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lo/aq;->a:Law/e;

    invoke-virtual {v2, v3}, Law/e;->i(I)I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lo/aq;->a:Law/e;

    invoke-virtual {v2, v3, v0}, Law/e;->c(II)I

    move-result v2

    invoke-static {v2}, Lo/aX;->a(I)I

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public g()I
    .locals 4

    const/4 v3, 0x5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lo/aq;->a:Law/e;

    invoke-virtual {v2, v3}, Law/e;->i(I)I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lo/aq;->a:Law/e;

    invoke-virtual {v2, v3, v0}, Law/e;->c(II)I

    move-result v2

    invoke-static {v2}, Lo/aX;->a(I)I

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public h()I
    .locals 3

    iget-object v0, p0, Lo/aq;->a:Law/e;

    const/4 v1, 0x6

    const v2, 0xea60

    invoke-static {v0, v1, v2}, Law/b;->c(Law/e;II)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "hashCode not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Lo/aq;->a:Law/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aq;->a:Law/e;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Law/b;->h(Law/e;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()J
    .locals 4

    const-wide/16 v2, 0x2710

    invoke-direct {p0}, Lo/aq;->u()Law/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-static {v0, v1, v2, v3}, Law/b;->a(Law/e;IJ)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public k()D
    .locals 4

    invoke-direct {p0}, Lo/aq;->u()Law/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Law/b;->c(Law/e;II)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4059

    div-double/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3fe0

    goto :goto_0
.end method

.method public l()I
    .locals 3

    const/16 v2, 0x12c

    invoke-direct {p0}, Lo/aq;->u()Law/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-static {v0, v1, v2}, Law/b;->c(Law/e;II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public m()I
    .locals 3

    const/16 v2, 0xd

    invoke-direct {p0}, Lo/aq;->u()Law/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-static {v0, v1, v2}, Law/b;->c(Law/e;II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public n()I
    .locals 3

    const/4 v2, 0x5

    invoke-direct {p0}, Lo/aq;->u()Law/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    invoke-static {v0, v1, v2}, Law/b;->c(Law/e;II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public o()J
    .locals 4

    const-wide/32 v2, 0x2bf20

    invoke-direct {p0}, Lo/aq;->u()Law/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    invoke-static {v0, v1, v2, v3}, Law/b;->a(Law/e;IJ)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public p()I
    .locals 3

    const/4 v2, 0x3

    invoke-direct {p0}, Lo/aq;->u()Law/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-static {v0, v1, v2}, Law/b;->c(Law/e;II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public q()I
    .locals 3

    iget-object v0, p0, Lo/aq;->a:Law/e;

    const/16 v1, 0xd

    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Law/b;->c(Law/e;II)I

    move-result v0

    return v0
.end method

.method public r()I
    .locals 3

    iget-object v0, p0, Lo/aq;->a:Law/e;

    const/16 v1, 0x11

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, Law/b;->c(Law/e;II)I

    move-result v0

    return v0
.end method

.method public s()J
    .locals 4

    iget-object v0, p0, Lo/aq;->a:Law/e;

    const/16 v1, 0x12

    const-wide/32 v2, 0xf731400

    invoke-static {v0, v1, v2, v3}, Law/b;->a(Law/e;IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public t()Z
    .locals 2

    iget-object v0, p0, Lo/aq;->a:Law/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aq;->a:Law/e;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Law/b;->h(Law/e;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lo/aq;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "% : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lo/aq;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lo/aq;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lo/aq;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lo/aq;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lo/aq;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
