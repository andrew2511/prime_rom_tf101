.class public Lcom/google/android/maps/driveabout/app/be;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Ljava/lang/Thread;

.field private c:Lcom/google/android/maps/driveabout/app/NavigationActivity;

.field private d:Lcom/google/android/maps/driveabout/app/e;

.field private e:Lcom/google/android/maps/driveabout/app/NavigationView;

.field private f:Lcom/google/android/maps/driveabout/app/Q;

.field private g:Lcom/google/android/maps/driveabout/app/Q;

.field private h:Lcom/google/android/maps/driveabout/app/eE;

.field private i:Lcom/google/android/maps/driveabout/app/bX;

.field private j:Lb/p;

.field private k:LaT/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->a:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->b:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/be;)Lb/p;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/be;)Lcom/google/android/maps/driveabout/app/NavigationActivity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->c:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    return-object v0
.end method

.method private b(Lcom/google/android/maps/driveabout/app/NavigationView;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->t()Lcom/google/android/maps/driveabout/app/aI;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Lcom/google/android/maps/driveabout/app/aI;)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/NavigationView;->y()Lcom/google/android/maps/driveabout/app/NavigationMapView;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/bT;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/bT;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/app/T;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/bS;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/bS;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/bV;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/bV;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/bU;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/app/bU;-><init>(Lcom/google/android/maps/driveabout/app/be;Lcom/google/android/maps/driveabout/app/NavigationView;)V

    new-instance v1, Lcom/google/android/maps/driveabout/app/bQ;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/bQ;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {p1, v1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnKeyListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/bR;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/bR;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/bO;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/bO;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    new-instance v1, Lcom/google/android/maps/driveabout/app/bP;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/bP;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/ai;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/ai;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    new-instance v3, Lcom/google/android/maps/driveabout/app/aj;

    invoke-direct {v3, p0}, Lcom/google/android/maps/driveabout/app/aj;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Lcom/google/android/maps/driveabout/app/cj;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ak;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ak;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->e(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/al;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/al;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    new-instance v1, Lcom/google/android/maps/driveabout/app/am;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/am;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/an;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/an;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ao;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ao;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->f(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ap;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ap;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->c(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/aq;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/aq;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->d(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ar;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ar;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Lcom/google/android/maps/driveabout/vector/bA;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/Z;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/Z;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Lcom/google/android/maps/driveabout/vector/cM;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/aa;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/aa;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->b(Lcom/google/android/maps/driveabout/vector/cM;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/X;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/X;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Lcom/google/android/maps/driveabout/vector/K;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/Y;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/Y;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->b(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ad;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ad;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->g(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ev;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/maps/driveabout/app/ev;-><init>(Lcom/google/android/maps/driveabout/app/be;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Landroid/view/View$OnKeyListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ae;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ae;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->h(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ab;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ab;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->i(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ac;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ac;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->j(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/af;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/af;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->p(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ag;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ag;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->k(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/O;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/O;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->l(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/N;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/N;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->m(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/M;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/M;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->o(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/K;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/K;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->n(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/J;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/J;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->c(Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/be;)Lcom/google/android/maps/driveabout/app/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->d:Lcom/google/android/maps/driveabout/app/e;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/app/be;)Lcom/google/android/maps/driveabout/app/bX;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->i:Lcom/google/android/maps/driveabout/app/bX;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->c:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->i:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->F()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->l()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->g:Lcom/google/android/maps/driveabout/app/Q;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->f:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->f:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/be;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/e;->a()Lcom/google/android/maps/driveabout/app/aH;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->a(Lcom/google/android/maps/driveabout/vector/bD;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->f:Lcom/google/android/maps/driveabout/app/Q;

    invoke-static {v0}, Lb/k;->a(Lcom/google/android/maps/driveabout/app/Q;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/be;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/k;->a(I)V

    return-void
.end method

.method public a(LF/u;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lb/k;->a(LF/u;Z)V

    return-void
.end method

.method public a(LF/y;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/be;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/k;->b(LF/y;Z)V

    return-void
.end method

.method public a(LG/R;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/be;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/dp;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/dp;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-virtual {v0, p1, v1}, Lb/k;->a(LG/R;Lcom/google/android/maps/driveabout/app/aR;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/e;LF/L;Lcom/google/android/maps/driveabout/app/bX;LaT/d;)V
    .locals 6

    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/be;->i:Lcom/google/android/maps/driveabout/app/bX;

    new-instance v0, Lcom/google/android/maps/driveabout/app/c;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->g:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->g:Lcom/google/android/maps/driveabout/app/Q;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->f:Lcom/google/android/maps/driveabout/app/Q;

    new-instance v0, Lcom/google/android/maps/driveabout/app/eE;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/app/eE;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->h:Lcom/google/android/maps/driveabout/app/eE;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/be;->d:Lcom/google/android/maps/driveabout/app/e;

    iput-object p5, p0, Lcom/google/android/maps/driveabout/app/be;->k:LaT/d;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/be;->f:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/be;->h:Lcom/google/android/maps/driveabout/app/eE;

    move-object v0, p1

    move-object v1, p2

    move-object v4, p4

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lb/k;->a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/e;Lcom/google/android/maps/driveabout/app/Q;Lcom/google/android/maps/driveabout/app/eE;Lcom/google/android/maps/driveabout/app/bX;LF/L;)V

    sget-object v0, Lb/p;->a:Lb/p;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    sget-object v1, Lb/C;->a:Lb/C;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    return-void
.end method

.method public a(Landroid/os/Bundle;LG/z;Lcom/google/android/maps/driveabout/app/F;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/be;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lb/k;->a(Landroid/os/Bundle;LG/z;Lcom/google/android/maps/driveabout/app/F;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/be;->c:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->a()Lcom/google/android/maps/driveabout/app/NavigationView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/be;->a(Lcom/google/android/maps/driveabout/app/NavigationView;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->i:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->y()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->setRequestedOrientation(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    sget-object v1, Lb/x;->a:Lb/x;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    sget-object v1, Lb/A;->a:Lb/A;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lb/p;->a(Lb/k;Z)Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->i:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->G()V

    return-void

    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/app/NavigationView;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->e:Lcom/google/android/maps/driveabout/app/NavigationView;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/be;->e:Lcom/google/android/maps/driveabout/app/NavigationView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->e:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/be;->b(Lcom/google/android/maps/driveabout/app/NavigationView;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->n()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->e:Lcom/google/android/maps/driveabout/app/NavigationView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->f:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->f:Lcom/google/android/maps/driveabout/app/Q;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/be;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/e;->a()Lcom/google/android/maps/driveabout/app/aH;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->a(Lcom/google/android/maps/driveabout/vector/bD;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->f:Lcom/google/android/maps/driveabout/app/Q;

    invoke-static {v0}, Lb/k;->a(Lcom/google/android/maps/driveabout/app/Q;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->g()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->m()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->y()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->x()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/bY;Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lb/k;->a(Lcom/google/android/maps/driveabout/app/bY;Landroid/content/Context;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/bi;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/be;->s()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bi;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->t()Lcom/google/android/maps/driveabout/app/aI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/aI;->b(Lcom/google/android/maps/driveabout/app/bi;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->t()Lcom/google/android/maps/driveabout/app/aI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/aI;->a(Lcom/google/android/maps/driveabout/app/bi;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/be;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/k;->c(Z)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->c:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->e:Lcom/google/android/maps/driveabout/app/NavigationView;

    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/be;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/k;->e(Z)V

    return-void
.end method

.method public c()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/be;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->A()V

    return-void
.end method

.method public c(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/be;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lb/k;->d(Z)V

    return-void
.end method

.method public d()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/be;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->G()V

    return-void
.end method

.method public d(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/be;->s()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->i:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->D()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->i:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->E()V

    goto :goto_0
.end method

.method public e()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/be;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->aa()V

    return-void
.end method

.method public f()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->i:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/be;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/e;->b()LF/y;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/be;->i:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/bX;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, LF/M;->j()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, LF/M;->a(I)LF/y;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, LF/y;->b()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/be;->c:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0}, LF/M;->l()LF/u;

    move-result-object v0

    invoke-virtual {v0}, LF/u;->e()LG/y;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/google/android/maps/driveabout/app/p;->a(Landroid/content/Context;LF/y;LG/y;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->c:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/p;->a(Landroid/content/Context;LF/y;)V

    goto :goto_0
.end method

.method public g()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/be;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->H()V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->I()V

    return-void
.end method

.method public i()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/be;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->F()V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->e:Lcom/google/android/maps/driveabout/app/NavigationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->e:Lcom/google/android/maps/driveabout/app/NavigationView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->y()Lcom/google/android/maps/driveabout/app/NavigationMapView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->l()LG/F;

    move-result-object v0

    invoke-virtual {v0}, LG/F;->a()LG/R;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/be;->a(LG/R;)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/be;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->d:Lcom/google/android/maps/driveabout/app/e;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/e;->t()Lcom/google/android/maps/driveabout/app/aI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/aI;->f()V

    return-void
.end method

.method public l()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/be;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->B()V

    return-void
.end method

.method public m()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/be;->s()V

    invoke-static {}, Lcom/google/android/maps/driveabout/app/cC;->a()Lcom/google/android/maps/driveabout/app/cC;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/be;->c:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/cC;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/be;->k:LaT/d;

    invoke-virtual {v0, v1}, Lb/k;->a(LaT/d;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/be;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->E()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->i:Lcom/google/android/maps/driveabout/app/bX;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bX;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->f:Lcom/google/android/maps/driveabout/app/Q;

    new-instance v1, Lcom/google/android/maps/driveabout/app/bW;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/bW;-><init>(Lcom/google/android/maps/driveabout/app/be;)V

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/Q;->a(Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->c:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c()V

    goto :goto_0
.end method

.method public o()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/be;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->t()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->c:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/be;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->D()V

    return-void
.end method

.method public q()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/be;->s()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->C()V

    return-void
.end method

.method public final r()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/be;->j:Lb/p;

    invoke-virtual {v0}, Lb/p;->a()Lb/k;

    move-result-object v0

    invoke-virtual {v0}, Lb/k;->ad()V

    return-void
.end method

.method public final s()V
    .locals 0

    return-void
.end method
