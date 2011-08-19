.class public abstract Li/x;
.super Ljava/lang/Object;

# interfaces
.implements LA/f;
.implements Lac/h;
.implements Lcom/google/googlenav/ui/aY;
.implements Lcom/google/googlenav/ui/bA;
.implements Lx/U;


# instance fields
.field protected A:Li/aM;

.field protected B:Li/aG;

.field protected C:Li/be;

.field protected D:LN/j;

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Li/ai;

.field private I:Li/ax;

.field private J:I

.field private K:I

.field private L:B

.field private final a:Ljava/util/Vector;

.field private b:I

.field private c:Z

.field private d:[Ljava/lang/Boolean;

.field private e:Z

.field protected final f:Lcom/google/googlenav/ui/aV;

.field protected final g:Lcom/google/googlenav/ui/aT;

.field protected final h:Lf/v;

.field protected final i:Lf/Y;

.field protected final j:LaF/a;

.field protected k:Lcom/google/googlenav/j;

.field protected l:Lx/S;

.field protected m:Lcom/google/googlenav/bf;

.field protected n:Lx/J;

.field protected final o:Lcom/google/googlenav/ui/X;

.field protected p:Lx/S;

.field protected q:Lx/S;

.field protected r:Lx/S;

.field protected s:Lx/S;

.field protected t:Lx/J;

.field protected u:I

.field protected v:Lx/J;

.field protected w:Lk/l;

.field protected x:Z

.field protected y:Z

.field protected z:Z


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LaF/a;

    invoke-direct {v0}, LaF/a;-><init>()V

    iput-object v0, p0, Li/x;->j:LaF/a;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v4}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Li/x;->a:Ljava/util/Vector;

    iput v3, p0, Li/x;->b:I

    new-array v0, v4, [Ljava/lang/Boolean;

    iput-object v0, p0, Li/x;->d:[Ljava/lang/Boolean;

    iput-boolean v2, p0, Li/x;->e:Z

    iput-boolean v2, p0, Li/x;->E:Z

    iput-boolean v1, p0, Li/x;->F:Z

    iput-boolean v2, p0, Li/x;->G:Z

    iput v1, p0, Li/x;->J:I

    iput v3, p0, Li/x;->K:I

    iput-byte v1, p0, Li/x;->L:B

    iput-object p1, p0, Li/x;->g:Lcom/google/googlenav/ui/aT;

    iput-object p2, p0, Li/x;->h:Lf/v;

    iput-object p3, p0, Li/x;->i:Lf/Y;

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    iput-object v0, p0, Li/x;->f:Lcom/google/googlenav/ui/aV;

    iput-object p4, p0, Li/x;->o:Lcom/google/googlenav/ui/X;

    invoke-static {}, Li/bd;->a()Li/bd;

    move-result-object v0

    invoke-virtual {v0, p0}, Li/bd;->a(Li/x;)Li/aM;

    move-result-object v1

    iput-object v1, p0, Li/x;->A:Li/aM;

    invoke-virtual {v0, p0}, Li/bd;->b(Li/x;)Li/aG;

    move-result-object v1

    iput-object v1, p0, Li/x;->B:Li/aG;

    invoke-virtual {v0, p0}, Li/bd;->c(Li/x;)Li/be;

    move-result-object v0

    iput-object v0, p0, Li/x;->C:Li/be;

    invoke-virtual {p0}, Li/x;->m()LN/j;

    move-result-object v0

    iput-object v0, p0, Li/x;->D:LN/j;

    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/j;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Li/x;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;)V

    iput-object p5, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-virtual {p0}, Li/x;->Y()V

    return-void
.end method

.method private B()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p0, v2}, Lx/h;->a(ILx/U;Ljava/lang/String;)Lx/S;

    move-result-object v0

    iput-object v0, p0, Li/x;->q:Lx/S;

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lx/h;->a(ILx/U;Ljava/lang/String;)Lx/S;

    move-result-object v0

    iput-object v0, p0, Li/x;->p:Lx/S;

    return-void
.end method

.method private D()V
    .locals 3

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    invoke-virtual {p0}, Li/x;->X()I

    move-result v1

    invoke-virtual {p0}, Li/x;->W()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lx/h;->a(ILx/U;Ljava/lang/String;)Lx/S;

    move-result-object v0

    iput-object v0, p0, Li/x;->r:Lx/S;

    return-void
.end method

.method private F()V
    .locals 3

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lx/h;->a()Lx/h;

    move-result-object v0

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lx/h;->a(ILx/U;Ljava/lang/String;)Lx/S;

    move-result-object v0

    iput-object v0, p0, Li/x;->s:Lx/S;

    :cond_0
    return-void
.end method

.method private I()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Li/x;->q:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->q:Lx/S;

    invoke-interface {v0}, Lx/S;->b()V

    iput-object v1, p0, Li/x;->q:Lx/S;

    :cond_0
    iget-object v0, p0, Li/x;->p:Lx/S;

    if-eqz v0, :cond_1

    iget-object v0, p0, Li/x;->p:Lx/S;

    invoke-interface {v0}, Lx/S;->b()V

    iput-object v1, p0, Li/x;->p:Lx/S;

    :cond_1
    return-void
.end method

.method private J()V
    .locals 1

    iget-object v0, p0, Li/x;->r:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->r:Lx/S;

    invoke-interface {v0}, Lx/S;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Li/x;->r:Lx/S;

    :cond_0
    return-void
.end method

.method private K()V
    .locals 1

    iget-object v0, p0, Li/x;->s:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->s:Lx/S;

    invoke-interface {v0}, Lx/S;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Li/x;->s:Lx/S;

    :cond_0
    return-void
.end method

.method private L()V
    .locals 3

    iget-object v0, p0, Li/x;->B:Li/aG;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No DetailsDialog for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Li/x;->aP()V

    iget-object v0, p0, Li/x;->B:Li/aG;

    invoke-interface {v0}, Li/aG;->c()Lx/J;

    move-result-object v0

    iput-object v0, p0, Li/x;->n:Lx/J;

    return-void
.end method

.method private N()V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Li/x;->aJ()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Li/x;->bi()Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Li/x;->aG()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Li/x;->aB()V

    invoke-virtual {p0}, Li/x;->bi()Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Li/x;->aF()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/x;->aB()V

    goto :goto_0
.end method

.method private a(Lcom/google/googlenav/ui/x;III)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p4}, Li/x;->e(I)Lcom/google/googlenav/aG;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/google/googlenav/aG;->a(Lcom/google/googlenav/aG;Lcom/google/googlenav/ui/x;II)V

    goto :goto_0
.end method

