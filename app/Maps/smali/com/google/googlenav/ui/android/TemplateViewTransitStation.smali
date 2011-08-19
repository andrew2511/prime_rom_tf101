.class public Lcom/google/googlenav/ui/android/TemplateViewTransitStation;
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

.method private a(Lcom/google/googlenav/aB;)I
    .locals 5

    const/4 v4, 0x0

    move v0, v4

    move v1, v4

    :goto_0
    invoke-virtual {p1}, Lcom/google/googlenav/aB;->g()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/aB;->a(I)Lcom/google/googlenav/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/D;->e()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    if-le v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x6

    return v0
.end method

.method private a(Lcom/google/googlenav/D;)Landroid/widget/TextView;
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/D;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/D;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Lcom/google/googlenav/D;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method private a(Lcom/google/googlenav/K;)Ljava/lang/CharSequence;
    .locals 4

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/googlenav/K;->e()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lcom/google/googlenav/K;->a(I)Lcom/google/googlenav/aZ;

    move-result-object v2

    if-lez v1, :cond_0

    const-string v3, " "

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    invoke-virtual {v2}, Lcom/google/googlenav/aZ;->d()Law/e;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/aM;->b(Law/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a(Landroid/view/View;IIII)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/aB;Landroid/widget/LinearLayout;)V
    .locals 13

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/TemplateViewTransitStation;->a(Lcom/google/googlenav/aB;)I

    move-result v6

    const/4 v1, 0x0

    move v7, v1

    :goto_0
    invoke-virtual {p1}, Lcom/google/googlenav/aB;->g()I

    move-result v1

    if-ge v7, v1, :cond_2

    invoke-virtual {p1, v7}, Lcom/google/googlenav/aB;->a(I)Lcom/google/googlenav/D;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/googlenav/D;->i()I

    move-result v1

    if-lez v1, :cond_1

    if-nez v0, :cond_3

    const/16 v0, 0x432

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/TemplateViewTransitStation;->a(Landroid/view/View;IIII)V

    const/4 v0, 0x1

    move v9, v0

    :goto_1
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewTransitStation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-direct {p0, v8}, Lcom/google/googlenav/ui/android/TemplateViewTransitStation;->a(Lcom/google/googlenav/D;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    sub-int v0, v6, v0

    add-int/lit8 v2, v0, 0x3

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/TemplateViewTransitStation;->a(Landroid/view/View;IIII)V

    new-instance v11, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/TemplateViewTransitStation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v0, 0x0

    move v12, v0

    :goto_2
    invoke-virtual {v8}, Lcom/google/googlenav/D;->i()I

    move-result v0

    if-ge v12, v0, :cond_0

    invoke-virtual {v8, v12}, Lcom/google/googlenav/D;->a(I)Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->d()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->aQ:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/TemplateViewTransitStation;->a(Landroid/view/View;IIII)V

    invoke-virtual {v8, v12}, Lcom/google/googlenav/D;->a(I)Lcom/google/googlenav/K;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/TemplateViewTransitStation;->a(Lcom/google/googlenav/K;)Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/TemplateViewTransitStation;->a(Landroid/view/View;IIII)V

    add-int/lit8 v0, v12, 0x1

    move v12, v0

    goto :goto_2

    :cond_0
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v11

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/TemplateViewTransitStation;->a(Landroid/view/View;IIII)V

    invoke-virtual {p2, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v0, p0

    move-object v1, v10

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/TemplateViewTransitStation;->a(Landroid/view/View;IIII)V

    move v0, v9

    :cond_1
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_0

    :cond_2
    return-void

    :cond_3
    move v9, v0

    goto/16 :goto_1
.end method

.method private b(Lcom/google/googlenav/aB;Landroid/widget/LinearLayout;)V
    .locals 12

    const/16 v11, 0x21

    const/4 v10, 0x1

    const/16 v2, 0xa

    const/4 v3, 0x0

    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    move v7, v3

    move v0, v3

    :goto_0
    invoke-virtual {p1}, Lcom/google/googlenav/aB;->g()I

    move-result v1

    if-ge v7, v1, :cond_2

    invoke-virtual {p1, v7}, Lcom/google/googlenav/aB;->a(I)Lcom/google/googlenav/D;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/googlenav/D;->i()I

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    const/16 v0, 0x430

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v5, 0x4

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/TemplateViewTransitStation;->a(Landroid/view/View;IIII)V

    move v0, v10

    :cond_0
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Lcom/google/googlenav/D;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v10

    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v8}, Lcom/google/googlenav/D;->g()I

    move-result v9

    invoke-direct {v5, v9}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v6, v5, v1, v4, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v8}, Lcom/google/googlenav/D;->f()I

    move-result v8

    invoke-direct {v5, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v6, v5, v1, v4, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v0, p0

    move v4, v3

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/TemplateViewTransitStation;->a(Landroid/view/View;IIII)V

    :cond_3
    return-void
.end method


# virtual methods
.method public b(Lcom/google/googlenav/ui/bx;)V
    .locals 6

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    if-eqz p1, :cond_0

    check-cast p1, Lcom/google/googlenav/ui/h;

    iget-object v0, p1, Lcom/google/googlenav/ui/h;->a:Lcom/google/googlenav/aB;

    const v1, 0x7f0f0003

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/android/TemplateViewTransitStation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/TemplateViewTransitStation;->a(Lcom/google/googlenav/aB;Landroid/widget/LinearLayout;)V

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/TemplateViewTransitStation;->b(Lcom/google/googlenav/aB;Landroid/widget/LinearLayout;)V

    const/4 v5, 0x5

    move-object v0, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/android/TemplateViewTransitStation;->a(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method
