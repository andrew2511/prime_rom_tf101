.class public Lcom/google/android/maps/driveabout/app/NavigationMapView;
.super Lcom/google/android/maps/driveabout/vector/VectorMapView;


# instance fields
.field private volatile b:Laa/E;

.field private volatile c:Landroid/location/Location;

.field private d:[LF/M;

.field private e:LF/M;

.field private f:Lcom/google/android/maps/driveabout/app/V;

.field private g:[Lcom/google/android/maps/driveabout/app/V;

.field private final h:Lcom/google/android/maps/driveabout/vector/bS;

.field private final i:Lcom/google/android/maps/driveabout/app/ck;

.field private final j:Lcom/google/android/maps/driveabout/vector/bq;

.field private k:Lcom/google/android/maps/driveabout/vector/bK;

.field private final l:Lcom/google/android/maps/driveabout/vector/bq;

.field private final m:Lcom/google/android/maps/driveabout/vector/cl;

.field private n:Lcom/google/android/maps/driveabout/app/aY;

.field private o:Lcom/google/android/maps/driveabout/vector/bV;

.field private final p:Lcom/google/android/maps/driveabout/vector/cn;

.field private q:Lcom/google/android/maps/driveabout/app/aI;

.field private r:Lcom/google/android/maps/driveabout/app/cZ;

.field private final s:Landroid/graphics/Bitmap;

.field private t:Landroid/graphics/Bitmap;

.field private u:Landroid/graphics/Bitmap;

.field private v:Lcom/google/android/maps/driveabout/vector/ae;

.field private w:Lcom/google/android/maps/driveabout/app/T;

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->x:I

    iput v7, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->y:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e6

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/p;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->s:Landroid/graphics/Bitmap;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bK;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/driveabout/vector/aW;->a:Lcom/google/android/maps/driveabout/vector/aW;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bK;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/vector/aW;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k:Lcom/google/android/maps/driveabout/vector/bK;

    const v0, 0x7a120

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(I)Lcom/google/android/maps/driveabout/vector/bq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->l:Lcom/google/android/maps/driveabout/vector/bq;

    invoke-virtual {p0, v5}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Z)Lcom/google/android/maps/driveabout/vector/bS;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->h:Lcom/google/android/maps/driveabout/vector/bS;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->h:Lcom/google/android/maps/driveabout/vector/bS;

    new-array v1, v7, [Lcom/google/android/maps/driveabout/vector/aM;

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/aM;->a()Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/google/android/maps/driveabout/vector/ao;->a(Z)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/ao;->a()Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    const v3, 0x7f020142

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/ao;->a(I)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/ao;->c()Lcom/google/android/maps/driveabout/vector/aM;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/aM;->a()Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/google/android/maps/driveabout/vector/ao;->a(Z)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/ao;->b()Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    const v3, 0x7f020141

    invoke-virtual {v2, v3}, Lcom/google/android/maps/driveabout/vector/ao;->a(I)Lcom/google/android/maps/driveabout/vector/ao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/ao;->c()Lcom/google/android/maps/driveabout/vector/aM;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bS;->a([Lcom/google/android/maps/driveabout/vector/aM;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->h:Lcom/google/android/maps/driveabout/vector/bS;

    const v2, 0x7f09000a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v3, 0x7f0a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v4, 0x7f0a0001

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/maps/driveabout/vector/bS;->a(FII)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->h:Lcom/google/android/maps/driveabout/vector/bS;

    const v1, 0x64190

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bS;->b(I)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/ck;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->h:Lcom/google/android/maps/driveabout/vector/bS;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->p()Lac/p;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/ck;-><init>(Lcom/google/android/maps/driveabout/vector/bS;Lac/p;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->i:Lcom/google/android/maps/driveabout/app/ck;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cl;

    const v1, 0x31128

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cl;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m:Lcom/google/android/maps/driveabout/vector/cl;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m:Lcom/google/android/maps/driveabout/vector/cl;

    const v1, -0x7f000001

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cl;->b(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m:Lcom/google/android/maps/driveabout/vector/cl;

    const/4 v1, 0x3

    const/high16 v2, 0x6000

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cl;->a(II)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/bV;->a(Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/cn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->p:Lcom/google/android/maps/driveabout/vector/cn;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k:Lcom/google/android/maps/driveabout/vector/bK;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->l:Lcom/google/android/maps/driveabout/vector/bq;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->h:Lcom/google/android/maps/driveabout/vector/bS;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    invoke-virtual {p0, v5}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->j:Lcom/google/android/maps/driveabout/vector/bq;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->l:Lcom/google/android/maps/driveabout/vector/bq;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/vector/bq;->a(I)V

    invoke-virtual {p0, v7}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->d(I)V

    invoke-virtual {p0, v6}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setFocusable(Z)V

    invoke-virtual {p0, v6}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, v6}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setEnabled(Z)V

    invoke-virtual {p0, v5}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->e(Z)V

    invoke-virtual {p0, v5}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f(Z)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setVisibility(I)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/ak;->q:Lcom/google/android/maps/driveabout/vector/ak;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/ak;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->t()Lcom/google/android/maps/driveabout/vector/ak;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/ak;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->x()V

    return-void
.end method

.method private a(LF/y;LF/y;LG/m;)LG/i;
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, LF/y;->v()LF/C;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LF/C;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, LF/C;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, LF/y;->x()I

    move-result v1

    invoke-virtual {p2}, LF/y;->x()I

    move-result v2

    new-instance v3, LG/o;

    invoke-direct {v3, p3, v1, v2}, LG/o;-><init>(LG/m;II)V

    invoke-virtual {v3}, LG/o;->e()LG/m;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0}, LF/C;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v3, v5

    invoke-virtual {v0}, LF/C;->d()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, LF/C;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-virtual {v0}, LF/C;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    :cond_2
    new-array v8, v5, [I

    new-instance v0, LG/i;

    invoke-static {}, LG/r;->a()LG/r;

    move-result-object v4

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v8}, LG/i;-><init>(LG/m;[Ljava/lang/String;[Ljava/lang/String;LG/r;III[I)V

    goto :goto_0
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/cA;)Landroid/view/View;
    .locals 4

    const/16 v3, 0x20

    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const v0, 0x7f03002c

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    const v0, 0x7f0f00b1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/cA;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0f00b2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/cA;->o()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/cA;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-object p0

    :cond_1
    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/cA;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private y()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->y:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/V;

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/V;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/V;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/app/V;->a_(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(LF/M;)V
    .locals 6

    invoke-virtual {p1}, LF/M;->o()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dcccccd

    mul-float/2addr v0, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, LF/M;->j()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, LF/M;->a(I)LF/y;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, LF/M;->a(I)LF/y;

    move-result-object v4

    invoke-virtual {v4}, LF/y;->e()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v5, v0

    if-lez v5, :cond_0

    invoke-virtual {p1}, LF/M;->m()LG/m;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(LF/y;LF/y;LG/m;)LG/i;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(LF/M;LF/y;Lcom/google/android/maps/driveabout/vector/bA;)V
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/aY;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/app/aY;

    invoke-direct {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/aY;-><init>(LF/M;LF/y;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/aY;

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/aY;

    invoke-virtual {v0, p3}, Lcom/google/android/maps/driveabout/app/aY;->a(Lcom/google/android/maps/driveabout/vector/bA;)V

    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->x:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/aY;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/aY;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/aY;->a(LF/M;LF/y;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/aY;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/cr;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/aY;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/cr;)V

    goto :goto_1
.end method

.method public a(LF/M;[LF/M;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->e:LF/M;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->d:[LF/M;

    invoke-static {p2, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->h(Z)V

    if-eqz p2, :cond_0

    array-length v0, p2

    new-array v0, v0, [Lcom/google/android/maps/driveabout/app/V;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/V;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->d:[LF/M;

    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/V;

    new-instance v2, Lcom/google/android/maps/driveabout/app/V;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    aget-object v4, p2, v0

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/app/V;-><init>(Landroid/content/res/Resources;LF/M;)V

    aput-object v2, v1, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->x:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->x:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    :cond_2
    aget-object v1, p2, v0

    if-ne v1, p1, :cond_3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/V;

    aget-object v1, v1, v0

    const v2, 0x31510

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/app/V;->b(I)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/V;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    aget-object v1, p2, v0

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/V;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/V;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->e:LF/M;

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->y()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    new-instance v0, Lcom/google/android/maps/driveabout/app/aX;

    invoke-virtual {p1}, LF/M;->l()LF/u;

    move-result-object v1

    invoke-virtual {v1}, LF/u;->e()LG/y;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->s:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0b0006

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p1}, LF/M;->l()LF/u;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/maps/driveabout/app/t;->a(Landroid/content/Context;LF/u;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/aX;-><init>(LG/y;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->v:Lcom/google/android/maps/driveabout/vector/ae;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->l:Lcom/google/android/maps/driveabout/vector/bq;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->v:Lcom/google/android/maps/driveabout/vector/ae;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bq;->a(Lcom/google/android/maps/driveabout/vector/ae;)V

    goto/16 :goto_0
.end method

.method public a(Laa/E;Z)V
    .locals 12

    const/4 v3, 0x0

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->h:Lcom/google/android/maps/driveabout/vector/bS;

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/vector/bS;->d(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b:Laa/E;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->i:Lcom/google/android/maps/driveabout/app/ck;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/ck;->a(Laa/E;)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b:Laa/E;

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->c:Landroid/location/Location;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->j:Lcom/google/android/maps/driveabout/vector/bq;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->c:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, LG/Q;->a(DD)LG/Q;

    move-result-object v9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->c:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v0

    const/high16 v1, 0x44fa

    invoke-static {v0, v1}, LG/Q;->a(FF)LG/Q;

    move-result-object v0

    invoke-virtual {v9, v0}, LG/Q;->e(LG/Q;)LG/Q;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->j:Lcom/google/android/maps/driveabout/vector/bq;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bq;->h()V

    const/high16 v0, 0x7f09

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    const v0, 0x7f090001

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->t:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200b6

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/vector/p;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->t:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->u:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0200a5

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/vector/p;->e(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->u:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v11, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->j:Lcom/google/android/maps/driveabout/vector/bq;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ae;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->t:Landroid/graphics/Bitmap;

    const-string v6, ""

    const-string v7, ""

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/ae;-><init>(LG/Q;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v11, v0}, Lcom/google/android/maps/driveabout/vector/bq;->a(Lcom/google/android/maps/driveabout/vector/ae;)V

    const v0, 0x7f090002

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    const v0, 0x7f090003

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iget-object v10, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->j:Lcom/google/android/maps/driveabout/vector/bq;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ae;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->u:Landroid/graphics/Bitmap;

    const-string v6, ""

    const-string v7, ""

    move-object v1, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/ae;-><init>(LG/Q;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v10, v0}, Lcom/google/android/maps/driveabout/vector/bq;->a(Lcom/google/android/maps/driveabout/vector/ae;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->c()V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->u()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/T;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->w:Lcom/google/android/maps/driveabout/app/T;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/aI;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->q:Lcom/google/android/maps/driveabout/app/aI;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->r:Lcom/google/android/maps/driveabout/app/cZ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->r:Lcom/google/android/maps/driveabout/app/cZ;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/cr;)V

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/app/cZ;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->l:Lcom/google/android/maps/driveabout/vector/bq;

    const-string v2, "layers"

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/google/android/maps/driveabout/app/cZ;-><init>(Lcom/google/android/maps/driveabout/app/aI;Lcom/google/android/maps/driveabout/vector/VectorMapView;Lcom/google/android/maps/driveabout/vector/bq;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->r:Lcom/google/android/maps/driveabout/app/cZ;

    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->y:I

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/aI;->a(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->r:Lcom/google/android/maps/driveabout/app/cZ;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/aI;->a(Lcom/google/android/maps/driveabout/app/y;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->r:Lcom/google/android/maps/driveabout/app/cZ;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->q:Lcom/google/android/maps/driveabout/app/aI;

    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bA;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k:Lcom/google/android/maps/driveabout/vector/bK;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bK;->a(Lcom/google/android/maps/driveabout/vector/bA;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bD;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/bD;)V

    instance-of v0, p1, Lcom/google/android/maps/driveabout/app/aH;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/maps/driveabout/app/aH;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->i:Lcom/google/android/maps/driveabout/app/ck;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/aH;->a(Lcom/google/android/maps/driveabout/app/ck;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bm;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->p:Lcom/google/android/maps/driveabout/vector/cn;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cn;->a(Lcom/google/android/maps/driveabout/vector/bm;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cA;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/cA;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/cA;Landroid/view/View;)V

    return-void
.end method

.method public b(I)V
    .locals 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->o:Lcom/google/android/maps/driveabout/vector/bV;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const-string v1, "satellite"

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bV;->b(ILjava/lang/String;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/bV;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->o:Lcom/google/android/maps/driveabout/vector/bV;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->o:Lcom/google/android/maps/driveabout/vector/bV;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->b(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->o:Lcom/google/android/maps/driveabout/vector/bV;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->o:Lcom/google/android/maps/driveabout/vector/bV;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/cr;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->o:Lcom/google/android/maps/driveabout/vector/bV;

    goto :goto_0
.end method

.method public b(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k:Lcom/google/android/maps/driveabout/vector/bK;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/bK;->a(II)V

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/bm;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->p:Lcom/google/android/maps/driveabout/vector/cn;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cn;->b(Lcom/google/android/maps/driveabout/vector/bm;)V

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/cM;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->l:Lcom/google/android/maps/driveabout/vector/bq;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bq;->a(Lcom/google/android/maps/driveabout/vector/cM;)V

    return-void
.end method

.method public f(I)V
    .locals 7

    const v2, 0x249f0

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->x:I

    if-ne v0, v4, :cond_9

    if-eq p1, v4, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m:Lcom/google/android/maps/driveabout/vector/cl;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/cr;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k:Lcom/google/android/maps/driveabout/vector/bK;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    invoke-virtual {p0, v3}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->c(Z)V

    invoke-virtual {p0, v3}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->d(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/V;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/V;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/V;->b(I)V

    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/aY;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/aY;

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    :cond_0
    :goto_1
    iget v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->x:I

    if-ne v1, v5, :cond_2

    if-eq p1, v5, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m:Lcom/google/android/maps/driveabout/vector/cl;

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/cr;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/V;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/V;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/V;->b(I)V

    move v0, v3

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m:Lcom/google/android/maps/driveabout/vector/cl;

    const v2, 0x31128

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/cl;->c(I)V

    :cond_2
    iget v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->x:I

    if-eq v1, v4, :cond_4

    if-ne p1, v4, :cond_4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m:Lcom/google/android/maps/driveabout/vector/cl;

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k:Lcom/google/android/maps/driveabout/vector/bK;

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/cr;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/V;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/V;

    const v1, 0x31510

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/V;->b(I)V

    move v0, v3

    :cond_3
    invoke-virtual {p0, v6}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->c(Z)V

    invoke-virtual {p0, v6}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->d(Z)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n:Lcom/google/android/maps/driveabout/app/aY;

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/cr;)V

    :cond_4
    iget v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->x:I

    if-eq v1, v5, :cond_5

    if-ne p1, v5, :cond_5

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/V;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/V;

    const v1, 0x31510

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/V;->b(I)V

    move v0, v3

    :goto_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m:Lcom/google/android/maps/driveabout/vector/cl;

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    :cond_5
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/V;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/cr;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/V;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    :cond_6
    iput p1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->x:I

    return-void

    :cond_7
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->m:Lcom/google/android/maps/driveabout/vector/cl;

    const v2, 0x249ef

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/cl;->c(I)V

    goto :goto_2

    :cond_8
    move v0, v6

    goto :goto_0

    :cond_9
    move v0, v6

    goto :goto_1
.end method

.method public g(I)V
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->y:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->q:Lcom/google/android/maps/driveabout/app/aI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->q:Lcom/google/android/maps/driveabout/app/aI;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/aI;->a(I)V

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->p:Lcom/google/android/maps/driveabout/vector/cn;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/cr;)V

    :goto_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->p:Lcom/google/android/maps/driveabout/vector/cn;

    const/high16 v1, 0x41f0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cn;->a(F)V

    :goto_1
    iput p1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->y:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->y()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->p:Lcom/google/android/maps/driveabout/vector/cn;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->p:Lcom/google/android/maps/driveabout/vector/cn;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cn;->a(F)V

    goto :goto_1
.end method

.method public h(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/V;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/V;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/V;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/cr;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g:[Lcom/google/android/maps/driveabout/app/V;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f:Lcom/google/android/maps/driveabout/app/V;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->d:[LF/M;

    iput-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->e:LF/M;

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->v:Lcom/google/android/maps/driveabout/vector/ae;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->l:Lcom/google/android/maps/driveabout/vector/bq;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->v:Lcom/google/android/maps/driveabout/vector/ae;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bq;->b(Lcom/google/android/maps/driveabout/vector/ae;)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->v:Lcom/google/android/maps/driveabout/vector/ae;

    :cond_2
    return-void
.end method

.method public i(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b:Laa/E;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Laa/E;Z)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 8

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->w:Lcom/google/android/maps/driveabout/app/T;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->w:Lcom/google/android/maps/driveabout/app/T;

    move v1, p1

    move v2, p2

    move v5, v4

    move v6, v4

    invoke-interface/range {v0 .. v7}, Lcom/google/android/maps/driveabout/app/T;->a(IIFIIII)V

    :cond_0
    return-void
.end method

.method public x()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k:Lcom/google/android/maps/driveabout/vector/bK;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/cr;)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bK;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/maps/driveabout/vector/aW;->a:Lcom/google/android/maps/driveabout/vector/aW;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bK;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/vector/aW;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k:Lcom/google/android/maps/driveabout/vector/bK;

    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->x:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k:Lcom/google/android/maps/driveabout/vector/bK;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    :cond_0
    return-void
.end method
