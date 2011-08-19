.class public Lcom/google/ads/AdView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/google/ads/Ad;


# instance fields
.field private a:Ld;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "adSize"
    .parameter "adUnitId"

    .prologue
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/AdView;->a(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v5, 0x11

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://schemas.android.com/apk/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "adSize"

    const/4 v2, -0x1

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid adSize parameter in XML layout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Defaulting to BANNER."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lt;->e(Ljava/lang/String;)V

    sget-object v1, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    :goto_0
    const-string v2, "adUnitId"

    invoke-interface {p2, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "AdView missing required XML attribute adUnitId."

    invoke-static {v2}, Lt;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/AdView;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    const-string v2, "Ads by Google"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v5}, Lcom/google/ads/AdView;->setGravity(I)V

    invoke-virtual {v1}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/ads/AdView;->addView(Landroid/view/View;II)V

    .end local p1
    :goto_1
    return-void

    .restart local p1
    :pswitch_0
    sget-object v1, Lcom/google/ads/AdSize;->BANNER:Lcom/google/ads/AdSize;

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/google/ads/AdSize;->IAB_MRECT:Lcom/google/ads/AdSize;

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/google/ads/AdSize;->IAB_BANNER:Lcom/google/ads/AdSize;

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/google/ads/AdSize;->IAB_LEADERBOARD:Lcom/google/ads/AdSize;

    goto :goto_0

    :cond_1
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-direct {p0, p1, v1, v0}, Lcom/google/ads/AdView;->a(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    goto :goto_1

    .restart local p1
    :cond_2
    const-string v0, "AdView was initialized with a Context that wasn\'t an Activity."

    invoke-static {v0}, Lt;->b(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/google/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/google/ads/AdSize;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, -0x2

    new-instance v0, Ld;

    invoke-direct {v0, p1, p0, p2, p3}, Ld;-><init>(Landroid/app/Activity;Lcom/google/ads/Ad;Lcom/google/ads/AdSize;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/ads/AdView;->a:Ld;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/google/ads/AdView;->setGravity(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/google/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Lcom/google/ads/AdSize;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Lcom/google/ads/AdSize;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/ads/AdView;->a:Ld;

    invoke-virtual {v2}, Ld;->f()Lg;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/ads/AdView;->addView(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdView;->a:Ld;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Ld;

    invoke-virtual {v0}, Ld;->k()Z

    move-result v0

    goto :goto_0
.end method

.method public isRefreshing()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdView;->a:Ld;

    invoke-virtual {v0}, Ld;->l()Z

    move-result v0

    return v0
.end method

.method public loadAd(Lcom/google/ads/AdRequest;)V
    .locals 6
    .parameter "adRequest"

    .prologue
    const/16 v5, 0x11

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/google/ads/AdView;->a:Ld;

    invoke-virtual {v0}, Ld;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.INTERNET"

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_0

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_1

    :cond_0
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    const-string v0, "You must have INTERNET and ACCESS_NETWORK_STATE permissions to serve ads."

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v5}, Lcom/google/ads/AdView;->setGravity(I)V

    invoke-virtual {p0, v1}, Lcom/google/ads/AdView;->addView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Ld;

    invoke-virtual {v0, p1}, Ld;->a(Lcom/google/ads/AdRequest;)V

    goto :goto_0
.end method

.method public setAdListener(Lcom/google/ads/AdListener;)V
    .locals 1
    .parameter "adListener"

    .prologue
    iget-object v0, p0, Lcom/google/ads/AdView;->a:Ld;

    invoke-virtual {v0, p1}, Ld;->a(Lcom/google/ads/AdListener;)V

    return-void
.end method

.method public stopLoading()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/AdView;->a:Ld;

    invoke-virtual {v0}, Ld;->s()V

    return-void
.end method
