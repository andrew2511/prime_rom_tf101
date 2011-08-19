.class public Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;
.super Lcom/google/android/maps/rideabout/view/StepDescriptionView;

# interfaces
.implements Lcom/google/android/maps/rideabout/view/f;


# instance fields
.field private e:Lcom/google/googlenav/ui/view/android/rideabout/k;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->a(I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->a(Z)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->a(Z)V

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->setClickable(Z)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/k;

    const v1, 0x7f0d0012

    const v2, 0x7f0d0013

    invoke-direct {v0, p1, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/k;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->e:Lcom/google/googlenav/ui/view/android/rideabout/k;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02037c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->f:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020379

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->g:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02037b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->h:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02037a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->i:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0f02db

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->j:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->a:Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->b:Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f0300f3

    return v0
.end method

.method public a(Lcom/google/android/maps/rideabout/app/k;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/google/android/maps/rideabout/app/k;->a(Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/rideabout/view/l;->a:[I

    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/app/k;->j()Lcom/google/android/maps/rideabout/app/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/rideabout/app/o;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    move-object v1, v3

    :goto_0
    if-nez v1, :cond_0

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/app/k;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/maps/rideabout/app/k;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    :goto_2
    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->a(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->f:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->g:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->h:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->i:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_4
    move-object v1, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->e:Lcom/google/googlenav/ui/view/android/rideabout/k;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/googlenav/ui/view/android/rideabout/p;

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/ui/view/android/rideabout/k;->b(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/p;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/16 v2, 0x39f

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->a(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/16 v2, 0x38f

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->a(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;->a(Ljava/lang/String;)V

    return-void
.end method
