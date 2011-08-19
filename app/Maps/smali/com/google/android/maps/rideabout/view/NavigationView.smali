.class public Lcom/google/android/maps/rideabout/view/NavigationView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/google/android/maps/rideabout/view/b;


# instance fields
.field private a:Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;

.field private b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/ViewFlipper;

.field private e:Landroid/widget/ViewFlipper;

.field private f:I

.field private final g:Lu/d;

.field private final h:LB/c;

.field private final i:Lcom/google/googlenav/ui/view/android/e;

.field private final j:Lcom/google/googlenav/ui/bB;

.field private k:Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;

.field private l:Landroid/widget/ImageView;

.field private m:Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;

.field private n:Z

.field private volatile o:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lu/d;LB/c;Lcom/google/googlenav/ui/view/android/e;Lcom/google/googlenav/ui/bB;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->n:Z

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->o:Z

    iput-object p2, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->g:Lu/d;

    iput-object p3, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->h:LB/c;

    iput-object p4, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->i:Lcom/google/googlenav/ui/view/android/e;

    iput-object p5, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->j:Lcom/google/googlenav/ui/bB;

    invoke-direct {p0, p1}, Lcom/google/android/maps/rideabout/view/NavigationView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/rideabout/view/NavigationView;)Lcom/google/googlenav/ui/view/android/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->i:Lcom/google/googlenav/ui/view/android/e;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 10

    const/4 v7, 0x1

    const/4 v9, 0x0

    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0300e8

    invoke-virtual {v1, v2, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v1, 0x7f0f02dd

    invoke-virtual {p0, v1}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;

    iput-object v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->k:Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;

    const v1, 0x7f0f02bb

    invoke-virtual {p0, v1}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    iput-object v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    const v1, 0x7f0f02be

    invoke-virtual {p0, v1}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->d:Landroid/widget/ViewFlipper;

    const v1, 0x7f0f02c1

    invoke-virtual {p0, v1}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->e:Landroid/widget/ViewFlipper;

    const v1, 0x7f0f02bd

    invoke-virtual {p0, v1}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f0f02bf

    invoke-virtual {p0, v1}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    move-object v8, v0

    new-instance v1, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;

    iget-object v3, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->g:Lu/d;

    iget-object v4, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->h:LB/c;

    iget-object v5, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->i:Lcom/google/googlenav/ui/view/android/e;

    iget-object v6, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->j:Lcom/google/googlenav/ui/bB;

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;-><init>(Landroid/content/Context;Lu/d;LB/c;Lcom/google/googlenav/ui/view/android/e;Lcom/google/googlenav/ui/bB;Z)V

    iput-object v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    iget-object v2, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;

    invoke-virtual {v1, v2}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->a(Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;)V

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->f:I

    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->c:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->c()I

    move-result v2

    iget v3, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->f:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2, v9, v9, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const v1, 0x7f0f02c4

    invoke-virtual {p0, v1}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->l:Landroid/widget/ImageView;

    new-instance v2, Lcom/google/android/maps/rideabout/view/c;

    invoke-direct {v2, p0}, Lcom/google/android/maps/rideabout/view/c;-><init>(Lcom/google/android/maps/rideabout/view/NavigationView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0f0285

    invoke-virtual {p0, v1}, Lcom/google/android/maps/rideabout/view/NavigationView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;

    iput-object v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->m:Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    return-void
.end method

.method public a(LB/b;)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->c:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    invoke-virtual {v2}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;

    invoke-virtual {v3, p1}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->b(LB/b;)I

    move-result v3

    iget v4, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->f:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public a(LB/b;Z)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->o:Z

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->o:Z

    move v0, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(LB/b;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->a()V

    :goto_1
    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/rideabout/view/NavigationView;->c(LB/b;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->a(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->j()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/maps/rideabout/view/NavigationView;->a(LB/b;)V

    goto :goto_2

    :cond_2
    move v0, p2

    goto :goto_0
.end method

.method public a(LB/l;)V
    .locals 3

    new-instance v0, Lcom/google/android/maps/rideabout/view/j;

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->h:LB/c;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/maps/rideabout/view/j;-><init>(Landroid/content/Context;LB/c;LB/l;)V

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/j;->show()V

    return-void
.end method

.method public a(Lcom/google/android/maps/rideabout/view/g;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->a(Lcom/google/android/maps/rideabout/view/g;)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/n;)V

    return-void
.end method

.method public a(I)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    invoke-virtual {v1}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->getScrollY()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->scrollTo(II)V

    return-void
.end method

.method public b(LB/b;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/maps/rideabout/view/NavigationView;->c(LB/b;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->b(I)V

    return-void
.end method

.method public b(Lcom/google/android/maps/rideabout/view/g;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->a()V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->b(Lcom/google/googlenav/ui/view/android/rideabout/n;)V

    return-void
.end method

.method public c(LB/b;)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->b(LB/b;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    invoke-virtual {v1}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->b()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->c()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->b:Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;

    invoke-virtual {v0}, Lcom/google/android/maps/rideabout/view/LineSchematicScrollView;->d()V

    return-void
.end method

.method public d(LB/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->a:Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->c(LB/b;)V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->n:Z

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->j()V

    return-void
.end method

.method public e(LB/b;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/rideabout/view/NavigationView;->a(LB/b;Z)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->o:Z

    goto :goto_0
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->n:Z

    invoke-virtual {p0}, Lcom/google/android/maps/rideabout/view/NavigationView;->j()V

    return-void
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Lcom/google/android/maps/rideabout/view/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->k:Lcom/google/android/maps/rideabout/view/TransitStepDescriptionView;

    return-object v0
.end method

.method public i()Lcom/google/android/maps/rideabout/view/k;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->m:Lcom/google/android/maps/rideabout/view/TransitNavigationFooterView;

    return-object v0
.end method

.method public j()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->startFlipping()V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->startFlipping()V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/maps/rideabout/view/NavigationView;->d:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    goto :goto_0
.end method
