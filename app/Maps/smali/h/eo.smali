.class public Lh/eo;
.super Ljava/lang/Object;


# instance fields
.field private A:Lh/cA;

.field private B:Lh/aY;

.field private C:Lh/dC;

.field private D:Lh/J;

.field private E:Lh/fQ;

.field private F:Lh/eG;

.field private G:Lh/bT;

.field private H:Lh/al;

.field private I:Lh/fS;

.field private J:Lh/ek;

.field private K:Lh/v;

.field private L:Lh/dY;

.field private M:Lh/ap;

.field private N:Lh/eC;

.field private O:Lh/e;

.field private P:Lh/dW;

.field private Q:Lh/fa;

.field private R:Lh/df;

.field private S:Lcom/google/googlenav/ui/wizard/android/f;

.field private T:Lh/cv;

.field private U:Lh/ay;

.field private V:Lh/eL;

.field private W:Lh/eV;

.field private X:Lh/dc;

.field private Y:Lh/as;

.field private Z:Lh/ep;

.field protected final a:Lh/eY;

.field private aa:Lh/bc;

.field private b:Lh/I;

.field private c:Lh/dR;

.field private d:Lh/ei;

.field private e:Lh/du;

.field private f:Lh/bz;

.field private g:Lh/fo;

.field private h:Lh/aC;

.field private i:Lh/eB;

.field private j:Lh/ex;

.field private k:Lh/h;

.field private l:Lh/er;

.field private m:Lh/ct;

.field private n:Lh/cy;

.field private o:Lh/dH;

.field private p:Lh/g;

.field private q:Lh/dq;

.field private r:Lh/bY;

.field private s:Lh/bx;

.field private t:Lh/eq;

.field private u:Lh/eM;

.field private v:Lh/aD;

.field private w:Lh/aS;

.field private x:Lh/dN;

.field private y:Lh/aA;

.field private z:Lh/eD;


# direct methods
.method public constructor <init>(Lh/eY;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/eo;->a:Lh/eY;

    return-void
.end method


# virtual methods
.method public A()Lh/eR;
    .locals 3

    iget-object v0, p0, Lh/eo;->D:Lh/J;

    if-nez v0, :cond_0

    new-instance v0, Lh/J;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->v()LaU/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh/J;-><init>(Lh/eY;LaU/a;)V

    iput-object v0, p0, Lh/eo;->D:Lh/J;

    :cond_0
    iget-object v0, p0, Lh/eo;->D:Lh/J;

    return-object v0
.end method

.method public B()Lh/fQ;
    .locals 9

    iget-object v0, p0, Lh/eo;->E:Lh/fQ;

    if-nez v0, :cond_0

    new-instance v0, Lh/fQ;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->v()LaU/a;

    move-result-object v2

    iget-object v3, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v3}, Lh/eY;->y()Lf/v;

    move-result-object v3

    iget-object v4, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v4}, Lh/eY;->z()Lf/Y;

    move-result-object v4

    iget-object v5, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v5}, Lh/eY;->w()LH/f;

    move-result-object v5

    iget-object v6, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v6}, Lh/eY;->A()Lcom/google/googlenav/g;

    move-result-object v6

    iget-object v7, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v7}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v7

    iget-object v8, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v8}, Lh/eY;->x()Lcom/google/googlenav/ui/bu;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lh/fQ;-><init>(Lh/eY;LaU/a;Lf/v;Lf/Y;LH/f;Lcom/google/googlenav/g;Lcom/google/googlenav/bL;Lcom/google/googlenav/ui/bu;)V

    iput-object v0, p0, Lh/eo;->E:Lh/fQ;

    :cond_0
    iget-object v0, p0, Lh/eo;->E:Lh/fQ;

    return-object v0
.end method

.method public C()Lh/fS;
    .locals 4

    iget-object v0, p0, Lh/eo;->I:Lh/fS;

    if-nez v0, :cond_0

    new-instance v0, Lh/fS;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->v()LaU/a;

    move-result-object v2

    invoke-static {}, Lv/A;->a()Lv/A;

    move-result-object v3

    invoke-virtual {v3}, Lv/A;->d()Lv/t;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lh/fS;-><init>(Lh/eY;LaU/a;Lv/t;)V

    iput-object v0, p0, Lh/eo;->I:Lh/fS;

    :cond_0
    iget-object v0, p0, Lh/eo;->I:Lh/fS;

    return-object v0
