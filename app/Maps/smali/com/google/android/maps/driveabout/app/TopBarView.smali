.class public Lcom/google/android/maps/driveabout/app/TopBarView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

.field private b:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(LF/y;)V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b000b

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "<image>"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v2, "<image>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, LF/D;->a(Landroid/content/Context;LF/y;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09002f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    new-instance v4, Lcom/google/android/maps/driveabout/app/dr;

    invoke-direct {v4, v2, v3, v3}, Lcom/google/android/maps/driveabout/app/dr;-><init>(Landroid/graphics/drawable/Drawable;FF)V

    const-string v2, "<image>"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    const/16 v3, 0x21

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->h:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030040

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0f00fe

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b(I)V

    const v0, 0x7f0f00ff

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->b:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    const v0, 0x7f0f0100

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->c:Landroid/widget/TextView;

    const v0, 0x7f0f0101

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->d:Landroid/view/ViewGroup;

    const v0, 0x7f0f0102

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->e:Landroid/widget/Button;

    const v0, 0x7f0f0103

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->f:Landroid/widget/Button;

    const v0, 0x7f0f0104

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->g:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->l()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->c:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)V
    .locals 5

    const v4, 0x7f040002

    const v3, 0x7f040001

    const/4 v2, 0x0

    const-string v0, "__step_description"

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    invoke-static {v0, v3, v2}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/view/View;IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "__route_overview"

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->b:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->k()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->b:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    invoke-static {v0, v3, v2}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/view/View;IZ)V

    goto :goto_0

    :cond_2
    const-string v0, "__destination_buttons"

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->d:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->k()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->d:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    invoke-static {v0, v3, v2}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/view/View;IZ)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->c:Landroid/widget/TextView;

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->k()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->c:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    invoke-static {v0, v3, v2}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/view/View;IZ)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->c:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_0
.end method

.method private a(I)Z
    .locals 4

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ne p1, v3, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0017

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0018

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    goto :goto_1
.end method

.method static a(Landroid/content/Context;LF/y;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, LF/y;->f()I

    move-result v0

    const/16 v1, 0x3c

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, LF/y;->e()I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, LF/y;->b()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-static {p1}, LF/D;->b(LF/y;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Lcom/google/android/maps/driveabout/app/bX;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->h()LF/y;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LF/y;->j()LF/y;

    move-result-object v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, LF/y;->b()I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a()V

    invoke-virtual {v0}, LF/y;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->j()V

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->k()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->k()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Landroid/content/Context;LF/y;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->e()I

    move-result v0

    const/16 v2, 0x1324

    if-gt v0, v2, :cond_3

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(LF/y;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->i()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a()V

    goto :goto_1
.end method

.method private i()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->h:Landroid/widget/TextView;

    const v1, 0x7f040006

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->b(Landroid/view/View;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->k:Z

    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->i:Landroid/widget/TextView;

    const v1, 0x7f040006

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->b(Landroid/view/View;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->l:Z

    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->i:Landroid/widget/TextView;

    const v1, 0x7f040009

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/view/View;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->l:Z

    :cond_0
    return-void
.end method

.method private l()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%2$s"

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0082

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%1$s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/google/android/maps/driveabout/app/dr;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const v4, 0x3fa66666

    invoke-direct {v0, v3, v4}, Lcom/google/android/maps/driveabout/app/dr;-><init>(Landroid/graphics/drawable/Drawable;F)V

    add-int/lit8 v3, v1, 0x4

    const/16 v4, 0x21

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->h:Landroid/widget/TextView;

    const v1, 0x7f040009

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->a(Landroid/view/View;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->k:Z

    :cond_0
    return-void
.end method

.method public a(LF/M;[LF/M;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->setClickable(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->b:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a(LF/M;[LF/M;)V

    const-string v0, "__route_overview"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/app/bX;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/google/android/maps/driveabout/app/TopBarView;->setClickable(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->b:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [LF/M;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a(LF/M;[LF/M;)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->h()LF/y;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->f()I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->d()I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->b:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->f()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->d()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a(III)V

    :goto_1
    const-string v0, "__route_overview"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->h()LF/y;

    move-result-object v0

    invoke-virtual {v0}, LF/y;->i()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->b:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v2

    invoke-virtual {v2}, LF/M;->o()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v3

    invoke-virtual {v3}, LF/M;->n()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a(III)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/maps/driveabout/app/bX;LF/y;ZZ)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(LF/y;)V

    invoke-virtual {p0, v3}, Lcom/google/android/maps/driveabout/app/TopBarView;->setClickable(Z)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->h()LF/y;

    move-result-object v1

    if-ne v1, p2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b(I)V

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(Z)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->e()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(F)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bX;->i()LF/M;

    move-result-object v1

    invoke-virtual {v1}, LF/M;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(I)V

    :goto_0
    invoke-virtual {v0, p3}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b(Z)V

    if-eqz p4, :cond_1

    if-nez p3, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/TopBarView;->b(Lcom/google/android/maps/driveabout/app/bX;)V

    :goto_1
    const-string v0, "__step_description"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b(I)V

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->k()V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b(I)V

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(Z)V

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b(Z)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/TopBarView;->k()V

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/app/TopBarView;->setClickable(Z)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->f:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public a(ZZZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a(ZZZ)V

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->setClickable(Z)V

    const-string v0, "__destination_buttons"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/TopBarView;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->e:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/android/maps/driveabout/app/RouteSelectorView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->b:Lcom/google/android/maps/driveabout/app/RouteSelectorView;

    return-object v0
.end method

.method public e()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->e:Landroid/widget/Button;

    return-object v0
.end method

.method public f()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->f:Landroid/widget/Button;

    return-object v0
.end method

.method public g()Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->g:Landroid/widget/Button;

    return-object v0
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->j:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/TopBarView;->a:Lcom/google/android/maps/driveabout/app/StepDescriptionView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/StepDescriptionView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
