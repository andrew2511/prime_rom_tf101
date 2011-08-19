.class public Lo/a;
.super Lak/m;


# instance fields
.field private a:Lac/s;

.field private b:Z

.field private c:[Law/e;

.field private d:Lo/bw;


# direct methods
.method public constructor <init>(Lac/s;Lo/bw;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lo/a;->a:Lac/s;

    iput-object p2, p0, Lo/a;->d:Lo/bw;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x57

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 5

    new-instance v0, Law/e;

    sget-object v1, Ls/N;->M:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lo/a;->a:Lac/s;

    invoke-virtual {v2}, Lac/s;->b()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Lo/a;->a:Lac/s;

    invoke-virtual {v3, v1}, Lac/s;->a(I)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Law/e;->a(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x1

    sget-object v0, Ls/N;->N:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-static {v0, v5, v3}, Law/b;->c(Law/e;II)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v2

    invoke-static {v2, v5, v3}, Law/b;->c(Law/e;II)I

    move-result v2

    const/4 v3, 0x0

    iput-object v3, p0, Lo/a;->c:[Law/e;

    packed-switch v1, :pswitch_data_0

    iput-boolean v4, p0, Lo/a;->b:Z

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/login/j;->a(I)V

    :goto_0
    return v5

    :pswitch_0
    invoke-virtual {v0, v6}, Law/e;->i(I)I

    move-result v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    move v3, v4

    :goto_1
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v6, v3}, Law/e;->e(II)Law/e;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Law/e;

    iput-object v0, p0, Lo/a;->c:[Law/e;

    iget-object v0, p0, Lo/a;->c:[Law/e;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    iput-boolean v5, p0, Lo/a;->b:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public i_()V
    .locals 2

    iget-object v0, p0, Lo/a;->d:Lo/bw;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/a;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/a;->d:Lo/bw;

    iget-object v1, p0, Lo/a;->c:[Law/e;

    invoke-interface {v0, v1}, Lo/bw;->a([Law/e;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lo/a;->d:Lo/bw;

    invoke-interface {v0}, Lo/bw;->b()V

    goto :goto_0
.end method
