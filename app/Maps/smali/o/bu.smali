.class public Lo/bu;
.super Lak/m;


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J

.field private e:Z

.field private f:Lo/w;


# direct methods
.method public constructor <init>(JJJLo/w;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-wide p1, p0, Lo/bu;->a:J

    iput-wide p3, p0, Lo/bu;->b:J

    iput-wide p5, p0, Lo/bu;->c:J

    iput-object p7, p0, Lo/bu;->f:Lo/w;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0xea

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 4

    new-instance v0, Law/e;

    sget-object v1, Ls/N;->Q:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget-wide v2, p0, Lo/bu;->a:J

    invoke-virtual {v0, v1, v2, v3}, Law/e;->a(IJ)V

    const/4 v1, 0x2

    iget-wide v2, p0, Lo/bu;->b:J

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    const/4 v1, 0x3

    iget-wide v2, p0, Lo/bu;->c:J

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    sget-object v0, Ls/N;->R:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-static {v0, v3, v4}, Law/b;->c(Law/e;II)I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v0, v2}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v2

    invoke-static {v2, v3, v4}, Law/b;->c(Law/e;II)I

    move-result v2

    packed-switch v1, :pswitch_data_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/bu;->e:Z

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/login/j;->a(I)V

    :goto_0
    return v3

    :pswitch_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Law/e;->e(I)J

    move-result-wide v0

    iput-wide v0, p0, Lo/bu;->d:J

    iput-boolean v3, p0, Lo/bu;->e:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public i_()V
    .locals 3

    iget-object v0, p0, Lo/bu;->f:Lo/w;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/bu;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/bu;->f:Lo/w;

    iget-wide v1, p0, Lo/bu;->d:J

    invoke-interface {v0, v1, v2}, Lo/w;->a(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lo/bu;->f:Lo/w;

    invoke-interface {v0}, Lo/w;->a()V

    goto :goto_0
.end method
