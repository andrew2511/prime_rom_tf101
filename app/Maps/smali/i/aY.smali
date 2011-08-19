.class public Li/aY;
.super Li/x;


# instance fields
.field private E:Z

.field private F:Lu/h;

.field private G:Lu/h;

.field private H:Lu/r;

.field private I:Lcom/google/googlenav/an;

.field private J:I

.field a:Lu/v;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/j;I)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Li/x;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/j;)V

    const/4 v0, 0x0

    iput v0, p0, Li/aY;->J:I

    iput p6, p0, Li/aY;->J:I

    const-string v0, "locationMemory"

    invoke-static {v0}, Lu/r;->b(Ljava/lang/String;)Lu/r;

    move-result-object v0

    iput-object v0, p0, Li/aY;->H:Lu/r;

    return-void
.end method

.method private Q()V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, -0x1

    iget-boolean v0, p0, Li/aY;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aY;->a:Lu/v;

    invoke-virtual {v0}, Lu/v;->C()[Lu/h;

    move-result-object v0

    move-object v7, v0

    :goto_0
    array-length v0, v7

    new-array v8, v0, [Lcom/google/googlenav/c;

    move v9, v11

    :goto_1
    array-length v0, v7

    if-ge v9, v0, :cond_1

    new-instance v0, Lcom/google/googlenav/c;

    aget-object v1, v7, v9

    invoke-virtual {v1}, Lu/h;->f()Lf/h;

    move-result-object v1

    aget-object v2, v7, v9

    invoke-virtual {v2}, Lu/h;->h()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v7, v9

    invoke-virtual {v3}, Lu/h;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, ""

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/c;-><init>(Lf/N;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    aput-object v0, v8, v9

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Li/aY;->a:Lu/v;

    invoke-virtual {v0}, Lu/v;->D()[Lu/h;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/googlenav/z;

    const/4 v1, 0x0

    invoke-direct {v0, v8, v1, v10, v10}, Lcom/google/googlenav/z;-><init>([Lcom/google/googlenav/c;Lf/C;II)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/z;->a(I)V

    iget v1, p0, Li/aY;->b:I

    invoke-virtual {p0, v0, v11, v1}, Li/aY;->a(Lcom/google/googlenav/z;ZI)V

    return-void
.end method

.method private R()V
    .locals 7

    const v2, 0x7fffffff

    const/high16 v1, -0x8000

    const/4 v0, 0x0

    move v3, v1

    move v4, v2

    :goto_0
    iget-object v5, p0, Li/aY;->k:Lcom/google/googlenav/j;

    invoke-interface {v5}, Lcom/google/googlenav/j;->c_()I

    move-result v5

    if-ge v0, v5, :cond_1

    iget-object v5, p0, Li/aY;->k:Lcom/google/googlenav/j;

    invoke-interface {v5, v0}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lf/h;->b()I

    move-result v6

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v5}, Lf/h;->b()I

    move-result v6

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v5}, Lf/h;->d()I

    move-result v6

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v5}, Lf/h;->d()I

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sub-int v0, v3, v4

    iput v0, p0, Li/aY;->c:I

    sub-int v0, v1, v2

    iput v0, p0, Li/aY;->d:I

    return-void
.end method

.method private S()V
    .locals 7

    iget v0, p0, Li/aY;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Li/aY;->J()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->D()[Lcom/google/googlenav/c;

    move-result-object v0

    array-length v0, v0

    :goto_0
    const/16 v1, 0x38

    const-string v2, "s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "m="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Li/aY;->U()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "c="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    iget-object v0, p0, Li/aY;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    goto :goto_0
.end method

.method private U()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Li/aY;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Li/aY;->b:I

    if-nez v0, :cond_0

    const-string v0, "s"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "m"

    goto :goto_0

    :cond_1
    const-string v0, "w"

    goto :goto_0
.end method

.method private j(Z)V
    .locals 7

    iget v0, p0, Li/aY;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Li/aY;->J()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->E()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/16 v1, 0x38

    const-string v2, "e"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "m="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Li/aY;->U()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v3}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "b"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Li/aY;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public B()Z
    .locals 2

    invoke-virtual {p0}, Li/aY;->J()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->q()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public D()Z
    .locals 2

    invoke-virtual {p0}, Li/aY;->J()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Li/aY;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public F()Z
    .locals 2

    iget v0, p0, Li/aY;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Li/aY;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected G()V
    .locals 0

    return-void
.end method

.method public I()Z
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Li/aY;->b:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Li/aY;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Li/aY;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public J()Lcom/google/googlenav/z;
    .locals 0

    iget-object p0, p0, Li/aY;->k:Lcom/google/googlenav/j;

    check-cast p0, Lcom/google/googlenav/z;

    return-object p0
.end method

.method public K()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Li/aY;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/aY;->J()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->B()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Li/aY;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    iget-object v1, p0, Li/aY;->k:Lcom/google/googlenav/j;

    invoke-interface {v1, v0}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/c;

    invoke-virtual {p0}, Lcom/google/googlenav/c;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public L()Lcom/google/googlenav/c;
    .locals 2

    iget v0, p0, Li/aY;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Li/aY;->J()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/z;->D()[Lcom/google/googlenav/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/z;->E()I

    move-result v0

    aget-object v0, v1, v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Li/aY;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->b()Lcom/google/googlenav/bf;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/c;

    move-object v0, p0

    goto :goto_0
.end method

.method public N()Lu/v;
    .locals 1

    iget-object v0, p0, Li/aY;->a:Lu/v;

    return-object v0
.end method

.method public O()Z
    .locals 1

    iget-boolean v0, p0, Li/aY;->e:Z

    return v0
.end method

.method public P()I
    .locals 1

    iget v0, p0, Li/aY;->J:I

    return v0
.end method

.method protected T()V
    .locals 0

    return-void
.end method

.method protected X()I
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Li/x;->X()I

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/bf;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected a(Lcom/google/googlenav/j;)V
    .locals 3

    iput-object p1, p0, Li/aY;->k:Lcom/google/googlenav/j;

    instance-of v0, p1, Lcom/google/googlenav/z;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Lcom/google/googlenav/j;->c_()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p1, v0}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/bf;->F()B

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Li/aY;->aj()V

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/z;Lcom/google/googlenav/an;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Li/aY;->a(Lcom/google/googlenav/z;ZI)V

    iput-object p2, p0, Li/aY;->I:Lcom/google/googlenav/an;

    return-void
.end method

.method public a(Lcom/google/googlenav/z;ZI)V
    .locals 3

    iput p3, p0, Li/aY;->b:I

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Li/aY;->c(Lcom/google/googlenav/j;)V

    invoke-direct {p0}, Li/aY;->S()V

    const/4 v0, 0x5

    if-eq p3, v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Li/aY;->d(I)V

    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0}, Li/aY;->R()V

    iget-object v0, p0, Li/aY;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->Q()V

    iget-object v0, p0, Li/aY;->i:Lf/Y;

    invoke-virtual {p0}, Li/aY;->ac()Lcom/google/googlenav/bf;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/Y;->c(Lf/h;)V

    iget-object v0, p0, Li/aY;->i:Lf/Y;

    iget v1, p0, Li/aY;->c:I

    iget v2, p0, Li/aY;->d:I

    invoke-virtual {v0, v1, v2}, Lf/Y;->d(II)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Li/aY;->I:Lcom/google/googlenav/an;

    invoke-virtual {p0}, Li/aY;->aM()V

    invoke-virtual {p0}, Li/aY;->Y_()V

    goto :goto_0
.end method

.method public a(Lu/v;I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-object p1, p0, Li/aY;->a:Lu/v;

    iput p2, p0, Li/aY;->b:I

    iput-object v0, p0, Li/aY;->F:Lu/h;

    iput-object v0, p0, Li/aY;->G:Lu/h;

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Li/aY;->e:Z

    if-ne p2, v2, :cond_5

    invoke-virtual {p1}, Lu/v;->C()[Lu/h;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {p1}, Lu/v;->D()[Lu/h;

    move-result-object v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v0, p0, Li/aY;->e:Z

    if-eqz v0, :cond_0

    if-nez v1, :cond_4

    :cond_0
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Li/aY;->E:Z

    :goto_4
    invoke-direct {p0}, Li/aY;->Q()V

    return-void

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_3

    :cond_5
    iput-boolean v2, p0, Li/aY;->E:Z

    goto :goto_4
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Li/aY;->aF()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    move v0, v2

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Li/aY;->B()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Li/aY;->aF()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Li/aY;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Li/aY;->J()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/z;->e(I)V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Li/aY;->I()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Li/aY;->e:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Li/aY;->a:Lu/v;

    invoke-virtual {v0}, Lu/v;->C()[Lu/h;

    move-result-object v0

    aget-object v0, v0, p2

    iput-object v0, p0, Li/aY;->F:Lu/h;

    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lu/h;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Li/aY;->H:Lu/r;

    invoke-virtual {v1, v0}, Lu/r;->a(Lu/h;)Z

    :cond_2
    iget-boolean v0, p0, Li/aY;->E:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Li/aY;->e:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, v2}, Li/aY;->j(Z)V

    iput-boolean v2, p0, Li/aY;->e:Z

    invoke-direct {p0}, Li/aY;->Q()V

    move v0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2}, Li/aY;->d(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Li/aY;->a:Lu/v;

    invoke-virtual {v0}, Lu/v;->D()[Lu/h;

    move-result-object v0

    aget-object v0, v0, p2

    iput-object v0, p0, Li/aY;->G:Lu/h;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Li/aY;->F:Lu/h;

    if-eqz v0, :cond_6

    iget-object v0, p0, Li/aY;->a:Lu/v;

    iget-object v1, p0, Li/aY;->F:Lu/h;

    invoke-virtual {v0, v1}, Lu/v;->a(Lu/h;)V

    :cond_6
    iget-object v0, p0, Li/aY;->G:Lu/h;

    if-eqz v0, :cond_7

    iget-object v0, p0, Li/aY;->a:Lu/v;

    iget-object v1, p0, Li/aY;->G:Lu/h;

    invoke-virtual {v0, v1}, Lu/v;->b(Lu/h;)V

    :cond_7
    iget-object v0, p0, Li/aY;->a:Lu/v;

    invoke-virtual {v0}, Lu/v;->w()V

    :cond_8
    invoke-direct {p0, v2}, Li/aY;->j(Z)V

    iget-object v0, p0, Li/aY;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/aT;->a(Li/aY;)V

    iget-object v0, p0, Li/aY;->I:Lcom/google/googlenav/an;

    if-eqz v0, :cond_9

    iget v0, p0, Li/aY;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    iget-object v1, p0, Li/aY;->I:Lcom/google/googlenav/an;

    iget-object v0, p0, Li/aY;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->b()Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/c;

    invoke-interface {v1, v0}, Lcom/google/googlenav/an;->a(Lcom/google/googlenav/c;)V

    :cond_9
    iget-object v0, p0, Li/aY;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/aT;->a(Li/x;)V

    move v0, v3

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Li/aY;->J()Lcom/google/googlenav/z;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/z;->a(Z)V

    iget-object v0, p0, Li/aY;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/aT;->a(Li/x;)V

    iget-object v0, p0, Li/aY;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/aT;->b(Li/aY;)V

    move v0, v3

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Lax/c;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Li/aY;->d()V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lax/c;->e()C

    move-result v0

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aV()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public b(Lcom/google/googlenav/bf;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Li/aY;->j(Z)V

    invoke-virtual {p0}, Li/aY;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Li/aY;->E:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Li/aY;->e:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Li/aY;->e:Z

    invoke-direct {p0}, Li/aY;->Q()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Li/aY;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/aT;->c(Li/aY;)V

    iget-object v0, p0, Li/aY;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/ui/aT;->a(Li/x;)V

    goto :goto_0
.end method

.method protected m()LN/j;
    .locals 1

    new-instance v0, LN/b;

    invoke-direct {v0, p0}, LN/b;-><init>(Li/x;)V

    return-object v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Li/aY;->b:I

    return v0
.end method
