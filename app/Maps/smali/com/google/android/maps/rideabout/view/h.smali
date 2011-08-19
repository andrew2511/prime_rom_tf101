.class public Lcom/google/android/maps/rideabout/view/h;
.super Lx/N;


# instance fields
.field private final a:Lcom/google/googlenav/ui/android/BaseAndroidView;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/android/BaseAndroidView;)V
    .locals 0

    invoke-direct {p0}, Lx/N;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/rideabout/view/h;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    return-void
.end method

.method private m()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/h;->n()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/h;->p()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    const v1, 0x7f0300f5

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/h;->j()V

    :cond_0
    return-void
.end method

.method private n()Landroid/view/View;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/h;->p()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f02dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private o()Landroid/view/View;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/h;->p()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f0053

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private p()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/h;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->c()Lcom/google/googlenav/ui/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/ac;->a()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method private q()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/h;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/BaseAndroidView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method private r()I
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/h;->q()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/h;->m()V

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/h;->b()V

    return-void
.end method

.method public b()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/h;->o()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/h;->p()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0f005e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewStub;

    const v0, 0x7f0f0053

    invoke-virtual {p0, v0}, Landroid/view/ViewStub;->setInflatedId(I)V

    const v0, 0x7f0300d6

    invoke-virtual {p0, v0}, Landroid/view/ViewStub;->setLayoutResource(I)V

    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/h;->n()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public d()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/h;->n()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public e()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/h;->o()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public f()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/h;->o()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public g()Lcom/google/android/maps/rideabout/view/k;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/h;->o()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;

    return-object p0
.end method

.method public h()Lcom/google/android/maps/rideabout/view/f;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/h;->n()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;

    return-object p0
.end method

.method public i()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/h;->n()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/h;->o()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()V
    .locals 6

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/h;->n()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v3, p0, Lcom/google/android/maps/rideabout/view/h;->a:Lcom/google/googlenav/ui/android/BaseAndroidView;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/android/BaseAndroidView;->c()Lcom/google/googlenav/ui/android/ac;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/android/ac;->b()I

    move-result v3

    neg-int v3, v3

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/h;->r()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public k()I
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/h;->q()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method
