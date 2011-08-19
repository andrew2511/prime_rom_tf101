.class public Lam/m;
.super Li/aE;

# interfaces
.implements Lau/f;
.implements Lcom/google/android/maps/driveabout/vector/K;
.implements Li/ai;
.implements Li/ax;


# static fields
.field public static final a:Lf/l;


# instance fields
.field private final m:Lam/n;

.field private final n:Ljava/util/Map;

.field private o:Lcom/google/android/maps/driveabout/vector/cA;

.field private final p:Ljava/lang/Object;

.field private q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

.field private r:Landroid/view/View;

.field private s:Lcom/google/android/maps/driveabout/vector/bS;

.field private final t:Lam/j;

.field private u:Lcom/google/android/maps/driveabout/vector/ad;

.field private v:Z

.field private final w:Ljava/lang/Object;

.field private final x:Ljava/lang/Object;

.field private y:J

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12

    invoke-static {v0}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    sput-object v0, Lam/m;->a:Lf/l;

    return-void
.end method

.method private constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;LH/f;Lo/bg;Lo/by;Lo/g;Lo/Y;LaU/a;Lcom/google/googlenav/ui/bu;Lh/eY;Lf/x;Lcom/google/googlenav/layer/a;)V
    .locals 3

    invoke-direct/range {p0 .. p14}, Li/aE;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;LH/f;Lo/bg;Lo/by;Lo/g;Lo/Y;LaU/a;Lcom/google/googlenav/ui/bu;Lh/eY;Lf/x;Lcom/google/googlenav/layer/a;)V

    new-instance v0, Lam/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lam/n;-><init>(Lam/h;)V

    iput-object v0, p0, Lam/m;->m:Lam/n;

    invoke-static {}, Lj/u;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lam/m;->n:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lam/m;->p:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lam/m;->w:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lam/m;->x:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lam/m;->y:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lam/m;->z:J

    new-instance v0, Lam/j;

    invoke-direct {v0}, Lam/j;-><init>()V

    iput-object v0, p0, Lam/m;->t:Lam/j;

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lau/e;->a()Lau/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lau/e;->a(Lau/f;)V

    :cond_0
    new-instance v0, Lam/h;

    const-string v1, "LayerTileCompactor"

    invoke-direct {v0, p0, v1}, Lam/h;-><init>(Lam/m;Ljava/lang/String;)V

    sget-object v1, Lcom/google/googlenav/G;->a:Lcom/google/googlenav/G;

    new-instance v2, Lam/i;

    invoke-direct {v2, p0, v0}, Lam/i;-><init>(Lam/m;Lad/i;)V

    invoke-static {v1, v2}, Lcom/google/googlenav/aw;->a(Lcom/google/googlenav/G;Lcom/google/googlenav/Q;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;LH/f;Lo/bg;Lo/by;Lo/g;Lo/Y;LaU/a;Lcom/google/googlenav/ui/bu;Lh/eY;Lf/x;Lcom/google/googlenav/layer/a;Lam/h;)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Lam/m;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;LH/f;Lo/bg;Lo/by;Lo/g;Lo/Y;LaU/a;Lcom/google/googlenav/ui/bu;Lh/eY;Lf/x;Lcom/google/googlenav/layer/a;)V

    return-void
.end method

.method static synthetic a(Lam/m;J)J
    .locals 0

    iput-wide p1, p0, Lam/m;->z:J

    return-wide p1
.end method

.method static synthetic a(Lam/m;Lcom/google/android/maps/driveabout/vector/cA;)Lcom/google/android/maps/driveabout/vector/cA;
    .locals 0

    iput-object p1, p0, Lam/m;->o:Lcom/google/android/maps/driveabout/vector/cA;

    return-object p1
.end method

