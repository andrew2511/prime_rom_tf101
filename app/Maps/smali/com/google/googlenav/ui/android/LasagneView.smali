.class public Lcom/google/googlenav/ui/android/LasagneView;
.super Landroid/widget/ListView;

# interfaces
.implements LH/o;
.implements Lau/f;


# instance fields
.field private a:I

.field private b:I

.field private c:LG/e;

.field private d:Lau/e;

.field private e:I

.field private f:LG/Z;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/google/googlenav/ui/android/LasagneView;->a:I

    iput v0, p0, Lcom/google/googlenav/ui/android/LasagneView;->b:I

    iput v0, p0, Lcom/google/googlenav/ui/android/LasagneView;->e:I

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/LasagneView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/google/googlenav/ui/android/LasagneView;->a:I

    iput v0, p0, Lcom/google/googlenav/ui/android/LasagneView;->b:I

    iput v0, p0, Lcom/google/googlenav/ui/android/LasagneView;->e:I

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/LasagneView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/LasagneView;)I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/android/LasagneView;->a:I

    return v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/LasagneView;I)I
    .locals 0

    iput p1, p0, Lcom/google/googlenav/ui/android/LasagneView;->b:I

    return p1
.end method

.method private a()V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/LasagneView;->f:LG/Z;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/ui/android/LasagneView;->c:LG/e;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/googlenav/ui/android/LasagneView;->c:LG/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/LasagneView;->f:LG/Z;

    invoke-virtual {v0, v1}, LG/e;->b(LG/Z;)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    :cond_0
    move v1, v0

    :goto_0
    iget v0, p0, Lcom/google/googlenav/ui/android/LasagneView;->e:I

    if-ne v1, v0, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v2, p0, Lcom/google/googlenav/ui/android/LasagneView;->e:I

    iput v1, p0, Lcom/google/googlenav/ui/android/LasagneView;->e:I

    if-eq v2, v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/android/LasagneView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0, v2}, Lcom/google/googlenav/ui/android/LasagneView;->a(Landroid/widget/RelativeLayout;I)V

    :cond_3
    if-eq v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/android/LasagneView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/android/LasagneView;->a(Landroid/widget/RelativeLayout;I)V

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_0
.end method

.method private a(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/LasagneView;->clearChoices()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/LasagneView;->invalidate()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/LasagneView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/googlenav/ui/android/LasagneView;->performItemClick(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/google/googlenav/ui/android/al;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/al;-><init>(Lcom/google/googlenav/ui/android/LasagneView;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/LasagneView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private a(Landroid/widget/RelativeLayout;I)V
    .locals 4

    const/4 v3, 0x0

    const v0, 0x7f0f0215

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/google/googlenav/ui/android/LasagneView;->a:I

    if-ne p2, v1, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d00d2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const v0, -0x225600

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_0
    const v0, 0x7f0f0214

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/android/LasagneView;->e:I

    if-ne p2, v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d00d1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/android/LasagneView;Landroid/widget/RelativeLayout;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/android/LasagneView;->a(Landroid/widget/RelativeLayout;I)V

    return-void
.end method

.method private static a(LG/e;LG/e;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, LG/e;->a()LG/A;

    move-result-object v0

    invoke-virtual {p1}, LG/e;->a()LG/A;

    move-result-object v1

    invoke-virtual {v0, v1}, LG/A;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/android/LasagneView;I)I
    .locals 0

    iput p1, p0, Lcom/google/googlenav/ui/android/LasagneView;->a:I

    return p1
.end method

.method static synthetic b(Lcom/google/googlenav/ui/android/LasagneView;)Lau/e;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/LasagneView;->d:Lau/e;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/android/LasagneView;)LG/e;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/LasagneView;->c:LG/e;

    return-object v0
.end method


# virtual methods
.method public a(ILH/f;)V
    .locals 0

    return-void
.end method

.method a(LG/Z;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/LasagneView;->f:LG/Z;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/LasagneView;->a()V

    return-void
.end method

.method a(LG/e;)V
    .locals 6

    const-wide/16 v4, 0x1f4

    const/4 v3, 0x1

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/android/LasagneView;->c:LG/e;

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/android/LasagneView;->a(LG/e;LG/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/googlenav/ui/android/LasagneView;->c:LG/e;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/LasagneView;->clearAnimation()V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/LasagneView;->c:LG/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/LasagneView;->c:LG/e;

    invoke-virtual {v0}, LG/e;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/LasagneView;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/LasagneView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/google/googlenav/ui/android/e;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/LasagneView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/LasagneView;->c:LG/e;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/googlenav/ui/android/e;-><init>(Lcom/google/googlenav/ui/android/LasagneView;Landroid/content/Context;LG/e;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/LasagneView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/LasagneView;->a()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/LasagneView;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lcom/google/googlenav/ui/android/ah;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/android/ah;-><init>(Lcom/google/googlenav/ui/android/LasagneView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/LasagneView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public a(LG/e;LG/B;)V
    .locals 2

    const/4 v1, -0x1

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/android/LasagneView;->a(LG/e;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/android/LasagneView;->a(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, LG/e;->a(LG/B;)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :cond_2
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/android/LasagneView;->a(I)V

    goto :goto_0
.end method

.method public a(Lau/e;)V
    .locals 1

    new-instance v0, Lcom/google/googlenav/ui/android/ai;

    invoke-direct {v0, p0, p1}, Lcom/google/googlenav/ui/android/ai;-><init>(Lcom/google/googlenav/ui/android/LasagneView;Lau/e;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/LasagneView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lau/e;LG/e;)V
    .locals 1

    new-instance v0, Lcom/google/googlenav/ui/android/af;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlenav/ui/android/af;-><init>(Lcom/google/googlenav/ui/android/LasagneView;Lau/e;LG/e;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/LasagneView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lf/h;LH/f;)V
    .locals 1

    new-instance v0, Lcom/google/googlenav/ui/android/ag;

    invoke-direct {v0, p0, p2}, Lcom/google/googlenav/ui/android/ag;-><init>(Lcom/google/googlenav/ui/android/LasagneView;LH/f;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/LasagneView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Lau/e;)V
    .locals 0

    return-void
.end method

.method c(Lau/e;)V
    .locals 1

    iput-object p1, p0, Lcom/google/googlenav/ui/android/LasagneView;->d:Lau/e;

    iget-object v0, p0, Lcom/google/googlenav/ui/android/LasagneView;->d:Lau/e;

    invoke-virtual {v0, p0}, Lau/e;->a(Lau/f;)V

    return-void
.end method

.method public clearChoices()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/android/LasagneView;->a:I

    iput v0, p0, Lcom/google/googlenav/ui/android/LasagneView;->b:I

    invoke-super {p0}, Landroid/widget/ListView;->clearChoices()V

    return-void
.end method
