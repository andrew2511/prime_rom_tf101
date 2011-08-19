.class public Lh/eG;
.super Lh/eR;


# instance fields
.field protected a:Lh/bO;

.field private b:Lx/B;

.field private c:Lcom/google/googlenav/ui/aY;

.field private d:Z


# direct methods
.method public constructor <init>(Lh/eY;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/eR;-><init>(Lh/eY;)V

    return-void
.end method

.method private static a(Law/e;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "HOME"

    :cond_0
    return-object v0
.end method

.method private a(Lo/I;)Ljava/util/Hashtable;
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p1}, Lo/I;->g()Law/e;

    move-result-object v1

    invoke-virtual {v1, v8}, Law/e;->i(I)I

    move-result v2

    move v3, v6

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v8, v3}, Law/e;->e(II)Law/e;

    move-result-object v4

    invoke-static {v4, v7, v7}, Lh/eG;->a(Law/e;ZZ)V

    invoke-static {v4}, Lh/eG;->a(Law/e;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v9}, Law/e;->i(I)I

    move-result v2

    move v3, v6

    :goto_1
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v9, v3}, Law/e;->e(II)Law/e;

    move-result-object v4

    invoke-static {v4}, Lh/eG;->a(Law/e;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Law/e;

    if-eqz p0, :cond_1

    invoke-static {p0, v7, v6}, Lh/eG;->a(Law/e;ZZ)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v4, v6, v6}, Lh/eG;->a(Law/e;ZZ)V

    invoke-static {v4}, Lh/eG;->a(Law/e;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    return-object v0
.end method

.method private static a(Law/e;ZZ)V
    .locals 1

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Law/e;->b(IZ)V

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p2}, Law/e;->b(IZ)V

    return-void
.end method

.method private static a(Ljava/util/Vector;)V
    .locals 3

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x193

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->D:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lh/eG;Z)Z
    .locals 0

    iput-boolean p1, p0, Lh/eG;->d:Z

    return p1
.end method

.method private m()Ljava/util/Vector;
    .locals 7

    const/16 v6, 0x201

    const/4 v5, 0x2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-boolean v1, p0, Lh/eG;->d:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lh/eG;->g:Lh/eY;

    invoke-virtual {v1}, Lh/eY;->E()Lo/bj;

    move-result-object v1

    invoke-virtual {v1}, Lo/bj;->l()Lo/I;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lh/eG;->a(Lo/I;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v2, v5}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    const/16 v3, 0x202

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/av;->Q:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v2, Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Law/e;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x840

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v2, v0, v1, v3, v4}, Lcom/google/googlenav/ui/D;->a(Ljava/util/List;Ljava/util/Vector;ILjava/lang/String;I)V

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v5}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->Q:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    return-object v0

    :cond_3
    invoke-static {v0}, Lh/eG;->a(Ljava/util/Vector;)V

    goto :goto_1
.end method


# virtual methods
.method public T_()V
    .locals 2

    iget-object v0, p0, Lh/eG;->a:Lh/bO;

    const/4 v1, 0x0

    iput-object v1, p0, Lh/eG;->a:Lh/bO;

    iget-object v1, p0, Lh/eG;->c:Lcom/google/googlenav/ui/aY;

    invoke-virtual {p0}, Lh/eG;->v()V

    invoke-virtual {p0, v0, v1}, Lh/eG;->a(Lh/bO;Lcom/google/googlenav/ui/aY;)V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/eG;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    iget v0, p0, Lh/eG;->k:I

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lh/eG;->d()V

    iget v0, p0, Lh/eG;->k:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/eG;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    iget v0, p0, Lh/eG;->k:I

    goto :goto_0
.end method

.method protected a()V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, Lh/eG;->k:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/eG;->d:Z

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eG;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->E()Lo/bj;

    move-result-object v0

    new-instance v1, Lh/eu;

    invoke-direct {v1, p0}, Lh/eu;-><init>(Lh/eG;)V

    invoke-virtual {v0, v1}, Lo/bj;->a(Lo/am;)V

    :cond_0
    invoke-virtual {p0}, Lh/eG;->h()V

    return-void
