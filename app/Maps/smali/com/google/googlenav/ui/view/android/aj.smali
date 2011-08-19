.class public Lcom/google/googlenav/ui/view/android/aj;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/LinearLayout;
    .locals 7

    move-object v0, p2

    check-cast v0, Landroid/widget/ListView;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/view/android/aj;->b(Landroid/content/Context;Landroid/view/ViewGroup;)I

    move-result v2

    const-wide/high16 v3, 0x4049

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v5

    invoke-virtual {v5}, Lac/m;->t()D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    const/4 v6, -0x1

    if-eqz v1, :cond_1

    if-le v2, v3, :cond_1

    move v1, v2

    :goto_1
    invoke-direct {v5, v6, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    const/16 v1, 0x51

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v4

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, -0x2

    goto :goto_1
.end method

.method private a(Lcom/google/googlenav/ui/bk;)Lcom/google/ads/AdSenseSpec;
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/view/android/i;

    invoke-static {}, LaO/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/view/android/i;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/googlenav/ui/bk;->c:Lf/h;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/i;->a(Lf/h;)Lcom/google/googlenav/ui/view/android/i;

    move-result-object v0

    iget-object v1, p1, Lcom/google/googlenav/ui/bk;->d:Lf/h;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/i;->b(Lf/h;)Lcom/google/googlenav/ui/view/android/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/i;->setAdTestEnabled(Z)Lcom/google/ads/AdSenseSpec;

    move-result-object v0

    sget-object v1, Lcom/google/ads/AdSenseSpec$AdFormat;->FORMAT_320x50:Lcom/google/ads/AdSenseSpec$AdFormat;

    invoke-virtual {v0, v1}, Lcom/google/ads/AdSenseSpec;->setAdFormat(Lcom/google/ads/AdSenseSpec$AdFormat;)Lcom/google/ads/AdSenseSpec;

    move-result-object v0

    const/16 v1, 0x3d9

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/AdSenseSpec;->setAppName(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v0

    const-string v1, "Google"

    invoke-virtual {v0, v1}, Lcom/google/ads/AdSenseSpec;->setCompanyName(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v0

    const-string v1, "FFF8E7"

    invoke-virtual {v0, v1}, Lcom/google/ads/AdSenseSpec;->setColorBackground(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v0

    iget-object v1, p1, Lcom/google/googlenav/ui/bk;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/AdSenseSpec;->setKeywords(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/google/ads/GoogleAdView;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f080061

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    invoke-virtual {p2, v2}, Lcom/google/ads/GoogleAdView;->removeViewAt(I)V

    invoke-virtual {p2, v0, v2}, Lcom/google/ads/GoogleAdView;->addView(Landroid/view/View;I)V

    invoke-virtual {p2, v2}, Lcom/google/ads/GoogleAdView;->setDisplayedChild(I)V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/view/ViewGroup;)I
    .locals 4

    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/android/aj;->a(Landroid/view/ViewGroup;)I

    move-result v0

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    sub-int v0, v1, v0

    sub-int/2addr v0, v2

    :goto_0
    return v0

    :cond_0
    sub-int v0, v1, v0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Lcom/google/googlenav/ui/bx;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aj;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aj;->a:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p2, Lcom/google/googlenav/ui/bx;->I:Lcom/google/googlenav/ui/bk;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Lcom/google/ads/GoogleAdView;

    invoke-direct {v1, p1}, Lcom/google/ads/GoogleAdView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v1}, Lcom/google/googlenav/ui/view/android/aj;->a(Landroid/content/Context;Lcom/google/ads/GoogleAdView;)V

    const v2, 0x12cdb8

    invoke-virtual {v1, v2}, Lcom/google/ads/GoogleAdView;->setId(I)V

    invoke-direct {p0, p1, p3}, Lcom/google/googlenav/ui/view/android/aj;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iput-object v2, p0, Lcom/google/googlenav/ui/view/android/aj;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/aj;->a(Lcom/google/googlenav/ui/bk;)Lcom/google/ads/AdSenseSpec;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/ads/GoogleAdView;->showAds(Lcom/google/ads/AdSpec;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aj;->a:Landroid/view/View;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/aj;->a:Landroid/view/View;

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/google/googlenav/ui/bx;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aj;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aj;->a:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/aj;->b(Landroid/content/Context;Lcom/google/googlenav/ui/bx;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
