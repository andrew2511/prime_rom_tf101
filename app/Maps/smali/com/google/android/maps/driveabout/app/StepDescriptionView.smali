.class public Lcom/google/android/maps/driveabout/app/StepDescriptionView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lt/ae;


# instance fields
.field protected a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

.field protected b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

.field protected c:Landroid/widget/ImageView;

.field protected d:Landroid/widget/TextView;

.field private e:LF/y;

.field private f:LF/y;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/view/View;

.field private n:F

.field private o:I

.field private p:Z

.field private q:I

.field private r:Z

.field private s:Lcom/google/android/maps/driveabout/app/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->p:Z

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->p:Z

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0f00f9

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const v0, 0x7f0f00fa

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const v0, 0x7f0f00f6

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->g:Landroid/view/View;

    const v0, 0x7f0f00f7

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    const v0, 0x7f0f00f8

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->j:Landroid/widget/LinearLayout;

    const v0, 0x7f0f00fd

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->h:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->h:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->g:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->h:Landroid/view/View;

    :cond_0
    const v0, 0x7f0f00a5

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->c:Landroid/widget/ImageView;

    const v0, 0x7f0f00fb

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->k:Landroid/widget/ImageView;

    const v0, 0x7f0f00fc

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->l:Landroid/widget/ImageView;

    const v0, 0x7f0f00e3

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->d:Landroid/widget/TextView;

    const v0, 0x7f0f00ec

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->m:Landroid/view/View;

    invoke-static {}, Lcom/google/android/maps/driveabout/app/t;->a()Lcom/google/android/maps/driveabout/app/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->s:Lcom/google/android/maps/driveabout/app/t;

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/app/SqueezedLabelView;Ljava/util/Collection;IFZZZI)V
    .locals 7

    const/4 v5, 0x0

    const/4 v3, 0x1

    new-instance v4, Landroid/text/TextPaint;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    const/high16 v0, 0x3f80

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setTextScaleX(F)V

    invoke-virtual {v4, p4}, Landroid/text/TextPaint;->setTextSize(F)V

    if-eqz p5, :cond_7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:LF/y;

    invoke-virtual {v0}, LF/y;->b()I

    move-result v0

    if-eq v0, v3, :cond_0

    if-eqz p7, :cond_2

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_5

    const v0, 0x7f0b0007

    move v5, v0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->s:Lcom/google/android/maps/driveabout/app/t;

    move-object v1, p2

    move v2, p3

    move v3, p8

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/t;->a(Ljava/util/Collection;IILandroid/text/TextPaint;ILt/ae;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    invoke-virtual {p1, p4}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a(F)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:LF/y;

    invoke-virtual {v1}, LF/y;->j()LF/y;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:LF/y;

    invoke-virtual {v1}, LF/y;->j()LF/y;

    move-result-object v1

    invoke-virtual {v1}, LF/y;->e()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x4248

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    move v1, v3

    :goto_2
    invoke-static {v0}, LF/y;->a(I)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:LF/y;

    invoke-virtual {v0}, LF/y;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    move v1, v5

    goto :goto_2

    :cond_5
    if-eqz p7, :cond_6

    const v0, 0x7f0b0008

    move v5, v0

    goto :goto_1

    :cond_6
    if-eqz p6, :cond_1

    const v0, 0x7f0b0009

    move v5, v0

    goto :goto_1

    :cond_7
    move v0, v5

    goto :goto_0
.end method

.method private f()V
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:LF/y;

    invoke-virtual {v1}, LF/y;->w()LF/C;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:LF/y;

    invoke-virtual {v1}, LF/y;->w()LF/C;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:LF/y;

    invoke-virtual {v1}, LF/y;->o()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/t;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:LF/y;

    invoke-virtual {v1}, LF/y;->p()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/t;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v9

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:LF/y;

    invoke-virtual {v1}, LF/y;->r()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/t;->a(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_2

    move-object v11, v0

    move-object v2, v10

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    move v12, v0

    :goto_1
    if-eqz v12, :cond_6

    const/4 v0, 0x1

    move v3, v0

    :goto_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    float-to-int v8, v0

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    if-eqz v12, :cond_d

    div-int/lit8 v0, v8, 0x2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f09001d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    move v4, v1

    move v8, v0

    :goto_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(Lcom/google/android/maps/driveabout/app/SqueezedLabelView;Ljava/util/Collection;IFZZZI)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a()F

    move-result v4

    if-ne v11, v9, :cond_7

    const/4 v0, 0x1

    move v5, v0

    :goto_4
    if-ne v2, v10, :cond_8

    const/4 v0, 0x1

    move v7, v0

    :goto_5
    move-object v0, p0

    move-object v2, v11

    move v6, v12

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(Lcom/google/android/maps/driveabout/app/SqueezedLabelView;Ljava/util/Collection;IFZZZI)V

    if-eqz v12, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setGravity(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setGravity(I)V

    :cond_1
    :goto_6
    return-void

    :cond_2
    move-object v11, v9

    move-object v2, v10

    goto/16 :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_4

    move-object v11, v9

    move-object v2, v0

    goto/16 :goto_0

    :cond_4
    move-object v11, v0

    move-object v2, v9

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x0

    move v12, v0

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x2

    move v3, v0

    goto/16 :goto_2

    :cond_7
    const/4 v0, 0x0

    move v5, v0

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    move v7, v0

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_a

    const v1, 0x7f09001b

    :goto_7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    if-ne v2, v9, :cond_b

    const/4 v0, 0x1

    move v5, v0

    :goto_8
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(Lcom/google/android/maps/driveabout/app/SqueezedLabelView;Ljava/util/Collection;IFZZZI)V

    if-eqz v12, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setGravity(I)V

    goto :goto_6

    :cond_a
    const v1, 0x7f09001d

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    move v5, v0

    goto :goto_8

    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a(F)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:LF/y;

    invoke-virtual {v1}, LF/y;->n()Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    if-eqz v12, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setGravity(I)V

    goto/16 :goto_6

    :cond_d
    move v4, v0

    goto/16 :goto_3
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method public a(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->n:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->n:F

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->c(Z)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->o:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->o:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->c(Z)V

    :cond_0
    return-void
.end method

.method public a(LF/y;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:LF/y;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:LF/y;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->c(Z)V

    :cond_0
    return-void
.end method

.method public a(Lt/aB;)V
    .locals 1

    new-instance v0, Lcom/google/android/maps/driveabout/app/bt;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/bt;-><init>(Lcom/google/android/maps/driveabout/app/StepDescriptionView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->p:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->p:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->c(Z)V

    :cond_0
    return-void
.end method

.method public a(ZZZ)V
    .locals 8

    const/4 v7, 0x4

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->l:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    if-ne p1, v0, :cond_3

    if-ne p2, v1, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->l:Landroid/widget/ImageView;

    if-eqz p2, :cond_5

    move v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->k:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    move v3, v4

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->l:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->k:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    if-eqz p3, :cond_0

    if-eq v0, p1, :cond_4

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_7

    move v0, v6

    :goto_5
    if-eqz p1, :cond_8

    move v3, v6

    :goto_6
    invoke-direct {v2, v0, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    if-eqz p1, :cond_9

    const-wide/16 v3, 0x0

    :goto_7
    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    if-eq v1, p2, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    if-eqz v1, :cond_a

    move v1, v6

    :goto_8
    if-eqz p2, :cond_b

    move v2, v6

    :goto_9
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    if-eqz p2, :cond_c

    const-wide/16 v1, 0x0

    :goto_a
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->l:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    :cond_5
    move v3, v7

    goto :goto_3

    :cond_6
    move v3, v7

    goto :goto_4

    :cond_7
    move v0, v5

    goto :goto_5

    :cond_8
    move v3, v5

    goto :goto_6

    :cond_9
    const-wide/16 v3, 0x1f4

    goto :goto_7

    :cond_a
    move v1, v5

    goto :goto_8

    :cond_b
    move v2, v5

    goto :goto_9

    :cond_c
    const-wide/16 v1, 0x1f4

    goto :goto_a
.end method

.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method public b(I)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->q:I

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->q:I

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->g:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    const v1, 0x7f020137

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->g:Landroid/view/View;

    const v1, 0x7f020118

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->h:Landroid/view/View;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    const v1, 0x7f020134

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->g:Landroid/view/View;

    const v1, 0x7f020115

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->g:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->h:Landroid/view/View;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->r:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->r:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->c(Z)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->r:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040008

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method protected c(Z)V
    .locals 6

    const/16 v3, 0x8

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:LF/y;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:LF/y;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->f:LF/y;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:LF/y;

    invoke-static {v1, v2}, LF/D;->a(Landroid/content/Context;LF/y;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->r:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:LF/y;

    invoke-virtual {v0}, LF/y;->k()LF/y;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:LF/y;

    invoke-virtual {v0}, LF/y;->k()LF/y;

    move-result-object v0

    invoke-virtual {v0}, LF/y;->v()LF/C;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->a(F)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->s:Lcom/google/android/maps/driveabout/app/t;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:LF/y;

    invoke-virtual {v2}, LF/y;->k()LF/y;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/google/android/maps/driveabout/app/t;->a(LF/y;Lt/ae;)Landroid/text/Spannable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->s:Lcom/google/android/maps/driveabout/app/t;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:LF/y;

    iget v3, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->n:F

    float-to-int v3, v3

    iget v4, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->o:I

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/google/android/maps/driveabout/app/t;->a(LF/y;IILt/ae;)Landroid/text/Spannable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setGravity(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setGravity(I)V

    :cond_2
    invoke-virtual {p0, v5}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->d(Z)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->e:LF/y;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->f:LF/y;

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->p:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->n:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->s:Lcom/google/android/maps/driveabout/app/t;

    iget v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->n:F

    float-to-int v1, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->o:I

    invoke-virtual {v0, v1, v2, v5}, Lcom/google/android/maps/driveabout/app/t;->a(IIZ)Landroid/text/Spannable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->d:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->f()V

    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->d(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b:Lcom/google/android/maps/driveabout/app/SqueezedLabelView;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/SqueezedLabelView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->c:Landroid/widget/ImageView;

    const v1, 0x7f02013b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearAnimation()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040007

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/google/android/maps/driveabout/app/bs;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/bs;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method protected d(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->i:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->m:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected e()I
    .locals 1

    const v0, 0x7f03003f

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    if-eq p1, p3, :cond_0

    new-instance v0, Lcom/google/android/maps/driveabout/app/br;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/br;-><init>(Lcom/google/android/maps/driveabout/app/StepDescriptionView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
