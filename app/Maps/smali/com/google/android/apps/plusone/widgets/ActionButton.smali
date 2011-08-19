.class public Lcom/google/android/apps/plusone/widgets/ActionButton;
.super Landroid/widget/Button;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:F

.field private final d:F

.field private final e:F

.field private final f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/plusone/widgets/ActionButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plusone/widgets/ActionButton;->a:I

    const v1, 0x7f080041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plusone/widgets/ActionButton;->b:I

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plusone/widgets/ActionButton;->c:F

    const v1, 0x7f090065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plusone/widgets/ActionButton;->d:F

    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plusone/widgets/ActionButton;->e:F

    const v1, 0x7f080042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plusone/widgets/ActionButton;->f:I

    invoke-direct {p0}, Lcom/google/android/apps/plusone/widgets/ActionButton;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/plusone/widgets/ActionButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/apps/plusone/widgets/ActionButton;->a:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setTextColor(I)V

    iget v0, p0, Lcom/google/android/apps/plusone/widgets/ActionButton;->a:I

    const/high16 v1, -0x100

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/apps/plusone/widgets/ActionButton;->a(Z)V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/apps/plusone/widgets/ActionButton;->b:I

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setTextColor(I)V

    invoke-direct {p0, v2}, Lcom/google/android/apps/plusone/widgets/ActionButton;->a(Z)V

    goto :goto_1
.end method

.method private a(Z)V
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/android/apps/plusone/widgets/ActionButton;->c:F

    iget v1, p0, Lcom/google/android/apps/plusone/widgets/ActionButton;->d:F

    iget v2, p0, Lcom/google/android/apps/plusone/widgets/ActionButton;->e:F

    iget v3, p0, Lcom/google/android/apps/plusone/widgets/ActionButton;->f:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setShadowLayer(FFFI)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x106000d

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/google/android/apps/plusone/widgets/ActionButton;->setShadowLayer(FFFI)V

    goto :goto_0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    invoke-direct {p0}, Lcom/google/android/apps/plusone/widgets/ActionButton;->a()V

    return-void
.end method
