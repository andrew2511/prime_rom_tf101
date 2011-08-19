.class public Lu/d;
.super Lu/v;


# instance fields
.field private l:I

.field private m:I

.field private n:J


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/bB;)V
    .locals 1

    invoke-direct {p0, p1}, Lu/v;-><init>(Lcom/google/googlenav/ui/bB;)V

    const/4 v0, -0x1

    iput v0, p0, Lu/d;->l:I

    const/4 v0, 0x1

    iput v0, p0, Lu/d;->b:I

    return-void
.end method

.method public constructor <init>(Lu/n;Lcom/google/googlenav/ui/bB;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lu/v;-><init>(Lu/n;Lcom/google/googlenav/ui/bB;)V

    const/4 v0, -0x1

    iput v0, p0, Lu/d;->l:I

    const/4 v0, 0x1

    iput v0, p0, Lu/d;->b:I

    return-void
.end method


# virtual methods
.method public a(ILcom/google/googlenav/ui/bB;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lu/d;->a(ILcom/google/googlenav/ui/bB;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(ILcom/google/googlenav/ui/bB;Z)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lu/d;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lu/f;

    invoke-virtual {v0}, Lu/f;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x65

    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lu/f;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    invoke-virtual {p0, p1}, Lu/d;->h(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/googlenav/ui/bB;->a(J)C

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lu/d;->h(I)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/googlenav/ui/bB;->a(J)C

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lu/f;)Ljava/lang/String;
    .locals 4

    const/16 v2, 0x11

    const/4 v3, 0x1

    invoke-virtual {p1}, Lu/f;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lu/f;->c()Lu/e;

    move-result-object v0

    invoke-virtual {v0}, Lu/e;->d()Law/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lu/f;->c()Lu/e;

    move-result-object v0

    invoke-virtual {v0}, Lu/e;->d()Law/e;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Law/e;->c(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lu/d;->k(I)Law/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v2, Lcom/google/googlenav/ui/aV;->D:C

    invoke-static {v2}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Law/e;->h(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lu/d;->f(I)Law/e;

    move-result-object v0

    iget-object v1, p0, Lu/d;->e:Law/e;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lu/d;->e:Law/e;

    invoke-virtual {v0, v7, v1}, Law/e;->b(ILaw/e;)V

    iget v1, p0, Lu/d;->f:I

    invoke-virtual {v0, v8, v1}, Law/e;->h(II)V

    :cond_0
    :goto_0
    const/16 v1, 0x24

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Law/e;->b(IZ)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lu/d;->u()Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    const/16 v1, 0x21

    invoke-virtual {v0, v1, v6}, Law/e;->b(IZ)V

    invoke-virtual {p0}, Lu/d;->ae()I

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    invoke-virtual {p0}, Lu/d;->ae()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lu/d;->n:J

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lu/d;->R()Lu/s;

    move-result-object v1

    invoke-virtual {v1}, Lu/s;->b()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Law/e;

    sget-object v2, Ls/b;->a:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    const/4 v2, 0x2

    invoke-static {}, Lcom/google/googlenav/ui/aM;->a()I

    move-result v3

    const v4, 0xea60

    div-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Law/e;->h(II)V

    invoke-virtual {p0}, Lu/d;->R()Lu/s;

    move-result-object v2

    invoke-virtual {v2}, Lu/s;->c()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v6, v2, v3}, Law/e;->b(IJ)V

    invoke-virtual {v0, v7, v1}, Law/e;->b(ILaw/e;)V

    invoke-virtual {p0}, Lu/d;->R()Lu/s;

    move-result-object v1

    invoke-virtual {v1}, Lu/s;->d()I

    move-result v1

    invoke-virtual {v0, v8, v1}, Law/e;->h(II)V

    goto :goto_0
.end method

.method public a_()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public a_(I)V
    .locals 0

    iput p1, p0, Lu/d;->l:I

    return-void
.end method

.method public b(I)V
    .locals 1

    invoke-super {p0, p1}, Lu/v;->b(I)V

    invoke-virtual {p0}, Lu/d;->c()I

    move-result v0

    iput v0, p0, Lu/d;->m:I

    return-void
.end method

.method d()I
    .locals 1

    iget v0, p0, Lu/d;->l:I

    return v0
.end method

.method public e()Lu/v;
    .locals 3

    new-instance v0, Lu/d;

    invoke-virtual {p0}, Lu/d;->al()Lu/g;

    move-result-object v1

    invoke-virtual {p0}, Lu/d;->H()Lcom/google/googlenav/ui/bB;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lu/d;-><init>(Lu/n;Lcom/google/googlenav/ui/bB;)V

    return-object v0
.end method

.method public e(I)V
    .locals 1

    invoke-virtual {p0}, Lu/d;->as()I

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lu/d;->m:I

    :cond_0
    invoke-super {p0, p1}, Lu/v;->e(I)V

    return-void
.end method

.method public f()Z
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 1

    invoke-super {p0}, Lu/v;->h()V

    invoke-virtual {p0}, Lu/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lu/d;->m:I

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    invoke-super {p0}, Lu/v;->i()V

    invoke-virtual {p0}, Lu/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lu/d;->m:I

    :cond_0
    return-void
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lu/d;->m:I

    return v0
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, Lu/d;->n:J

    return-wide v0
.end method
