.class public Lcom/google/android/maps/driveabout/vector/ci;
.super Ljava/lang/Object;


# instance fields
.field private A:I

.field private final a:Lcom/google/android/maps/driveabout/vector/bk;

.field private volatile b:Lcom/google/android/maps/driveabout/vector/ak;

.field private final c:Lcom/google/android/maps/driveabout/vector/bi;

.field private d:LG/k;

.field private e:Lcom/google/android/maps/driveabout/vector/bF;

.field private final f:Lcom/google/android/maps/driveabout/vector/u;

.field private g:F

.field private h:LG/ab;

.field private i:Lcom/google/android/maps/driveabout/vector/bL;

.field private j:Ljava/util/Iterator;

.field private k:Ljava/util/ArrayList;

.field private l:I

.field private m:Ljava/util/ArrayList;

.field private n:I

.field private final o:Ljava/util/HashSet;

.field private p:I

.field private q:F

.field private r:I

.field private s:I

.field private t:Z

.field private u:Z

.field private volatile v:Z

.field private w:Z

.field private x:Z

.field private volatile y:Z

.field private z:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/ak;Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->A:I

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bk;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/bk;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->a:Lcom/google/android/maps/driveabout/vector/bk;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ci;->b:Lcom/google/android/maps/driveabout/vector/ak;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/ci;->f:Lcom/google/android/maps/driveabout/vector/u;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bi;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bi;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->c:Lcom/google/android/maps/driveabout/vector/bi;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->k:Ljava/util/ArrayList;

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/ci;->l:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->m:Ljava/util/ArrayList;

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/ci;->n:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->o:Ljava/util/HashSet;

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/S;Lcom/google/android/maps/driveabout/vector/S;)I
    .locals 2

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/S;->b()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/S;->b()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final a(Lcom/google/android/maps/driveabout/vector/bF;)I
    .locals 4

    const v3, 0x48435000

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bF;->f()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bF;->e()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bF;->d()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v0

    div-float v0, v1, v0

    cmpl-float v1, v0, v3

    if-lez v1, :cond_0

    sub-float/2addr v0, v3

    const v1, 0x38d1b717

    mul-float/2addr v0, v1

    const/high16 v1, 0x4230

    add-float/2addr v0, v1

    :goto_0
    float-to-int v0, v0

    return v0

    :cond_0
    const v1, 0x3966afcd

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/ci;Lcom/google/android/maps/driveabout/vector/S;Lcom/google/android/maps/driveabout/vector/S;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/ci;->a(Lcom/google/android/maps/driveabout/vector/S;Lcom/google/android/maps/driveabout/vector/S;)I

    move-result v0

    return v0
.end method