.method static synthetic a(Lam/m;Li/x;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lam/m;->a(Li/x;I)V

    return-void
.end method

.method static synthetic a(Lam/m;)Z
    .locals 1

    iget-boolean v0, p0, Lam/m;->v:Z

    return v0
.end method

.method static synthetic a(Lam/m;Li/x;Lcom/google/googlenav/bf;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lam/m;->a(Li/x;Lcom/google/googlenav/bf;)Z

    move-result v0

    return v0
.end method

.method private a(Li/x;Lcom/google/googlenav/bf;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Li/x;->b()I

    move-result v1

    if-nez v1, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/googlenav/c;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/googlenav/c;->V()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-interface {p2}, Lcom/google/googlenav/bf;->H()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Lcom/google/googlenav/bf;->F()B

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    check-cast p1, Li/aw;

    move-object v0, p2

    check-cast v0, Lcom/google/googlenav/bF;

    move-object v1, v0

    invoke-virtual {p1}, Li/aw;->br()Lcom/google/googlenav/z;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/googlenav/bF;->bK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/googlenav/z;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Lcom/google/googlenav/bf;->H()Z

    move-result v1

    goto :goto_0
.end method

.method private ab()V
    .locals 1

    iget-object v0, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->u()V

    :cond_0
    return-void
.end method

.method private ac()V
    .locals 2

    invoke-virtual {p0}, Lam/m;->I()Li/x;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a()LM/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lam/m;->I()Li/x;

    move-result-object v1

    invoke-virtual {v1}, Li/x;->aw()Z

    move-result v1

    invoke-virtual {v0, v1}, LM/b;->b(Z)V

    :cond_0
    return-void
.end method

.method private ad()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lam/m;->I()Li/x;

    move-result-object v0

    instance-of v0, v0, Li/v;

    if-eqz v0, :cond_0

    const-string v0, "dd"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "1"

    goto :goto_0
.end method

.method private ae()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->b()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bS;->p()LG/Z;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/bS;->b(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    invoke-static {}, Lau/e;->a()Lau/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lau/e;->b(LG/Z;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/bS;->b(Z)V

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method private static b(Li/x;I)Lam/k;
    .locals 11

    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/bf;->F()B

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Li/x;->e(I)Lcom/google/googlenav/aG;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/googlenav/aG;->a()Lk/l;

    move-result-object v0

    check-cast v0, LaB/f;

    invoke-virtual {v0}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/googlenav/aG;->b()I

    move-result v3

    invoke-virtual {v1}, Lcom/google/googlenav/aG;->c()I

    move-result v5

    invoke-virtual {v1}, Lcom/google/googlenav/aG;->d()Z

    move-result v1

    move v9, v1

    move v6, v5

    move v5, v3

    move-object v3, v0

    :goto_0
    new-instance v0, Lam/k;

    invoke-virtual {p0, v2}, Li/x;->a(Lcom/google/googlenav/bf;)I

    move-result v7

    invoke-virtual {p0, v2}, Li/x;->b(Lcom/google/googlenav/bf;)I

    move-result v8

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lam/k;-><init>(Li/x;Lcom/google/googlenav/bf;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIIZ)V

    instance-of v1, p0, Li/v;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/j;->c_()I

    move-result v1

    sub-int/2addr v1, v10

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-interface {v2}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v1

    invoke-virtual {v1}, Lf/h;->b()I

    move-result v1

    invoke-interface {v2}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v2

    invoke-virtual {v2}, Lf/h;->d()I

    move-result v2

    invoke-static {v1, v2}, LG/Q;->b(II)LG/Q;

    move-result-object v1

    check-cast p0, Li/v;

    invoke-virtual {v0, v10}, Lam/k;->b(Z)V

    new-instance v2, Lam/g;

    invoke-direct {v2, p0, p1, v0, v1}, Lam/g;-><init>(Li/v;ILam/k;LG/Q;)V

    invoke-virtual {v0, v2}, Lam/k;->a(Lcom/google/android/maps/driveabout/vector/cf;)V

    :cond_1
    return-object v0

    :cond_2
    move v9, v3

    move v6, v3

    move v5, v3

    move-object v3, v4

    goto :goto_0
.end method

.method static synthetic b(Lam/m;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lam/m;->w:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lam/m;Li/x;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lam/m;->a(Li/x;I)V

    return-void
.end method

.method static synthetic c(Lam/m;)J
    .locals 2

    iget-wide v0, p0, Lam/m;->z:J

    return-wide v0
.end method

.method static synthetic d(Lam/m;)Lf/v;
    .locals 1

    iget-object v0, p0, Lam/m;->f:Lf/v;

    return-object v0
.end method

.method static synthetic e(Lam/m;)J
    .locals 2

    iget-wide v0, p0, Lam/m;->y:J

    return-wide v0
.end method

.method static synthetic f(Lam/m;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lam/m;->x:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g(Lam/m;)Li/M;
    .locals 1

    invoke-virtual {p0}, Lam/m;->n()Li/M;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lam/m;)Lam/n;
    .locals 1

    iget-object v0, p0, Lam/m;->m:Lam/n;

    return-object v0
.end method

.method static synthetic i(Lam/m;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lam/m;->p:Ljava/lang/Object;

    return-object v0
.end method

.method private j(Li/x;)V
    .locals 7

    invoke-virtual {p1}, Li/x;->M_()[Lcom/google/googlenav/ui/r;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lam/m;->n:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/Vector;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    if-eqz v4, :cond_2

    new-instance v5, Lam/p;

    iget-object v6, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lam/p;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/r;)V

    invoke-virtual {v1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v4, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v4, v5}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lam/m;->n:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private k(Li/x;)V
    .locals 3

    iget-object v0, p0, Lam/m;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/p;

    iget-object v2, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b(Lcom/google/android/maps/driveabout/vector/cr;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lam/m;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/c;ZBZZ)Li/Z;
    .locals 10

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lam/m;->a(I)V

    new-instance v0, Li/Z;

    iget-object v1, p0, Lam/m;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Lam/m;->f:Lf/v;

    iget-object v3, p0, Lam/m;->g:Lf/Y;

    iget-object v4, p0, Lam/m;->h:Lcom/google/googlenav/ui/X;

    iget-object v5, p0, Lam/m;->i:Lf/x;

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v0 .. v9}, Li/Z;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lf/x;Lcom/google/googlenav/c;ZBZ)V

    iget-object v1, p0, Lam/m;->p:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v2}, Lam/m;->b(Li/x;I)Lam/k;

    move-result-object v2

    iput-object v2, p0, Lam/m;->o:Lcom/google/android/maps/driveabout/vector/cA;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0, p5}, Lam/m;->a(Li/x;Z)V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected a(Lcom/google/googlenav/layer/s;)Li/ay;
    .locals 8

    new-instance v0, Lam/a;

    iget-object v1, p0, Lam/m;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Lam/m;->f:Lf/v;

    iget-object v3, p0, Lam/m;->g:Lf/Y;

    iget-object v4, p0, Lam/m;->h:Lcom/google/googlenav/ui/X;

    new-instance v6, Lf/x;

    invoke-direct {v6}, Lf/x;-><init>()V

    iget-object v7, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lam/a;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/layer/s;Lf/x;Lcom/google/android/maps/driveabout/vector/VectorMapView;)V

    return-object v0
.end method

.method public a(FF)V
    .locals 2

    iget-object v0, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lam/m;->e:LH/f;

    invoke-virtual {v0}, LH/f;->x()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bS;->j()F

    move-result v0

    sub-float v0, p1, v0

    invoke-static {v0}, LA/h;->b(F)F

    move-result v0

    iget-object v1, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bS;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40a0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bS;->d(Z)V

    iget-object v0, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bS;->a(F)V

    invoke-direct {p0}, Lam/m;->ab()V

    :cond_1
    return-void
.end method

.method public a(Lau/e;)V
    .locals 0

    return-void
.end method

.method public a(Lau/e;LG/e;)V
    .locals 0

    invoke-direct {p0}, Lam/m;->ae()V

    invoke-direct {p0}, Lam/m;->ab()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/VectorMapView;)V
    .locals 10

    const/4 v9, 0x2

    const v8, 0x338cc6ef

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v0, p0, Lam/m;->t:Lam/j;

    iget-object v1, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, v1}, Lam/j;->a(Lcom/google/android/maps/driveabout/vector/VectorMapView;)V

    iget-object v0, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lam/m;->m:Lam/n;

    invoke-virtual {v0}, Lam/n;->a()V

    iget-object v0, p0, Lam/m;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v7, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    iput-object v7, p0, Lam/m;->u:Lcom/google/android/maps/driveabout/vector/ad;

    iput-object v7, p0, Lam/m;->o:Lcom/google/android/maps/driveabout/vector/cA;

    iput-object v7, p0, Lam/m;->r:Landroid/view/View;

    iget-object v0, p0, Lam/m;->d:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0, v5}, Lcom/google/googlenav/ui/aT;->b(Z)V

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_1
    iget-object v0, p0, Lam/m;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lam/m;->k:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    iget-object v2, p0, Lam/m;->m:Lam/n;

    invoke-virtual {v2, v0}, Lam/n;->a(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v2, v5}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(I)Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v2

    invoke-virtual {v0}, Li/x;->b()I

    move-result v3

    if-ne v3, v9, :cond_3

    invoke-virtual {v2, v6}, Lcom/google/android/maps/driveabout/vector/bq;->a(I)V

    :goto_2
    invoke-virtual {p1, v9}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d(I)V

    iget-object v3, p0, Lam/m;->m:Lam/n;

    invoke-virtual {v3, v0, v2}, Lam/n;->a(Li/x;Lcom/google/android/maps/driveabout/vector/bq;)V

    iget-object v3, p0, Lam/m;->t:Lam/j;

    invoke-virtual {v3, v2}, Lam/j;->a(Lcom/google/android/maps/driveabout/vector/bq;)V

    :cond_2
    invoke-virtual {p0, v0}, Lam/m;->a(Li/x;)V

    invoke-direct {p0, v0}, Lam/m;->j(Li/x;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v5}, Lcom/google/android/maps/driveabout/vector/bq;->a(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, Lam/m;->t:Lam/j;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    iget-object v0, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, v6}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Z)Lcom/google/android/maps/driveabout/vector/bS;

    move-result-object v0

    iput-object v0, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    iget-object v0, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/google/android/maps/driveabout/vector/aM;

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/aM;->a()Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/maps/driveabout/vector/ao;->a(Z)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/maps/driveabout/vector/ao;->b(Z)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/maps/driveabout/vector/ao;->c(Z)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/ao;->a()Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    const v3, 0x7f0203cd

    const v4, 0x7f0203ce

    invoke-virtual {v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/ao;->a(II)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    invoke-virtual {v2, v5, v8}, Lcom/google/android/maps/driveabout/vector/ao;->b(II)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/ao;->c()Lcom/google/android/maps/driveabout/vector/aM;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/aM;->a()Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/maps/driveabout/vector/ao;->a(Z)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/maps/driveabout/vector/ao;->b(Z)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/maps/driveabout/vector/ao;->c(Z)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/ao;->b()Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    const v3, 0x7f0203c9

    const v4, 0x7f0203ca

    invoke-virtual {v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/ao;->a(II)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    invoke-virtual {v2, v5, v8}, Lcom/google/android/maps/driveabout/vector/ao;->b(II)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/ao;->c()Lcom/google/android/maps/driveabout/vector/aM;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/aM;->a()Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/maps/driveabout/vector/ao;->a(Z)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/maps/driveabout/vector/ao;->b(Z)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/ao;->a()Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    const v3, 0x7f0203cf

    const v4, 0x7f0203d0

    invoke-virtual {v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/ao;->a(II)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    const v3, 0x73217bce

    invoke-virtual {v2, v3, v8}, Lcom/google/android/maps/driveabout/vector/ao;->b(II)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/ao;->c()Lcom/google/android/maps/driveabout/vector/aM;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x3

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/aM;->a()Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/maps/driveabout/vector/ao;->a(Z)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/maps/driveabout/vector/ao;->b(Z)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/ao;->b()Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v3

    const v4, 0x7f0203cb

    const v5, 0x7f0203cb

    invoke-virtual {v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/ao;->a(II)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v3

    const v4, 0x73217bce

    invoke-virtual {v3, v4, v8}, Lcom/google/android/maps/driveabout/vector/ao;->b(II)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/ao;->c()Lcom/google/android/maps/driveabout/vector/aM;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/aM;->a()Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/google/android/maps/driveabout/vector/ao;->b(Z)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/ao;->b()Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v3

    const v4, 0x7f0203d1

    const v5, 0x7f0203d1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/ao;->a(II)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v3

    const v4, 0x73aaaaaa

    const v5, 0x33cccccc

    invoke-virtual {v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/ao;->b(II)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/ao;->c()Lcom/google/android/maps/driveabout/vector/aM;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bS;->a([Lcom/google/android/maps/driveabout/vector/aM;)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    const v2, 0x7f090087

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const v3, 0x7f0a0004

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v4, 0x7f0a0005

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/vector/bS;->a(FII)V

    iget-object v0, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    const v1, 0x7c830

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bS;->b(I)V

    iget-object v0, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    const/high16 v1, 0x4160

    const/high16 v2, 0x4120

    const v3, 0x3f4ccccd

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/bS;->a(FFF)V

    iget-object v0, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    new-instance v1, Lam/f;

    invoke-direct {v1, p0}, Lam/f;-><init>(Lam/m;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bS;->a(Lcom/google/android/maps/driveabout/vector/bA;)V

    iget-object v0, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    const/high16 v1, 0x4700

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bS;->c(F)V

    iget-object v0, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ad;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/ad;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lam/m;->u:Lcom/google/android/maps/driveabout/vector/ad;

    iget-object v0, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, Lam/m;->u:Lcom/google/android/maps/driveabout/vector/ad;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    iget-object v0, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    new-instance v1, Lam/c;

    invoke-direct {v1, p0, v7}, Lam/c;-><init>(Lam/m;Lam/h;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/cM;)V

    iget-object v0, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/K;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cA;)V
    .locals 1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lam/m;->T()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lam/m;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/m;->r:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0
.end method

.method public a(Li/x;)V
    .locals 6

    iget-object v0, p0, Lam/m;->m:Lam/n;

    invoke-virtual {v0, p1}, Lam/n;->b(Li/x;)Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object v2

    invoke-static {}, Lj/u;->a()Ljava/util/HashMap;

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Lcom/google/googlenav/j;->c_()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {v2, v3}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Lcom/google/googlenav/bf;->ao()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance v3, Lam/e;

    invoke-direct {v3, p0, v0, v2, p1}, Lam/e;-><init>(Lam/m;Ljava/util/Map;Lcom/google/googlenav/j;Li/x;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/google/android/maps/driveabout/vector/bq;->a(Lcom/google/android/maps/driveabout/vector/be;Z)V

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lam/m;->b(Li/x;I)Lam/k;

    move-result-object v4

    invoke-interface {v2, v0}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lam/m;->a(Li/x;Lcom/google/googlenav/bf;)Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/google/android/maps/driveabout/vector/ae;->a(Z)V

    invoke-virtual {v1, v4}, Lcom/google/android/maps/driveabout/vector/bq;->a(Lcom/google/android/maps/driveabout/vector/ae;)V

    goto :goto_1
.end method

.method public a(Li/x;Lx/S;)V
    .locals 5

    iget-object v1, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v1, p0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/K;)V

    check-cast p2, Lcom/google/googlenav/ui/view/android/bz;

    invoke-virtual {p2}, Lcom/google/googlenav/ui/view/android/bz;->e()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lam/m;->r:Landroid/view/View;

    invoke-virtual {p1}, Li/x;->b()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v2, p0, Lam/m;->o:Lcom/google/android/maps/driveabout/vector/cA;

    iget-object v3, p0, Lam/m;->r:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/cA;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Li/x;->b()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3

    move-object v0, p1

    check-cast v0, Li/M;

    move-object v1, v0

    invoke-virtual {v1}, Li/M;->bo()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v2, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    iget-object v3, p0, Lam/m;->r:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/cA;Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    iget-object v2, p0, Lam/m;->m:Lam/n;

    invoke-virtual {v2, p1}, Lam/n;->b(Li/x;)Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/j;->c()I

    move-result v3

    if-ltz v3, :cond_4

    invoke-virtual {p1}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/j;->b()Lcom/google/googlenav/bf;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/googlenav/bf;->ao()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/bq;->a(Ljava/lang/Object;)Lcom/google/android/maps/driveabout/vector/ae;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v1, 0x1

    iget-object v3, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v4, p0, Lam/m;->r:Landroid/view/View;

    invoke-virtual {v3, v2, v4}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/cA;Landroid/view/View;)V

    :cond_4
    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lam/m;->d(Li/x;)V

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 1

    iget-object v0, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b(Z)V

    :cond_0
    return-void
.end method

.method protected a(Li/x;ZZ)Z
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Li/aE;->a(Li/x;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Li/x;->b()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(I)Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    new-instance v1, Lam/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lam/d;-><init>(Lam/m;Lam/h;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bq;->a(Lcom/google/android/maps/driveabout/vector/cM;)V

    iget-object v1, p0, Lam/m;->m:Lam/n;

    invoke-virtual {v1, p1, v0}, Lam/n;->a(Li/x;Lcom/google/android/maps/driveabout/vector/bq;)V

    invoke-virtual {p0, p1}, Lam/m;->a(Li/x;)V

    iget-object v1, p0, Lam/m;->t:Lam/j;

    invoke-virtual {v1, v0}, Lam/j;->a(Lcom/google/android/maps/driveabout/vector/bq;)V

    :cond_1
    invoke-virtual {p1, p0}, Li/x;->a(Li/ai;)V

    :cond_2
    invoke-virtual {p1, p0}, Li/x;->a(Li/ax;)V

    invoke-direct {p0, p1}, Lam/m;->j(Li/x;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b(Lcom/google/googlenav/layer/s;)Li/n;
    .locals 8

    new-instance v0, Lam/b;

    iget-object v1, p0, Lam/m;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Lam/m;->f:Lf/v;

    iget-object v3, p0, Lam/m;->g:Lf/Y;

    iget-object v4, p0, Lam/m;->h:Lcom/google/googlenav/ui/X;

    iget-object v6, p0, Lam/m;->i:Lf/x;

    iget-object v7, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lam/b;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/layer/s;Lf/x;Lcom/google/android/maps/driveabout/vector/VectorMapView;)V

    return-object v0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/m;->v:Z

    iget-object v0, p0, Lam/m;->w:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lam/m;->w:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lam/m;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lam/m;->x:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public b(Lau/e;)V
    .locals 0

    invoke-direct {p0}, Lam/m;->ae()V

    invoke-direct {p0}, Lam/m;->ab()V

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/cA;)V
    .locals 5

    const/16 v0, 0x12

    invoke-direct {p0}, Lam/m;->ad()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "a=d"

    aput-object v4, v2, v3

    invoke-static {v2}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lam/m;->d:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->h()Lf/Y;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/cA;->au_()LG/Q;

    move-result-object v1

    invoke-static {v1}, Lad/m;->b(LG/Q;)Lf/h;

    move-result-object v1

    sget-object v2, Lam/m;->a:Lf/l;

    invoke-virtual {v0, v1, v2}, Lf/Y;->d(Lf/h;Lf/l;)V

    return-void
.end method

.method public b(Li/x;)V
    .locals 2

    invoke-super {p0, p1}, Li/aE;->b(Li/x;)V

    iget-object v0, p0, Lam/m;->m:Lam/n;

    invoke-virtual {v0, p1}, Lam/n;->b(Li/x;)Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lam/m;->t:Lam/j;

    invoke-virtual {v1, v0}, Lam/j;->c(Lcom/google/android/maps/driveabout/vector/bq;)V

    :cond_0
    invoke-direct {p0}, Lam/m;->ac()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    iget-object v1, p0, Lam/m;->j:Lcom/google/googlenav/ui/bu;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bu;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bS;->c(Z)V

    :cond_0
    return-void
.end method

.method public c(Li/x;)V
    .locals 0

    invoke-super {p0, p1}, Li/aE;->c(Li/x;)V

    invoke-direct {p0, p1}, Lam/m;->k(Li/x;)V

    invoke-direct {p0, p1}, Lam/m;->j(Li/x;)V

    return-void
.end method

.method public d(Li/x;)V
    .locals 1

    iget-object v0, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/m;->q:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->n()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lam/m;->r:Landroid/view/View;

    return-void
.end method

.method public e()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, -0x4080

    iget-object v0, p0, Lam/m;->e:LH/f;

    invoke-virtual {v0}, LH/f;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lam/m;->e:LH/f;

    invoke-virtual {v0}, LH/f;->p()Lf/h;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {p0}, Lam/m;->I()Li/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lam/m;->I()Li/x;

    move-result-object v0

    invoke-virtual {v0}, Li/x;->b()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lam/m;->I()Li/x;

    move-result-object v0

    check-cast v0, Li/M;

    invoke-virtual {v0}, Li/M;->bo()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Li/M;->u_()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lam/m;->h(Li/x;)V

    :cond_0
    iget-object v0, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_1
    if-nez v1, :cond_2

    iget-object v0, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    invoke-virtual {v0, v4, v3}, Lcom/google/android/maps/driveabout/vector/bS;->a(LG/Q;F)V

    iget-object v0, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/bS;->a(LG/Z;)V

    :goto_2
    invoke-direct {p0}, Lam/m;->ae()V

    invoke-direct {p0}, Lam/m;->ab()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lam/m;->e:LH/f;

    invoke-virtual {v0}, LH/f;->x()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lam/m;->e:LH/f;

    invoke-virtual {v0}, LH/f;->e()I

    move-result v0

    int-to-float v0, v0

    :goto_3
    iget-object v2, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_4
    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/bS;->d(Z)V

    invoke-static {v1}, Lad/m;->a(Lf/h;)LG/Q;

    move-result-object v1

    iget-object v2, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/maps/driveabout/vector/bS;->a(LG/Q;F)V

    iget-object v0, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    iget-object v1, p0, Lam/m;->e:LH/f;

    invoke-virtual {v1}, LH/f;->A()LG/Z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bS;->a(LG/Z;)V

    iget-object v0, p0, Lam/m;->e:LH/f;

    invoke-virtual {v0}, LH/f;->h()I

    move-result v0

    iget-object v1, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    const v2, 0x1869f

    if-ne v0, v2, :cond_3

    move v0, v5

    :cond_3
    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/bS;->c(I)V

    goto :goto_2

    :cond_4
    invoke-static {}, LQ/g;->j()LQ/g;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, LQ/g;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, LQ/g;->d()F

    move-result v0

    goto :goto_3

    :cond_5
    move v3, v5

    goto :goto_4

    :cond_6
    move v0, v3

    goto :goto_3

    :cond_7
    move-object v1, v4

    goto/16 :goto_0
.end method

.method protected e(Li/x;)V
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0, p1}, Li/aE;->e(Li/x;)V

    invoke-virtual {p1, v0}, Li/x;->a(Li/ai;)V

    invoke-virtual {p1, v0}, Li/x;->a(Li/ax;)V

    iget-object v0, p0, Lam/m;->m:Lam/n;

    invoke-virtual {v0, p1}, Lam/n;->b(Li/x;)Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lam/m;->t:Lam/j;

    invoke-virtual {v1, v0}, Lam/j;->b(Lcom/google/android/maps/driveabout/vector/bq;)V

    :cond_0
    iget-object v0, p0, Lam/m;->m:Lam/n;

    invoke-virtual {v0, p1}, Lam/n;->a(Li/x;)V

    invoke-direct {p0, p1}, Lam/m;->k(Li/x;)V

    return-void
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/m;->s:Lcom/google/android/maps/driveabout/vector/bS;

    const/4 v1, 0x0

    const/high16 v2, -0x4080

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bS;->a(LG/Q;F)V

    invoke-direct {p0}, Lam/m;->ab()V

    :cond_0
    return-void
.end method

.method public g()Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lam/m;->g:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v10

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->a()J

    move-result-wide v0

    iget-object v2, p0, Lam/m;->f:Lf/v;

    invoke-virtual {v2}, Lf/v;->g()[Lf/K;

    move-result-object v2

    array-length v3, v2

    move v4, v10

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    iget-object v6, p0, Lam/m;->f:Lf/v;

    invoke-virtual {v6}, Lf/v;->a()Lf/J;

    move-result-object v6

    int-to-long v7, v10

    add-long/2addr v7, v0

    invoke-virtual {v6, v5, v11, v7, v8}, Lf/J;->a(Lf/K;ZJ)Ljava/util/Vector;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lam/m;->f:Lf/v;

    invoke-virtual {v0}, Lf/v;->a()Lf/J;

    move-result-object v0

    invoke-virtual {v0}, Lf/J;->j()V

    invoke-super {p0}, Li/aE;->g()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v10

    goto :goto_0

    :cond_2
    move v2, v10

    move v1, v10

    :goto_2
    iget-object v0, p0, Lam/m;->k:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    iget-object v0, p0, Lam/m;->k:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/x;

    iget-object v3, p0, Lam/m;->m:Lam/n;

    invoke-virtual {v3, v0}, Lam/n;->b(Li/x;)Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v3

    if-nez v3, :cond_3

    move v0, v1

    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Li/x;->aY()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Li/x;->aK()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v11

    :goto_4
    invoke-virtual {v0}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object v5

    move v6, v10

    move v7, v1

    :goto_5
    invoke-interface {v5}, Lcom/google/googlenav/j;->c_()I

    move-result v1

    if-ge v6, v1, :cond_a

    invoke-interface {v5, v6}, Lcom/google/googlenav/j;->c(I)Lcom/google/googlenav/bf;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/googlenav/bf;->ao()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/maps/driveabout/vector/bq;->a(Ljava/lang/Object;)Lcom/google/android/maps/driveabout/vector/ae;

    move-result-object v1

    check-cast v1, Lam/k;

    invoke-interface {v8}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v9

    if-nez v9, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v3, v1}, Lcom/google/android/maps/driveabout/vector/bq;->b(Lcom/google/android/maps/driveabout/vector/ae;)V

    move v1, v7

    :goto_6
    add-int/lit8 v6, v6, 0x1

    move v7, v1

    goto :goto_5

    :cond_4
    move v4, v10

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v6}, Li/x;->e(I)Lcom/google/googlenav/aG;

    move-result-object v9

    if-eqz v1, :cond_9

    invoke-virtual {v1, v9}, Lam/k;->a(Lcom/google/googlenav/aG;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v1}, Lam/k;->au_()LG/Q;

    move-result-object v9

    invoke-interface {v8}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v8

    invoke-static {v8}, Lad/m;->a(Lf/h;)LG/Q;

    move-result-object v8

    invoke-virtual {v9, v8}, LG/Q;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    :cond_6
    invoke-virtual {v3, v1}, Lcom/google/android/maps/driveabout/vector/bq;->b(Lcom/google/android/maps/driveabout/vector/ae;)V

    invoke-static {v0, v6}, Lam/m;->b(Li/x;I)Lam/k;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/maps/driveabout/vector/bq;->a(Lcom/google/android/maps/driveabout/vector/ae;)V

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Li/x;->v_()Lcom/google/googlenav/j;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/j;->c()I

    move-result v1

    if-ne v1, v6, :cond_9

    move v1, v11

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Lam/m;->I()Li/x;

    move-result-object v0

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Li/x;->aL()Lx/S;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lam/m;->a(Li/x;Lx/S;)V

    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lam/m;->y:J

    iget-object v0, p0, Lam/m;->x:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lam/m;->x:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lam/m;->ab()V

    move v0, v11

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_9
    move v1, v7

    goto :goto_6

    :cond_a
    move v0, v7

    goto/16 :goto_3
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lam/m;->u:Lcom/google/android/maps/driveabout/vector/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/m;->u:Lcom/google/android/maps/driveabout/vector/ad;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ad;->b()Z

    move-result v0

    iget-object v1, p0, Lam/m;->f:Lf/v;

    invoke-virtual {v1}, Lf/v;->a()Lf/J;

    move-result-object v1

    invoke-virtual {v1}, Lf/J;->l()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lam/m;->u:Lcom/google/android/maps/driveabout/vector/ad;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/ad;->c_(Z)V

    invoke-direct {p0}, Lam/m;->ab()V

    :cond_0
    return-void
.end method

.method protected i()V
    .locals 0

    invoke-super {p0}, Li/aE;->i()V

    invoke-direct {p0}, Lam/m;->ac()V

    return-void
.end method

.method protected j()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lam/m;->b(Z)Li/av;

    invoke-virtual {p0}, Lam/m;->w()V

    return-void
.end method
