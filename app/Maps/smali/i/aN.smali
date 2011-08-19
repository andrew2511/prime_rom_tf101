.class public Li/aN;
.super Li/x;


# instance fields
.field private a:Z

.field private b:[Lcom/google/googlenav/ui/r;

.field private c:Lx/S;

.field private d:Lx/S;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Li/x;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/aN;->a:Z

    invoke-direct {p0}, Li/aN;->F()V

    new-instance v0, Li/h;

    invoke-direct {v0}, Li/h;-><init>()V

    invoke-virtual {p0, v0}, Li/aN;->a(Lcom/google/googlenav/j;)V

    return-void
.end method

.method private F()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Li/aN;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Li/aN;->I()V

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    const/16 v1, 0xb

    new-instance v2, Li/aC;

    invoke-direct {v2, p0}, Li/aC;-><init>(Li/aN;)V

    invoke-virtual {v0, v1, v2, v3}, Lx/h;->a(ILx/U;Ljava/lang/String;)Lx/S;

    move-result-object v0

    iput-object v0, p0, Li/aN;->d:Lx/S;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Li/aN;->J()V

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    const/16 v1, 0xa

    new-instance v2, Li/aB;

    invoke-direct {v2, p0}, Li/aB;-><init>(Li/aN;)V

    invoke-virtual {v0, v1, v2, v3}, Lx/h;->a(ILx/U;Ljava/lang/String;)Lx/S;

    move-result-object v0

    iput-object v0, p0, Li/aN;->c:Lx/S;

    goto :goto_0
.end method

.method private I()V
    .locals 1

    iget-object v0, p0, Li/aN;->c:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aN;->c:Lx/S;

    invoke-interface {v0}, Lx/S;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Li/aN;->c:Lx/S;

    :cond_0
    return-void
.end method

.method private J()V
    .locals 1

    iget-object v0, p0, Li/aN;->d:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aN;->d:Lx/S;

    invoke-interface {v0}, Lx/S;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Li/aN;->d:Lx/S;

    :cond_0
    return-void
.end method

.method private K()Li/h;
    .locals 0

    invoke-virtual {p0}, Li/aN;->v_()Lcom/google/googlenav/j;

    move-result-object p0

    check-cast p0, Li/h;

    return-object p0
.end method

.method private L()V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Li/aN;->K()Li/h;

    move-result-object v0

    invoke-virtual {v0}, Li/h;->c_()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Li/aN;->b:[Lcom/google/googlenav/ui/r;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Li/aN;->K()Li/h;

    move-result-object v0

    invoke-virtual {v0}, Li/h;->c_()I

    move-result v0

    new-array v0, v0, [Lf/h;

    move v1, v5

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    invoke-direct {p0}, Li/aN;->K()Li/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Li/h;->a(I)Li/ac;

    move-result-object v2

    invoke-virtual {v2}, Li/ac;->h()Lf/h;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlenav/ui/r;

    new-instance v2, Lf/A;

    const v3, -0xd5ba98

    const/4 v4, 0x5

    invoke-direct {v2, v0, v3, v4}, Lf/A;-><init>([Lf/h;II)V

    aput-object v2, v1, v5

    iput-object v1, p0, Li/aN;->b:[Lcom/google/googlenav/ui/r;

    iget-object v0, p0, Li/aN;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0, p0}, Li/aE;->c(Li/x;)V

    goto :goto_0
.end method

.method static synthetic a(Li/aN;)V
    .locals 0

    invoke-direct {p0}, Li/aN;->F()V

    return-void
.end method


# virtual methods
.method protected B()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Li/aN;->a:Z

    const/16 v0, 0x47

    const-string v1, "u-start"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lr/a;->a:Lr/a;

    invoke-virtual {v3}, Lr/a;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public D()I
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Li/aN;->K()Li/h;

    move-result-object v0

    invoke-virtual {v0}, Li/h;->c_()I

    move-result v0

    if-le v0, v2, :cond_1

    invoke-direct {p0}, Li/aN;->K()Li/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Li/h;->a(I)Li/ac;

    move-result-object v0

    invoke-virtual {v0}, Li/ac;->h()Lf/h;

    move-result-object v0

    move v4, v2

    move v2, v1

    move-object v1, v0

    move v0, v4

    :goto_0
    invoke-direct {p0}, Li/aN;->K()Li/h;

    move-result-object v3

    invoke-virtual {v3}, Li/h;->c_()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-direct {p0}, Li/aN;->K()Li/h;

    move-result-object v3

    invoke-virtual {v3, v0}, Li/h;->a(I)Li/ac;

    move-result-object v3

    invoke-virtual {v3}, Li/ac;->h()Lf/h;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/y;->a(Lf/h;Lf/h;)I

    move-result v1

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move-object v1, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public M_()[Lcom/google/googlenav/ui/r;
    .locals 1

    iget-object v0, p0, Li/aN;->b:[Lcom/google/googlenav/ui/r;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/bf;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected a(Lcom/google/googlenav/j;)V
    .locals 1

    iput-object p1, p0, Li/aN;->k:Lcom/google/googlenav/j;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Li/aN;->d(I)V

    return-void
.end method

.method protected a(Lax/b;Z)Z
    .locals 3

    iget-boolean v0, p0, Li/aN;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aN;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lax/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aN;->h:Lf/v;

    invoke-virtual {p1}, Lax/b;->k()I

    move-result v1

    invoke-virtual {p1}, Lax/b;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lf/v;->b(II)Lf/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/aN;->c(Lf/h;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lax/c;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x13

    return v0
.end method

.method public b(Lcom/google/googlenav/bf;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Lf/h;)Z
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Li/aN;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/aN;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->I()Li/x;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Li/x;->aK()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v4

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Li/aN;->K()Li/h;

    move-result-object v0

    new-instance v1, Li/ac;

    invoke-direct {v1, p1}, Li/ac;-><init>(Lf/h;)V

    invoke-virtual {v0, v1}, Li/h;->a(Li/ac;)V

    invoke-direct {p0}, Li/aN;->K()Li/h;

    move-result-object v0

    invoke-virtual {v0}, Li/h;->c_()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/16 v0, 0x47

    const-string v1, "u-add"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lr/a;->a:Lr/a;

    invoke-virtual {v3}, Lr/a;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_2
    invoke-direct {p0}, Li/aN;->L()V

    invoke-virtual {p0}, Li/aN;->aA()V

    invoke-virtual {p0}, Li/aN;->D()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {v0, v4}, Lcom/google/googlenav/ui/y;->b(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Li/aN;->g:Lcom/google/googlenav/ui/aT;

    const/16 v2, 0x250

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aT;->g(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected j(Z)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/aN;->a:Z

    if-eqz p1, :cond_0

    const/16 v0, 0x47

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "u-stop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Li/aN;->K()Li/h;

    move-result-object v2

    invoke-virtual {v2}, Li/h;->c_()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lr/a;->a:Lr/a;

    invoke-virtual {v3}, Lr/a;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_0
    invoke-direct {p0}, Li/aN;->K()Li/h;

    move-result-object v0

    invoke-virtual {v0}, Li/h;->a()V

    invoke-virtual {p0}, Li/aN;->aA()V

    const/4 v0, 0x0

    iput-object v0, p0, Li/aN;->b:[Lcom/google/googlenav/ui/r;

    iget-object v0, p0, Li/aN;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0, p0}, Li/aE;->c(Li/x;)V

    invoke-direct {p0}, Li/aN;->F()V

    return-void
.end method

.method protected m()LN/j;
    .locals 1

    new-instance v0, LN/d;

    invoke-direct {v0, p0}, LN/d;-><init>(Li/x;)V

    return-object v0
.end method

.method protected n()Z
    .locals 1

    invoke-super {p0}, Li/x;->n()Z

    const/4 v0, 0x1

    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Li/aN;->a:Z

    return v0
.end method

.method protected r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public y()V
    .locals 0

    invoke-super {p0}, Li/x;->y()V

    invoke-direct {p0}, Li/aN;->J()V

    invoke-direct {p0}, Li/aN;->I()V

    return-void
.end method
