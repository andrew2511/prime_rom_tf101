.class public Lo/bR;
.super Lak/m;


# instance fields
.field private a:J

.field private b:Z

.field private c:Lo/L;


# direct methods
.method public constructor <init>(JLo/L;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-wide p1, p0, Lo/bR;->a:J

    iput-object p3, p0, Lo/bR;->c:Lo/L;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0xeb

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 4

    new-instance v0, Law/e;

    sget-object v1, Ls/N;->S:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget-wide v2, p0, Lo/bR;->a:J

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    sget-object v0, Ls/N;->T:Law/f;

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

    const/4 v1, 0x0

    iput-boolean v1, p0, Lo/bR;->b:Z

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/j;->a(I)V

    :goto_0
    return v3

    :pswitch_0
    iput-boolean v3, p0, Lo/bR;->b:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public i_()V
    .locals 3

    iget-object v0, p0, Lo/bR;->c:Lo/L;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/bR;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/bR;->c:Lo/L;

    iget-wide v1, p0, Lo/bR;->a:J

    invoke-interface {v0, v1, v2}, Lo/L;->a(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lo/bR;->c:Lo/L;

    invoke-interface {v0}, Lo/L;->a()V

    goto :goto_0
.end method