.end method

.method public D()Lh/ek;
    .locals 2

    iget-object v0, p0, Lh/eo;->J:Lh/ek;

    if-nez v0, :cond_0

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v0, v1}, Lx/k;->d(Lh/eY;)Lh/ek;

    move-result-object v0

    iput-object v0, p0, Lh/eo;->J:Lh/ek;

    :cond_0
    iget-object v0, p0, Lh/eo;->J:Lh/ek;

    return-object v0
.end method

.method public E()Lh/v;
    .locals 5

    iget-object v0, p0, Lh/eo;->K:Lh/v;

    if-nez v0, :cond_0

    new-instance v0, Lh/v;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->v()LaU/a;

    move-result-object v2

    iget-object v3, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v3}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v3

    invoke-static {}, Lv/A;->a()Lv/A;

    move-result-object v4

    invoke-virtual {v4}, Lv/A;->c()Lv/t;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lh/v;-><init>(Lh/eY;LaU/a;Lcom/google/googlenav/bL;Lv/t;)V

    iput-object v0, p0, Lh/eo;->K:Lh/v;

    :cond_0
    iget-object v0, p0, Lh/eo;->K:Lh/v;

    return-object v0
.end method

.method public F()Lh/eB;
    .locals 4

    iget-object v0, p0, Lh/eo;->i:Lh/eB;

    if-nez v0, :cond_0

    new-instance v0, Lh/eB;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->v()LaU/a;

    move-result-object v2

    iget-object v3, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v3}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lh/eB;-><init>(Lh/eY;LaU/a;Lcom/google/googlenav/bL;)V

    iput-object v0, p0, Lh/eo;->i:Lh/eB;

    :cond_0
    iget-object v0, p0, Lh/eo;->i:Lh/eB;

    return-object v0
.end method

.method public G()Lh/dY;
    .locals 3

    iget-object v0, p0, Lh/eo;->L:Lh/dY;

    if-nez v0, :cond_0

    new-instance v0, Lh/dY;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh/dY;-><init>(Lh/eY;Lcom/google/googlenav/bL;)V

    iput-object v0, p0, Lh/eo;->L:Lh/dY;

    :cond_0
    iget-object v0, p0, Lh/eo;->L:Lh/dY;

    return-object v0
.end method

.method public H()Lh/dW;
    .locals 2

    iget-object v0, p0, Lh/eo;->P:Lh/dW;

    if-nez v0, :cond_0

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v0, v1}, Lx/k;->e(Lh/eY;)Lh/dW;

    move-result-object v0

    iput-object v0, p0, Lh/eo;->P:Lh/dW;

    :cond_0
    iget-object v0, p0, Lh/eo;->P:Lh/dW;

    return-object v0
.end method

.method public I()Lh/fa;
    .locals 7

    iget-object v0, p0, Lh/eo;->Q:Lh/fa;

    if-nez v0, :cond_0

    new-instance v0, Lh/fa;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v2

    iget-object v3, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v3}, Lh/eY;->v()LaU/a;

    move-result-object v3

    iget-object v4, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v4}, Lh/eY;->w()LH/f;

    move-result-object v4

    iget-object v5, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v5}, Lh/eY;->x()Lcom/google/googlenav/ui/bu;

    move-result-object v5

    iget-object v6, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v6}, Lh/eY;->z()Lf/Y;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lh/fa;-><init>(Lh/eY;Lcom/google/googlenav/bL;LaU/a;LH/f;Lcom/google/googlenav/ui/bu;Lf/Y;)V

    iput-object v0, p0, Lh/eo;->Q:Lh/fa;

    :cond_0
    iget-object v0, p0, Lh/eo;->Q:Lh/fa;

    return-object v0
.end method

.method public J()Lh/aC;
    .locals 4

    iget-object v0, p0, Lh/eo;->h:Lh/aC;

    if-nez v0, :cond_0

    new-instance v0, Lh/aC;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->v()LaU/a;

    move-result-object v2

    iget-object v3, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v3}, Lh/eY;->w()LH/f;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lh/aC;-><init>(Lh/eY;LaU/a;LH/f;)V

    iput-object v0, p0, Lh/eo;->h:Lh/aC;

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    iget-object v1, p0, Lh/eo;->h:Lh/aC;

    invoke-virtual {v1}, Lh/aC;->m()Lcom/google/googlenav/login/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/j;->c(Lcom/google/googlenav/login/h;)V

    :cond_0
    iget-object v0, p0, Lh/eo;->h:Lh/aC;

    return-object v0
