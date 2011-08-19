.class public Lcom/google/android/maps/rideabout/view/StepDescriptionView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field protected a:Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

.field protected b:Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

.field protected c:Landroid/widget/ImageView;

.field protected d:Landroid/widget/TextView;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/view/View;

.field private k:Z

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->k:Z

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->k:Z

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->a()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0f00f9

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->a:Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    const v0, 0x7f0f00fa

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->b:Lcom/google/android/maps/rideabout/view/SqueezedLabelView;

    const v0, 0x7f0f00f6

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->e:Landroid/view/View;

    const v0, 0x7f0f00f7

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->f:Landroid/view/View;

    const v0, 0x7f0f00f8

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f0f00a5

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->c:Landroid/widget/ImageView;

    const v0, 0x7f0f00fb

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->h:Landroid/widget/ImageView;

    const v0, 0x7f0f00fc

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->i:Landroid/widget/ImageView;

    const v0, 0x7f0f00e3

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->d:Landroid/widget/TextView;

    const v0, 0x7f0f00ec

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->j:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f0300f3

    return v0
.end method

.method public a(I)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->l:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->l:I

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->f:Landroid/view/View;

    const v1, 0x7f0203c4

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->e:Landroid/view/View;

    const v1, 0x7f02039d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->f:Landroid/view/View;

    const v1, 0x7f0203c2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->e:Landroid/view/View;

    const v1, 0x7f02039a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/StepDescriptionView;->j:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
