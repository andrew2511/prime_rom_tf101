.class public Lab/c;
.super Lak/m;


# instance fields
.field private a:Lab/b;


# direct methods
.method public constructor <init>(Lab/b;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lab/c;->a:Lab/b;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x47

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/M;->g:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Law/e;->a(II)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x7

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lab/c;->a:Lab/b;

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    sget-object v0, Ls/M;->h:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-static {v0, v4, v5}, Law/b;->c(Law/e;II)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v2

    invoke-static {v2, v4, v5}, Law/b;->c(Law/e;II)I

    move-result v2

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/login/j;->a(I)V

    iget-object v0, p0, Lab/c;->a:Lab/b;

    invoke-interface {v0, v7, v3}, Lab/b;->a(Ljava/lang/String;Z)V

    :goto_1
    move v0, v4

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0, v6}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v6}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/az;->e(Law/e;)Z

    move-result v1

    invoke-static {v0}, Lcom/google/googlenav/az;->d(Law/e;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v2, p0, Lab/c;->a:Lab/b;

    invoke-interface {v2, v0, v1}, Lab/b;->a(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    move-object v0, v7

    move v1, v3

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
