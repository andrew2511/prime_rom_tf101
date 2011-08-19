.class public Lcom/google/android/maps/rideabout/view/SqueezedLabelView;
.super Landroid/widget/TextView;


# instance fields
.field private a:F

.field private b:F

.field private c:I

.field private d:F

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->c:I

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->c:I

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->a()V

    sget-object v0, Lcom/google/android/apps/maps/d;->a:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v2, v1, v4

    if-lez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->a(F)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v2, v1, v4

    if-lez v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->b(F)V

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private final a()V
    .locals 3

    const/4 v0, 0x1

    const/high16 v1, 0x4180

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->a:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->b:F

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->a:F

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->setTextSize(IF)V

    return-void
.end method

.method private b(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private b()V
    .locals 1

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->d:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->e:I

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    const/high16 v0, 0x3f80

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->a:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->a:F

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->b()V

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->requestLayout()V

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->invalidate()V

    :cond_0
    return-void
.end method

.method a(I)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    iput p1, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->e:I

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->getTextSize()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->a:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->a:F

    invoke-super {p0, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->getTextScaleX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    invoke-super {p0, v2}, Landroid/widget/TextView;->setTextScaleX(F)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    iput v1, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->d:F

    int-to-float v2, p1

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    const v2, 0x3f333333

    int-to-float v3, p1

    div-float v1, v3, v1

    const v3, 0x3c23d70a

    sub-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-super {p0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    :goto_0
    int-to-float v2, p1

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    iget v2, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->b:F

    int-to-float v3, p1

    div-float v1, v3, v1

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->getTextSize()F

    move-result v3

    mul-float/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, v1

    invoke-super {p0, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->b:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    goto :goto_0
.end method

.method public b(F)V
    .locals 2

    const/high16 v0, 0x3f80

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->b:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->b:F

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->b()V

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->requestLayout()V

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->invalidate()V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->c:I

    if-lez v2, :cond_3

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->c:I

    if-le v1, v2, :cond_3

    iget v1, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->c:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->b(I)I

    move-result v1

    if-nez v0, :cond_1

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->a(I)V

    :cond_0
    :goto_1
    invoke-super {p0, v2, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void

    :cond_1
    iget v0, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->d:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->a(I)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->d:F

    int-to-float v3, v1

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->e:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->a(I)V

    goto :goto_1

    :cond_3
    move v2, p1

    goto :goto_0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->b()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->c:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->c:I

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->b()V

    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->b()V

    return-void
.end method

.method public setTextScaleX(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextScaleX(F)V

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->b()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-direct {p0}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->b()V

    return-void
.end method
