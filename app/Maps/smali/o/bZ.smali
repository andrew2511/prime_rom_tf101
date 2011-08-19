.class public Lo/bZ;
.super Lak/m;


# instance fields
.field private final a:Lac/s;

.field private b:Lac/s;


# direct methods
.method public constructor <init>(Lac/s;Lac/s;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lo/bZ;->a:Lac/s;

    iput-object p2, p0, Lo/bZ;->b:Lac/s;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x36

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Law/e;

    sget-object v1, Ls/N;->E:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget-object v1, p0, Lo/bZ;->a:Lac/s;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/bZ;->a:Lac/s;

    invoke-virtual {v1}, Lac/s;->b()I

    move-result v1

    move v2, v6

    :goto_0
    if-ge v2, v1, :cond_0

    const/4 v3, 0x1

    iget-object v4, p0, Lo/bZ;->a:Lac/s;

    invoke-virtual {v4, v2}, Lac/s;->a(I)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Law/e;->a(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lo/bZ;->b:Lac/s;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/bZ;->b:Lac/s;

    invoke-virtual {v1}, Lac/s;->b()I

    move-result v1

    move v2, v6

    :goto_1
    if-ge v2, v1, :cond_1

    const/4 v3, 0x2

    iget-object v4, p0, Lo/bZ;->b:Lac/s;

    invoke-virtual {v4, v2}, Lac/s;->a(I)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Law/e;->a(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    sget-object v0, Ls/N;->F:Law/f;

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

    :goto_0
    return v3

    :pswitch_0
    invoke-virtual {p0, v3}, Lo/bZ;->a(Z)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/bZ;->a(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
