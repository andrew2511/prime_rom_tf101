.class public Lo/bA;
.super Lak/m;


# instance fields
.field private final a:Lo/bE;

.field private b:Z

.field private c:Z

.field private final d:Z


# direct methods
.method public constructor <init>(ZLo/bE;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-boolean p1, p0, Lo/bA;->d:Z

    iput-object p2, p0, Lo/bA;->a:Lo/bE;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x68

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 2

    new-instance v0, Law/e;

    sget-object v1, Ls/N;->ah:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    sget-object v0, Ls/N;->ai:Law/f;

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

    iput-boolean v5, p0, Lo/bA;->b:Z

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/login/j;->a(I)V

    :goto_0
    return v3

    :pswitch_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v3}, Law/e;->d(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lo/bA;->c:Z

    iput-boolean v3, p0, Lo/bA;->b:Z

    goto :goto_0

    :cond_0
    move v0, v5

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public e_()Z
    .locals 1

    iget-boolean v0, p0, Lo/bA;->d:Z

    return v0
.end method

.method public i_()V
    .locals 2

    iget-object v0, p0, Lo/bA;->a:Lo/bE;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/bA;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/bA;->a:Lo/bE;

    iget-boolean v1, p0, Lo/bA;->c:Z

    invoke-interface {v0, v1}, Lo/bE;->a(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lo/bA;->a:Lo/bE;

    invoke-interface {v0}, Lo/bE;->a()V

    goto :goto_0
.end method
