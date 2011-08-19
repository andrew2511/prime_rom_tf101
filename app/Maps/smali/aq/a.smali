.class public Laq/a;
.super Lak/m;


# instance fields
.field private final a:J

.field private b:Law/e;

.field private c:Z

.field private d:I

.field private e:Laq/b;


# direct methods
.method public constructor <init>(JLaw/e;Laq/b;)V
    .locals 1

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-wide p1, p0, Laq/a;->a:J

    iput-object p3, p0, Laq/a;->b:Law/e;

    const/4 v0, 0x0

    iput-boolean v0, p0, Laq/a;->c:Z

    iput-object p4, p0, Laq/a;->e:Laq/b;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x61

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 5

    const/4 v4, 0x5

    new-instance v0, Law/e;

    sget-object v1, Ls/y;->g:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget-wide v2, p0, Laq/a;->a:J

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    iget-object v1, p0, Laq/a;->b:Law/e;

    invoke-virtual {v1, v4}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Laq/a;->b:Law/e;

    invoke-virtual {v2, v4}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Ls/y;->f:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Law/e;->h(I)Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v3, p0, Laq/a;->c:Z

    const/4 v0, -0x1

    iput v0, p0, Laq/a;->d:I

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0, v2}, Law/e;->d(I)I

    move-result v0

    iput v0, p0, Laq/a;->d:I

    iget v0, p0, Laq/a;->d:I

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Laq/a;->c:Z

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method public i_()V
    .locals 3

    iget-boolean v0, p0, Laq/a;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "s"

    :goto_0
    const/16 v1, 0x55

    const-string v2, "dr"

    invoke-static {v1, v2, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Laq/a;->e:Laq/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laq/a;->e:Laq/b;

    iget-boolean v1, p0, Laq/a;->c:Z

    invoke-interface {v0, v1}, Laq/b;->a(Z)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Laq/a;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Laq/a;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method public m_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n_()V
    .locals 1

    iget-object v0, p0, Laq/a;->e:Laq/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laq/a;->e:Laq/b;

    invoke-interface {v0}, Laq/b;->a()V

    :cond_0
    return-void
.end method