.method private b(I)I
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Lax/e;)I
    .locals 1

    invoke-virtual {p0}, Lax/e;->e()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lax/e;->e()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lax/e;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private b(Lcom/google/googlenav/bf;Lf/h;)Z
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/googlenav/bf;->G()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Li/x;->o:Lcom/google/googlenav/ui/X;

    invoke-interface {v1}, Lcom/google/googlenav/ui/X;->d()Lcom/google/googlenav/ui/J;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v5

    :goto_0
    return v1

    :cond_1
    check-cast p1, Lcom/google/googlenav/c;

    iget-object v1, p0, Li/x;->i:Lf/Y;

    invoke-virtual {v1}, Lf/Y;->f()Lf/l;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/googlenav/c;->g()Lf/N;

    move-result-object v1

    if-nez v1, :cond_2

    move v1, v5

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lf/N;->ap_()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Li/x;->o:Lcom/google/googlenav/ui/X;

    invoke-interface {v3}, Lcom/google/googlenav/ui/X;->d()Lcom/google/googlenav/ui/J;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Lf/A;

    move-object p0, v0

    invoke-virtual {v3, p0, v2}, Lcom/google/googlenav/ui/J;->a(Lcom/google/googlenav/ui/r;Lf/l;)[J

    move-result-object v1

    invoke-static {v1, p2, v2}, Lf/A;->a([JLf/h;Lf/l;)Z

    move-result v1

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Lf/N;->ap_()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Li/x;->o:Lcom/google/googlenav/ui/X;

    invoke-interface {v3}, Lcom/google/googlenav/ui/X;->d()Lcom/google/googlenav/ui/J;

    move-result-object v3

    check-cast v1, Lf/S;

    invoke-virtual {v3, v1, v2}, Lcom/google/googlenav/ui/J;->a(Lcom/google/googlenav/ui/r;Lf/l;)[J

    move-result-object v1

    invoke-static {v1, p2, v2}, Lf/S;->a([JLf/h;Lf/l;)Z

    move-result v1

    goto :goto_0

    :cond_4
    move v1, v5

    goto :goto_0
.end method

.method private b(Lf/h;I)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p2}, Li/x;->b(I)I

    move-result v0

    iget-object v1, p0, Li/x;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->af()Lcom/google/googlenav/ac;

    move-result-object v1

    invoke-virtual {v1, v0, p1, v3}, Lcom/google/googlenav/ac;->a(ILf/h;Z)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-static {}, LH/f;->a()LH/f;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, LH/f;->a()LH/f;

    move-result-object v1

    invoke-virtual {v1}, LH/f;->l()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    invoke-static {}, LH/f;->a()LH/f;

    move-result-object v1

    invoke-virtual {v1}, LH/f;->q()Lf/h;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Li/x;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aT;->af()Lcom/google/googlenav/ac;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/googlenav/ac;->a(ILf/h;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method private b(Lf/h;Lf/h;I)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p3, v3, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p3}, Li/x;->b(I)I

    move-result v0

    iget-object v1, p0, Li/x;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->af()Lcom/google/googlenav/ac;

    move-result-object v1

    invoke-virtual {v1, v0, p1, v2}, Lcom/google/googlenav/ac;->a(ILf/h;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Li/x;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->af()Lcom/google/googlenav/ac;

    move-result-object v1

    invoke-virtual {v1, v0, p2, v2}, Lcom/google/googlenav/ac;->a(ILf/h;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private f(Lcom/google/googlenav/ui/x;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Li/x;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Li/x;->i(Lcom/google/googlenav/ui/x;)V

    :cond_2
    invoke-virtual {p0}, Li/x;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Li/x;->g(Lcom/google/googlenav/ui/x;)V

    :cond_3
    invoke-virtual {p0}, Li/x;->az()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Li/x;->h(Lcom/google/googlenav/ui/x;)V

    goto :goto_0
.end method

.method private g(Lcom/google/googlenav/ui/x;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Li/x;->j:LaF/a;

    invoke-virtual {v0, v1, v1}, LaF/a;->a(II)V

    iget-object v0, p0, Li/x;->r:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->r:Lx/S;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lx/S;->a(Z)V

    iget-object v0, p0, Li/x;->r:Lx/S;

    iget-object v1, p0, Li/x;->j:LaF/a;

    invoke-interface {v0, v1, p1}, Lx/S;->a(LaF/a;Lcom/google/googlenav/ui/x;)V

    :cond_0
    return-void
.end method

.method private g(Lcom/google/googlenav/bf;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-interface {p1}, Lcom/google/googlenav/bf;->G()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lcom/google/googlenav/c;

    invoke-virtual {p1}, Lcom/google/googlenav/c;->aY()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/googlenav/c;->O()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h(Lcom/google/googlenav/ui/x;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Li/x;->j:LaF/a;

    invoke-virtual {v0, v1, v1}, LaF/a;->a(II)V

    iget-object v0, p0, Li/x;->s:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->s:Lx/S;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lx/S;->a(Z)V

    iget-object v0, p0, Li/x;->s:Lx/S;

    iget-object v1, p0, Li/x;->j:LaF/a;

    invoke-interface {v0, v1, p1}, Lx/S;->a(LaF/a;Lcom/google/googlenav/ui/x;)V

    :cond_0
    return-void
.end method

.method private i(Lcom/google/googlenav/ui/x;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Li/x;->j:LaF/a;

    invoke-virtual {v0, v1, v1}, LaF/a;->a(II)V

    iget-object v0, p0, Li/x;->q:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->q:Lx/S;

    invoke-virtual {p0}, Li/x;->ax()Z

    move-result v1

    invoke-interface {v0, v1}, Lx/S;->a(Z)V

    iget-object v0, p0, Li/x;->q:Lx/S;

    iget-object v1, p0, Li/x;->j:LaF/a;

    invoke-interface {v0, v1, p1}, Lx/S;->a(LaF/a;Lcom/google/googlenav/ui/x;)V

    :cond_0
    iget-object v0, p0, Li/x;->p:Lx/S;

    if-eqz v0, :cond_1

    iget-object v0, p0, Li/x;->p:Lx/S;

    invoke-virtual {p0}, Li/x;->ay()Z

    move-result v1

    invoke-interface {v0, v1}, Lx/S;->a(Z)V

    iget-object v0, p0, Li/x;->p:Lx/S;

    iget-object v1, p0, Li/x;->j:LaF/a;

    invoke-interface {v0, v1, p1}, Lx/S;->a(LaF/a;Lcom/google/googlenav/ui/x;)V

    :cond_1
    return-void
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Li/x;->q:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->q:Lx/S;

    invoke-virtual {p0}, Li/x;->ax()Z

    move-result v1

    invoke-interface {v0, v1}, Lx/S;->a(Z)V

    :cond_0
    iget-object v0, p0, Li/x;->p:Lx/S;

    if-eqz v0, :cond_1

    iget-object v0, p0, Li/x;->p:Lx/S;

    invoke-virtual {p0}, Li/x;->ay()Z

    move-result v1

    invoke-interface {v0, v1}, Lx/S;->a(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    iget-object v0, p0, Li/x;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->ae()Lcom/google/googlenav/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/g;->d()Z

    move-result v0

    iput-boolean v0, p0, Li/x;->c:Z

    invoke-virtual {p0}, Li/x;->Y()V

    invoke-virtual {p0}, Li/x;->aJ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->n:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->n:Lx/J;

    invoke-interface {v0}, Lx/J;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/j;->d_()B

    move-result v1

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    invoke-virtual {p0}, Li/x;->N_()V

    invoke-virtual {p0, v1}, Li/x;->b(B)V

    invoke-virtual {p0, v0}, Li/x;->d(I)V

    invoke-virtual {p0}, Li/x;->h()V

    :cond_0
    return-void
.end method

.method protected G()V
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Li/x;->b(B)V

    invoke-virtual {p0}, Li/x;->aj()V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->i:Lf/Y;

    iget-object v1, p0, Li/x;->i:Lf/Y;

    invoke-virtual {v1}, Lf/Y;->e()Lf/h;

    move-result-object v1

    iget-object v2, p0, Li/x;->i:Lf/Y;

    invoke-virtual {v2}, Lf/Y;->f()Lf/l;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Li/x;->a(Lf/h;Lf/l;)Lf/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/Y;->b(Lf/h;)V

    :cond_0
    return-void
.end method

.method public H()[Lax/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected L_()I
    .locals 1

    invoke-virtual {p0}, Li/x;->aV()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public M()V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Li/x;->aF()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Li/x;->d(Z)V

    invoke-virtual {p0}, Li/x;->Y_()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Li/x;->aG()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Li/x;->e(Z)V

    invoke-virtual {p0}, Li/x;->G()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Li/x;->aH()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/x;->T()V

    goto :goto_0
.end method

.method public M_()[Lcom/google/googlenav/ui/r;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public N_()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Li/x;->x:Z

    invoke-virtual {p0, v0}, Li/x;->b(B)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Li/x;->d(I)V

    invoke-virtual {p0}, Li/x;->ae()V

    invoke-virtual {p0}, Li/x;->aa()V

    invoke-virtual {p0}, Li/x;->aM()V

    invoke-virtual {p0}, Li/x;->ao()V

    invoke-direct {p0}, Li/x;->I()V

    invoke-direct {p0}, Li/x;->J()V

    invoke-direct {p0}, Li/x;->K()V

    return-void
.end method

.method protected P_()V
    .locals 0

    return-void
.end method

.method protected T()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/x;->b(B)V

    invoke-virtual {p0}, Li/x;->aj()V

    return-void
.end method

.method protected W()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected X()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method protected Y()V
    .locals 1

    invoke-virtual {p0}, Li/x;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Li/x;->B()V

    :goto_0
    invoke-virtual {p0}, Li/x;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Li/x;->D()V

    :goto_1
    invoke-virtual {p0}, Li/x;->az()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Li/x;->F()V

    :goto_2
    return-void

    :cond_0
    invoke-direct {p0}, Li/x;->I()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Li/x;->J()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Li/x;->K()V

    goto :goto_2
.end method

.method protected Y_()V
    .locals 3

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Li/x;->b(B)V

    invoke-virtual {p0}, Li/x;->aj()V

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Li/x;->h(I)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->i:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li/x;->i:Lf/Y;

    iget-object v1, p0, Li/x;->i:Lf/Y;

    invoke-virtual {v1}, Lf/Y;->e()Lf/h;

    move-result-object v1

    iget-object v2, p0, Li/x;->i:Lf/Y;

    invoke-virtual {v2}, Lf/Y;->f()Lf/l;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Li/x;->a(Lf/h;Lf/l;)Lf/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/Y;->b(Lf/h;)V

    :cond_0
    return-void
.end method

.method public final Z()B
    .locals 1

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->d_()B

    move-result v0

    return v0
.end method

.method public abstract a(Lcom/google/googlenav/bf;)I
.end method

.method public a(Lf/h;)I
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v1, v0}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v3}, Li/x;->a(Lcom/google/googlenav/bf;Lf/h;Lk/m;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v2

    :goto_1
    iget-object v1, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->c_()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v1, v0}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v3}, Li/x;->a(Lcom/google/googlenav/bf;Lf/h;Lk/m;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_2
    iget-object v1, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->c_()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v1, v0}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Li/x;->b(Lcom/google/googlenav/bf;Lf/h;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected a(Lcom/google/googlenav/bf;Lf/h;)J
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Li/x;->i:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->f()Lf/l;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Li/x;->d(Lcom/google/googlenav/bf;)I

    move-result v2

    invoke-virtual {p0, p1}, Li/x;->e(Lcom/google/googlenav/bf;)I

    move-result v3

    invoke-virtual {p0, p1}, Li/x;->f(Lcom/google/googlenav/bf;)I

    move-result v4

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v2, v5

    move v3, v5

    :goto_0
    if-nez v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v1, v3, v2, v0}, Lf/h;->a(IILf/l;)Lf/h;

    move-result-object v1

    :cond_1
    invoke-virtual {p2, v1, v0}, Lf/h;->a(Lf/h;Lf/l;)J

    move-result-wide v0

    :goto_1
    return-wide v0

    :pswitch_1
    iget-object v2, p0, Li/x;->f:Lcom/google/googlenav/ui/aV;

    invoke-interface {p1}, Lcom/google/googlenav/bf;->F()B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aV;->b(B)I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Li/x;->f:Lcom/google/googlenav/ui/aV;

    invoke-interface {p1}, Lcom/google/googlenav/bf;->F()B

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/aV;->a(B)I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    move v6, v3

    move v3, v2

    move v2, v6

    goto :goto_0

    :pswitch_2
    neg-int v2, v4

    div-int/lit8 v2, v2, 0x2

    move v3, v5

    goto :goto_0

    :pswitch_3
    neg-int v2, v3

    div-int/lit8 v2, v2, 0x2

    neg-int v3, v4

    div-int/lit8 v3, v3, 0x2

    move v6, v3

    move v3, v2

    move v2, v6

    goto :goto_0

    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lf/h;Lf/l;)Lf/h;
    .locals 11

    const/4 v9, 0x0

    invoke-virtual {p0}, Li/x;->aK()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/x;->ac()Lcom/google/googlenav/bf;

    move-result-object v1

    iget-object v0, p0, Li/x;->l:Lx/S;

    invoke-interface {v0}, Lx/S;->d()[I

    move-result-object v2

    iget-object v0, p0, Li/x;->i:Lf/Y;

    iget-object v3, p0, Li/x;->i:Lf/Y;

    invoke-virtual {v3}, Lf/Y;->f()Lf/l;

    move-result-object v3

    invoke-virtual {v0, v3}, Lf/Y;->a(Lf/l;)V

    iget-object v0, p0, Li/x;->i:Lf/Y;

    invoke-virtual {p0, v1}, Li/x;->e(Lcom/google/googlenav/bf;)I

    move-result v3

    invoke-virtual {p0, v1}, Li/x;->f(Lcom/google/googlenav/bf;)I

    move-result v4

    aget v5, v2, v9

    const/4 v6, 0x1

    aget v6, v2, v6

    invoke-virtual {p0, v1}, Li/x;->a(Lcom/google/googlenav/bf;)I

    move-result v7

    invoke-virtual {p0}, Li/x;->q_()I

    move-result v8

    invoke-virtual {p0, v9}, Li/x;->c(Z)I

    move-result v9

    move-object v2, p1

    move-object v10, p2

    invoke-virtual/range {v0 .. v10}, Lf/Y;->a(Lcom/google/googlenav/bf;Lf/h;IIIIIIILf/l;)Lf/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public final a(B)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Li/x;->Y_()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Li/x;->G()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Li/x;->T()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Li/x;->aC()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final a(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Li/x;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Li/x;->d(ILjava/lang/Object;)Lh/fc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/l;->a(Lh/fc;)V

    invoke-virtual {p0}, Li/x;->G()V

    return-void
.end method

.method protected a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0}, Li/x;->b()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v0, "0"

    :goto_1
    const/16 v1, 0x12

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "a="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :sswitch_1
    const-string v0, "dd"

    goto :goto_1

    :sswitch_2
    const-string v0, "ct"

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_2
        0xb -> :sswitch_2
        0xe -> :sswitch_2
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Lcom/google/googlenav/aH;Lcom/google/googlenav/bf;I)V
    .locals 1

    invoke-virtual {p0}, Li/x;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/aH;->a(I)Lcom/google/googlenav/aH;

    invoke-virtual {p1, p3}, Lcom/google/googlenav/aH;->b(I)Lcom/google/googlenav/aH;

    return-void
.end method

.method public final a(Lcom/google/googlenav/bf;I)V
    .locals 1

    invoke-virtual {p0, p2}, Li/x;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/googlenav/aH;

    invoke-direct {v0}, Lcom/google/googlenav/aH;-><init>()V

    invoke-virtual {p0, v0, p1, p2}, Li/x;->a(Lcom/google/googlenav/aH;Lcom/google/googlenav/bf;I)V

    invoke-virtual {v0}, Lcom/google/googlenav/aH;->a()V

    :cond_0
    return-void
.end method

.method protected abstract a(Lcom/google/googlenav/j;)V
.end method

.method protected a(Lcom/google/googlenav/ui/x;)V
    .locals 1

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-virtual {p0, p1, v0}, Li/x;->a(Lcom/google/googlenav/ui/x;Lcom/google/googlenav/j;)V

    return-void
.end method

.method protected a(Lcom/google/googlenav/ui/x;Lcom/google/googlenav/bf;)V
    .locals 5

    invoke-interface {p2}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Li/x;->h:Lf/v;

    iget-object v2, p0, Li/x;->j:LaF/a;

    invoke-virtual {v1, v0, v2}, Lf/v;->a(Lf/h;LaF/a;)V

    iget-object v0, p0, Li/x;->f:Lcom/google/googlenav/ui/aV;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/x;->b()Lk/m;

    move-result-object v1

    invoke-interface {p2}, Lcom/google/googlenav/bf;->F()B

    move-result v2

    iget-object v3, p0, Li/x;->j:LaF/a;

    iget v3, v3, LaF/a;->a:I

    iget-object v4, p0, Li/x;->j:LaF/a;

    iget v4, v4, LaF/a;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/aV;->a(Lk/m;BII)V

    :cond_0
    return-void
.end method

.method protected a(Lcom/google/googlenav/ui/x;Lcom/google/googlenav/j;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p2}, Lcom/google/googlenav/j;->c_()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p2, v0}, Lcom/google/googlenav/j;->d(I)I

    move-result v2

    invoke-interface {p2, v2}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v2}, Li/x;->g(Lcom/google/googlenav/bf;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1, v2}, Li/x;->a(Lcom/google/googlenav/ui/x;Lcom/google/googlenav/bf;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Li/ai;)V
    .locals 0

    iput-object p1, p0, Li/x;->H:Li/ai;

    return-void
.end method

.method public a(Li/ax;)V
    .locals 0

    iput-object p1, p0, Li/x;->I:Li/ax;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/c;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x453

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x270

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lx/C;->a(Ljava/lang/String;Lx/G;Ljava/lang/String;Ljava/lang/String;IZ)Lx/C;

    move-result-object v0

    new-instance v2, Lx/i;

    invoke-direct {v2, v1, v5, v0, v1}, Lx/i;-><init>(Ljava/lang/String;ILx/C;[Lax/e;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    invoke-virtual {v0, v2}, Lx/k;->a(Lx/i;)Lx/J;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    iget-object v1, p0, Li/x;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Li/x;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/ui/aT;->a(Ljava/lang/String;Lcom/google/googlenav/c;)V

    goto :goto_0
.end method

.method public a(Ljava/util/Vector;Lf/h;I)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->c_()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v1, v0}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/bf;->H()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, p2}, Li/x;->a(Lcom/google/googlenav/bf;Lf/h;)J

    move-result-wide v2

    int-to-long v4, p3

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    invoke-static {p0, v1, v0, v2, v3}, Li/aR;->a(Li/x;Lcom/google/googlenav/bf;IJ)Li/aR;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a(Lk/l;)V
    .locals 0

    iput-object p1, p0, Li/x;->w:Lk/l;

    return-void
.end method

.method public a(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Li/x;->aG()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Li/x;->v:Lx/J;

    if-eqz v0, :cond_2

    move v0, v3

    :goto_0
    iput-object v4, p0, Li/x;->v:Lx/J;

    :goto_1
    iget-object v1, p0, Li/x;->k:Lcom/google/googlenav/j;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Li/x;->aF()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Li/x;->t:Lx/J;

    if-eqz v1, :cond_3

    move v1, v3

    :goto_2
    or-int/2addr v0, v1

    iput-object v4, p0, Li/x;->t:Lx/J;

    :cond_0
    if-eqz v0, :cond_1

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method protected a(ZLf/l;)V
    .locals 11

    invoke-virtual {p0}, Li/x;->ac()Lcom/google/googlenav/bf;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/googlenav/bf;->H()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Li/x;->a(Lcom/google/googlenav/bf;)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Li/x;->c(Z)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Li/x;->q_()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    mul-int v3, v0, v0

    mul-int v4, v2, v2

    add-int/2addr v3, v4

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    int-to-double v5, v2

    int-to-double v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    iget-object v0, p0, Li/x;->i:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->g()F

    move-result v0

    float-to-double v7, v0

    const-wide v9, 0x400921fb54442d18L

    mul-double/2addr v7, v9

    const-wide v9, 0x4066800000000000L

    div-double/2addr v7, v9

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v7, v3

    double-to-int v0, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v2, v3, v5

    double-to-int v2, v2

    if-nez v0, :cond_0

    if-eqz v2, :cond_3

    :cond_0
    invoke-virtual {v1, v0, v2, p2}, Lf/h;->a(IILf/l;)Lf/h;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_2

    iget-object v1, p0, Li/x;->i:Lf/Y;

    invoke-virtual {v1, v0, p2}, Lf/Y;->d(Lf/h;Lf/l;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Li/x;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aT;->Q()V

    iget-object v1, p0, Li/x;->i:Lf/Y;

    invoke-virtual {v1, v0}, Lf/Y;->c(Lf/h;)V

    iget-object v0, p0, Li/x;->i:Lf/Y;

    invoke-virtual {v0, p2}, Lf/Y;->a(Lf/l;)V

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method protected final a(CI)Z
    .locals 2

    new-instance v0, Lax/c;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p1, p2, v1}, Lax/c;-><init>(IIIZ)V

    invoke-virtual {p0, v0}, Li/x;->c(Lax/c;)Z

    move-result v0

    return v0
.end method

.method public a(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LaunchUrl"

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "missing url"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lac/g;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Li/x;->c(Ljava/lang/String;)V

    iget-object v0, p0, Li/x;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, p3, v2}, Lcom/google/googlenav/ui/aT;->a(Ljava/lang/String;Lcom/google/googlenav/c;)V

    goto :goto_1

    :sswitch_1
    const/16 v0, 0x10

    const-string v1, "mbl"

    invoke-static {v0, v1}, Lac/g;->a(ILjava/lang/String;)Z

    const/16 v0, 0x901

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Li/x;->a(IILjava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x9d6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected a(Lax/b;Z)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lax/b;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lax/b;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Li/x;->h:Lf/v;

    invoke-virtual {p1}, Lax/b;->k()I

    move-result v1

    invoke-virtual {p1}, Lax/b;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lf/v;->b(II)Lf/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Li/x;->a(Lf/h;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Li/x;->c(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Li/x;->aM()V

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_1
    if-eqz v0, :cond_4

    const/4 v0, -0x1

    const-string v1, "c"

    const-string v2, "c"

    invoke-virtual {p0, v0, v1, v2}, Li/x;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Li/x;->aC()V

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lax/b;->j()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lax/b;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_1
.end method

.method protected abstract a(Lax/c;)Z
.end method

.method public a(Lax/e;)Z
    .locals 3

    const/4 v2, -0x1

    sget-object v0, Lcom/google/googlenav/ui/w;->r:Lax/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/googlenav/ui/w;->s:Lax/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Li/x;->bi()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Li/x;->b(Lax/e;)I

    move-result v0

    if-eq v0, v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v1}, Li/x;->a(IILjava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/google/googlenav/bf;Lf/h;Lk/m;)Z
    .locals 9

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/google/googlenav/bf;->H()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v2

    invoke-virtual {p0, p1}, Li/x;->d(Lcom/google/googlenav/bf;)I

    move-result v3

    invoke-virtual {p0, p1}, Li/x;->e(Lcom/google/googlenav/bf;)I

    move-result v4

    invoke-virtual {p0, p1}, Li/x;->f(Lcom/google/googlenav/bf;)I

    move-result v5

    const/4 v0, 0x3

    if-ne v3, v0, :cond_2

    iget-object v0, p0, Li/x;->f:Lcom/google/googlenav/ui/aV;

    invoke-interface {p1}, Lcom/google/googlenav/bf;->F()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aV;->b(B)I

    move-result v0

    iget-object v1, p0, Li/x;->f:Lcom/google/googlenav/ui/aV;

    invoke-interface {p1}, Lcom/google/googlenav/bf;->F()B

    move-result v6

    invoke-virtual {v1, v6}, Lcom/google/googlenav/ui/aV;->a(B)I

    move-result v1

    move v7, v1

    move v6, v0

    :goto_1
    iget-object v0, p0, Li/x;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    move-object v1, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Li/aE;->a(Lf/h;Lf/h;IIIIILk/m;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v7, v1

    move v6, v1

    goto :goto_1
.end method

.method public a(Lf/h;I)Z
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->A()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Li/x;->d:[Ljava/lang/Boolean;

    aget-object v0, v0, p2

    if-nez v0, :cond_2

    iget-object v0, p0, Li/x;->d:[Ljava/lang/Boolean;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2}, Li/x;->b(Lf/h;I)Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v1, v0, p2

    :cond_2
    iget-object v0, p0, Li/x;->d:[Ljava/lang/Boolean;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public a(Lf/h;Lf/h;I)Z
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->A()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Li/x;->d:[Ljava/lang/Boolean;

    aget-object v0, v0, p3

    if-nez v0, :cond_2

    iget-object v0, p0, Li/x;->d:[Ljava/lang/Boolean;

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2, p3}, Li/x;->b(Lf/h;Lf/h;I)Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v1, v0, p3

    :cond_2
    iget-object v0, p0, Li/x;->d:[Ljava/lang/Boolean;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method protected a(Ljava/io/DataInput;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected a(Lx/J;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    iput-object p1, p0, Li/x;->n:Lx/J;

    invoke-virtual {p0}, Li/x;->ah()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public a(Lx/Q;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Li/x;->q:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->q:Lx/S;

    if-ne p1, v0, :cond_0

    const/16 v0, 0x34

    invoke-virtual {p0, v0, v1}, Li/x;->a(CI)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Li/x;->p:Lx/S;

    if-eqz v0, :cond_1

    iget-object v0, p0, Li/x;->p:Lx/S;

    if-ne p1, v0, :cond_1

    const/16 v0, 0x36

    invoke-virtual {p0, v0, v1}, Li/x;->a(CI)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Li/x;->r:Lx/S;

    if-eqz v0, :cond_4

    iget-object v0, p0, Li/x;->r:Lx/S;

    if-ne p1, v0, :cond_4

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Li/x;->N()V

    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Li/x;->bi()Z

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Li/x;->s:Lx/S;

    if-eqz v0, :cond_5

    iget-object v0, p0, Li/x;->s:Lx/S;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Li/x;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/aT;->q(Z)V

    move v0, v3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Li/x;->l:Lx/S;

    if-eqz v0, :cond_3

    iget-object v0, p0, Li/x;->l:Lx/S;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Li/x;->G()V

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    const-string v1, "s"

    const-string v2, "c"

    invoke-virtual {p0, v0, v1, v2}, Li/x;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto :goto_0
.end method

.method protected aA()V
    .locals 1

    iget-object v0, p0, Li/x;->H:Li/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->H:Li/ai;

    invoke-interface {v0, p0}, Li/ai;->a(Li/x;)V

    :cond_0
    return-void
.end method

.method protected aB()V
    .locals 2

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Li/x;->b(B)V

    :goto_0
    invoke-virtual {p0}, Li/x;->aa()V

    invoke-virtual {p0}, Li/x;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Li/x;->D()V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Li/x;->b(B)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Li/x;->J()V

    goto :goto_1
.end method

.method public aC()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Li/x;->b(B)V

    invoke-virtual {p0}, Li/x;->aM()V

    invoke-virtual {p0}, Li/x;->aa()V

    invoke-virtual {p0}, Li/x;->ao()V

    return-void
.end method

.method protected aD()Z
    .locals 1

    invoke-virtual {p0}, Li/x;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Li/x;->aG()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aE()Z
    .locals 1

    iget-object v0, p0, Li/x;->B:Li/aG;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aF()Z
    .locals 2

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->d_()B

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aG()Z
    .locals 2

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->d_()B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aH()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->d_()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aI()Z
    .locals 1

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->d_()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aJ()Z
    .locals 1

    iget-object v0, p0, Li/x;->n:Lx/J;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Li/x;->aG()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Li/x;->aF()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aK()Z
    .locals 2

    iget-object v0, p0, Li/x;->l:Lx/S;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Li/x;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Li/x;->aI()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public aL()Lx/S;
    .locals 1

    iget-object v0, p0, Li/x;->l:Lx/S;

    return-object v0
.end method

.method public aM()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Li/x;->l:Lx/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->l:Lx/S;

    invoke-interface {v0}, Lx/S;->b()V

    iput-object v1, p0, Li/x;->l:Lx/S;

    iput-object v1, p0, Li/x;->m:Lcom/google/googlenav/bf;

    iget-object v0, p0, Li/x;->I:Li/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->I:Li/ax;

    invoke-interface {v0, p0}, Li/ax;->d(Li/x;)V

    :cond_0
    return-void
.end method

.method public aN()Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Li/x;->ac()Lcom/google/googlenav/bf;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Li/x;->aM()V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Li/x;->m:Lcom/google/googlenav/bf;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Li/x;->k()V

    iget-object v1, p0, Li/x;->C:Li/be;

    if-nez v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Li/x;->C:Li/be;

    invoke-interface {v1}, Li/be;->a()Lx/S;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Li/x;->aM()V

    move v0, v2

    goto :goto_0

    :cond_2
    iput-object v1, p0, Li/x;->l:Lx/S;

    iput-object v0, p0, Li/x;->m:Lcom/google/googlenav/bf;

    iget-object v0, p0, Li/x;->I:Li/ax;

    if-eqz v0, :cond_3

    iget-object v0, p0, Li/x;->I:Li/ax;

    invoke-interface {v0, p0, v1}, Li/ax;->a(Li/x;Lx/S;)V

    :cond_3
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Li/x;->h(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public aO()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected aP()V
    .locals 0

    return-void
.end method

.method protected aQ()V
    .locals 3

    iget-object v0, p0, Li/x;->A:Li/aM;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No ListDialog for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Li/x;->P_()V

    iget-object v0, p0, Li/x;->A:Li/aM;

    invoke-interface {v0}, Li/aM;->al_()Lx/J;

    move-result-object v0

    iput-object v0, p0, Li/x;->n:Lx/J;

    return-void
.end method

.method protected aR()I
    .locals 1

    iget-object v0, p0, Li/x;->n:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->n:Lx/J;

    invoke-interface {v0}, Lx/J;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public aS()V
    .locals 0

    return-void
.end method

.method public aT()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    if-eqz v0, :cond_4

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c_()I

    move-result v1

    move v2, v5

    move v3, v5

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v0, v2}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/bf;->G()I

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v0, v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    check-cast v0, Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->O()Z

    move-result v0

    if-nez v0, :cond_3

    add-int/lit8 v0, v3, 0x1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_2
    if-ne v0, v6, :cond_2

    move v0, v6

    :goto_3
    return v0

    :cond_2
    move v0, v5

    goto :goto_3

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v5

    goto :goto_2
.end method

.method public aU()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c_()I

    move-result v0

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v2, v1}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method public aV()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public aW()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public aX()Lf/l;
    .locals 1

    iget-object v0, p0, Li/x;->i:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->f()Lf/l;

    move-result-object v0

    return-object v0
.end method

.method public aY()Z
    .locals 1

    iget-boolean v0, p0, Li/x;->x:Z

    return v0
.end method

.method public aZ()Z
    .locals 1

    iget-boolean v0, p0, Li/x;->y:Z

    return v0
.end method

.method protected aa()V
    .locals 1

    iget-object v0, p0, Li/x;->n:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->n:Lx/J;

    invoke-virtual {p0, v0}, Li/x;->b(Lx/J;)V

    const/4 v0, 0x0

    iput-object v0, p0, Li/x;->n:Lx/J;

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Boolean;

    iput-object v0, p0, Li/x;->d:[Ljava/lang/Boolean;

    return-void
.end method

.method protected ab()V
    .locals 1

    iget-object v0, p0, Li/x;->B:Li/aG;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->B:Li/aG;

    invoke-interface {v0}, Li/aG;->a()V

    :cond_0
    iget-object v0, p0, Li/x;->A:Li/aM;

    if-eqz v0, :cond_1

    iget-object v0, p0, Li/x;->A:Li/aM;

    invoke-interface {v0}, Li/aM;->b()V

    :cond_1
    invoke-virtual {p0}, Li/x;->ae()V

    return-void
.end method

.method public ac()Lcom/google/googlenav/bf;
    .locals 1

    invoke-virtual {p0}, Li/x;->aI()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->b()Lcom/google/googlenav/bf;

    move-result-object v0

    goto :goto_0
.end method

.method protected ad()V
    .locals 0

    return-void
.end method

.method public ae()V
    .locals 0

    invoke-virtual {p0}, Li/x;->af()V

    invoke-virtual {p0}, Li/x;->ag()V

    return-void
.end method

.method public af()V
    .locals 1

    iget-object v0, p0, Li/x;->t:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->t:Lx/J;

    invoke-virtual {p0, v0}, Li/x;->b(Lx/J;)V

    const/4 v0, 0x0

    iput-object v0, p0, Li/x;->t:Lx/J;

    :cond_0
    return-void
.end method

.method protected ag()V
    .locals 1

    iget-object v0, p0, Li/x;->v:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->v:Lx/J;

    invoke-virtual {p0, v0}, Li/x;->b(Lx/J;)V

    const/4 v0, 0x0

    iput-object v0, p0, Li/x;->v:Lx/J;

    :cond_0
    return-void
.end method

.method protected ah()V
    .locals 0

    return-void
.end method

.method protected ai()V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->d_()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Li/x;->n:Lx/J;

    iput-object v0, p0, Li/x;->t:Lx/J;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    iput v0, p0, Li/x;->u:I

    iget-object v0, p0, Li/x;->n:Lx/J;

    iput-object v0, p0, Li/x;->v:Lx/J;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final aj()V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/x;->al()V

    :goto_0
    invoke-virtual {p0}, Li/x;->am()V

    invoke-virtual {p0}, Li/x;->an()V

    return-void

    :cond_0
    invoke-virtual {p0}, Li/x;->ak()V

    goto :goto_0
.end method

.method protected ak()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    iget-boolean v0, p0, Li/x;->x:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Li/x;->ad()V

    invoke-virtual {p0}, Li/x;->t_()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Li/x;->ag()V

    :cond_2
    invoke-virtual {p0}, Li/x;->as()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Li/x;->af()V

    :cond_3
    iget-object v0, p0, Li/x;->n:Lx/J;

    iget-object v1, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->d_()B

    move-result v1

    if-ne v1, v4, :cond_7

    iget-object v1, p0, Li/x;->t:Lx/J;

    invoke-virtual {p0, v1}, Li/x;->a(Lx/J;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Li/x;->aQ()V

    invoke-virtual {p0}, Li/x;->ai()V

    :cond_4
    invoke-virtual {p0}, Li/x;->aM()V

    iget-object v1, p0, Li/x;->n:Lx/J;

    if-eqz v1, :cond_6

    iget-object v1, p0, Li/x;->n:Lx/J;

    invoke-virtual {p0}, Li/x;->aq()I

    move-result v2

    invoke-interface {v1, v2}, Lx/J;->c(I)V

    :goto_1
    if-eqz v0, :cond_5

    iget-object v1, p0, Li/x;->n:Lx/J;

    if-eq v0, v1, :cond_5

    invoke-interface {v0}, Lx/J;->k()V

    :cond_5
    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->d_()B

    move-result v0

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->d_()B

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Li/x;->ao()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Li/x;->T()V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->d_()B

    move-result v1

    if-ne v1, v3, :cond_b

    iget-object v1, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->c()I

    move-result v1

    iget v2, p0, Li/x;->u:I

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Li/x;->v:Lx/J;

    invoke-virtual {p0, v1}, Li/x;->a(Lx/J;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    invoke-direct {p0}, Li/x;->L()V

    invoke-virtual {p0}, Li/x;->ai()V

    :cond_9
    invoke-virtual {p0}, Li/x;->aM()V

    iget-object v1, p0, Li/x;->n:Lx/J;

    if-eqz v1, :cond_a

    iget-object v1, p0, Li/x;->n:Lx/J;

    invoke-virtual {p0}, Li/x;->ar()I

    move-result v2

    invoke-interface {v1, v2}, Lx/J;->c(I)V

    goto :goto_1

    :cond_a
    invoke-virtual {p0}, Li/x;->T()V

    goto :goto_1

    :cond_b
    iget-object v1, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->d_()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    invoke-virtual {p0}, Li/x;->aN()Z

    invoke-virtual {p0}, Li/x;->aa()V

    goto :goto_1

    :cond_c
    invoke-virtual {p0}, Li/x;->aM()V

    invoke-virtual {p0}, Li/x;->aa()V

    goto :goto_1
.end method

.method protected al()V
    .locals 3

    iget-boolean v0, p0, Li/x;->x:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Li/x;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Li/x;->D()V

    :goto_1
    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->d_()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v2}, Lcom/google/googlenav/j;->d_()B

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Li/x;->J()V

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Li/x;->aa()V

    invoke-virtual {p0}, Li/x;->aM()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Li/x;->aa()V

    invoke-virtual {p0}, Li/x;->aN()Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Li/x;->aN()Z

    invoke-virtual {p0}, Li/x;->t_()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/x;->aa()V

    invoke-direct {p0}, Li/x;->L()V

    iget-object v0, p0, Li/x;->n:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->n:Lx/J;

    invoke-virtual {p0}, Li/x;->ar()I

    move-result v1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Li/x;->aN()Z

    invoke-virtual {p0}, Li/x;->as()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/x;->aa()V

    invoke-virtual {p0}, Li/x;->aQ()V

    iget-object v0, p0, Li/x;->n:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->n:Lx/J;

    invoke-virtual {p0}, Li/x;->aq()I

    move-result v1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected am()V
    .locals 0

    return-void
.end method

.method protected an()V
    .locals 0

    return-void
.end method

.method public ao()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Li/x;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Li/x;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/J;

    iget-object v2, p0, Li/x;->n:Lx/J;

    if-eq v0, v2, :cond_0

    invoke-interface {v0}, Lx/J;->k()V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Li/x;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public ap()LA/c;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Li/x;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/x;->t()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, LA/c;

    invoke-direct {v1, v0, v2}, LA/c;-><init>(Ljava/lang/String;I)V

    move v0, v2

    :goto_1
    iget-object v2, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v2}, Lcom/google/googlenav/j;->c_()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v2, v0}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/bf;->ap()LA/c;

    move-result-object v2

    invoke-virtual {v1, v2}, LA/c;->a(LA/c;)LA/c;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method protected aq()I
    .locals 2

    invoke-virtual {p0}, Li/x;->ba()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    invoke-virtual {p0}, Li/x;->L_()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected ar()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public as()Z
    .locals 1

    iget-boolean v0, p0, Li/x;->e:Z

    return v0
.end method

.method public at()Z
    .locals 1

    iget-boolean v0, p0, Li/x;->F:Z

    return v0
.end method

.method public au()V
    .locals 1

    iget-object v0, p0, Li/x;->n:Lx/J;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/x;->aF()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->A:Li/aM;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Li/x;->A:Li/aM;

    invoke-interface {v0}, Li/aM;->al_()Lx/J;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Li/x;->g(Z)V

    goto :goto_0
.end method

.method protected av()V
    .locals 0

    return-void
.end method

.method public aw()Z
    .locals 1

    invoke-virtual {p0}, Li/x;->s()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Li/x;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected ax()Z
    .locals 1

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->d_()B

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected ay()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    iget-object v1, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->c_()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected az()Z
    .locals 1

    iget-boolean v0, p0, Li/x;->c:Z

    return v0
.end method

.method public abstract b()I
.end method

.method public abstract b(Lcom/google/googlenav/bf;)I
.end method

.method public final b(B)V
    .locals 2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/x;->aF()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Li/x;->d(Z)V

    :cond_0
    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/googlenav/j;->a(B)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Li/x;->aG()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Li/x;->e(Z)V

    :cond_1
    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/googlenav/j;->a(B)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v0, v1}, Lcom/google/googlenav/j;->a(B)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/j;->a(B)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected b(ILjava/lang/Object;)V
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Li/x;->d(ILjava/lang/Object;)Lh/fc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/l;->a(Lh/fc;)V

    :cond_0
    invoke-virtual {p0}, Li/x;->T()V

    return-void
.end method

.method public b(Lcom/google/googlenav/ui/x;)V
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v1}, Lcom/google/googlenav/j;->c_()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v1, v0}, Lcom/google/googlenav/j;->d(I)I

    move-result v1

    iget-object v2, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v2, v1}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/google/googlenav/bf;->F()B

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Li/x;->h:Lf/v;

    iget-object v4, p0, Li/x;->j:LaF/a;

    invoke-virtual {v3, v2, v4}, Lf/v;->a(Lf/h;LaF/a;)V

    iget-object v2, p0, Li/x;->j:LaF/a;

    iget v2, v2, LaF/a;->a:I

    iget-object v3, p0, Li/x;->j:LaF/a;

    iget v3, v3, LaF/a;->b:I

    invoke-direct {p0, p1, v2, v3, v1}, Li/x;->a(Lcom/google/googlenav/ui/x;III)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected b(Lcom/google/googlenav/ui/x;Lcom/google/googlenav/bf;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Li/x;->l:Lx/S;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p2}, Li/x;->c(Lcom/google/googlenav/bf;)Lf/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Li/x;->l:Lx/S;

    invoke-interface {v1}, Lx/S;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Li/x;->h:Lf/v;

    iget-object v2, p0, Li/x;->j:LaF/a;

    invoke-virtual {v1, v0, v2}, Lf/v;->a(Lf/h;LaF/a;)V

    :goto_1
    if-nez p1, :cond_4

    move v0, v3

    :goto_2
    if-nez p1, :cond_5

    move v1, v3

    :goto_3
    iget-object v2, p0, Li/x;->j:LaF/a;

    iget-object v3, p0, Li/x;->j:LaF/a;

    iget v3, v3, LaF/a;->a:I

    add-int/2addr v0, v3

    invoke-virtual {p0, p2}, Li/x;->a(Lcom/google/googlenav/bf;)I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Li/x;->j:LaF/a;

    iget v3, v3, LaF/a;->b:I

    add-int/2addr v1, v3

    invoke-virtual {p0, p2}, Li/x;->b(Lcom/google/googlenav/bf;)I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v2, v0, v1}, LaF/a;->a(II)V

    if-nez p1, :cond_2

    iget-object v0, p0, Li/x;->l:Lx/S;

    invoke-interface {v0}, Lx/S;->c()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Li/x;->l:Lx/S;

    iget-object v1, p0, Li/x;->j:LaF/a;

    invoke-interface {v0, v1, p1}, Lx/S;->a(LaF/a;Lcom/google/googlenav/ui/x;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Li/x;->h:Lf/v;

    iget-object v2, p0, Li/x;->j:LaF/a;

    invoke-virtual {v1, v0, v2}, Lf/v;->b(Lf/h;LaF/a;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/google/googlenav/ui/x;->c()I

    move-result v0

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/google/googlenav/ui/x;->d()I

    move-result v1

    goto :goto_3
.end method

.method protected b(Lx/J;)V
    .locals 2

    iget-object v0, p0, Li/x;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->v()V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lx/J;->k()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Li/x;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    iget-object v0, p0, Li/x;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/J;

    invoke-interface {v0}, Lx/J;->k()V

    iget-object v0, p0, Li/x;->a:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_1
    iget-object v0, p0, Li/x;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected b(Z)V
    .locals 1

    iget-object v0, p0, Li/x;->i:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->f()Lf/l;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Li/x;->a(ZLf/l;)V

    return-void
.end method

.method public b(Lax/b;)Z
    .locals 2

    invoke-virtual {p0}, Li/x;->u_()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Li/x;->n:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->n:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    move-result v0

    const/16 v1, 0x7d1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Li/x;->aK()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Li/x;->a(Lax/b;Z)Z

    move-result v0

    goto :goto_0
.end method

.method protected b(Lf/h;)Z
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Li/x;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->af()Lcom/google/googlenav/ac;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, v2}, Lcom/google/googlenav/ac;->a(ILf/h;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public b(Li/x;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Li/x;->b()I

    move-result v0

    invoke-virtual {p1}, Li/x;->b()I

    move-result v1

    if-eq v0, v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Li/x;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Li/x;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Li/x;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Li/x;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public b(Lx/Q;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected ba()Z
    .locals 1

    iget-boolean v0, p0, Li/x;->G:Z

    return v0
.end method

.method public bb()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Li/x;->d:[Ljava/lang/Boolean;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Li/x;->d:[Ljava/lang/Boolean;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    :goto_1
    mul-int/lit8 v3, v0, 0x2

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    return v1
.end method

.method public bc()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected bd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final be()I
    .locals 1

    iget v0, p0, Li/x;->b:I

    return v0
.end method

.method public bf()V
    .locals 1

    invoke-virtual {p0}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/j;->c()I

    move-result v0

    iput v0, p0, Li/x;->K:I

    invoke-virtual {p0}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/j;->d_()B

    move-result v0

    iput-byte v0, p0, Li/x;->L:B

    return-void
.end method

.method public bg()V
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0}, Li/x;->aI()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Li/x;->K:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Li/x;->K:I

    invoke-virtual {p0, v0}, Li/x;->d(I)V

    :cond_0
    iget-byte v0, p0, Li/x;->L:B

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object v0

    iget-byte v1, p0, Li/x;->L:B

    invoke-interface {v0, v1}, Lcom/google/googlenav/j;->a(B)V

    :cond_1
    invoke-virtual {p0}, Li/x;->aj()V

    :cond_2
    iput v2, p0, Li/x;->K:I

    const/4 v0, 0x0

    iput-byte v0, p0, Li/x;->L:B

    return-void
.end method

.method public final bh()Z
    .locals 1

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-virtual {p0, v0}, Li/x;->c(Lcom/google/googlenav/j;)V

    :cond_0
    invoke-virtual {p0}, Li/x;->x()Z

    move-result v0

    return v0
.end method

.method public final bi()Z
    .locals 2

    const/16 v0, 0x23

    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1}, Li/x;->a(CI)Z

    move-result v0

    return v0
.end method

.method public bj()Z
    .locals 1

    invoke-virtual {p0}, Li/x;->aJ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->n:Lx/J;

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

.method public bk()Lcom/google/googlenav/ui/aT;
    .locals 1

    iget-object v0, p0, Li/x;->g:Lcom/google/googlenav/ui/aT;

    return-object v0
.end method

.method public bl()Z
    .locals 1

    iget-object v0, p0, Li/x;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->Z()Z

    move-result v0

    return v0
.end method

.method public bm()LN/j;
    .locals 1

    iget-object v0, p0, Li/x;->D:LN/j;

    return-object v0
.end method

.method public bn()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected c(Z)I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Li/x;->f:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->e()I

    move-result v0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->U()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/google/googlenav/ui/aV;->e:I

    :goto_0
    add-int/2addr v0, v1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Li/x;->aJ()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method protected c(Lcom/google/googlenav/bf;)Lf/h;
    .locals 4

    invoke-interface {p1}, Lcom/google/googlenav/bf;->G()I

    move-result v1

    if-nez v1, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/google/googlenav/c;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/googlenav/c;->g()Lf/N;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v1}, Lf/N;->ap_()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    invoke-interface {v1}, Lf/N;->ap_()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Li/x;->i:Lf/Y;

    invoke-virtual {v1}, Lf/Y;->e()Lf/h;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v1

    goto :goto_0
.end method

.method protected c(ILjava/lang/Object;)V
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->az()Lh/l;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Li/x;->d(ILjava/lang/Object;)Lh/fc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lh/l;->a(Lh/fc;)V

    :cond_0
    invoke-virtual {p0}, Li/x;->Y_()V

    return-void
.end method

.method public c(Lcom/google/googlenav/c;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/google/googlenav/j;)V
    .locals 1

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Li/x;->ae()V

    :cond_0
    invoke-virtual {p0, p1}, Li/x;->a(Lcom/google/googlenav/j;)V

    invoke-virtual {p0}, Li/x;->aA()V

    return-void
.end method

.method public c(Lcom/google/googlenav/ui/x;)V
    .locals 1

    iget-object v0, p0, Li/x;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Li/x;->aD()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Li/x;->e(Lcom/google/googlenav/ui/x;)V

    :cond_0
    invoke-virtual {p0}, Li/x;->u_()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Li/x;->f(Lcom/google/googlenav/ui/x;)V

    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Li/x;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/googlenav/aH;

    invoke-direct {v0}, Lcom/google/googlenav/aH;-><init>()V

    invoke-virtual {p0}, Li/x;->ac()Lcom/google/googlenav/bf;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v2}, Li/x;->a(Lcom/google/googlenav/aH;Lcom/google/googlenav/bf;I)V

    invoke-virtual {v0, p1}, Lcom/google/googlenav/aH;->c(Ljava/lang/String;)Lcom/google/googlenav/aH;

    invoke-virtual {v0}, Lcom/google/googlenav/aH;->a()V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected c(I)Z
    .locals 2

    iget-object v0, p0, Li/x;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Li/aE;->a(Li/x;I)V

    const-string v0, "o"

    const-string v1, "c"

    invoke-virtual {p0, p1, v0, v1}, Li/x;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final c(Lax/c;)Z
    .locals 1

    invoke-virtual {p0}, Li/x;->aJ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->n:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Li/x;->a(Lax/c;)Z

    move-result v0

    goto :goto_0
.end method

.method protected d(Lcom/google/googlenav/bf;)I
    .locals 1

    iget-object v0, p0, Li/x;->f:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aV;->a(Lcom/google/googlenav/bf;)I

    move-result v0

    return v0
.end method

.method protected d(ILjava/lang/Object;)Lh/fc;
    .locals 1

    new-instance v0, Lh/fc;

    invoke-direct {v0, p1, p2}, Lh/fc;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Li/x;->T()V

    return-void
.end method

.method public d(I)V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v0, p1}, Lcom/google/googlenav/j;->b(I)V

    invoke-direct {p0}, Li/x;->p()V

    if-ne p1, v1, :cond_0

    invoke-virtual {p0}, Li/x;->aM()V

    :cond_0
    if-eq p1, v1, :cond_1

    invoke-virtual {p0}, Li/x;->aG()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Li/x;->h(I)V

    :cond_1
    invoke-virtual {p0}, Li/x;->av()V

    return-void
.end method

.method protected d(Lcom/google/googlenav/ui/x;)V
    .locals 3

    sget-object v0, Lcom/google/googlenav/labs/android/a;->a:Lcom/google/googlenav/labs/android/a;

    invoke-virtual {v0}, Lcom/google/googlenav/labs/android/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Li/x;->x:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->b()Lcom/google/googlenav/bf;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Li/x;->h:Lf/v;

    iget-object v2, p0, Li/x;->j:LaF/a;

    invoke-virtual {v1, v0, v2}, Lf/v;->a(Lf/h;LaF/a;)V

    iget-object v0, p0, Li/x;->f:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->af()Lcom/google/googlenav/aG;

    move-result-object v0

    iget-object v1, p0, Li/x;->j:LaF/a;

    iget v1, v1, LaF/a;->a:I

    iget-object v2, p0, Li/x;->j:LaF/a;

    iget v2, v2, LaF/a;->b:I

    invoke-static {v0, p1, v1, v2}, Lcom/google/googlenav/aG;->a(Lcom/google/googlenav/aG;Lcom/google/googlenav/ui/x;II)V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Li/x;->e:Z

    return-void
.end method

.method public final d(Lax/c;)Z
    .locals 1

    invoke-virtual {p0, p1}, Li/x;->e(Lax/c;)Z

    move-result v0

    return v0
.end method

.method protected e(Lcom/google/googlenav/bf;)I
    .locals 1

    iget-object v0, p0, Li/x;->D:LN/j;

    invoke-virtual {v0, p1}, LN/j;->a(Lcom/google/googlenav/bf;)I

    move-result v0

    return v0
.end method

.method public final e(I)Lcom/google/googlenav/aG;
    .locals 1

    iget-object v0, p0, Li/x;->D:LN/j;

    invoke-virtual {v0, p1}, LN/j;->a(I)Lcom/google/googlenav/aG;

    move-result-object v0

    return-object v0
.end method

.method protected e(Lcom/google/googlenav/ui/x;)V
    .locals 4

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v0}, Lcom/google/googlenav/j;->b()Lcom/google/googlenav/bf;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v1

    invoke-virtual {p0}, Li/x;->aK()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/google/googlenav/bf;->F()B

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Li/x;->h:Lf/v;

    iget-object v3, p0, Li/x;->j:LaF/a;

    invoke-virtual {v2, v1, v3}, Lf/v;->a(Lf/h;LaF/a;)V

    iget-object v1, p0, Li/x;->j:LaF/a;

    iget v1, v1, LaF/a;->a:I

    iget-object v2, p0, Li/x;->j:LaF/a;

    iget v2, v2, LaF/a;->b:I

    iget-object v3, p0, Li/x;->k:Lcom/google/googlenav/j;

    invoke-interface {v3}, Lcom/google/googlenav/j;->c()I

    move-result v3

    invoke-direct {p0, p1, v1, v2, v3}, Li/x;->a(Lcom/google/googlenav/ui/x;III)V

    :cond_0
    invoke-virtual {p0, p1, v0}, Li/x;->b(Lcom/google/googlenav/ui/x;Lcom/google/googlenav/bf;)V

    :cond_1
    return-void
.end method

.method public e(Z)V
    .locals 1

    iput-boolean p1, p0, Li/x;->E:Z

    const/4 v0, 0x0

    iput-object v0, p0, Li/x;->m:Lcom/google/googlenav/bf;

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected e(Lax/c;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected f(Lcom/google/googlenav/bf;)I
    .locals 1

    iget-object v0, p0, Li/x;->D:LN/j;

    invoke-virtual {v0, p1}, LN/j;->b(Lcom/google/googlenav/bf;)I

    move-result v0

    return v0
.end method

.method public f(I)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v6, [Ljava/lang/Boolean;

    iput-object v0, p0, Li/x;->d:[Ljava/lang/Boolean;

    move v0, v4

    :goto_0
    if-ge v0, v6, :cond_2

    mul-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    shl-int/2addr v2, v1

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    iget-object v2, p0, Li/x;->d:[Ljava/lang/Boolean;

    new-instance v3, Ljava/lang/Boolean;

    shl-int v1, v5, v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    move v1, v5

    :goto_1
    invoke-direct {v3, v1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v4

    goto :goto_1

    :cond_2
    return-void
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Li/x;->F:Z

    return-void
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f(Lax/c;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Li/x;->b:I

    return-void
.end method

.method public g(Z)V
    .locals 1

    invoke-virtual {p0}, Li/x;->aH()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Li/x;->M()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Li/x;->n:Lx/J;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Li/x;->n:Lx/J;

    invoke-interface {v0}, Lx/J;->g()Lx/z;

    move-result-object v0

    invoke-virtual {v0}, Lx/z;->j()V

    :cond_2
    iget-object v0, p0, Li/x;->n:Lx/J;

    invoke-interface {v0}, Lx/J;->f()V

    goto :goto_0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Li/x;->x:Z

    iget-object v0, p0, Li/x;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->ae()Lcom/google/googlenav/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/g;->d()Z

    move-result v0

    iput-boolean v0, p0, Li/x;->c:Z

    invoke-virtual {p0}, Li/x;->aj()V

    invoke-virtual {p0}, Li/x;->Y()V

    return-void
.end method

.method public final h(I)V
    .locals 1

    invoke-virtual {p0}, Li/x;->ac()Lcom/google/googlenav/bf;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Li/x;->a(Lcom/google/googlenav/bf;I)V

    return-void
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Li/x;->y:Z

    return-void
.end method

.method protected i(Z)V
    .locals 0

    iput-boolean p1, p0, Li/x;->G:Z

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method protected k()V
    .locals 0

    return-void
.end method

.method protected m()LN/j;
    .locals 1

    new-instance v0, LN/j;

    invoke-direct {v0, p0}, LN/j;-><init>(Li/x;)V

    return-object v0
.end method

.method protected n()Z
    .locals 1

    iget-object v0, p0, Li/x;->D:LN/j;

    invoke-virtual {v0}, LN/j;->a()Z

    move-result v0

    return v0
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected q_()I
    .locals 2

    iget-object v0, p0, Li/x;->f:Lcom/google/googlenav/ui/aV;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->f()I

    move-result v0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aV;->ar()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected r()Z
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Li/x;->aJ()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected s()Z
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public t_()Z
    .locals 1

    iget-boolean v0, p0, Li/x;->E:Z

    return v0
.end method

.method public u()Lk/l;
    .locals 1

    iget-object v0, p0, Li/x;->w:Lk/l;

    return-object v0
.end method

.method public u_()Z
    .locals 1

    invoke-virtual {p0}, Li/x;->aJ()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected v()V
    .locals 0

    return-void
.end method

.method public v_()Lcom/google/googlenav/j;
    .locals 1

    iget-object v0, p0, Li/x;->k:Lcom/google/googlenav/j;

    return-object v0
.end method

.method protected x()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public y()V
    .locals 0

    invoke-virtual {p0}, Li/x;->ab()V

    return-void
.end method
