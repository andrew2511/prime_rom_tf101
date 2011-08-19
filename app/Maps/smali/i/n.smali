.class public Li/n;
.super Li/q;

# interfaces
.implements Lf/T;


# instance fields
.field private E:Lcom/google/googlenav/layer/s;

.field private O:Z

.field private final P:Lcom/google/googlenav/layer/q;

.field protected a:Lf/x;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/layer/s;Lf/r;)V
    .locals 6

    new-instance v5, Lcom/google/googlenav/aY;

    invoke-direct {v5, p5, p6, p2, p3}, Lcom/google/googlenav/aY;-><init>(Lcom/google/googlenav/layer/s;Lf/r;Lf/v;Lf/Y;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Li/q;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/j;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/n;->O:Z

    iput-object p5, p0, Li/n;->E:Lcom/google/googlenav/layer/s;

    new-instance v0, Lcom/google/googlenav/layer/q;

    invoke-direct {v0, p0, p5}, Lcom/google/googlenav/layer/q;-><init>(Li/x;Lcom/google/googlenav/layer/s;)V

    iput-object v0, p0, Li/n;->P:Lcom/google/googlenav/layer/q;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/layer/s;Lf/x;)V
    .locals 6

    new-instance v5, Lcom/google/googlenav/aY;

    invoke-direct {v5, p5, p6, p2, p3}, Lcom/google/googlenav/aY;-><init>(Lcom/google/googlenav/layer/s;Lf/r;Lf/v;Lf/Y;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Li/q;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/j;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/n;->O:Z

    iput-object p5, p0, Li/n;->E:Lcom/google/googlenav/layer/s;

    iput-object p6, p0, Li/n;->a:Lf/x;

    new-instance v0, Lcom/google/googlenav/layer/q;

    invoke-direct {v0, p0, p5}, Lcom/google/googlenav/layer/q;-><init>(Li/x;Lcom/google/googlenav/layer/s;)V

    iput-object v0, p0, Li/n;->P:Lcom/google/googlenav/layer/q;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lf/x;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Li/q;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/n;->O:Z

    iput-object p5, p0, Li/n;->a:Lf/x;

    new-instance v0, Lcom/google/googlenav/layer/q;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/layer/q;-><init>(Li/x;Lcom/google/googlenav/layer/s;)V

    iput-object v0, p0, Li/n;->P:Lcom/google/googlenav/layer/q;

    return-void
.end method

.method private U()Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Li/n;->O:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Li/n;->q()Lcom/google/googlenav/aY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aY;->f()V

    invoke-virtual {p0}, Li/n;->K_()V

    iput-boolean v1, p0, Li/n;->O:Z

    invoke-virtual {v0}, Lcom/google/googlenav/aY;->b()Lcom/google/googlenav/bf;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Li/n;->F:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Li/n;->aC()V

    :cond_0
    invoke-virtual {p0}, Li/n;->aA()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public J_()Z
    .locals 1

    iget-object v0, p0, Li/n;->E:Lcom/google/googlenav/layer/s;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->n()Z

    move-result v0

    return v0
.end method

.method protected K_()V
    .locals 0

    return-void
.end method

.method protected Y_()V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/googlenav/bf;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lf/h;)I
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-virtual {p0}, Li/n;->J_()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Li/n;->U()Z

    :cond_0
    iget-object v0, p0, Li/n;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Li/n;->k:Lcom/google/googlenav/j;

    invoke-interface {v1, v0}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v5}, Li/n;->a(Lcom/google/googlenav/bf;Lf/h;Lk/m;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Li/n;->q()Lcom/google/googlenav/aY;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/googlenav/aY;->a(Lf/h;)Ljava/util/Enumeration;

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bF;

    invoke-virtual {p0, v0, p1, v5}, Li/n;->a(Lcom/google/googlenav/bf;Lf/h;Lk/m;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/aY;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0
.end method

.method protected a(Lcom/google/googlenav/c;)Lak/d;
    .locals 1

    iget-object v0, p0, Li/n;->P:Lcom/google/googlenav/layer/q;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/layer/q;->a(Lcom/google/googlenav/c;)Lak/d;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/googlenav/aH;Lcom/google/googlenav/bf;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Li/q;->a(Lcom/google/googlenav/aH;Lcom/google/googlenav/bf;I)V

    invoke-virtual {p0}, Li/n;->g()Lcom/google/googlenav/layer/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/aH;->a(Ljava/lang/String;)Lcom/google/googlenav/aH;

    return-void
.end method

.method protected a(Lcom/google/googlenav/j;)V
    .locals 0

    iput-object p1, p0, Li/n;->k:Lcom/google/googlenav/j;

    return-void
.end method

.method protected a(Lcom/google/googlenav/ui/x;)V
    .locals 1

    iget-object v0, p0, Li/n;->E:Lcom/google/googlenav/layer/s;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Li/q;->a(Lcom/google/googlenav/ui/x;)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/google/googlenav/ui/x;Lcom/google/googlenav/bf;)V
    .locals 7

    move-object v0, p2

    check-cast v0, Lcom/google/googlenav/bF;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/googlenav/bF;->bP()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    invoke-interface {p2}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Li/n;->h:Lf/v;

    iget-object v5, p0, Li/n;->j:LaF/a;

    invoke-virtual {v4, v3, v5}, Lf/v;->a(Lf/h;LaF/a;)V

    iget-object v3, p0, Li/n;->E:Lcom/google/googlenav/layer/s;

    invoke-virtual {v3, v1}, Lcom/google/googlenav/layer/s;->a(I)Lcom/google/googlenav/aG;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aG;->a()Lk/l;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/x;->b()Lk/m;

    move-result-object v3

    iget-object v4, p0, Li/n;->j:LaF/a;

    iget v4, v4, LaF/a;->a:I

    invoke-interface {v1}, Lk/l;->f()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget-object v5, p0, Li/n;->j:LaF/a;

    iget v5, v5, LaF/a;->b:I

    invoke-interface {v1}, Lk/l;->e()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int/2addr v2, v5

    invoke-interface {v3, v1, v4, v2}, Lk/m;->a(Lk/l;II)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;[Law/e;)V
    .locals 1

    iget-object v0, p0, Li/n;->E:Lcom/google/googlenav/layer/s;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/n;->E:Lcom/google/googlenav/layer/s;

    invoke-virtual {v0, p2}, Lcom/google/googlenav/layer/s;->a([Law/e;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/Vector;Lf/h;I)V
    .locals 7

    invoke-virtual {p0}, Li/n;->J_()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Li/n;->U()Z

    :cond_0
    invoke-virtual {p0}, Li/n;->q()Lcom/google/googlenav/aY;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/googlenav/aY;->a(Lf/h;)Ljava/util/Enumeration;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bF;

    invoke-virtual {p0, v0, p2}, Li/n;->a(Lcom/google/googlenav/bf;Lf/h;)J

    move-result-wide v3

    int-to-long v5, p3

    cmp-long v5, v3, v5

    if-gez v5, :cond_2

    invoke-virtual {v0}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/googlenav/aY;->a(Ljava/lang/String;)I

    move-result v5

    invoke-static {p0, v0, v5, v3, v4}, Li/aR;->a(Li/x;Lcom/google/googlenav/bf;IJ)Li/aR;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Li/q;->a(I)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Li/n;->g()Lcom/google/googlenav/layer/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Li/q;->a(IILjava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Li/n;->bL()Lcom/google/googlenav/c;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bF;

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/googlenav/bF;->f(Z)V

    iget-object v1, p0, Li/n;->P:Lcom/google/googlenav/layer/q;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/layer/q;->a(Lcom/google/googlenav/c;)Lak/d;

    const/4 v1, 0x1

    iput-boolean v1, p0, Li/n;->G:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v4

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UI - null placemark "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Li/n;->v_()Lcom/google/googlenav/j;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/j;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1f8
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Lax/c;)Z
    .locals 3

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Li/n;->aH()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/n;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    const-string v1, "s"

    const-string v2, "k"

    invoke-virtual {p0, v0, v1, v2}, Li/n;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Li/n;->G()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/io/DataInput;)Z
    .locals 5

    :try_start_0
    sget-object v0, Ls/t;->a:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/layer/s;

    invoke-direct {v1, v0}, Lcom/google/googlenav/layer/s;-><init>(Law/e;)V

    iput-object v1, p0, Li/n;->E:Lcom/google/googlenav/layer/s;

    iget-object v0, p0, Li/n;->E:Lcom/google/googlenav/layer/s;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->i()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Lf/x;

    invoke-direct {v0}, Lf/x;-><init>()V

    iput-object v0, p0, Li/n;->a:Lf/x;

    :cond_0
    new-instance v0, Lcom/google/googlenav/aY;

    iget-object v1, p0, Li/n;->E:Lcom/google/googlenav/layer/s;

    iget-object v2, p0, Li/n;->a:Lf/x;

    iget-object v3, p0, Li/n;->h:Lf/v;

    iget-object v4, p0, Li/n;->i:Lf/Y;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/aY;-><init>(Lcom/google/googlenav/layer/s;Lf/r;Lf/v;Lf/Y;)V

    iput-object v0, p0, Li/n;->k:Lcom/google/googlenav/j;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "UI-CL load"

    invoke-static {v1, v0}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public b(Lcom/google/googlenav/bf;)I
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Li/n;->f(Lcom/google/googlenav/bf;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public b(Lcom/google/googlenav/ui/x;)V
    .locals 1

    iget-object v0, p0, Li/n;->E:Lcom/google/googlenav/layer/s;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Li/q;->b(Lcom/google/googlenav/ui/x;)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()Lcom/google/googlenav/layer/s;
    .locals 1

    iget-object v0, p0, Li/n;->E:Lcom/google/googlenav/layer/s;

    return-object v0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Li/n;->a:Lf/x;

    invoke-virtual {v0}, Lf/x;->a()V

    return-void
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/n;->e(Z)V

    invoke-super {p0}, Li/q;->j()V

    return-void
.end method

.method protected k()V
    .locals 9

    invoke-virtual {p0}, Li/n;->v_()Lcom/google/googlenav/j;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/j;->b()Lcom/google/googlenav/bf;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/googlenav/c;->V()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/google/googlenav/bF;

    move-object v2, v0

    const/16 v3, 0x43

    const-string v4, "o"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "l="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/googlenav/bF;->bJ()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "i="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v2}, Lcom/google/googlenav/bF;->cd()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    const/4 v2, 0x0

    :goto_0
    aput-object v2, v5, v6

    invoke-static {v5}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Li/n;->P:Lcom/google/googlenav/layer/q;

    invoke-virtual {v2, v1}, Lcom/google/googlenav/layer/q;->b(Lcom/google/googlenav/c;)Lak/d;

    :cond_0
    return-void

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "z="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/googlenav/bF;->cd()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected l()Z
    .locals 2

    iget-object v0, p0, Li/n;->E:Lcom/google/googlenav/layer/s;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->h()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected m()LN/j;
    .locals 1

    new-instance v0, LN/c;

    invoke-direct {v0, p0}, LN/c;-><init>(Li/x;)V

    return-object v0
.end method

.method protected n()Z
    .locals 2

    invoke-super {p0}, Li/q;->n()Z

    invoke-virtual {p0}, Li/n;->J_()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Li/n;->U()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Li/n;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->d_()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Li/n;->q()Lcom/google/googlenav/aY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aY;->g()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o_()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Li/n;->O:Z

    return-void
.end method

.method public q()Lcom/google/googlenav/aY;
    .locals 0

    iget-object p0, p0, Li/n;->k:Lcom/google/googlenav/j;

    check-cast p0, Lcom/google/googlenav/aY;

    return-object p0
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

.method public t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Li/n;->E:Lcom/google/googlenav/layer/s;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/s;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lk/l;
    .locals 2

    iget-object v0, p0, Li/n;->E:Lcom/google/googlenav/layer/s;

    iget-object v1, p0, Li/n;->E:Lcom/google/googlenav/layer/s;

    invoke-virtual {v1}, Lcom/google/googlenav/layer/s;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/s;->a(I)Lcom/google/googlenav/aG;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li/n;->f:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->x()Lk/j;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/aV;->ao:C

    invoke-interface {v0, v1}, Lk/j;->e(C)Lk/l;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/aG;->a()Lk/l;

    move-result-object v0

    goto :goto_0
.end method

.method protected v()V
    .locals 5

    invoke-super {p0}, Li/q;->v()V

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-static {p0}, Li/aE;->i(Li/x;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Li/n;->E:Lcom/google/googlenav/layer/s;

    invoke-virtual {v2}, Lcom/google/googlenav/layer/s;->o()Law/e;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v4, v2}, Law/b;->a(Ljava/io/DataOutput;Law/e;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ln/a;->b([BLjava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string v3, "UI-CL Error saving LayerInfo"

    invoke-static {v3, v2}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ln/a;->a(Ljava/lang/String;)Z

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "UI-CL OOME saving LayerInfo"

    invoke-static {v3, v2}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ln/a;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected w()V
    .locals 2

    invoke-virtual {p0}, Li/n;->q()Lcom/google/googlenav/aY;

    move-result-object v0

    new-instance v1, Li/G;

    invoke-direct {v1, p0}, Li/G;-><init>(Li/n;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/aY;->a(Lcom/google/googlenav/l;)V

    return-void
.end method

.method public x()Z
    .locals 2

    iget-object v0, p0, Li/n;->a:Lf/x;

    invoke-virtual {v0, p0}, Lf/x;->a(Lf/T;)V

    iget-object v0, p0, Li/n;->h:Lf/v;

    iget-object v1, p0, Li/n;->a:Lf/x;

    invoke-virtual {v0, v1}, Lf/v;->a(Lf/x;)V

    invoke-virtual {p0}, Li/n;->w()V

    invoke-static {p0}, Lac/i;->a(Lac/h;)V

    const/4 v0, 0x1

    return v0
.end method

.method public y()V
    .locals 2

    invoke-static {p0}, Lac/i;->c(Lac/h;)V

    iget-object v0, p0, Li/n;->a:Lf/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/n;->a:Lf/x;

    invoke-virtual {v0, p0}, Lf/x;->b(Lf/T;)V

    iget-object v0, p0, Li/n;->a:Lf/x;

    invoke-virtual {v0}, Lf/x;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li/n;->h:Lf/v;

    iget-object v1, p0, Li/n;->a:Lf/x;

    invoke-virtual {v0, v1}, Lf/v;->b(Lf/x;)V

    :cond_0
    invoke-virtual {p0}, Li/n;->q()Lcom/google/googlenav/aY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aY;->h()V

    invoke-super {p0}, Li/q;->y()V

    return-void
.end method
