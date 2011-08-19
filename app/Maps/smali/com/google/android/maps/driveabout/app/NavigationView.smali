.class public Lcom/google/android/maps/driveabout/app/NavigationView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/google/android/maps/driveabout/app/Q;


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Lcom/google/android/maps/driveabout/app/dq;

.field private C:Landroid/widget/RelativeLayout;

.field private D:Landroid/view/View;

.field private E:Landroid/view/View;

.field private F:Landroid/view/View;

.field private G:Landroid/view/View;

.field private H:Landroid/view/View;

.field private I:Landroid/view/View;

.field private J:Landroid/widget/ImageView;

.field private K:Landroid/view/View;

.field private L:Landroid/view/View;

.field private M:Ljava/lang/Runnable;

.field private N:J

.field private O:Landroid/widget/ImageView;

.field private P:Landroid/location/Location;

.field private Q:Z

.field private R:I

.field private final S:Lcom/google/android/maps/driveabout/app/t;

.field private T:Landroid/view/View$OnClickListener;

.field private U:Landroid/view/View$OnClickListener;

.field private final V:I

.field private W:Landroid/content/DialogInterface$OnClickListener;

.field private a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

.field private final b:Lcom/google/android/maps/driveabout/app/db;

.field private c:Landroid/widget/ListView;

.field private d:Lcom/google/android/maps/driveabout/app/NavigationImageView;

.field private e:Lcom/google/android/maps/driveabout/app/bo;

.field private f:Lcom/google/android/maps/driveabout/app/RouteSummaryView;

.field private g:Lcom/google/android/maps/driveabout/app/dq;

.field private h:Lcom/google/android/maps/driveabout/app/TopBarView;

.field private i:Landroid/view/ViewGroup;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View$OnClickListener;

.field private n:Landroid/view/View$OnClickListener;

.field private o:Landroid/view/View$OnClickListener;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/view/View;

.field private r:Landroid/view/ViewGroup;

.field private s:Landroid/view/ViewGroup;

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/view/View;

.field private y:Landroid/widget/ImageView;

.field private z:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->Q:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->R:I

    invoke-static {}, Lcom/google/android/maps/driveabout/app/t;->a()Lcom/google/android/maps/driveabout/app/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->S:Lcom/google/android/maps/driveabout/app/t;

    new-instance v0, Lcom/google/android/maps/driveabout/app/db;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/db;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->b:Lcom/google/android/maps/driveabout/app/db;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->V:I

    const-string v0, "/"

    iget v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->V:I

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/aN;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private A()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->z:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->D:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->G:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->H:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->I:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->E:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->F:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->O:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->K:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->L:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    return-void
.end method

.method private B()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->h()Lcom/google/android/maps/driveabout/vector/bD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->g()F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->floor(F)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->h()Lcom/google/android/maps/driveabout/vector/bD;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->k()Lcom/google/android/maps/driveabout/vector/bF;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bF;->b()LG/Q;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/bD;->a(LG/Q;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private C()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->h()Lcom/google/android/maps/driveabout/vector/bD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bD;->g()F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->h()Lcom/google/android/maps/driveabout/vector/bD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bD;->e()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private D()V
    .locals 3

    new-instance v0, Lcom/google/android/maps/driveabout/app/el;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/el;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->M:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->M:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/NavigationView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private E()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    const v0, 0x7f0f00b9

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f00ac

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    const v1, 0x7f0f00ae

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    const v2, 0x7f0f00af

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    const v2, 0x7f0f00b0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    const v2, 0x7f0f00ad

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->l:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/cC;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->l:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->j:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private F()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/TopBarView;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f090011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->V:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(II)V

    :cond_1
    return-void

    :cond_2
    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const v2, 0x7f090013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationView;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->T:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/NavigationView;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->U:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/app/NavigationView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->H:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/app/NavigationView;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->N:J

    return-wide v0
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/app/NavigationView;)Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->P:Landroid/location/Location;

    return-object v0
.end method

