.class public Lh/dq;
.super Lh/eR;


# instance fields
.field private a:Lcom/google/googlenav/bL;

.field private b:Lcom/google/googlenav/z;

.field private c:Lcom/google/googlenav/a;

.field private d:Lcom/google/googlenav/aN;

.field private e:Lcom/google/googlenav/aN;


# direct methods
.method public constructor <init>(Lh/eY;Lcom/google/googlenav/bL;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/eR;-><init>(Lh/eY;)V

    iput-object p2, p0, Lh/dq;->a:Lcom/google/googlenav/bL;

    return-void
.end method

.method private a(Ljava/util/Hashtable;)V
    .locals 2

    new-instance v0, Lcom/google/googlenav/V;

    iget-object v1, p0, Lh/dq;->b:Lcom/google/googlenav/z;

    invoke-virtual {v1}, Lcom/google/googlenav/z;->m()Lcom/google/googlenav/bs;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/V;-><init>(Lcom/google/googlenav/bs;)V

    invoke-virtual {v0, p1}, Lcom/google/googlenav/V;->a(Ljava/util/Hashtable;)Lcom/google/googlenav/V;

    move-result-object v0

    const/16 v1, 0x449

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->c(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->b(I)Lcom/google/googlenav/V;

    move-result-object v0

    const-string v1, "20"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->b(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v0

    iget-object v1, p0, Lh/dq;->c:Lcom/google/googlenav/a;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->a(Lcom/google/googlenav/a;)Lcom/google/googlenav/V;

    move-result-object v0

    iget-object v1, p0, Lh/dq;->b:Lcom/google/googlenav/z;

    invoke-virtual {v1}, Lcom/google/googlenav/z;->P()Lf/C;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->a(Lf/C;)Lcom/google/googlenav/V;

    move-result-object v0

    iget-object v1, p0, Lh/dq;->b:Lcom/google/googlenav/z;

    invoke-virtual {v1}, Lcom/google/googlenav/z;->as()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->c(Z)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v0

    iget-object v1, p0, Lh/dq;->a:Lcom/google/googlenav/bL;

    invoke-interface {v1, v0}, Lcom/google/googlenav/bL;->a(Lcom/google/googlenav/bs;)V

    return-void
.end method


# virtual methods
.method public T_()V
    .locals 4

    iget-object v0, p0, Lh/dq;->b:Lcom/google/googlenav/z;

    iget-object v1, p0, Lh/dq;->c:Lcom/google/googlenav/a;

    iget-object v2, p0, Lh/dq;->d:Lcom/google/googlenav/aN;

    iget-object v3, p0, Lh/dq;->e:Lcom/google/googlenav/aN;

    invoke-virtual {p0}, Lh/dq;->v()V

    invoke-virtual {p0, v0, v1, v2, v3}, Lh/dq;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/a;Lcom/google/googlenav/aN;Lcom/google/googlenav/aN;)V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/dq;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    move-result v0

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/dq;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected a()V
    .locals 6

    iget-object v0, p0, Lh/dq;->j:Lx/J;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lh/dq;->e:Lcom/google/googlenav/aN;

    invoke-virtual {v2}, Lcom/google/googlenav/aN;->a()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v2, 0x1d

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0x2d2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    iget-object v2, p0, Lh/dq;->e:Lcom/google/googlenav/aN;

    invoke-virtual {v2}, Lcom/google/googlenav/aN;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/ax;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/ax;-><init>(Lcom/google/googlenav/ui/aY;)V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    move v5, v0

    move-object v3, v1

    :goto_0
    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0xb7

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->r:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x2cb

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    iget-object v1, p0, Lh/dq;->e:Lcom/google/googlenav/aN;

    invoke-virtual {v1}, Lcom/google/googlenav/aN;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/ax;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/ax;-><init>(Lcom/google/googlenav/ui/aY;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v4

    new-instance v0, Lx/P;

    iget-object v1, p0, Lh/dq;->d:Lcom/google/googlenav/aN;

    iget-object v2, p0, Lh/dq;->e:Lcom/google/googlenav/aN;

    invoke-direct/range {v0 .. v5}, Lx/P;-><init>(Lcom/google/googlenav/aN;Lcom/google/googlenav/aN;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Z)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/dq;->j:Lx/J;

    :cond_0
    iget-object v0, p0, Lh/dq;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void

    :cond_1
    move v5, v1

    move-object v3, v0

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/z;Lcom/google/googlenav/a;Lcom/google/googlenav/aN;Lcom/google/googlenav/aN;)V
    .locals 0

    iput-object p1, p0, Lh/dq;->b:Lcom/google/googlenav/z;

    iput-object p2, p0, Lh/dq;->c:Lcom/google/googlenav/a;

    iput-object p3, p0, Lh/dq;->d:Lcom/google/googlenav/aN;

    iput-object p4, p0, Lh/dq;->e:Lcom/google/googlenav/aN;

    invoke-super {p0}, Lh/eR;->u()V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 5

    iget-object v0, p0, Lh/dq;->b:Lcom/google/googlenav/z;

    invoke-virtual {v0}, Lcom/google/googlenav/z;->az()Ljava/util/Hashtable;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lh/dq;->v()V

    const/4 v0, 0x1

    return v0

    :sswitch_0
    iget-object v1, p0, Lh/dq;->e:Lcom/google/googlenav/aN;

    invoke-virtual {v1}, Lcom/google/googlenav/aN;->d()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lh/dq;->a(Ljava/util/Hashtable;)V

    goto :goto_0

    :sswitch_1
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Lcom/google/googlenav/aN;

    const-string v4, ""

    invoke-direct {v3, p2, v4, v1}, Lcom/google/googlenav/aN;-><init>(ILjava/lang/String;Ljava/util/Vector;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lh/dq;->a(Ljava/util/Hashtable;)V

    goto :goto_0

    :sswitch_2
    check-cast p3, Ljava/util/Vector;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lh/dq;->e:Lcom/google/googlenav/aN;

    invoke-virtual {v1}, Lcom/google/googlenav/aN;->d()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lh/dq;->a(Ljava/util/Hashtable;)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v2, Lcom/google/googlenav/aN;

    const-string v3, ""

    invoke-direct {v2, p2, v3, p3}, Lcom/google/googlenav/aN;-><init>(ILjava/lang/String;Ljava/util/Vector;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lh/dq;->a(Ljava/util/Hashtable;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2cb -> :sswitch_0
        0x2cc -> :sswitch_1
        0x2d2 -> :sswitch_2
    .end sparse-switch
.end method

.method protected b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lh/dq;->b:Lcom/google/googlenav/z;

    iput-object v0, p0, Lh/dq;->c:Lcom/google/googlenav/a;

    iput-object v0, p0, Lh/dq;->d:Lcom/google/googlenav/aN;

    iput-object v0, p0, Lh/dq;->e:Lcom/google/googlenav/aN;

    invoke-super {p0}, Lh/eR;->b()V

    return-void
.end method