.method private a(LG/m;)LG/m;
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ci;->d:LG/k;

    invoke-virtual {v1, p1, v0}, LG/k;->a(LG/m;Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-ne v1, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/m;

    move-object v0, p0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/m;

    invoke-virtual {p0}, LG/m;->d()F

    move-result v2

    move-object v4, p0

    move v7, v2

    move v2, v3

    move v3, v7

    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/m;

    invoke-virtual {p0}, LG/m;->d()F

    move-result v5

    cmpl-float v6, v5, v3

    if-lez v6, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/m;

    move v3, v5

    move-object v4, p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v4

    goto :goto_0
.end method

.method private a(LG/V;Lcom/google/android/maps/driveabout/vector/bh;Z)Lcom/google/android/maps/driveabout/vector/S;
    .locals 10

    const/4 v4, 0x0

    invoke-virtual {p1}, LG/V;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, LG/V;->c()LG/m;

    move-result-object v0

    invoke-virtual {v0}, LG/m;->a()LG/S;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ci;->h:LG/ab;

    invoke-virtual {v2, v1}, LG/ab;->b(LG/z;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/ci;->a(LG/m;)LG/m;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, LG/V;->h()LG/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ci;->b:Lcom/google/android/maps/driveabout/vector/ak;

    iget v1, v1, Lcom/google/android/maps/driveabout/vector/ak;->i:F

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ci;->b:Lcom/google/android/maps/driveabout/vector/ak;

    iget v2, v2, Lcom/google/android/maps/driveabout/vector/ak;->j:I

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/ci;->b:Lcom/google/android/maps/driveabout/vector/ak;

    iget v4, v4, Lcom/google/android/maps/driveabout/vector/ak;->k:I

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/ci;->e:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/bF;->f()F

    move-result v5

    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/android/maps/driveabout/vector/S;->a(LG/r;FIIF)F

    move-result v5

    invoke-virtual {p1}, LG/V;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->b:Lcom/google/android/maps/driveabout/vector/ak;

    iget-object v6, v0, Lcom/google/android/maps/driveabout/vector/ak;->h:Lcom/google/android/maps/driveabout/vector/aw;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->b:Lcom/google/android/maps/driveabout/vector/ak;

    iget v7, v0, Lcom/google/android/maps/driveabout/vector/ak;->l:F

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/ci;->e:Lcom/google/android/maps/driveabout/vector/bF;

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/ci;->a:Lcom/google/android/maps/driveabout/vector/bk;

    move-object v0, p1

    move-object v1, p2

    move v4, p3

    invoke-static/range {v0 .. v9}, Lcom/google/android/maps/driveabout/vector/aP;->a(LG/V;Lcom/google/android/maps/driveabout/vector/bh;Ljava/lang/String;LG/m;ZFLcom/google/android/maps/driveabout/vector/aw;FLcom/google/android/maps/driveabout/vector/bF;Lcom/google/android/maps/driveabout/vector/bk;)Lcom/google/android/maps/driveabout/vector/aP;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v4

    goto :goto_0
.end method

.method private a(LG/Y;Lcom/google/android/maps/driveabout/vector/bh;Z)Lcom/google/android/maps/driveabout/vector/S;
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p1}, LG/Y;->c()LG/Q;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->h:LG/ab;

    invoke-virtual {v0, v4}, LG/ab;->a(LG/Q;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, LG/Y;->q()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ci;->g:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, LG/Y;->r()F

    move-result v0

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p1}, LG/Y;->r()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ci;->g:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/ci;->a(LG/Y;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    const/high16 v0, 0x3f80

    invoke-virtual {p1}, LG/Y;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, LG/Y;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    invoke-virtual {p1}, LG/Y;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LG/Y;->j()F

    move-result v1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/ci;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    move v3, v1

    move-object v2, v0

    :goto_1
    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/ci;->e:Lcom/google/android/maps/driveabout/vector/bF;

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/ci;->c:Lcom/google/android/maps/driveabout/vector/bi;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/ci;->a:Lcom/google/android/maps/driveabout/vector/bk;

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/ci;->b:Lcom/google/android/maps/driveabout/vector/ak;

    move-object v0, p1

    move-object v1, p2

    move v5, p3

    invoke-static/range {v0 .. v9}, Lcom/google/android/maps/driveabout/vector/aB;->a(LG/Y;Lcom/google/android/maps/driveabout/vector/bh;Landroid/graphics/Bitmap;FLG/Q;ZLcom/google/android/maps/driveabout/vector/bF;Lcom/google/android/maps/driveabout/vector/bi;Lcom/google/android/maps/driveabout/vector/bk;Lcom/google/android/maps/driveabout/vector/ak;)Lcom/google/android/maps/driveabout/vector/aB;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_0

    :cond_4
    move v3, v0

    goto :goto_1
.end method

.method private a(LG/c;Lcom/google/android/maps/driveabout/vector/bh;Z)Lcom/google/android/maps/driveabout/vector/S;
    .locals 7

    invoke-virtual {p1}, LG/c;->g()LG/Q;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->h:LG/ab;

    invoke-virtual {v0, v2}, LG/ab;->a(LG/Q;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/ci;->e:Lcom/google/android/maps/driveabout/vector/bF;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/ci;->a:Lcom/google/android/maps/driveabout/vector/bk;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/ci;->b:Lcom/google/android/maps/driveabout/vector/ak;

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    invoke-static/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/aB;->a(LG/c;Lcom/google/android/maps/driveabout/vector/bh;LG/Q;ZLcom/google/android/maps/driveabout/vector/bF;Lcom/google/android/maps/driveabout/vector/bk;Lcom/google/android/maps/driveabout/vector/ak;)Lcom/google/android/maps/driveabout/vector/aB;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(LG/d;Lcom/google/android/maps/driveabout/vector/bh;)Lcom/google/android/maps/driveabout/vector/S;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/ci;->a(Lcom/google/android/maps/driveabout/vector/bh;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    invoke-interface {p1}, LG/d;->k()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    check-cast p1, LG/Y;

    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/maps/driveabout/vector/ci;->a(LG/Y;Lcom/google/android/maps/driveabout/vector/bh;Z)Lcom/google/android/maps/driveabout/vector/S;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, LG/d;->k()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    check-cast p1, LG/c;

    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/maps/driveabout/vector/ci;->a(LG/c;Lcom/google/android/maps/driveabout/vector/bh;Z)Lcom/google/android/maps/driveabout/vector/S;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-interface {p1}, LG/d;->k()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    check-cast p1, LG/V;

    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/maps/driveabout/vector/ci;->a(LG/V;Lcom/google/android/maps/driveabout/vector/bh;Z)Lcom/google/android/maps/driveabout/vector/S;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v3

    goto :goto_0
.end method

.method private a(LG/V;Lcom/google/android/maps/driveabout/vector/bh;ZZ)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/ci;->a(LG/V;Lcom/google/android/maps/driveabout/vector/bh;Z)Lcom/google/android/maps/driveabout/vector/S;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/ci;->b(Lcom/google/android/maps/driveabout/vector/S;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p4, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/S;->b_(Z)V

    goto :goto_0
.end method

.method private a(LG/Y;Lcom/google/android/maps/driveabout/vector/bh;ZZ)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/ci;->a(LG/Y;Lcom/google/android/maps/driveabout/vector/bh;Z)Lcom/google/android/maps/driveabout/vector/S;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/ci;->b(Lcom/google/android/maps/driveabout/vector/S;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p4, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/S;->b_(Z)V

    goto :goto_0
.end method

.method private a(LG/c;Lcom/google/android/maps/driveabout/vector/bh;ZZ)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/ci;->a(LG/c;Lcom/google/android/maps/driveabout/vector/bh;Z)Lcom/google/android/maps/driveabout/vector/S;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/ci;->b(Lcom/google/android/maps/driveabout/vector/S;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p4, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/S;->b_(Z)V

    goto :goto_0
.end method

.method private a(LG/d;Lcom/google/android/maps/driveabout/vector/bh;ZZ)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/ci;->a(Lcom/google/android/maps/driveabout/vector/bh;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, LG/i;

    if-eqz v0, :cond_2

    check-cast p1, LG/i;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/ci;->a(LG/i;Lcom/google/android/maps/driveabout/vector/bh;ZZ)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, LG/V;

    if-eqz v0, :cond_3

    check-cast p1, LG/V;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/ci;->a(LG/V;Lcom/google/android/maps/driveabout/vector/bh;ZZ)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, LG/c;

    if-eqz v0, :cond_4

    check-cast p1, LG/c;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/ci;->a(LG/c;Lcom/google/android/maps/driveabout/vector/bh;ZZ)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, LG/Y;

    if-eqz v0, :cond_0

    check-cast p1, LG/Y;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/ci;->a(LG/Y;Lcom/google/android/maps/driveabout/vector/bh;ZZ)V

    goto :goto_0
.end method

.method private a(LG/i;Lcom/google/android/maps/driveabout/vector/bh;ZZ)V
    .locals 13

    invoke-virtual {p1}, LG/i;->c()LG/m;

    move-result-object v0

    invoke-virtual {v0}, LG/m;->a()LG/S;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ci;->h:LG/ab;

    invoke-virtual {v2, v1}, LG/ab;->b(LG/z;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/ci;->a(LG/m;)LG/m;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v11}, LG/m;->d()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ci;->e:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bF;->q()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ci;->e:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bF;->f()F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x4220

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    const/4 v0, 0x0

    move v12, v0

    :goto_0
    invoke-virtual {p1}, LG/i;->d()I

    move-result v0

    if-ge v12, v0, :cond_3

    invoke-virtual {p1, v12}, LG/i;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v12}, LG/i;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/ci;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    const v0, 0x3f333333

    invoke-virtual {v11, v0}, LG/m;->a(F)LG/Q;

    move-result-object v4

    const v0, 0x3e99999a

    invoke-virtual {v11, v0}, LG/m;->a(F)LG/Q;

    move-result-object v5

    invoke-virtual {p1, v12}, LG/i;->b(I)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/ci;->b:Lcom/google/android/maps/driveabout/vector/ak;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/ci;->e:Lcom/google/android/maps/driveabout/vector/bF;

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/ci;->c:Lcom/google/android/maps/driveabout/vector/bi;

    move-object v0, p1

    move-object v1, p2

    move/from16 v6, p3

    invoke-static/range {v0 .. v9}, Lcom/google/android/maps/driveabout/vector/aB;->a(LG/i;Lcom/google/android/maps/driveabout/vector/bh;Landroid/graphics/Bitmap;Ljava/lang/String;LG/Q;LG/Q;ZLcom/google/android/maps/driveabout/vector/ak;Lcom/google/android/maps/driveabout/vector/bF;Lcom/google/android/maps/driveabout/vector/bi;)Lcom/google/android/maps/driveabout/vector/aB;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/ci;->b(Lcom/google/android/maps/driveabout/vector/S;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p4, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/S;->b_(Z)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v12, 0x1

    move v12, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/ci;->f()F

    move-result v6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->b:Lcom/google/android/maps/driveabout/vector/ak;

    iget-boolean v0, v0, Lcom/google/android/maps/driveabout/vector/ak;->o:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    move v4, v0

    :goto_2
    invoke-virtual {p1, v12}, LG/i;->a(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->b:Lcom/google/android/maps/driveabout/vector/ak;

    iget v7, v0, Lcom/google/android/maps/driveabout/vector/ak;->l:F

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->b:Lcom/google/android/maps/driveabout/vector/ak;

    iget-object v8, v0, Lcom/google/android/maps/driveabout/vector/ak;->a:Lcom/google/android/maps/driveabout/vector/aw;

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/ci;->e:Lcom/google/android/maps/driveabout/vector/bF;

    iget-object v10, p0, Lcom/google/android/maps/driveabout/vector/ci;->a:Lcom/google/android/maps/driveabout/vector/bk;

    move-object v0, p1

    move-object v1, p2

    move-object v3, v11

    move/from16 v5, p3

    invoke-static/range {v0 .. v10}, Lcom/google/android/maps/driveabout/vector/aP;->a(LG/i;Lcom/google/android/maps/driveabout/vector/bh;Ljava/lang/String;LG/m;IZFFLcom/google/android/maps/driveabout/vector/aw;Lcom/google/android/maps/driveabout/vector/bF;Lcom/google/android/maps/driveabout/vector/bk;)Lcom/google/android/maps/driveabout/vector/aP;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/ci;->b(Lcom/google/android/maps/driveabout/vector/S;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p4, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/S;->b_(Z)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    move v4, v0

    goto :goto_2

    :cond_3
    return-void
.end method

.method private a(J)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot run labeler loop until all previous labels have either been copied into new label table or destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->j:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/d;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v7, v7}, Lcom/google/android/maps/driveabout/vector/ci;->a(LG/d;Lcom/google/android/maps/driveabout/vector/bh;ZZ)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->j:Ljava/util/Iterator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->j:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->r:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ci;->p:I

    if-ge v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->y:Z

    if-eqz v0, :cond_0

    iput-boolean v8, p0, Lcom/google/android/maps/driveabout/vector/ci;->y:Z

    move v0, v7

    :goto_0
    return v0

    :cond_2
    move v1, v8

    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->i:Lcom/google/android/maps/driveabout/vector/bL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bL;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->r:I

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ci;->p:I

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->k:Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ci;->l:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/S;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/S;->j()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ci;->i:Lcom/google/android/maps/driveabout/vector/bL;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bL;->b()Lcom/google/android/maps/driveabout/vector/aG;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/aG;->b()I

    move-result v2

    if-ge v0, v2, :cond_c

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->y:Z

    if-eqz v0, :cond_4

    iput-boolean v8, p0, Lcom/google/android/maps/driveabout/vector/ci;->y:Z

    move v0, v7

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v1, 0x1

    if-lez v1, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-ltz v0, :cond_5

    move v0, v7

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->i:Lcom/google/android/maps/driveabout/vector/bL;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bL;->a()Lcom/google/android/maps/driveabout/vector/aG;

    move-result-object v0

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ci;->i:Lcom/google/android/maps/driveabout/vector/bL;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bL;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ci;->i:Lcom/google/android/maps/driveabout/vector/bL;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bL;->b()Lcom/google/android/maps/driveabout/vector/aG;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/aG;->b()I

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aG;->b()I

    move-result v4

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ci;->i:Lcom/google/android/maps/driveabout/vector/bL;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bL;->a()Lcom/google/android/maps/driveabout/vector/aG;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_8

    invoke-static {}, Lj/u;->a()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aG;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aG;->a()LG/d;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aG;->c()Lcom/google/android/maps/driveabout/vector/bh;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/google/android/maps/driveabout/vector/ci;->a(LG/d;Lcom/google/android/maps/driveabout/vector/bh;)Lcom/google/android/maps/driveabout/vector/S;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    new-instance v0, Lcom/google/android/maps/driveabout/vector/w;

    invoke-direct {v0, p0, v3}, Lcom/google/android/maps/driveabout/vector/w;-><init>(Lcom/google/android/maps/driveabout/vector/ci;Ljava/util/HashMap;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aG;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ci;->r:I

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/ci;->p:I

    if-lt v1, v4, :cond_b

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ci;->k:Ljava/util/ArrayList;

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/ci;->l:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/S;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/S;->j()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aG;->b()I

    move-result v4

    if-lt v1, v4, :cond_b

    :cond_a
    move v1, v2

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aG;->a()LG/d;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aG;->c()Lcom/google/android/maps/driveabout/vector/bh;

    move-result-object v0

    invoke-direct {p0, v1, v0, v8, v7}, Lcom/google/android/maps/driveabout/vector/ci;->a(LG/d;Lcom/google/android/maps/driveabout/vector/bh;ZZ)V

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->r:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ci;->p:I

    if-le v0, v1, :cond_9

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->l:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/ci;->b(I)V

    goto :goto_4

    :cond_c
    move v0, v8

    goto/16 :goto_0
.end method

.method private a(LG/Y;)Z
    .locals 2

    invoke-virtual {p1}, LG/Y;->a()LG/w;

    move-result-object v0

    invoke-virtual {v0}, LG/w;->b()I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ci;->s:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/S;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->g:F

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/S;->h()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/S;->g()Lcom/google/android/maps/driveabout/vector/bh;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/ci;->a(Lcom/google/android/maps/driveabout/vector/bh;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/S;->l()LG/d;

    move-result-object v0

    instance-of v0, v0, LG/Y;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/S;->l()LG/d;

    move-result-object v0

    check-cast v0, LG/Y;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/ci;->a(LG/Y;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/S;->i()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->g:F

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/S;->i()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/bh;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->z:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

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

.method private b(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/S;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/S;->b()F

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ci;->q:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ci;->r:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/ci;->r:I

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ci;->f:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/S;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ci;->k:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ci;->o:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/S;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->l:I

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/ci;->g()V

    :cond_1
    return-void
.end method

.method private b(Z)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/ci;->h()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/S;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ci;->h:LG/ab;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/S;->a(LG/ab;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/ci;->c(Lcom/google/android/maps/driveabout/vector/S;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/ci;->d(Lcom/google/android/maps/driveabout/vector/S;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ci;->f:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/S;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->n:I

    return-void
.end method

.method private b(J)Z
    .locals 5

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/ci;->a(J)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "#:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/ci;->A:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/ci;->A:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " T:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " E:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " numL:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ci;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "Labeler.runLabeler"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Las/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/S;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->o:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/S;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->f:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/S;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->e:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/S;->a(Lcom/google/android/maps/driveabout/vector/bF;)Z

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/ci;->c(Lcom/google/android/maps/driveabout/vector/S;)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ci;->e:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/vector/S;->b_(Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/ci;->c(Lcom/google/android/maps/driveabout/vector/S;)Z

    move-result v0

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->f:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/S;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/ci;->d(Lcom/google/android/maps/driveabout/vector/S;)V

    const/4 v0, 0x1

    goto :goto_1
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/S;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/S;->j()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/S;->ax_()Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v10

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/S;->d()LG/z;

    move-result-object v3

    invoke-virtual {v3}, LG/z;->b()LG/S;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v9

    :goto_1
    if-ge v6, v5, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/S;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/S;->d()LG/z;

    move-result-object v7

    invoke-virtual {v7}, LG/z;->b()LG/S;

    move-result-object v8

    invoke-virtual {v8, v4}, LG/S;->b(LG/z;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7, v3}, LG/z;->b(LG/z;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/S;->ax_()Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v10

    :goto_2
    if-gt v2, v7, :cond_0

    if-ne v2, v7, :cond_4

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/S;->j()I

    move-result v0

    if-le v1, v0, :cond_4

    :cond_0
    invoke-direct {p0, v6}, Lcom/google/android/maps/driveabout/vector/ci;->b(I)V

    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_2
    move v2, v9

    goto :goto_0

    :cond_3
    move v7, v9

    goto :goto_2

    :cond_4
    move v0, v10

    :goto_3
    return v0

    :cond_5
    move v0, v9

    goto :goto_3
.end method

.method private d(Lcom/google/android/maps/driveabout/vector/S;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/S;->b()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ci;->q:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->r:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->l:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/S;->j()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->k:Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ci;->l:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/S;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/S;->j()I

    move-result v0

    if-ge v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->l:I

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->o:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/S;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private f()F
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->e:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v0

    const/high16 v1, 0x4168

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->b:Lcom/google/android/maps/driveabout/vector/ak;

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/ak;->c:I

    int-to-float v0, v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ci;->e:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bF;->f()F

    move-result v1

    mul-float/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->b:Lcom/google/android/maps/driveabout/vector/ak;

    iget v0, v0, Lcom/google/android/maps/driveabout/vector/ak;->b:I

    int-to-float v0, v0

    goto :goto_0
.end method

.method private g()V
    .locals 5

    const v0, 0x7fffffff

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/ci;->l:I

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/S;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/S;->j()I

    move-result v3

    if-ge v3, v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/S;->b()F

    move-result v3

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/ci;->q:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/S;->j()I

    move-result v0

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/ci;->l:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private h()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->v:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/S;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ci;->f:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/S;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->l:I

    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/ci;->v:Z

    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/ci;->w:Z

    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/ci;->x:Z

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->m:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ci;->k:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/ci;->m:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->k:Ljava/util/ArrayList;

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->n:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ci;->l:I

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/ci;->n:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->l:I

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/ci;->r:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->o:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lt/w;->c()Lt/w;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lt/w;->a(Ljava/lang/String;Lt/ae;)Lt/aB;

    move-result-object v0

    invoke-virtual {v0}, Lt/aB;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lt/aB;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v2

    goto :goto_0
.end method

.method public a()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/S;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/S;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ci;->f:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/S;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->a:Lcom/google/android/maps/driveabout/vector/bk;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bk;->a()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->c:Lcom/google/android/maps/driveabout/vector/bi;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bi;->a()V

    return-void
.end method

.method public a(I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/ci;->w:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/ci;->x:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/ci;->x:Z

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/vector/ci;->b(Z)V

    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/ci;->w:Z

    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/ci;->x:Z

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/ci;->b(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->u:Z

    return-void
.end method

.method public a(LG/ab;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/ci;->h()V

    invoke-virtual {p1}, LG/ab;->a()LG/R;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v5

    :goto_0
    if-ge v3, v2, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/S;

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/ci;->e:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/S;->a(Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/S;->f()LG/S;

    move-result-object v4

    invoke-virtual {v1, v4}, LG/R;->b(LG/z;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/ci;->d(Lcom/google/android/maps/driveabout/vector/S;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/ci;->f:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/S;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->n:I

    iput-boolean v6, p0, Lcom/google/android/maps/driveabout/vector/ci;->w:Z

    iput-boolean v6, p0, Lcom/google/android/maps/driveabout/vector/ci;->x:Z

    iput-boolean v5, p0, Lcom/google/android/maps/driveabout/vector/ci;->u:Z

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/ak;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->b:Lcom/google/android/maps/driveabout/vector/ak;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ci;->b:Lcom/google/android/maps/driveabout/vector/ak;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/ci;->b()V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;LG/ab;ILjava/util/Iterator;Lcom/google/android/maps/driveabout/vector/bL;Ljava/util/Set;I)V
    .locals 11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move/from16 v0, p7

    int-to-long v0, v0

    move-wide v4, v0

    add-long/2addr v2, v4

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ci;->e:Lcom/google/android/maps/driveabout/vector/bF;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/vector/ci;->j:Ljava/util/Iterator;

    move-object/from16 v0, p5

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/ci;->i:Lcom/google/android/maps/driveabout/vector/bL;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/ci;->h:LG/ab;

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/ci;->s:I

    move-object/from16 v0, p6

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/ci;->z:Ljava/util/Set;

    new-instance v4, LG/k;

    invoke-virtual {p2}, LG/ab;->c()LG/z;

    move-result-object v5

    invoke-direct {v4, v5}, LG/k;-><init>(LG/z;)V

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/ci;->d:LG/k;

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/ci;->a(Lcom/google/android/maps/driveabout/vector/bF;)I

    move-result v4

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/ci;->p:I

    if-eq v4, v5, :cond_0

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/ci;->p:I

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/ci;->a:Lcom/google/android/maps/driveabout/vector/bk;

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v5, v4}, Lcom/google/android/maps/driveabout/vector/bk;->a(I)V

    :cond_0
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/ci;->e:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bF;->f()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/ci;->e:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/bF;->f()F

    move-result v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x4348

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/ci;->q:F

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/ci;->h()V

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/ci;->m:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/ci;->e:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v6}, Lcom/google/android/maps/driveabout/vector/bF;->k()F

    move-result v6

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/ci;->e:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/bF;->f()F

    move-result v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Lcom/google/android/maps/driveabout/vector/cv;->a(D)F

    move-result v7

    add-float/2addr v6, v7

    iput v6, p0, Lcom/google/android/maps/driveabout/vector/ci;->g:F

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/ci;->s:I

    invoke-static {}, Lad/b;->c()Lcom/google/android/maps/driveabout/vector/R;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/ci;->e:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/bF;->b()LG/Q;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v7, v8, v9}, Lcom/google/android/maps/driveabout/vector/R;->a(LG/Q;B)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/maps/driveabout/vector/l;->b()I

    move-result v7

    if-ge v6, v7, :cond_2

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, p0, Lcom/google/android/maps/driveabout/vector/ci;->t:Z

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_6

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/ci;->m:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/maps/driveabout/vector/S;

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/ci;->a(Lcom/google/android/maps/driveabout/vector/S;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/ci;->f:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {p1, v7}, Lcom/google/android/maps/driveabout/vector/S;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/ci;->e:Lcom/google/android/maps/driveabout/vector/bF;

    invoke-virtual {p1, v7}, Lcom/google/android/maps/driveabout/vector/S;->a(Lcom/google/android/maps/driveabout/vector/bF;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/ci;->h:LG/ab;

    invoke-virtual {p1, v7}, Lcom/google/android/maps/driveabout/vector/S;->a(LG/ab;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/ci;->c(Lcom/google/android/maps/driveabout/vector/S;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/ci;->d(Lcom/google/android/maps/driveabout/vector/S;)V

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/ci;->f:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {p1, v7}, Lcom/google/android/maps/driveabout/vector/S;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/ci;->f:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {p1, v7}, Lcom/google/android/maps/driveabout/vector/S;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/maps/driveabout/vector/S;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/S;->l()LG/d;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/S;->g()Lcom/google/android/maps/driveabout/vector/bh;

    move-result-object v8

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/S;->ax_()Z

    move-result v9

    const/4 v10, 0x0

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/google/android/maps/driveabout/vector/ci;->a(LG/d;Lcom/google/android/maps/driveabout/vector/bh;ZZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/ci;->m:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, -0x1

    iput v4, p0, Lcom/google/android/maps/driveabout/vector/ci;->n:I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/ci;->w:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/ci;->x:Z

    invoke-direct {p0, v2, v3}, Lcom/google/android/maps/driveabout/vector/ci;->b(J)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/ci;->u:Z

    return-void
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->a:Lcom/google/android/maps/driveabout/vector/bk;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bk;->a()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->c:Lcom/google/android/maps/driveabout/vector/bi;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bi;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->a:Lcom/google/android/maps/driveabout/vector/bk;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bk;->b()V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->v:Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->u:Z

    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ci;->y:Z

    return-void
.end method

.method public e()Lcom/google/android/maps/driveabout/vector/ba;
    .locals 2

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ba;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ci;->k:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/ba;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method
