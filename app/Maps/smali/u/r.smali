.class public Lu/r;
.super Lac/l;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lac/l;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;I)Lu/r;
    .locals 1

    invoke-static {p0}, Lu/r;->a(Ljava/lang/String;)Lac/l;

    move-result-object v0

    check-cast v0, Lu/r;

    if-nez v0, :cond_0

    new-instance v0, Lu/r;

    invoke-direct {v0, p0, p1}, Lu/r;-><init>(Ljava/lang/String;I)V

    :cond_0
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lu/r;
    .locals 1

    const/16 v0, 0x14

    invoke-static {p0, v0}, Lu/r;->a(Ljava/lang/String;I)Lu/r;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/r;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu/h;

    invoke-static {p0}, Lcom/google/googlenav/ui/aZ;->a(Lu/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/io/DataInputStream;)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-instance v1, Law/e;

    sget-object v2, Ls/T;->e:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v1, p1, v0}, Law/e;->a(Ljava/io/InputStream;I)I

    invoke-virtual {v1, v6}, Law/e;->i(I)I

    move-result v0

    iget-object v2, p0, Lu/r;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v6, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Law/e;->f(I)Law/e;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Law/e;->f(I)Law/e;

    move-result-object v3

    invoke-static {v4, v3}, Lu/h;->b(Law/e;Law/e;)Lu/h;

    move-result-object v3

    iget-object v4, p0, Lu/r;->b:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a(Ljava/io/DataOutputStream;)V
    .locals 7

    const/4 v6, 0x1

    new-instance v1, Law/e;

    sget-object v0, Ls/T;->e:Law/f;

    invoke-direct {v1, v0}, Law/e;-><init>(Law/f;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Lu/r;->b()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v6}, Law/e;->a(I)Law/e;

    move-result-object v3

    iget-object v0, p0, Lu/r;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/h;

    const/4 v4, 0x2

    invoke-static {v0}, Lu/h;->a(Lu/h;)Law/e;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Law/e;->b(ILaw/e;)V

    const/4 v4, 0x3

    invoke-virtual {v0}, Lu/h;->b()Law/e;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Law/e;->b(ILaw/e;)V

    invoke-virtual {v1, v6, v3}, Law/e;->a(ILaw/e;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Lu/h;Lu/h;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lu/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lu/r;->b(Lu/h;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lu/h;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lu/r;->a(Lu/h;)Z

    :cond_1
    return-void
.end method

.method public a(Lu/h;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lu/r;->c()V

    iget-object v0, p0, Lu/r;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lu/r;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/google/googlenav/ui/aZ;->a(Lu/h;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lu/r;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_1
    if-ltz v1, :cond_3

    invoke-virtual {p0, v1}, Lu/r;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lu/r;->b:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lu/r;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lu/r;->a:I

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lu/r;->b:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_4
    iget-object v0, p0, Lu/r;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lu/r;->e()V

    move v0, v3

    goto :goto_0
.end method

.method public b(Lu/h;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lu/r;->c()V

    iget-object v0, p0, Lu/r;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu/r;->e()V

    :cond_0
    return-void
.end method
