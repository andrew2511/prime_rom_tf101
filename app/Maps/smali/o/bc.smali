.class public Lo/bc;
.super Lak/m;


# instance fields
.field private final a:Lo/e;

.field private final b:Law/e;


# direct methods
.method public constructor <init>(Lo/e;Law/e;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lo/bc;->a:Lo/e;

    iput-object p2, p0, Lo/bc;->b:Law/e;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x66

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/N;->ae:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lo/bc;->b:Law/e;

    invoke-virtual {v0, v1, v2}, Law/e;->a(ILaw/e;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    sget-object v0, Ls/N;->ad:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-static {v0, v3, v4}, Law/b;->c(Law/e;II)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0, v3, v4}, Law/b;->c(Law/e;II)I

    move-result v0

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/j;->a(I)V

    :pswitch_0
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public i_()V
    .locals 1

    invoke-super {p0}, Lak/m;->i_()V

    iget-object v0, p0, Lo/bc;->a:Lo/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/bc;->a:Lo/e;

    invoke-interface {v0}, Lo/e;->h()V

    :cond_0
    return-void
.end method
