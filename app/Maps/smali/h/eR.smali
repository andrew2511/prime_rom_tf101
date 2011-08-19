.class public abstract Lh/eR;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/aY;


# instance fields
.field private a:Z

.field private final b:Ljava/util/Vector;

.field protected final g:Lh/eY;

.field protected final h:LaU/a;

.field protected final i:Lcom/google/googlenav/ui/aV;

.field protected j:Lx/J;

.field protected k:I


# direct methods
.method protected constructor <init>(Lh/eY;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    return-void
.end method

.method protected constructor <init>(Lh/eY;LaU/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lh/eR;->k:I

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lh/eR;->b:Ljava/util/Vector;

    iput-object p1, p0, Lh/eR;->g:Lh/eY;

    iput-object p2, p0, Lh/eR;->h:LaU/a;

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    iput-object v0, p0, Lh/eR;->i:Lcom/google/googlenav/ui/aV;

    return-void
.end method

.method private h()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lh/eR;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lh/eR;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/J;

    invoke-interface {v0}, Lx/J;->k()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lh/eR;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public A_()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public B()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public B_()V
    .locals 0

    return-void
.end method

.method public C()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public D()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected E()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public F_()V
    .locals 0

    return-void
.end method

.method protected G_()I
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public T_()V
    .locals 0

    invoke-virtual {p0}, Lh/eR;->v()V

    invoke-virtual {p0}, Lh/eR;->u()V

    return-void
.end method

.method public abstract a(Lax/b;)I
.end method

.method public abstract a(Lax/c;)I
.end method

.method public a(Lax/e;)I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public a(Lf/h;)I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected abstract a()V
.end method

.method public a(Lcom/google/googlenav/ui/x;)V
    .locals 0

    return-void
.end method

.method protected a(Lx/J;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/eR;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lh/eR;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/J;

    invoke-interface {v0}, Lx/J;->k()V

    iget-object v0, p0, Lh/eR;->b:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_1
    iget-object v0, p0, Lh/eR;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Z)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Lax/c;)I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method protected b()V
    .locals 1

    invoke-direct {p0}, Lh/eR;->h()V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/eR;->j:Lx/J;

    return-void
.end method

.method public b(Lcom/google/googlenav/ui/x;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lh/eR;->g:Lh/eY;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lh/eY;->a(ILax/c;)V

    return-void
.end method

.method public f()Z
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lh/eR;->k:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lh/eR;->k:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final u()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/eR;->a:Z

    iget-object v0, p0, Lh/eR;->g:Lh/eY;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eR;->g:Lh/eY;

    invoke-virtual {v0, p0}, Lh/eY;->a(Lh/eR;)V

    :cond_0
    invoke-virtual {p0}, Lh/eR;->a()V

    iget-object v0, p0, Lh/eR;->g:Lh/eY;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/eR;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->j()V

    :cond_1
    return-void
.end method

.method public final v()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/eR;->a:Z

    iget-object v0, p0, Lh/eR;->j:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eR;->j:Lx/J;

    invoke-virtual {p0, v0}, Lh/eR;->a(Lx/J;)V

    :cond_0
    invoke-virtual {p0}, Lh/eR;->b()V

    iget-object v0, p0, Lh/eR;->g:Lh/eY;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/eR;->g:Lh/eY;

    invoke-virtual {v0, p0}, Lh/eY;->b(Lh/eR;)V

    :cond_1
    return-void
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lh/eR;->a:Z

    return v0
.end method

.method public x()Z
    .locals 1

    iget-object v0, p0, Lh/eR;->j:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eR;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public x_()[Lax/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public z()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
