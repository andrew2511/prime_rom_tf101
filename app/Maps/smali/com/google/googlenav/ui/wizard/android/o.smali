.class public Lcom/google/googlenav/ui/wizard/android/o;
.super Lh/df;

# interfaces
.implements Lcom/google/googlenav/android/M;
.implements Lo/ca;
.implements Lo/e;


# instance fields
.field private final d:LaD/r;

.field private final e:Lcom/google/googlenav/android/BaseMapsActivity;

.field private f:Lx/B;

.field private l:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lh/eY;LaU/a;LaD/r;Lcom/google/googlenav/android/BaseMapsActivity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lh/df;-><init>(Lh/eY;LaU/a;)V

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/android/o;->d:LaD/r;

    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/android/o;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    return-void
.end method

.method private a(Ljava/lang/String;ILjava/util/Vector;)V
    .locals 2

    sget-object v0, Lcom/google/googlenav/ui/av;->ar:Lcom/google/googlenav/ui/av;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/util/Vector;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x0

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v0, v10}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x112

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->Q:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/o;->l:Ljava/util/Vector;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x13b

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->D:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    move v2, v9

    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/o;->l:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/o;->l:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/x;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    const/16 v4, 0x115

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/String;

    invoke-virtual {v0}, Lo/x;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x1

    invoke-virtual {v0}, Lo/x;->h()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, LR/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lo/x;->g()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/av;->K:Lcom/google/googlenav/ui/av;

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v4, 0x31

    invoke-virtual {v1, v4}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {v1, v3}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v3

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/googlenav/ui/aV;->I()Lk/l;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/ui/aQ;->a(Lk/l;)Lcom/google/googlenav/ui/aQ;

    move-result-object v3

    invoke-virtual {v0}, Lo/x;->f()Lk/l;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/googlenav/ui/aQ;->b(Lk/l;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v3, 0x153

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private j()V
    .locals 2

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    new-instance v1, Lo/t;

    invoke-direct {v1, p0}, Lo/t;-><init>(Lo/ca;)V

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method private m()Lx/B;
    .locals 7

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/android/o;->n()Ljava/util/Vector;

    move-result-object v4

    const/16 v0, 0x2f

    invoke-static {}, Lac/d;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x176

    move v2, v0

    :goto_0
    new-instance v0, Lx/B;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/android/o;->G_()I

    move-result v1

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lx/B;-><init>(ILjava/lang/String;Lx/G;Ljava/util/Vector;Lx/n;[Lax/e;)V

    return-object v0

    :cond_0
    move v2, v0

    goto :goto_0
.end method

.method private n()Ljava/util/Vector;
    .locals 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/16 v1, 0x2c

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/google/googlenav/ui/wizard/android/o;->a(Ljava/lang/String;ILjava/util/Vector;)V

    const/16 v1, 0x2d

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Lcom/google/googlenav/ui/wizard/android/o;->a(Ljava/lang/String;ILjava/util/Vector;)V

    new-instance v1, Lc/p;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/android/o;->d:LaD/r;

    const/4 v3, 0x0

    sget v4, Lcom/google/googlenav/ui/aV;->bF:I

    invoke-direct {v1, v2, v3, v4}, Lc/p;-><init>(LaD/r;Lo/aH;I)V

    invoke-static {}, Lac/d;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/android/o;->b(Ljava/util/Vector;)V

    :cond_0
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/android/o;->c:Lc/k;

    iget v3, p0, Lcom/google/googlenav/ui/wizard/android/o;->b:I

    new-instance v4, Lcom/google/googlenav/ui/ax;

    invoke-direct {v4, p0}, Lcom/google/googlenav/ui/ax;-><init>(Lcom/google/googlenav/ui/aY;)V

    invoke-static {v0, v2, v1, v3, v4}, Lo/bt;->a(Ljava/util/Vector;Lc/k;Lc/p;ILcom/google/googlenav/ui/ax;)I

    return-object v0
.end method

.method private o()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/o;->l:Ljava/util/Vector;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/o;->l:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/x;

    invoke-virtual {p0}, Lo/x;->c()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lo/x;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public R_()V
    .locals 0

    return-void
.end method

.method public S_()V
    .locals 0

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/o;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    iget v0, p0, Lcom/google/googlenav/ui/wizard/android/o;->k:I

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/android/o;->d()V

    iget v0, p0, Lcom/google/googlenav/ui/wizard/android/o;->k:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/o;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    iget v0, p0, Lcom/google/googlenav/ui/wizard/android/o;->k:I

    goto :goto_0
.end method

.method protected a()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/wizard/android/o;->k:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/android/o;->j()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/android/o;->i()V

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 12

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    const-string v0, "INVITE_EMAILS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v10, p0, Lcom/google/googlenav/ui/wizard/android/o;->a:Lh/cE;

    new-instance v0, Lcom/google/googlenav/ui/wizard/android/c;

    move-object v1, p0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    move-object v9, v2

    move-object v11, v3

    invoke-direct/range {v0 .. v11}, Lcom/google/googlenav/ui/wizard/android/c;-><init>(Lcom/google/googlenav/ui/wizard/android/o;Lac/s;Ljava/util/Vector;Ljava/util/Vector;Lac/s;Lac/s;Lac/s;Lac/s;Lac/s;Lh/cE;Ljava/util/Vector;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lak/h;->c(Lak/d;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/android/o;->v()V

    :cond_1
    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .locals 1

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/android/o;->l:Ljava/util/Vector;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/android/o;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/android/o;->i()V

    :cond_0
    return-void
.end method

.method public an_()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/android/o;->v()V

    return-void
.end method

.method public ao_()V
    .locals 0

    return-void
.end method

.method public ay_()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public az_()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/android/o;->l:Ljava/util/Vector;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/android/o;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/android/o;->i()V

    :cond_0
    return-void
.end method

.method protected b()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lac/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/o;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/android/o;->o()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->d(I)V

    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/android/o;->l:Ljava/util/Vector;

    :cond_0
    iput-object v2, p0, Lcom/google/googlenav/ui/wizard/android/o;->f:Lx/B;

    invoke-super {p0}, Lh/df;->b()V

    return-void
.end method

.method public b(IILjava/lang/Object;)Z
    .locals 3

    const/16 v0, 0x153

    if-ne p1, v0, :cond_0

    invoke-static {}, Lo/A;->f()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/o;->l:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/x;

    invoke-virtual {v0}, Lo/x;->e()V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v1

    new-instance v2, Lo/bc;

    invoke-virtual {v0}, Lo/x;->i()Law/e;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lo/bc;-><init>(Lo/e;Law/e;)V

    invoke-virtual {v1, v2}, Lak/h;->c(Lak/d;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/android/o;->i()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/o;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/android/o;->o()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->d(I)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/android/o;->e:Lcom/google/googlenav/android/BaseMapsActivity;

    const-class v2, Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "inviteType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/google/googlenav/android/ad;->a()Lcom/google/googlenav/android/ad;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/google/googlenav/android/ad;->a(Landroid/content/Intent;Lcom/google/googlenav/android/M;)V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/android/o;->k:I

    invoke-super {p0}, Lh/df;->d()V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/o;->a:Lh/cE;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/o;->a:Lh/cE;

    invoke-interface {v0}, Lh/cE;->a()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/o;->f:Lx/B;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/o;->j:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/o;->j:Lx/J;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/android/o;->a(Lx/J;)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/o;->f:Lx/B;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/android/o;->m()Lx/B;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/android/o;->f:Lx/B;

    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/o;->j:Lx/J;

    if-nez v0, :cond_2

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/android/o;->f:Lx/B;

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/android/o;->j:Lx/J;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/o;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    :goto_1
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/android/o;->n()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/android/o;->f:Lx/B;

    invoke-virtual {v1, v0}, Lx/B;->a(Ljava/util/Vector;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/o;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->f()V

    goto :goto_1
.end method
