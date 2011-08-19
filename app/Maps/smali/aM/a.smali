.class public LaM/a;
.super Lak/m;


# instance fields
.field private a:[LaM/b;

.field private b:[LaM/b;

.field private c:I

.field private d:LaM/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lak/m;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LaM/a;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, LaM/a;->d:LaM/c;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x3c

    return v0
.end method

.method public a(LaM/c;)V
    .locals 0

    iput-object p1, p0, LaM/a;->d:LaM/c;

    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/S;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x1

    sget-object v0, Ls/S;->b:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    iput-object v1, p0, LaM/a;->a:[LaM/b;

    iput-object v1, p0, LaM/a;->b:[LaM/b;

    invoke-virtual {v0, v7}, Law/e;->d(I)I

    move-result v1

    iput v1, p0, LaM/a;->c:I

    iget v1, p0, LaM/a;->c:I

    if-eqz v1, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v8}, Law/e;->i(I)I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    new-instance v5, LaM/b;

    invoke-virtual {v0, v8, v4}, Law/e;->e(II)Law/e;

    move-result-object v6

    invoke-direct {v5, v6}, LaM/b;-><init>(Law/e;)V

    invoke-virtual {v5}, LaM/b;->d()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v5}, LaM/b;->e()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [LaM/b;

    iput-object v0, p0, LaM/a;->a:[LaM/b;

    iget-object v0, p0, LaM/a;->a:[LaM/b;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [LaM/b;

    iput-object v0, p0, LaM/a;->b:[LaM/b;

    iget-object v0, p0, LaM/a;->b:[LaM/b;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    move v0, v7

    goto :goto_0
.end method

.method public h_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i_()V
    .locals 3

    iget-object v0, p0, LaM/a;->d:LaM/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, LaM/a;->a:[LaM/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, LaM/a;->b:[LaM/b;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, LaM/a;->d:LaM/c;

    invoke-interface {v0}, LaM/c;->h()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, LaM/a;->d:LaM/c;

    iget-object v1, p0, LaM/a;->a:[LaM/b;

    iget-object v2, p0, LaM/a;->b:[LaM/b;

    invoke-interface {v0, v1, v2}, LaM/c;->a([LaM/b;[LaM/b;)V

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    iget v0, p0, LaM/a;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 2

    iget v0, p0, LaM/a;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