.end method

.method public K()Lh/eC;
    .locals 2

    iget-object v0, p0, Lh/eo;->N:Lh/eC;

    if-nez v0, :cond_0

    new-instance v0, Lh/eC;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    invoke-direct {v0, v1}, Lh/eC;-><init>(Lh/eY;)V

    iput-object v0, p0, Lh/eo;->N:Lh/eC;

    :cond_0
    iget-object v0, p0, Lh/eo;->N:Lh/eC;

    return-object v0
.end method

.method public L()Lh/ap;
    .locals 2

    iget-object v0, p0, Lh/eo;->M:Lh/ap;

    if-nez v0, :cond_0

    new-instance v0, Lh/ap;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    invoke-direct {v0, v1}, Lh/ap;-><init>(Lh/eY;)V

    iput-object v0, p0, Lh/eo;->M:Lh/ap;

    :cond_0
    iget-object v0, p0, Lh/eo;->M:Lh/ap;

    return-object v0
.end method

.method public M()Lh/cy;
    .locals 3

    iget-object v0, p0, Lh/eo;->n:Lh/cy;

    if-nez v0, :cond_0

    new-instance v0, Lh/cy;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->v()LaU/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh/cy;-><init>(Lh/eY;LaU/a;)V

    iput-object v0, p0, Lh/eo;->n:Lh/cy;

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    iget-object v1, p0, Lh/eo;->n:Lh/cy;

    invoke-virtual {v1}, Lh/cy;->m()Lcom/google/googlenav/login/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/login/j;->c(Lcom/google/googlenav/login/h;)V

    :cond_0
    iget-object v0, p0, Lh/eo;->n:Lh/cy;

    return-object v0
.end method

.method public N()Lcom/google/googlenav/ui/wizard/android/f;
    .locals 2

    iget-object v0, p0, Lh/eo;->S:Lcom/google/googlenav/ui/wizard/android/f;

    if-nez v0, :cond_0

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v0, v1}, Lx/k;->c(Lh/eY;)Lcom/google/googlenav/ui/wizard/android/f;

    move-result-object v0

    iput-object v0, p0, Lh/eo;->S:Lcom/google/googlenav/ui/wizard/android/f;

    :cond_0
    iget-object v0, p0, Lh/eo;->S:Lcom/google/googlenav/ui/wizard/android/f;

    return-object v0
.end method

.method public O()Lh/df;
    .locals 2

    iget-object v0, p0, Lh/eo;->R:Lh/df;

    if-nez v0, :cond_0

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v0, v1}, Lx/k;->b(Lh/eY;)Lh/df;

    move-result-object v0

    iput-object v0, p0, Lh/eo;->R:Lh/df;

    :cond_0
    iget-object v0, p0, Lh/eo;->R:Lh/df;

    return-object v0
.end method

.method public P()Lh/cv;
    .locals 4

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eo;->T:Lh/cv;

    if-nez v0, :cond_0

    new-instance v0, Lh/cv;

    new-instance v1, Lcom/google/googlenav/e;

    invoke-direct {v1}, Lcom/google/googlenav/e;-><init>()V

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    iget-object v3, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v3}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lh/cv;-><init>(Lcom/google/googlenav/e;Lh/eY;Lcom/google/googlenav/bL;)V

    iput-object v0, p0, Lh/eo;->T:Lh/cv;

    :cond_0
    iget-object v0, p0, Lh/eo;->T:Lh/cv;

    return-object v0
.end method

.method public Q()Lh/ay;
    .locals 5

    iget-object v0, p0, Lh/eo;->U:Lh/ay;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/ui/android/S;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/S;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/S;->b()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lba/b;

    new-instance v2, Landroid/location/Geocoder;

    new-instance v3, Ljava/util/Locale;

    invoke-static {}, Lac/m;->E()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lac/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    invoke-direct {v1, v2}, Lba/b;-><init>(Landroid/location/Geocoder;)V

    new-instance v0, Lh/ay;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-direct {v0, v2, v1}, Lh/ay;-><init>(Lh/eY;Lba/b;)V

    iput-object v0, p0, Lh/eo;->U:Lh/ay;

    :cond_0
    iget-object v0, p0, Lh/eo;->U:Lh/ay;

    return-object v0