.method private f(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/TopBarView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->t:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->r:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->c(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->s:Landroid/view/ViewGroup;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/dD;->c(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->F()V

    return-void
.end method

.method private g(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->c:Landroid/widget/ListView;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->d:Lcom/google/android/maps/driveabout/app/NavigationImageView;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bo;->b()V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/bo;->a(I)V

    return-void
.end method

.method public a(IF)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/bo;->a(IF)V

    return-void
.end method

.method public a(II)V
    .locals 2

    const v0, 0x7f0b0044

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(IIILandroid/content/Intent;)V

    return-void
.end method

.method public a(IIILandroid/content/Intent;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/bo;

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/maps/driveabout/app/eh;

    invoke-direct {v5, p0, p4}, Lcom/google/android/maps/driveabout/app/eh;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/content/Intent;)V

    new-instance v6, Lcom/google/android/maps/driveabout/app/eg;

    invoke-direct {v6, p0, p4}, Lcom/google/android/maps/driveabout/app/eg;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/content/Intent;)V

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/bo;->a(IIIZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 2

    new-instance v0, Lcom/google/android/maps/driveabout/app/ef;

    invoke-direct {v0, p0, p3}, Lcom/google/android/maps/driveabout/app/ef;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {v1, p1, p2, v0}, Lcom/google/android/maps/driveabout/app/bo;->a(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public a(IIZ)V
    .locals 2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    const v1, 0x7f0200f2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    const v1, 0x7f02011b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    const v1, 0x7f02011c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    const v1, 0x7f02011d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    const v1, 0x7f02011f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    const v1, 0x7f02011e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/bo;->a(ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public a(IZIZ)V
    .locals 5

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->x:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->x:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->S:Lcom/google/android/maps/driveabout/app/t;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    mul-int/lit16 v3, p1, 0x3e8

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/t;->a(J)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->v:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->S:Lcom/google/android/maps/driveabout/app/t;

    invoke-virtual {v0, p1, v4}, Lcom/google/android/maps/driveabout/app/t;->a(IZ)Landroid/text/Spannable;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->x:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->x:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->v:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    if-ne p3, v2, :cond_2

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b003a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    :goto_2
    new-instance v1, Landroid/text/style/RelativeSizeSpan;

    const v2, 0x3f19999a

    invoke-direct {v1, v2}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->v:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0039

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->V:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->v:Landroid/widget/TextView;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->x:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->x:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public a(LF/M;LF/y;Lcom/google/android/maps/driveabout/vector/bA;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(LF/M;LF/y;Lcom/google/android/maps/driveabout/vector/bA;)V

    return-void
.end method

.method public a(LF/M;[LF/M;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(LF/M;[LF/M;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->f(I)V

    return-void
.end method

.method public a(LF/y;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->b:Lcom/google/android/maps/driveabout/app/db;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/db;->a(LF/y;)V

    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/bo;->a(Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/bo;->d(Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 7

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->P:Landroid/location/Location;

    move-object v0, p1

    check-cast v0, Laa/E;

    move-object v1, v0

    invoke-virtual {v1}, Laa/E;->g()LG/i;

    move-result-object v2

    invoke-virtual {v1}, Laa/E;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, LG/i;->d()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v2, v6}, LG/i;->c(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lt/w;->c()Lt/w;

    move-result-object v3

    invoke-virtual {v2, v6}, LG/i;->b(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/android/maps/driveabout/app/ek;

    invoke-direct {v5, p0, p1}, Lcom/google/android/maps/driveabout/app/ek;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/location/Location;)V

    invoke-virtual {v3, v4, v5}, Lt/w;->a(Ljava/lang/String;Lt/ae;)Lt/aB;

    move-result-object v3

    invoke-virtual {v3}, Lt/aB;->c()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lt/aB;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v6}, LG/i;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/google/android/maps/driveabout/app/dr;

    const/high16 v4, 0x3f80

    invoke-direct {v2, v1, v4}, Lcom/google/android/maps/driveabout/app/dr;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v4, 0x21

    invoke-virtual {v3, v2, v6, v1, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string v1, "\n"

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->z:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-static {v1, v3}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->z:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->S:Lcom/google/android/maps/driveabout/app/t;

    invoke-virtual {v2, v6}, LG/i;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/app/t;->a(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->z:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_0
.end method

.method public a(Landroid/location/Location;Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    check-cast p1, Laa/E;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Laa/E;Z)V

    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->d:Lcom/google/android/maps/driveabout/app/NavigationImageView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->K:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->L:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Lcom/google/android/maps/driveabout/app/cj;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/TopBarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->b()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->c()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->d()Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a(Lcom/google/android/maps/driveabout/app/cj;)V

    return-void
.end method

.method public a(Landroid/view/View$OnKeyListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public a(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->H:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/NavigationMapView;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->r:Landroid/view/ViewGroup;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/aI;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/app/aI;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/ay;Lcom/google/android/maps/driveabout/app/ay;IZZLcom/google/android/maps/driveabout/app/aR;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/bo;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/bo;->a(Lcom/google/android/maps/driveabout/app/ay;Lcom/google/android/maps/driveabout/app/ay;IZZLcom/google/android/maps/driveabout/app/aR;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/bX;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Lcom/google/android/maps/driveabout/app/bX;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->f(I)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/bX;LF/y;ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->g:Lcom/google/android/maps/driveabout/app/dq;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Lcom/google/android/maps/driveabout/app/bX;LF/y;ZZ)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->f(I)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->F()V

    return-void

    :cond_0
    move v0, p4

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/app/bo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/bo;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/K;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/K;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bA;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/bA;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bD;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/bD;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bm;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/bm;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cA;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/cA;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cM;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/cM;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->B:Lcom/google/android/maps/driveabout/app/dq;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dq;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/app/ej;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/maps/driveabout/app/ej;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->f(I)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->F()V

    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->x:Landroid/view/View;

    if-eqz p1, :cond_0

    const v1, 0x7f020122

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    :cond_0
    const v1, 0x7f020120

    goto :goto_0
.end method

.method public a(ZZZ)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, p1, p2, v2}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(ZZZ)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->L:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->B()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->K:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->C()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->L:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/dD;->b(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->K:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/dD;->b(Landroid/view/View;I)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->N:J

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->M:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->D()V

    :cond_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public a([LF/K;Lcom/google/android/maps/driveabout/app/dw;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/bo;->a([LF/K;Lcom/google/android/maps/driveabout/app/dw;)V

    return-void
.end method

.method public a([LF/u;ZZLcom/google/android/maps/driveabout/app/bf;)V
    .locals 3

    if-eqz p3, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/app/ei;

    invoke-direct {v0, p0, p4}, Lcom/google/android/maps/driveabout/app/ei;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Lcom/google/android/maps/driveabout/app/bf;)V

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/bo;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2, v0}, Lcom/google/android/maps/driveabout/app/bo;->a([LF/u;ILcom/google/android/maps/driveabout/app/bf;)V

    return-void

    :cond_0
    move-object v0, p4

    goto :goto_0
.end method

.method public a(LF/M;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->b:Lcom/google/android/maps/driveabout/app/db;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/db;->a(LF/M;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/io/OutputStream;)Z
    .locals 11

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getHeight()I

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v7}, Lcom/google/android/maps/driveabout/app/NavigationView;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->i()Landroid/graphics/Bitmap;

    move-result-object v8

    if-eqz v8, :cond_2

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/TopBarView;->getHeight()I

    move-result v1

    int-to-float v5, v1

    const/16 v1, 0x8

    new-array v1, v1, [F

    const/4 v3, 0x0

    const/4 v9, 0x0

    aput v9, v1, v3

    const/4 v3, 0x1

    const/4 v9, 0x0

    aput v9, v1, v3

    const/4 v3, 0x2

    const/4 v9, 0x0

    aput v9, v1, v3

    const/4 v3, 0x3

    aput v4, v1, v3

    const/4 v3, 0x4

    aput v2, v1, v3

    const/4 v3, 0x5

    const/4 v9, 0x0

    aput v9, v1, v3

    const/4 v3, 0x6

    aput v2, v1, v3

    const/4 v3, 0x7

    aput v4, v1, v3

    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v3, v9

    const/4 v9, 0x1

    add-float v10, v4, v5

    aput v10, v3, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput v10, v3, v9

    const/4 v9, 0x3

    aput v5, v3, v9

    const/4 v9, 0x4

    aput v2, v3, v9

    const/4 v9, 0x5

    add-float/2addr v4, v5

    aput v4, v3, v9

    const/4 v4, 0x6

    aput v2, v3, v4

    const/4 v2, 0x7

    aput v5, v3, v2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    new-instance v1, Landroid/graphics/ColorMatrix;

    const/16 v2, 0x14

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrix;-><init>([F)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v7, v8, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {v6, v0, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const/4 v0, 0x1

    goto/16 :goto_0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bo;->d()V

    return-void
.end method

.method public b(I)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->R:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->R:I

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->g(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/NavigationView;->g(I)Landroid/view/View;

    move-result-object v1

    if-eq v1, v0, :cond_2

    if-ne p1, v3, :cond_4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040006

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v0, :cond_1

    new-instance v3, Lcom/google/android/maps/driveabout/app/bs;

    invoke-direct {v3, v0}, Lcom/google/android/maps/driveabout/app/bs;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->f(I)V

    :cond_3
    iput p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->R:I

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->R:I

    if-ne v2, v3, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->c:Landroid/widget/ListView;

    const v2, 0x7f040009

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/view/View;I)V

    if-eqz v1, :cond_2

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    if-ne p1, v5, :cond_7

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    if-eq v0, v2, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    const v0, 0x7f040001

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/dD;->b(Landroid/view/View;I)V

    goto :goto_1

    :cond_7
    iget v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->R:I

    if-ne v2, v5, :cond_8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz v0, :cond_2

    const v2, 0x7f040002

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/view/View;I)V

    goto :goto_1

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public b(LF/M;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(LF/M;)V

    return-void
.end method

.method public b(LF/M;[LF/M;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(LF/M;[LF/M;)V

    return-void
.end method

.method public b(LF/y;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->d:Lcom/google/android/maps/driveabout/app/NavigationImageView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(LF/y;)V

    return-void
.end method

.method public b(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/bo;->c(Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public b(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->D:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/app/bX;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->f:Lcom/google/android/maps/driveabout/app/RouteSummaryView;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->a(LF/M;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->g:Lcom/google/android/maps/driveabout/app/dq;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dq;->a(I)V

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/bm;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(Lcom/google/android/maps/driveabout/vector/bm;)V

    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/cM;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(Lcom/google/android/maps/driveabout/vector/cM;)V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    const-string v0, "__route_status"

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->u:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->w:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Z)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/bo;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->W:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/bo;->a(Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g(I)V

    return-void
.end method

.method public c(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->W:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public c(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->E:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->p:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->p:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->p:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public c(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/bo;->a(Z)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bo;->p()V

    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->setVisibility(I)V

    return-void
.end method

.method public d(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->F:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public d(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->H:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->H:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->b(Landroid/view/View;I)V

    return-void
.end method

.method public e()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->B:Lcom/google/android/maps/driveabout/app/dq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dq;->a(Z)V

    return-void
.end method

.method public e(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b(I)V

    return-void
.end method

.method public e(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->J:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public e(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->H:Landroid/view/View;

    new-instance v1, Lcom/google/android/maps/driveabout/app/em;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/em;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->D:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->b(Landroid/view/View;I)V

    return-void
.end method

.method public f(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->I:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public f(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->I:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->I:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->b(Landroid/view/View;I)V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->D:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/view/View;I)V

    return-void
.end method

.method public g(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->G:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public g(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->J:Landroid/widget/ImageView;

    const v1, 0x7f0200cc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->J:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->b(Landroid/view/View;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->J:Landroid/widget/ImageView;

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->H:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/view/View;I)V

    return-void
.end method

.method public h(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->x:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public h(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->O:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->O:Landroid/widget/ImageView;

    const v1, 0x7f02013f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->O:Landroid/widget/ImageView;

    const v1, 0x7f0200f3

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->I:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/view/View;I)V

    return-void
.end method

.method public i(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->e()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public i(Z)V
    .locals 4

    const v3, 0x7f040002

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, v2, v2, p1}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(ZZZ)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->K:Landroid/view/View;

    if-eqz p1, :cond_1

    move v1, v3

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->L:Landroid/view/View;

    if-eqz p1, :cond_2

    move v1, v3

    :goto_1
    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->M:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->M:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->M:Ljava/lang/Runnable;

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public j()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->J:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/view/View;I)V

    return-void
.end method

.method public j(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->f()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public j(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/TopBarView;->b(Z)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->f(I)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->F()V

    return-void
.end method

.method public k()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->G:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->b(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->H:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->e(Landroid/view/View;I)V

    return-void
.end method

.method public k(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->g()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->T:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public k(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->h(Z)V

    return-void
.end method

.method public l()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->G:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->H:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->e(Landroid/view/View;I)V

    return-void
.end method

.method public l(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->U:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public l(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->g(Z)V

    return-void
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->E:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->b(Landroid/view/View;I)V

    return-void
.end method

.method public m(Landroid/view/View$OnClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->o:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->l:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public m(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->i(Z)V

    return-void
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->E:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/view/View;I)V

    return-void
.end method

.method public n(Landroid/view/View$OnClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->m:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->j:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->F:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->b(Landroid/view/View;I)V

    return-void
.end method

.method public o(Landroid/view/View$OnClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->n:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->k:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->k:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0f00ba

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->s:Landroid/view/ViewGroup;

    const v0, 0x7f0f00bd

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->c:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->b:Lcom/google/android/maps/driveabout/app/db;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0f00ce

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/TopBarView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    const v0, 0x7f0f00bf

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f00c1

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Landroid/widget/TextView;Landroid/widget/TextView;)V

    const v0, 0x7f0f00bb

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->t:Landroid/view/View;

    const v0, 0x7f0f00be

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->p:Landroid/widget/TextView;

    const v0, 0x7f0f00c3

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->q:Landroid/view/View;

    const v0, 0x7f0f00f0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->u:Landroid/view/View;

    const v0, 0x7f0f00c2

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/RouteSummaryView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->f:Lcom/google/android/maps/driveabout/app/RouteSummaryView;

    new-instance v0, Lcom/google/android/maps/driveabout/app/dq;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->f:Lcom/google/android/maps/driveabout/app/RouteSummaryView;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/maps/driveabout/app/dq;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->g:Lcom/google/android/maps/driveabout/app/dq;

    const v0, 0x7f0f00f1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->x:Landroid/view/View;

    const v0, 0x7f0f00f2

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->y:Landroid/widget/ImageView;

    const v0, 0x7f0f00f3

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->v:Landroid/widget/TextView;

    const v0, 0x7f0f00f4

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->z:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const v0, 0x7f0f00f5

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->w:Landroid/widget/TextView;

    const v0, 0x7f0f00cd

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->A:Landroid/widget/TextView;

    new-instance v0, Lcom/google/android/maps/driveabout/app/dq;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->A:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/maps/driveabout/app/dq;-><init>(Lcom/google/android/maps/driveabout/app/NavigationView;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->B:Lcom/google/android/maps/driveabout/app/dq;

    const v0, 0x7f0f00bc

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/NavigationImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->d:Lcom/google/android/maps/driveabout/app/NavigationImageView;

    const v0, 0x7f0f00c4

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->C:Landroid/widget/RelativeLayout;

    const v0, 0x7f0f00c5

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->D:Landroid/view/View;

    const v0, 0x7f0f00c8

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->G:Landroid/view/View;

    const v0, 0x7f0f00c9

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->E:Landroid/view/View;

    const v0, 0x7f0f00ca

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->F:Landroid/view/View;

    const v0, 0x7f0f00cb

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->H:Landroid/view/View;

    const v0, 0x7f0f0094

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->I:Landroid/view/View;

    const v0, 0x7f0f00cc

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->J:Landroid/widget/ImageView;

    const v0, 0x7f0f00c7

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->K:Landroid/view/View;

    const v0, 0x7f0f00c6

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->L:Landroid/view/View;

    const v0, 0x7f0f00c0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->O:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->A()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "User interaction"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/i;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->Q:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->V:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->z:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setMaxWidth(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->Q:Z

    :cond_1
    return-void
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->F:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/view/View;I)V

    return-void
.end method

.method public p(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->f:Lcom/google/android/maps/driveabout/app/RouteSummaryView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/RouteSummaryView;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public q()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method

.method public r()V
    .locals 3

    const/4 v0, 0x4

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(II)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->q:Landroid/view/View;

    const v2, 0x7f040005

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->C:Landroid/widget/RelativeLayout;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/dD;->d(Landroid/view/View;I)V

    return-void
.end method

.method public s()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->a(II)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->q:Landroid/view/View;

    const v2, 0x7f04000a

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/dD;->b(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->C:Landroid/widget/RelativeLayout;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/dD;->d(Landroid/view/View;I)V

    return-void
.end method

.method public t()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->O:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public u()V
    .locals 4

    const/16 v1, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/TopBarView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->h:Lcom/google/android/maps/driveabout/app/TopBarView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->E()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->V:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->r:Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/dD;->c(Landroid/view/View;I)V

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->s:Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/dD;->c(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/NavigationView;->F()V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->r:Landroid/view/ViewGroup;

    invoke-static {v1, v3}, Lcom/google/android/maps/driveabout/app/dD;->c(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public v()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->g:Lcom/google/android/maps/driveabout/app/dq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dq;->a(Z)V

    return-void
.end method

.method public w()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->n()V

    return-void
.end method

.method public x()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationMapView;->b()V

    return-void
.end method

.method public y()Lcom/google/android/maps/driveabout/app/NavigationMapView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->a:Lcom/google/android/maps/driveabout/app/NavigationMapView;

    return-object v0
.end method

.method public z()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/NavigationView;->e:Lcom/google/android/maps/driveabout/app/bo;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bo;->h()V

    return-void
.end method
