.class public Lo/bm;
.super Lak/m;


# instance fields
.field private a:Lc/e;

.field private b:I

.field private c:Law/e;


# direct methods
.method public constructor <init>(ILc/e;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p2, p0, Lo/bm;->a:Lc/e;

    iput p1, p0, Lo/bm;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x59

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/N;->x:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget v2, p0, Lo/bm;->b:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    sget-object v0, Ls/N;->y:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-static {v0, v3, v4}, Law/b;->c(Law/e;II)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v2

    invoke-static {v2, v3, v4}, Law/b;->c(Law/e;II)I

    move-result v2

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/login/j;->a(I)V

    :goto_0
    return v3

    :pswitch_0
    iput-object v0, p0, Lo/bm;->c:Law/e;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public i_()V
    .locals 4

    iget-object v0, p0, Lo/bm;->c:Law/e;

    if-eqz v0, :cond_0

    new-instance v0, Lo/i;

    iget-object v1, p0, Lo/bm;->c:Law/e;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-interface {v2}, Lac/p;->a()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lo/i;-><init>(Law/e;J)V

    iget-object v1, p0, Lo/bm;->a:Lc/e;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/bm;->a:Lc/e;

    invoke-interface {v1, v0}, Lc/e;->a(Lo/i;)V

    :cond_0
    return-void
.end method