.end method

.method public R()Lh/eL;
    .locals 2

    iget-object v0, p0, Lh/eo;->V:Lh/eL;

    if-nez v0, :cond_0

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v0, v1}, Lx/k;->a(Lh/eY;)Lh/eL;

    move-result-object v0

    iput-object v0, p0, Lh/eo;->V:Lh/eL;

    :cond_0
    iget-object v0, p0, Lh/eo;->V:Lh/eL;

    return-object v0
.end method

.method public S()Lh/eV;
    .locals 3

    iget-object v0, p0, Lh/eo;->W:Lh/eV;

    if-nez v0, :cond_0

    new-instance v0, Lh/eV;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->C()LaD/r;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh/eV;-><init>(Lh/eY;LaD/r;)V

    iput-object v0, p0, Lh/eo;->W:Lh/eV;

    :cond_0
    iget-object v0, p0, Lh/eo;->W:Lh/eV;

    return-object v0
.end method

.method public T()Lh/dc;
    .locals 3

    iget-object v0, p0, Lh/eo;->X:Lh/dc;

    if-nez v0, :cond_0

    new-instance v0, Lh/dc;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->v()LaU/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh/dc;-><init>(Lh/eY;LaU/a;)V

    iput-object v0, p0, Lh/eo;->X:Lh/dc;

    :cond_0
    iget-object v0, p0, Lh/eo;->X:Lh/dc;

    return-object v0
.end method

.method public U()Lh/al;
    .locals 3

    iget-object v0, p0, Lh/eo;->H:Lh/al;

    if-nez v0, :cond_0

    new-instance v0, Lh/al;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh/al;-><init>(Lh/eY;Lcom/google/googlenav/bL;)V

    iput-object v0, p0, Lh/eo;->H:Lh/al;

    :cond_0
    iget-object v0, p0, Lh/eo;->H:Lh/al;

    return-object v0
.end method

.method public V()Lh/as;
    .locals 2

    iget-object v0, p0, Lh/eo;->Y:Lh/as;

    if-nez v0, :cond_0

    new-instance v0, Lh/as;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    invoke-direct {v0, v1}, Lh/as;-><init>(Lh/eY;)V

    iput-object v0, p0, Lh/eo;->Y:Lh/as;

    :cond_0
    iget-object v0, p0, Lh/eo;->Y:Lh/as;

    return-object v0
.end method

.method public W()Lh/ep;
    .locals 2

    iget-object v0, p0, Lh/eo;->Z:Lh/ep;

    if-nez v0, :cond_0

    new-instance v0, Lh/ep;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    invoke-direct {v0, v1}, Lh/ep;-><init>(Lh/eY;)V

    iput-object v0, p0, Lh/eo;->Z:Lh/ep;

    :cond_0
    iget-object v0, p0, Lh/eo;->Z:Lh/ep;

    return-object v0
.end method

.method public X()Z
    .locals 1

    iget-object v0, p0, Lh/eo;->g:Lh/fo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eo;->g:Lh/fo;

    invoke-virtual {v0}, Lh/fo;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Y()Z
    .locals 1

    iget-object v0, p0, Lh/eo;->j:Lh/ex;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eo;->j:Lh/ex;

    invoke-virtual {v0}, Lh/ex;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public Z()Z
    .locals 1

    iget-object v0, p0, Lh/eo;->m:Lh/ct;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eo;->m:Lh/ct;

    invoke-virtual {v0}, Lh/ct;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Lh/I;
    .locals 1

    iget-object v0, p0, Lh/eo;->b:Lh/I;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lh/eo;->b()Lh/I;

    move-result-object v0

    iput-object v0, p0, Lh/eo;->b:Lh/I;

    :cond_0
    iget-object v0, p0, Lh/eo;->b:Lh/I;

    return-object v0
.end method

