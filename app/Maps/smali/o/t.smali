.class public Lo/t;
.super Lak/m;


# instance fields
.field private final a:Lo/ca;

.field private b:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lo/ca;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lo/t;->a:Lo/ca;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 2

    new-instance v0, Law/e;

    sget-object v1, Ls/N;->ac:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v3, -0x1

    const/4 v5, 0x1

    sget-object v0, Ls/N;->ad:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-static {v0, v5, v3}, Law/b;->c(Law/e;II)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v2

    invoke-static {v2, v5, v3}, Law/b;->c(Law/e;II)I

    move-result v2

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/login/j;->a(I)V

    :pswitch_0
    invoke-virtual {v0, v6}, Law/e;->i(I)I

    move-result v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v2, p0, Lo/t;->b:Ljava/util/Vector;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v6, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    new-instance v4, Lo/x;

    invoke-direct {v4, v3}, Lo/x;-><init>(Law/e;)V

    iget-object v3, p0, Lo/t;->b:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public i_()V
    .locals 2

    invoke-super {p0}, Lak/m;->i_()V

    iget-object v0, p0, Lo/t;->a:Lo/ca;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/t;->b:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/t;->a:Lo/ca;

    iget-object v1, p0, Lo/t;->b:Ljava/util/Vector;

    invoke-interface {v0, v1}, Lo/ca;->a(Ljava/util/Vector;)V

    :cond_0
    return-void
.end method

.method public n_()V
    .locals 1

    iget-object v0, p0, Lo/t;->a:Lo/ca;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/t;->a:Lo/ca;

    invoke-interface {v0}, Lo/ca;->az_()V

    :cond_0
    return-void
.end method
