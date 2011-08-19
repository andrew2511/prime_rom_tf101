.class public Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;
.super Lcom/google/googlenav/ui/android/TemplateView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/TemplateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(ILandroid/widget/ImageView;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public b(Lcom/google/googlenav/ui/bx;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0f004e

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->g()Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->a(ILandroid/widget/ImageView;)V

    const v0, 0x7f0f0032

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->h()Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/TemplateViewWithImageDivider;->a(ILandroid/widget/ImageView;)V

    goto :goto_0
.end method