.method public aa()Z
    .locals 1

    iget-object v0, p0, Lh/eo;->o:Lh/dH;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eo;->o:Lh/dH;

    invoke-virtual {v0}, Lh/dH;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ab()Z
    .locals 1

    iget-object v0, p0, Lh/eo;->I:Lh/fS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eo;->I:Lh/fS;

    invoke-virtual {v0}, Lh/fS;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ac()Z
    .locals 1

    iget-object v0, p0, Lh/eo;->Q:Lh/fa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eo;->Q:Lh/fa;

    invoke-virtual {v0}, Lh/fa;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ad()Z
    .locals 1

    iget-object v0, p0, Lh/eo;->M:Lh/ap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eo;->M:Lh/ap;

    invoke-virtual {v0}, Lh/ap;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ae()Z
    .locals 1

    iget-object v0, p0, Lh/eo;->X:Lh/dc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eo;->X:Lh/dc;

    invoke-virtual {v0}, Lh/dc;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public af()Z
    .locals 1

    iget-object v0, p0, Lh/eo;->Y:Lh/as;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eo;->Y:Lh/as;

    invoke-virtual {v0}, Lh/as;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ag()Z
    .locals 1

    iget-object v0, p0, Lh/eo;->Z:Lh/ep;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/eo;->Z:Lh/ep;

    invoke-virtual {v0}, Lh/ep;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ah()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lh/eo;->b:Lh/I;

    iput-object v0, p0, Lh/eo;->d:Lh/ei;

    iput-object v0, p0, Lh/eo;->e:Lh/du;

    iput-object v0, p0, Lh/eo;->f:Lh/bz;

    iput-object v0, p0, Lh/eo;->x:Lh/dN;

    iput-object v0, p0, Lh/eo;->g:Lh/fo;

    iput-object v0, p0, Lh/eo;->i:Lh/eB;

    iput-object v0, p0, Lh/eo;->h:Lh/aC;

    iput-object v0, p0, Lh/eo;->j:Lh/ex;

    iput-object v0, p0, Lh/eo;->k:Lh/h;

    iput-object v0, p0, Lh/eo;->l:Lh/er;

    iput-object v0, p0, Lh/eo;->m:Lh/ct;

    iput-object v0, p0, Lh/eo;->n:Lh/cy;

    iput-object v0, p0, Lh/eo;->o:Lh/dH;

    iput-object v0, p0, Lh/eo;->p:Lh/g;

    iput-object v0, p0, Lh/eo;->q:Lh/dq;

    iput-object v0, p0, Lh/eo;->r:Lh/bY;

    iput-object v0, p0, Lh/eo;->s:Lh/bx;

    iput-object v0, p0, Lh/eo;->S:Lcom/google/googlenav/ui/wizard/android/f;

    iput-object v0, p0, Lh/eo;->t:Lh/eq;

    iput-object v0, p0, Lh/eo;->u:Lh/eM;

    iput-object v0, p0, Lh/eo;->v:Lh/aD;

    iput-object v0, p0, Lh/eo;->A:Lh/cA;

    iput-object v0, p0, Lh/eo;->B:Lh/aY;

    iput-object v0, p0, Lh/eo;->C:Lh/dC;

    iput-object v0, p0, Lh/eo;->D:Lh/J;

    iput-object v0, p0, Lh/eo;->E:Lh/fQ;

    iput-object v0, p0, Lh/eo;->F:Lh/eG;

    iput-object v0, p0, Lh/eo;->G:Lh/bT;

    iput-object v0, p0, Lh/eo;->H:Lh/al;

    iput-object v0, p0, Lh/eo;->I:Lh/fS;

    iput-object v0, p0, Lh/eo;->J:Lh/ek;

    iput-object v0, p0, Lh/eo;->P:Lh/dW;

    iput-object v0, p0, Lh/eo;->Q:Lh/fa;

    iput-object v0, p0, Lh/eo;->K:Lh/v;

    iput-object v0, p0, Lh/eo;->L:Lh/dY;

    iput-object v0, p0, Lh/eo;->M:Lh/ap;

    iput-object v0, p0, Lh/eo;->N:Lh/eC;

    iput-object v0, p0, Lh/eo;->O:Lh/e;

    iput-object v0, p0, Lh/eo;->T:Lh/cv;

    iput-object v0, p0, Lh/eo;->U:Lh/ay;

    iput-object v0, p0, Lh/eo;->V:Lh/eL;

    iput-object v0, p0, Lh/eo;->W:Lh/eV;

    iput-object v0, p0, Lh/eo;->X:Lh/dc;

    iput-object v0, p0, Lh/eo;->Y:Lh/as;

    iput-object v0, p0, Lh/eo;->Z:Lh/ep;

    iput-object v0, p0, Lh/eo;->aa:Lh/bc;

    return-void
