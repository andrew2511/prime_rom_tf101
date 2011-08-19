.class public Lf/I;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 2

    const v1, 0x15752a00

    const v0, 0xaba9500

    if-le p0, v0, :cond_0

    sub-int v0, p0, v1

    :goto_0
    return v0

    :cond_0
    const v0, -0xaba9500

    if-ge p0, v0, :cond_1

    add-int v0, p0, v1

    goto :goto_0

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method public static a(II)I
    .locals 3

    const v2, 0xaba9500

    add-int v0, p0, p1

    div-int/lit8 v0, v0, 0x2

    sub-int v1, p1, p0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v2, :cond_0

    add-int/2addr v0, v2

    :cond_0
    invoke-static {v0}, Lf/I;->a(I)I

    move-result v0

    return v0
.end method

.method public static a(Lf/h;)Law/e;
    .locals 4

    new-instance v0, Law/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/16 v1, 0x16

    invoke-static {v1}, Lf/l;->b(I)Lf/l;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1}, Lf/h;->a(Lf/l;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Law/e;->h(II)V

    const/4 v2, 0x2

    invoke-virtual {p0, v1}, Lf/h;->b(Lf/l;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Law/e;->h(II)V

    const/4 v2, 0x3

    invoke-virtual {v1}, Lf/l;->a()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Law/e;->h(II)V

    return-object v0
.end method

.method public static a(Lf/h;III)Law/e;
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/P;->g:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    invoke-static {p0}, Lf/I;->b(Lf/h;)Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Law/e;->h(II)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p2}, Law/e;->h(II)V

    if-lez p3, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p3}, Law/e;->h(II)V

    :cond_0
    return-object v0
.end method

.method public static a(Law/e;)Lf/h;
    .locals 3

    new-instance v0, Lf/h;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Law/e;->d(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Law/e;->d(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lf/h;-><init>(II)V

    return-object v0
.end method

.method public static b(Lf/h;)Law/e;
    .locals 3

    new-instance v0, Law/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    invoke-virtual {p0}, Lf/h;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lf/h;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    return-object v0
.end method

.method public static b(Law/e;)Lf/h;
    .locals 3

    new-instance v0, Lf/h;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Law/e;->d(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Law/e;->d(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lf/h;-><init>(II)V

    return-object v0
.end method

.method public static c(Lf/h;)Law/e;
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/P;->b:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    invoke-virtual {p0}, Lf/h;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lf/h;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    return-object v0
.end method

.method public static c(Law/e;)Lf/h;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Law/b;->e(Law/e;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-object v0, v1

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lf/I;->b(Law/e;)Lf/h;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lf/I;->a(Law/e;)Lf/h;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-static {v0}, Lf/I;->e(Law/e;)Lf/h;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static d(Lf/h;)Law/e;
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/P;->d:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/16 v1, 0xe

    invoke-static {p0}, Lf/I;->c(Lf/h;)Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    return-object v0
.end method

.method public static d(Law/e;)Lf/l;
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Law/b;->e(Law/e;I)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Law/b;->e(Law/e;I)I

    move-result v0

    invoke-static {v0}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    goto :goto_0
.end method

.method public static e(Law/e;)Lf/h;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Law/e;->d(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Law/e;->d(I)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Law/e;->d(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lf/h;->a(III)Lf/h;

    move-result-object v0

    return-object v0
.end method