.end method

.method public a(Lh/bO;Lcom/google/googlenav/ui/aY;)V
    .locals 0

    iput-object p1, p0, Lh/eG;->a:Lh/bO;

    iput-object p2, p0, Lh/eG;->c:Lcom/google/googlenav/ui/aY;

    invoke-virtual {p0}, Lh/eG;->u()V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    const/4 v0, 0x3

    iput v0, p0, Lh/eG;->k:I

    const/4 v0, 0x0

    :goto_1
    return v0

    :pswitch_0
    add-int/lit8 v0, p2, 0x1

    iget-object v1, p0, Lh/eG;->b:Lx/B;

    invoke-virtual {v1, v0}, Lx/B;->a(I)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->A:Ljava/lang/Object;

    check-cast v0, Law/e;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    new-instance v1, Lh/cF;

    invoke-direct {v1}, Lh/cF;-><init>()V

    new-instance v2, Lcom/google/googlenav/h;

    invoke-direct {v2, v0}, Lcom/google/googlenav/h;-><init>(Law/e;)V

    iput-object v2, v1, Lh/cF;->a:Lcom/google/googlenav/h;

    iget-object v0, p0, Lh/eG;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/bL;->aN()Li/br;

    move-result-object v0

    iput-object v0, v1, Lh/cF;->d:Li/br;

    new-instance v0, Lh/et;

    invoke-direct {v0, p0}, Lh/et;-><init>(Lh/eG;)V

    iput-object v0, v1, Lh/cF;->b:Lh/fn;

    iget-object v0, p0, Lh/eG;->g:Lh/eY;

    invoke-virtual {v0, v1}, Lh/eY;->a(Lh/cF;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x840
        :pswitch_0
    .end packed-switch
.end method

.method protected b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lh/eG;->a:Lh/bO;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eG;->a:Lh/bO;

    invoke-interface {v0}, Lh/bO;->a()V

    :cond_0
    iput-object v1, p0, Lh/eG;->a:Lh/bO;

    iput-object v1, p0, Lh/eG;->c:Lcom/google/googlenav/ui/aY;

    iput-object v1, p0, Lh/eG;->b:Lx/B;

    invoke-super {p0}, Lh/eR;->b()V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lh/eG;->k:I

    return-void
.end method

.method h()V
    .locals 2

    invoke-virtual {p0}, Lh/eG;->w()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/eG;->b:Lx/B;

    if-nez v0, :cond_1

    iget-object v0, p0, Lh/eG;->j:Lx/J;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/eG;->j:Lx/J;

    invoke-virtual {p0, v0}, Lh/eG;->a(Lx/J;)V

    :cond_1
    iget-object v0, p0, Lh/eG;->b:Lx/B;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lh/eG;->j()Lx/B;

    move-result-object v0

    iput-object v0, p0, Lh/eG;->b:Lx/B;

    :goto_1
    iget-object v0, p0, Lh/eG;->j:Lx/J;

    if-nez v0, :cond_3

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    iget-object v1, p0, Lh/eG;->b:Lx/B;

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/eG;->j:Lx/J;

    iget-object v0, p0, Lh/eG;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lh/eG;->b:Lx/B;

    invoke-direct {p0}, Lh/eG;->m()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/B;->a(Ljava/util/Vector;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lh/eG;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->f()V

    goto :goto_0
.end method

.method protected j()Lx/B;
    .locals 7

    const/4 v3, 0x0

    new-instance v0, Lx/B;

    invoke-virtual {p0}, Lh/eG;->G_()I

    move-result v1

    const/16 v2, 0x1ff

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lh/eG;->m()Ljava/util/Vector;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    iput-object v0, p0, Lh/eG;->b:Lx/B;

    iget-object v0, p0, Lh/eG;->b:Lx/B;

    return-object v0
.end method