.end method

.method protected b()Lh/I;
    .locals 6

    new-instance v0, Lh/I;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->A()Lcom/google/googlenav/g;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/g;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v3

    invoke-virtual {v3}, Lac/m;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v4}, Lh/eY;->z()Lf/Y;

    move-result-object v4

    iget-object v5, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v5}, Lh/eY;->v()LaU/a;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lh/I;-><init>(Lh/eY;Ljava/lang/String;Ljava/lang/String;Lf/Y;LaU/a;)V

    return-object v0
.end method

.method public c()Lh/dR;
    .locals 3

    iget-object v0, p0, Lh/eo;->c:Lh/dR;

    if-nez v0, :cond_0

    new-instance v0, Lh/dR;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->v()LaU/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh/dR;-><init>(Lh/eY;LaU/a;)V

    iput-object v0, p0, Lh/eo;->c:Lh/dR;

    :cond_0
    iget-object v0, p0, Lh/eo;->c:Lh/dR;

    return-object v0
.end method

.method public d()Lh/ei;
    .locals 3

    iget-object v0, p0, Lh/eo;->d:Lh/ei;

    if-nez v0, :cond_0

    new-instance v0, Lh/ei;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->v()LaU/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh/ei;-><init>(Lh/eY;LaU/a;)V

    iput-object v0, p0, Lh/eo;->d:Lh/ei;

    :cond_0
    iget-object v0, p0, Lh/eo;->d:Lh/ei;

    return-object v0
.end method

.method public e()Lh/du;
    .locals 3

    iget-object v0, p0, Lh/eo;->e:Lh/du;

    if-nez v0, :cond_0

    new-instance v0, Lh/du;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->v()LaU/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh/du;-><init>(Lh/eY;LaU/a;)V

    iput-object v0, p0, Lh/eo;->e:Lh/du;

    :cond_0
    iget-object v0, p0, Lh/eo;->e:Lh/du;

    return-object v0
.end method

.method public f()Lh/fo;
    .locals 2

    iget-object v0, p0, Lh/eo;->g:Lh/fo;

    if-nez v0, :cond_0

    new-instance v0, Lh/fo;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    invoke-direct {v0, v1}, Lh/fo;-><init>(Lh/eY;)V

    iput-object v0, p0, Lh/eo;->g:Lh/fo;

    :cond_0
    iget-object v0, p0, Lh/eo;->g:Lh/fo;

    return-object v0
.end method

.method public g()Lh/ex;
    .locals 3

    iget-object v0, p0, Lh/eo;->j:Lh/ex;

    if-nez v0, :cond_0

    new-instance v0, Lh/ex;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh/ex;-><init>(Lh/eY;Lcom/google/googlenav/bL;)V

    iput-object v0, p0, Lh/eo;->j:Lh/ex;

    :cond_0
    iget-object v0, p0, Lh/eo;->j:Lh/ex;

    return-object v0
.end method

.method public h()Lh/h;
    .locals 2

    iget-object v0, p0, Lh/eo;->k:Lh/h;

    if-nez v0, :cond_0

    new-instance v0, Lh/h;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    invoke-direct {v0, v1}, Lh/h;-><init>(Lh/eY;)V

    iput-object v0, p0, Lh/eo;->k:Lh/h;

    :cond_0
    iget-object v0, p0, Lh/eo;->k:Lh/h;

    return-object v0
.end method

.method public i()Lh/er;
    .locals 2

    iget-object v0, p0, Lh/eo;->l:Lh/er;

    if-nez v0, :cond_0

    new-instance v0, Lh/er;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    invoke-direct {v0, v1}, Lh/er;-><init>(Lh/eY;)V

    iput-object v0, p0, Lh/eo;->l:Lh/er;

    :cond_0
    iget-object v0, p0, Lh/eo;->l:Lh/er;

    return-object v0
.end method

.method public j()Lh/ct;
    .locals 2

    iget-object v0, p0, Lh/eo;->m:Lh/ct;

    if-nez v0, :cond_0

    new-instance v0, Lh/ct;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    invoke-direct {v0, v1}, Lh/ct;-><init>(Lh/eY;)V

    iput-object v0, p0, Lh/eo;->m:Lh/ct;

    :cond_0
    iget-object v0, p0, Lh/eo;->m:Lh/ct;

    return-object v0
