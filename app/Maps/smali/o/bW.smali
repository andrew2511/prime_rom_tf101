.class public Lo/bW;
.super Lak/m;


# instance fields
.field private final a:Z

.field private b:Z

.field private c:I

.field private d:I

.field private e:Lo/aT;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(ILo/aT;)V
    .locals 1

    invoke-direct {p0}, Lak/m;-><init>()V

    iput p1, p0, Lo/bW;->d:I

    iput-object p2, p0, Lo/bW;->e:Lo/aT;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/bW;->a:Z

    return-void
.end method

.method public constructor <init>(ZIILo/aT;)V
    .locals 1

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-boolean p1, p0, Lo/bW;->b:Z

    iput p2, p0, Lo/bW;->c:I

    iput p3, p0, Lo/bW;->d:I

    iput-object p4, p0, Lo/bW;->e:Lo/aT;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/bW;->a:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x33

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/N;->b:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget v1, p0, Lo/bW;->d:I

    invoke-virtual {v0, v3, v1}, Law/e;->h(II)V

    iget-boolean v1, p0, Lo/bW;->a:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-boolean v2, p0, Lo/bW;->b:Z

    invoke-virtual {v0, v1, v2}, Law/e;->b(IZ)V

    const/4 v1, 0x3

    iget v2, p0, Lo/bW;->c:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    :cond_0
    new-instance v1, Law/e;

    sget-object v2, Ls/N;->f:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v1, v3, v0}, Law/e;->b(ILaw/e;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x1

    sget-object v0, Ls/N;->g:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-static {v0, v2, v3}, Law/b;->c(Law/e;II)I

    move-result v1

    iput v1, p0, Lo/bW;->f:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0, v2, v3}, Law/b;->c(Law/e;II)I

    move-result v0

    iput v0, p0, Lo/bW;->g:I

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    iget v1, p0, Lo/bW;->g:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/j;->a(I)V

    return v2
.end method

.method public f_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i_()V
    .locals 2

    iget v0, p0, Lo/bW;->f:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lo/bW;->e:Lo/aT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/bW;->e:Lo/aT;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lo/aT;->a(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lo/bW;->e:Lo/aT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/bW;->e:Lo/aT;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lo/aT;->a(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
