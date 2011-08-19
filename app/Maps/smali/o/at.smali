.class public Lo/at;
.super Lak/m;


# instance fields
.field private a:Lo/o;


# direct methods
.method public constructor <init>(Lo/o;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lo/at;->a:Lo/o;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x60

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/N;->C:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    new-instance v1, Law/e;

    sget-object v2, LaG/b;->e:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    iget-object v2, p0, Lo/at;->a:Lo/o;

    invoke-virtual {v2}, Lo/o;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v4, v2, v3}, Law/e;->b(IJ)V

    const/4 v2, 0x2

    iget-object v3, p0, Lo/at;->a:Lo/o;

    invoke-virtual {v3}, Lo/o;->e()Law/e;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Law/e;->b(ILaw/e;)V

    invoke-virtual {v0, v4, v1}, Law/e;->a(ILaw/e;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    sget-object v0, Ls/N;->D:Law/f;

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