.end method

.method public k()Lh/dH;
    .locals 4

    iget-object v0, p0, Lh/eo;->o:Lh/dH;

    if-nez v0, :cond_0

    new-instance v0, Lh/dH;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->w()LH/f;

    move-result-object v2

    iget-object v3, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v3}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lh/dH;-><init>(Lh/eY;LH/f;Lcom/google/googlenav/bL;)V

    iput-object v0, p0, Lh/eo;->o:Lh/dH;

    :cond_0
    iget-object v0, p0, Lh/eo;->o:Lh/dH;

    return-object v0
.end method

.method public l()Lh/g;
    .locals 3

    iget-object v0, p0, Lh/eo;->p:Lh/g;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lh/g;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->A()Lcom/google/googlenav/g;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh/g;-><init>(Lh/eY;Lac/k;)V

    iput-object v0, p0, Lh/eo;->p:Lh/g;

    :cond_0
    iget-object v0, p0, Lh/eo;->p:Lh/g;

    return-object v0
.end method

.method public m()Lh/dq;
    .locals 3

    iget-object v0, p0, Lh/eo;->q:Lh/dq;

    if-nez v0, :cond_0

    new-instance v0, Lh/dq;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh/dq;-><init>(Lh/eY;Lcom/google/googlenav/bL;)V

    iput-object v0, p0, Lh/eo;->q:Lh/dq;

    :cond_0
    iget-object v0, p0, Lh/eo;->q:Lh/dq;

    return-object v0
.end method

.method public n()Lh/bY;
    .locals 3

    iget-object v0, p0, Lh/eo;->r:Lh/bY;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lh/bY;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->v()LaU/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh/bY;-><init>(Lh/eY;LaU/a;)V

    iput-object v0, p0, Lh/eo;->r:Lh/bY;

    :cond_0
    iget-object v0, p0, Lh/eo;->r:Lh/bY;

    return-object v0
.end method

.method public o()Lh/eq;
    .locals 2

    iget-object v0, p0, Lh/eo;->t:Lh/eq;

    if-nez v0, :cond_0

    new-instance v0, Lh/eq;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    invoke-direct {v0, v1}, Lh/eq;-><init>(Lh/eY;)V

    iput-object v0, p0, Lh/eo;->t:Lh/eq;

    :cond_0
    iget-object v0, p0, Lh/eo;->t:Lh/eq;

    return-object v0
.end method

.method public p()Lh/bx;
    .locals 2

    iget-object v0, p0, Lh/eo;->s:Lh/bx;

    if-nez v0, :cond_0

    new-instance v0, Lh/bx;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    invoke-direct {v0, v1}, Lh/bx;-><init>(Lh/eY;)V

    iput-object v0, p0, Lh/eo;->s:Lh/bx;

    :cond_0
    iget-object v0, p0, Lh/eo;->s:Lh/bx;

    return-object v0
.end method

.method public q()Lh/aD;
    .locals 3

    iget-object v0, p0, Lh/eo;->v:Lh/aD;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lh/aD;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->v()LaU/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh/aD;-><init>(Lh/eY;LaU/a;)V

    iput-object v0, p0, Lh/eo;->v:Lh/aD;

    :cond_0
    iget-object v0, p0, Lh/eo;->v:Lh/aD;

    return-object v0
.end method

.method public r()Lh/aS;
    .locals 3

    iget-object v0, p0, Lh/eo;->w:Lh/aS;

    if-nez v0, :cond_0

    new-instance v0, Lh/aS;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh/aS;-><init>(Lh/eY;Lcom/google/googlenav/bL;)V

    iput-object v0, p0, Lh/eo;->w:Lh/aS;

    :cond_0
    iget-object v0, p0, Lh/eo;->w:Lh/aS;

    return-object v0
.end method

.method public s()Lh/dN;
    .locals 5

    iget-object v0, p0, Lh/eo;->x:Lh/dN;

    if-nez v0, :cond_0

    new-instance v0, Lh/dN;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->v()LaU/a;

    move-result-object v2

    new-instance v3, Lh/eI;

    iget-object v4, p0, Lh/eo;->a:Lh/eY;

    invoke-direct {v3, v4}, Lh/eI;-><init>(Lh/eY;)V

    invoke-direct {v0, v1, v2, v3}, Lh/dN;-><init>(Lh/eY;LaU/a;Lh/eI;)V

    iput-object v0, p0, Lh/eo;->x:Lh/dN;

    :cond_0
    iget-object v0, p0, Lh/eo;->x:Lh/dN;

    return-object v0
