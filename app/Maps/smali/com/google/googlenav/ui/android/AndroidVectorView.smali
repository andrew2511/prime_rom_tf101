.class public Lcom/google/googlenav/ui/android/AndroidVectorView;
.super Lcom/google/googlenav/ui/android/BaseAndroidView;


# instance fields
.field private e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

.field private f:LaK/i;

.field private final g:Lcom/google/android/maps/driveabout/vector/aU;

.field private final h:Lcom/google/android/maps/driveabout/vector/bl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/BaseAndroidView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/google/googlenav/ui/android/n;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/n;-><init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->g:Lcom/google/android/maps/driveabout/vector/aU;

    new-instance v0, Lcom/google/googlenav/ui/android/o;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/o;-><init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->h:Lcom/google/android/maps/driveabout/vector/bl;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/AndroidVectorView;)LaK/i;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:LaK/i;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/android/AndroidVectorView;)Lcom/google/android/maps/driveabout/vector/VectorMapView;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    return-object v0
.end method


# virtual methods
.method public a(IFFLcom/google/android/maps/driveabout/vector/aw;)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->t()Lcom/google/android/maps/driveabout/vector/ak;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/vector/ak;->a(Lcom/google/android/maps/driveabout/vector/ak;IFFLcom/google/android/maps/driveabout/vector/aw;)Lcom/google/android/maps/driveabout/vector/ak;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/ak;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/android/w;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iput-object p1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/w;

    new-instance v0, Lcom/google/googlenav/ui/android/y;

    invoke-direct {v0, p1}, Lcom/google/googlenav/ui/android/y;-><init>(Lcom/google/googlenav/android/w;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->c:Lcom/google/googlenav/ui/android/y;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0247

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/google/googlenav/android/w;->g()Lf/v;

    move-result-object v0

    check-cast v0, LaK/j;

    new-instance v1, Lcom/google/googlenav/ui/android/w;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->a:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/google/googlenav/ui/android/w;-><init>(Landroid/content/Context;LaK/j;Lcom/google/googlenav/ui/android/n;)V

    iput-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->g:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->h:Lcom/google/android/maps/driveabout/vector/bl;

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/bl;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/android/AndroidVectorView;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, v1}, LaK/j;->a(Lcom/google/android/maps/driveabout/vector/bO;)V

    invoke-virtual {p1}, Lcom/google/googlenav/android/w;->h()Lf/Y;

    move-result-object v1

    check-cast v1, LaK/i;

    iput-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:LaK/i;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:LaK/i;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->p()F

    move-result v2

    invoke-virtual {v1, v2}, LaK/i;->a(F)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:LaK/i;

    invoke-virtual {v0}, LaK/j;->d()Lf/h;

    move-result-object v2

    invoke-virtual {v0}, LaK/j;->c()Lf/l;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, LaK/i;->e(Lf/h;Lf/l;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->f:LaK/i;

    const/high16 v1, 0x4248

    invoke-virtual {v0, v1}, LaK/i;->b(F)V

    const/16 v0, 0xf

    const-string v1, "labelsonly"

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bV;->a(ILjava/lang/String;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/bV;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    const/16 v0, 0x16

    invoke-static {v0}, Lf/l;->b(I)Lf/l;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->p()F

    move-result v1

    invoke-static {v0, v1}, LaK/i;->a(Lf/l;F)F

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/bD;->b(F)V

    invoke-virtual {p1}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object v0

    check-cast v0, Lam/m;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, v1}, Lam/m;->a(Lcom/google/android/maps/driveabout/vector/VectorMapView;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    new-instance v1, LM/c;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, LM/c;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(LM/d;)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/maps/driveabout/vector/aW;->b:Lcom/google/android/maps/driveabout/vector/aW;

    :goto_0
    new-instance v1, Lcom/google/android/maps/driveabout/vector/bK;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/bK;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/vector/aW;)V

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->ar()I

    move-result v0

    invoke-virtual {v1, v5, v0}, Lcom/google/android/maps/driveabout/vector/bK;->a(II)V

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    new-instance v2, Lcom/google/googlenav/ui/android/l;

    invoke-direct {v2, p0, v1}, Lcom/google/googlenav/ui/android/l;-><init>(Lcom/google/googlenav/ui/android/AndroidVectorView;Lcom/google/android/maps/driveabout/vector/bK;)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aV;->a(Lcom/google/googlenav/ui/aO;)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09003b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f09003c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/bK;->a(II)V

    :cond_0
    invoke-virtual {v1, v4}, Lcom/google/android/maps/driveabout/vector/bK;->b(Z)V

    new-instance v0, Lcom/google/googlenav/ui/android/m;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/m;-><init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/bK;->a(Lcom/google/android/maps/driveabout/vector/bA;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/cr;)V

    invoke-static {}, Lac/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_1
    invoke-static {}, Lcom/google/googlenav/d;->L()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_2
    invoke-virtual {p0, v4}, Lcom/google/googlenav/ui/android/AndroidVectorView;->setFocusable(Z)V

    invoke-virtual {p0, v4}, Lcom/google/googlenav/ui/android/AndroidVectorView;->setFocusableInTouchMode(Z)V

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/bc;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030054

    invoke-virtual {v0, v1, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const v0, 0x7f0f0146

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/android/LasagneView;

    invoke-static {}, Lau/e;->a()Lau/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/LasagneView;->c(Lau/e;)V

    invoke-static {}, LH/f;->a()LH/f;

    move-result-object v0

    invoke-virtual {v0, p0}, LH/f;->a(LH/o;)V

    :cond_3
    return-void

    :cond_4
    sget-object v0, Lcom/google/android/maps/driveabout/vector/aW;->a:Lcom/google/android/maps/driveabout/vector/aW;

    goto/16 :goto_0
.end method

.method public a(Lf/h;Landroid/view/View;Lx/S;Lx/U;)V
    .locals 9

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/ae;

    invoke-virtual {p1}, Lf/h;->b()I

    move-result v1

    invoke-virtual {p1}, Lf/h;->d()I

    move-result v3

    invoke-static {v1, v3}, LG/Q;->b(II)LG/Q;

    move-result-object v1

    move-object v3, v2

    move v5, v4

    move-object v6, v2

    move-object v7, v2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/ae;-><init>(LG/Q;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    new-instance v2, Lcom/google/googlenav/ui/android/k;

    invoke-direct {v2, p0, p4, p3}, Lcom/google/googlenav/ui/android/k;-><init>(Lcom/google/googlenav/ui/android/AndroidVectorView;Lx/U;Lx/S;)V

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/K;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v1, v0, p2}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/cA;Landroid/view/View;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->q()V

    return-void
.end method

.method public d()V
    .locals 2

    invoke-super {p0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->d()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->g()V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/AndroidVectorView;->postInvalidateDelayed(J)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ui/android/AndroidVectorView;->postInvalidateDelayed(J)V

    return-void
.end method

.method public e()V
    .locals 1

    invoke-super {p0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->e()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->d()V

    return-void
.end method

.method public f()V
    .locals 3

    invoke-super {p0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->f()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0247

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    new-instance v1, Lcom/google/googlenav/ui/android/aa;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/ui/android/aa;-><init>(Lcom/google/googlenav/ui/android/AndroidVectorView;Lcom/google/googlenav/ui/android/n;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->a(Lcom/google/android/maps/driveabout/vector/aj;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->v()V

    return-void
.end method

.method public i()V
    .locals 1

    invoke-super {p0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->i()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object p0

    check-cast p0, Lam/m;

    invoke-virtual {p0}, Lam/m;->f()V

    return-void
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->e()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/w;

    invoke-virtual {v0}, Lcom/google/googlenav/android/w;->i()Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->au()Li/aE;

    move-result-object p0

    check-cast p0, Lam/m;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lam/m;->a(Lcom/google/android/maps/driveabout/vector/VectorMapView;)V

    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->f()V

    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->n()V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/AndroidVectorView;->e:Lcom/google/android/maps/driveabout/vector/VectorMapView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/VectorMapView;->s()V

    return-void
.end method
