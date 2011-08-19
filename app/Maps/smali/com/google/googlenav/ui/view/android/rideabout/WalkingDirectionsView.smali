.class public Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/google/googlenav/ui/view/android/rideabout/f;


# instance fields
.field final a:Landroid/view/View$OnClickListener;

.field private final b:Lu/d;

.field private final c:Lu/f;

.field private final d:Lu/e;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:Z

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/TableLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lu/d;I)V
    .locals 3

    const/4 v2, -0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/b;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/android/rideabout/b;-><init>(Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->a:Landroid/view/View$OnClickListener;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b:Lu/d;

    invoke-virtual {p2, p3}, Lu/d;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lu/f;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->c:Lu/f;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->c:Lu/f;

    invoke-virtual {v0}, Lu/f;->c()Lu/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->d:Lu/e;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->c:Lu/f;

    invoke-virtual {v0}, Lu/f;->p()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->f:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->f()I

    move-result v0

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->g:Z

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->setOrientation(I)V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->d()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->e()V

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->g()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->e:Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(ILu/e;)Landroid/view/View;
    .locals 8

    const v7, 0x7f0d00cf

    new-instance v0, Landroid/widget/TableRow;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v3, "%2d. "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->a(Lu/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/google/googlenav/ui/aM;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lu/e;)Ljava/lang/String;
    .locals 5

    const-string v0, "%s (%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lu/e;->x()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lu/e;->q()I

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b:Lu/d;

    invoke-virtual {v4}, Lu/d;->ao()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/y;->a(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;)Lu/e;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->d:Lu/e;

    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b:Lu/d;

    invoke-virtual {v1}, Lu/d;->ao()I

    move-result v1

    invoke-static {p1, v1}, Lcom/google/googlenav/ui/y;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private d()V
    .locals 4

    const/16 v3, 0x8

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f0f013b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->d:Lu/e;

    invoke-virtual {v0}, Lu/e;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f0f013a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0139

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private e()V
    .locals 4

    const/16 v3, 0x8

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->i:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->i:Landroid/widget/LinearLayout;

    const v1, 0x7f0f0080

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->d:Lu/e;

    invoke-virtual {v0}, Lu/e;->F()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->i:Landroid/widget/LinearLayout;

    const v1, 0x7f0f007f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->i:Landroid/widget/LinearLayout;

    const v1, 0x7f0f007e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private f()I
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->f:I

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b:Lu/d;

    invoke-virtual {v2}, Lu/d;->aa()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b:Lu/d;

    invoke-virtual {v2, v0}, Lu/d;->l(I)Lu/e;

    move-result-object v2

    invoke-virtual {v2}, Lu/e;->y()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private g()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Landroid/widget/TableLayout;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    new-instance v1, Landroid/widget/TableLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/TableLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    invoke-virtual {v0, v4, v4}, Landroid/widget/TableLayout;->setColumnStretchable(IZ)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    invoke-virtual {v0, v4, v4}, Landroid/widget/TableLayout;->setColumnShrinkable(IZ)V

    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->f:I

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b:Lu/d;

    invoke-virtual {v2}, Lu/d;->aa()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b:Lu/d;

    invoke-virtual {v2, v1}, Lu/d;->l(I)Lu/e;

    move-result-object v2

    invoke-virtual {v2}, Lu/e;->y()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->i()I

    move-result v1

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j()I

    move-result v2

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/TableLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->d:Lu/e;

    invoke-virtual {v0}, Lu/e;->F()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    sub-int v4, v1, v0

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4, v2}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->a(ILu/e;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private h()Landroid/view/LayoutInflater;
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    return-object p0
.end method

.method private i()I
    .locals 4

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0203e1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method private j()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->g:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->d:Lu/e;

    invoke-virtual {v0}, Lu/e;->G()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method b()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->c:Lu/f;

    invoke-virtual {v0}, Lu/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->c:Lu/f;

    invoke-virtual {v0}, Lu/f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->c:Lu/f;

    check-cast v0, Lu/o;

    invoke-virtual {v0}, Lu/o;->u()I

    move-result v1

    invoke-virtual {v0}, Lu/o;->t()I

    move-result v0

    :goto_0
    if-nez v0, :cond_3

    if-nez v1, :cond_2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->g:Z

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->f:I

    move v2, v1

    :goto_2
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b:Lu/d;

    invoke-virtual {v3}, Lu/d;->aa()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b:Lu/d;

    invoke-virtual {v3, v0}, Lu/d;->l(I)Lu/e;

    move-result-object v3

    invoke-virtual {v3}, Lu/e;->y()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    move v0, v1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lu/e;->s()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {v3}, Lu/e;->q()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move v0, v1

    move v1, v2

    goto :goto_0
.end method

.method public c()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->d:Lu/e;

    invoke-virtual {v0}, Lu/e;->H()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;->j:Landroid/widget/TableLayout;

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    return-void
.end method