.end method

.method public t()Lh/aA;
    .locals 5

    iget-object v0, p0, Lh/eo;->y:Lh/aA;

    if-nez v0, :cond_0

    new-instance v0, Lh/aA;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->v()LaU/a;

    move-result-object v2

    new-instance v3, Lh/eI;

    iget-object v4, p0, Lh/eo;->a:Lh/eY;

    invoke-direct {v3, v4}, Lh/eI;-><init>(Lh/eY;)V

    invoke-direct {v0, v1, v2, v3}, Lh/aA;-><init>(Lh/eY;LaU/a;Lh/eI;)V

    iput-object v0, p0, Lh/eo;->y:Lh/aA;

    :cond_0
    iget-object v0, p0, Lh/eo;->y:Lh/aA;

    return-object v0
.end method

.method public u()Lh/eD;
    .locals 3

    iget-object v0, p0, Lh/eo;->z:Lh/eD;

    if-nez v0, :cond_0

    new-instance v0, Lh/eD;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->v()LaU/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh/eD;-><init>(Lh/eY;LaU/a;)V

    iput-object v0, p0, Lh/eo;->z:Lh/eD;

    :cond_0
    iget-object v0, p0, Lh/eo;->z:Lh/eD;

    return-object v0
.end method

.method public v()Lh/cA;
    .locals 2

    iget-object v0, p0, Lh/eo;->A:Lh/cA;

    if-nez v0, :cond_0

    new-instance v0, Lh/cA;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    invoke-direct {v0, v1}, Lh/cA;-><init>(Lh/eY;)V

    iput-object v0, p0, Lh/eo;->A:Lh/cA;

    :cond_0
    iget-object v0, p0, Lh/eo;->A:Lh/cA;

    return-object v0
.end method

.method public w()Lh/aY;
    .locals 3

    iget-object v0, p0, Lh/eo;->B:Lh/aY;

    if-nez v0, :cond_0

    new-instance v0, Lh/aY;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->v()LaU/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lh/aY;-><init>(Lh/eY;LaU/a;)V

    iput-object v0, p0, Lh/eo;->B:Lh/aY;

    :cond_0
    iget-object v0, p0, Lh/eo;->B:Lh/aY;

    return-object v0
.end method

.method public x()Lh/eG;
    .locals 2

    iget-object v0, p0, Lh/eo;->F:Lh/eG;

    if-nez v0, :cond_0

    new-instance v0, Lh/eG;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    invoke-direct {v0, v1}, Lh/eG;-><init>(Lh/eY;)V

    iput-object v0, p0, Lh/eo;->F:Lh/eG;

    :cond_0
    iget-object v0, p0, Lh/eo;->F:Lh/eG;

    return-object v0
.end method

.method public y()Lh/bT;
    .locals 2

    iget-object v0, p0, Lh/eo;->G:Lh/bT;

    if-nez v0, :cond_0

    new-instance v0, Lh/bT;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    invoke-direct {v0, v1}, Lh/bT;-><init>(Lh/eY;)V

    iput-object v0, p0, Lh/eo;->G:Lh/bT;

    :cond_0
    iget-object v0, p0, Lh/eo;->G:Lh/bT;

    return-object v0
.end method

.method public z()Lh/dC;
    .locals 4

    iget-object v0, p0, Lh/eo;->C:Lh/dC;

    if-nez v0, :cond_0

    new-instance v0, Lh/dC;

    iget-object v1, p0, Lh/eo;->a:Lh/eY;

    iget-object v2, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v2}, Lh/eY;->B()Lcom/google/googlenav/bL;

    move-result-object v2

    iget-object v3, p0, Lh/eo;->a:Lh/eY;

    invoke-virtual {v3}, Lh/eY;->v()LaU/a;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lh/dC;-><init>(Lh/eY;Lcom/google/googlenav/bL;LaU/a;)V

    iput-object v0, p0, Lh/eo;->C:Lh/dC;

    :cond_0
    iget-object v0, p0, Lh/eo;->C:Lh/dC;

    return-object v0
.end method
