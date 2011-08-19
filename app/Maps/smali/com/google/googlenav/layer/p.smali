.class public Lcom/google/googlenav/layer/p;
.super Lak/m;


# instance fields
.field private final a:Lf/C;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;

.field private e:Lcom/google/googlenav/layer/g;

.field private f:Law/e;


# direct methods
.method public constructor <init>(Lf/C;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/layer/p;->a:Lf/C;

    iput p2, p0, Lcom/google/googlenav/layer/p;->b:I

    iput p3, p0, Lcom/google/googlenav/layer/p;->c:I

    iput-object p4, p0, Lcom/google/googlenav/layer/p;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x39

    return v0
.end method

.method public a(Lcom/google/googlenav/layer/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/layer/p;->e:Lcom/google/googlenav/layer/g;

    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 5

    new-instance v0, Law/e;

    sget-object v1, Ls/t;->n:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    invoke-static {}, Lcom/google/googlenav/layer/h;->a()Lcom/google/googlenav/layer/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/layer/h;->f()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Law/e;->h(II)V

    :cond_0
    invoke-static {}, Lcom/google/googlenav/layer/h;->a()Lcom/google/googlenav/layer/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/layer/h;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Law/e;->b(ILjava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/google/googlenav/layer/h;->a()Lcom/google/googlenav/layer/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/layer/h;->h()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v1, v2}, Law/e;->b(IJ)V

    :cond_2
    iget-object v1, p0, Lcom/google/googlenav/layer/p;->a:Lf/C;

    invoke-virtual {v1}, Lf/C;->a()Lf/h;

    move-result-object v1

    iget v2, p0, Lcom/google/googlenav/layer/p;->b:I

    iget v3, p0, Lcom/google/googlenav/layer/p;->c:I

    iget-object v4, p0, Lcom/google/googlenav/layer/p;->a:Lf/C;

    invoke-virtual {v4}, Lf/C;->b()Lf/l;

    move-result-object v4

    invoke-virtual {v4}, Lf/l;->a()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lf/I;->a(Lf/h;III)Law/e;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Law/e;->b(ILaw/e;)V

    iget-object v1, p0, Lcom/google/googlenav/layer/p;->d:Ljava/lang/String;

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlenav/layer/p;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_3
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 1

    sget-object v0, Ls/t;->o:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/p;->f:Law/e;

    const/4 v0, 0x1

    return v0
.end method

.method public f_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i_()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/layer/p;->f:Law/e;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/googlenav/layer/h;->a()Lcom/google/googlenav/layer/h;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/p;->f:Law/e;

    iget-object v2, p0, Lcom/google/googlenav/layer/p;->e:Lcom/google/googlenav/layer/g;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/layer/h;->a(Law/e;Lcom/google/googlenav/layer/g;)V

    goto :goto_0
.end method
