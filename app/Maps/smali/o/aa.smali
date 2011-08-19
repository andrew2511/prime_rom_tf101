.class public Lo/aa;
.super Lak/m;


# instance fields
.field private final a:Lo/T;

.field private final b:I

.field private c:Law/e;


# direct methods
.method public constructor <init>(Lo/T;I)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lo/aa;->a:Lo/T;

    iput p2, p0, Lo/aa;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x6f

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/N;->an:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    new-instance v1, Law/e;

    sget-object v2, LaG/b;->E:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v0, v3, v1}, Law/e;->b(ILaw/e;)V

    iget v2, p0, Lo/aa;->b:I

    invoke-virtual {v1, v3, v2}, Law/e;->h(II)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    sget-object v0, Ls/N;->ao:Law/f;

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

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/googlenav/login/j;->a(I)V

    :pswitch_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    iput-object v0, p0, Lo/aa;->c:Law/e;

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public i_()V
    .locals 2

    invoke-super {p0}, Lak/m;->i_()V

    iget-object v0, p0, Lo/aa;->a:Lo/T;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aa;->c:Law/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aa;->a:Lo/T;

    iget-object v1, p0, Lo/aa;->c:Law/e;

    invoke-interface {v0, v1}, Lo/T;->a(Law/e;)V

    :cond_0
    return-void
.end method
