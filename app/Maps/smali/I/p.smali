.class public LI/p;
.super Ljava/lang/Object;

# interfaces
.implements LI/n;


# static fields
.field private static a:J


# instance fields
.field private b:Landroid/view/View;

.field private c:Lcom/google/googlenav/ui/view/android/e;

.field private d:Landroid/content/Context;

.field private e:Lcom/google/googlenav/ui/view/android/W;

.field private f:LI/t;

.field private g:LB/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lx/B;Landroid/view/ViewGroup;Lu/d;LB/c;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x1

    const/4 v6, 0x0

    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v0, 0x7f0f01eb

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setId(I)V

    move v8, v6

    :goto_0
    invoke-virtual {p1}, Lx/B;->a()I

    move-result v0

    if-ge v8, v0, :cond_2

    invoke-virtual {p1, v8}, Lx/B;->a(I)Lcom/google/googlenav/ui/bx;

    move-result-object v1

    instance-of v0, v1, Lcom/google/googlenav/ui/g;

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f03008f

    invoke-virtual {v0, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bx;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v9}, Lcom/google/googlenav/ui/android/TemplateView;->setFocusable(Z)V

    const v2, 0x7f0201b0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/TemplateView;->setBackgroundResource(I)V

    new-instance v2, LI/K;

    invoke-direct {v2, p0, v1}, LI/K;-><init>(LI/p;Lcom/google/googlenav/ui/bx;)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/android/TemplateView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;

    iget-object v1, p0, LI/p;->d:Landroid/content/Context;

    iget-object v4, p0, LI/p;->c:Lcom/google/googlenav/ui/view/android/e;

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->ak()Lcom/google/googlenav/ui/bB;

    move-result-object v5

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;-><init>(Landroid/content/Context;Lu/d;LB/c;Lcom/google/googlenav/ui/view/android/e;Lcom/google/googlenav/ui/bB;Z)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    return-object v7
.end method

.method static synthetic a(LI/p;)Lcom/google/googlenav/ui/view/android/e;
    .locals 1

    iget-object v0, p0, LI/p;->c:Lcom/google/googlenav/ui/view/android/e;

    return-object v0
.end method

.method public static a(Lx/B;)Lu/d;
    .locals 4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lx/B;->a()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lx/B;->a(I)Lcom/google/googlenav/ui/bx;

    move-result-object v1

    instance-of v3, v1, Lcom/google/googlenav/ui/g;

    if-eqz v3, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/google/googlenav/ui/g;

    move-object p0, v0

    iget-object v1, p0, Lcom/google/googlenav/ui/g;->a:Lu/d;

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, LI/p;->c:Lcom/google/googlenav/ui/view/android/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(LI/p;I)V
    .locals 0

    invoke-direct {p0, p1}, LI/p;->a(I)V

    return-void
.end method

.method private a(Landroid/view/View;ILcom/google/googlenav/ui/bx;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f0137

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/android/TemplateView;

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    const v0, 0x7f0f0201

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-direct {p0}, LI/p;->k()LI/t;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private a(Landroid/view/View;Lx/u;)V
    .locals 7

    const v6, 0x7f0d004f

    const v5, 0x7f0d004e

    const/4 v4, 0x0

    const/16 v3, 0x8

    const v0, 0x7f0f010d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/android/DirectionSummaryTemplateView;

    const v0, 0x7f0f0203

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p2, Lx/u;->e:Z

    if-nez v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/android/DirectionSummaryTemplateView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p2, Lx/u;->k:Lcom/google/googlenav/ui/bx;

    if-eqz v1, :cond_1

    iget-object v0, p2, Lx/u;->k:Lcom/google/googlenav/ui/bx;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/DirectionSummaryTemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    const v0, 0x7f0f0209

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/android/DirectionSummaryTemplateView;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f0204

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iget-object v0, p2, Lx/u;->j:Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lx/u;->j:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget v0, p2, Lx/u;->f:I

    iget v1, p2, Lx/u;->i:I

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/y;->a(II)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0f0205

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    invoke-virtual {v1, v0, v5, v6}, Lcom/google/googlenav/ui/aV;->b(Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p2, Lx/u;->f:I

    if-nez v0, :cond_2

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    const v0, 0x7f0f0206

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const v0, 0x7f0f0207

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    iget v2, p2, Lx/u;->g:I

    invoke-static {v2}, Lcom/google/googlenav/ui/aM;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v6}, Lcom/google/googlenav/ui/aV;->b(Ljava/lang/String;II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lx/u;->h:Ljava/lang/String;

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p2, Lx/u;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    const v0, 0x7f0f0208

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/android/TemplateView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateView;->b(Z)V

    iget-object v0, p2, Lx/u;->a:Lcom/google/googlenav/ui/bx;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/TemplateView;->b(Lcom/google/googlenav/ui/bx;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private a(Lx/B;Landroid/widget/ListView;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, LI/p;->a(Lx/B;)Lu/d;

    move-result-object v0

    new-instance v1, LB/j;

    invoke-direct {v1, v0}, LB/j;-><init>(Lu/d;)V

    invoke-virtual {v1}, LB/j;->a()LB/c;

    move-result-object v1

    iput-object v1, p0, LI/p;->g:LB/c;

    iget-object v1, p0, LI/p;->g:LB/c;

    invoke-direct {p0, p1, p2, v0, v1}, LI/p;->a(Lx/B;Landroid/view/ViewGroup;Lu/d;LB/c;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, LI/p;->d:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method

.method private a(Lx/z;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Lx/B;

    move-object v1, v0

    iget-object v2, p0, LI/p;->b:Landroid/view/View;

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0f0004

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    invoke-direct {p0}, LI/p;->i()Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {p0, v4, v2, v1, v3}, LI/p;->a(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Lx/B;Landroid/widget/AbsListView;)Landroid/view/View;

    invoke-direct {p0, p1}, LI/p;->b(Lx/z;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, v3}, LI/p;->a(Lx/B;Landroid/widget/ListView;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, LI/p;->a:J

    iget-object v2, p0, LI/p;->d:Landroid/content/Context;

    iget-object v4, p0, LI/p;->c:Lcom/google/googlenav/ui/view/android/e;

    invoke-static {v2, v1, v4, v3}, Lcom/google/googlenav/ui/view/android/bj;->a(Landroid/content/Context;Lx/B;Lcom/google/googlenav/ui/view/android/e;Landroid/widget/ListView;)V

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {v1}, Lx/B;->c()Z

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    goto :goto_0
.end method

.method private b(Lx/z;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p1, Lx/z;->m:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;
    .locals 4

    invoke-direct {p0}, LI/p;->j()Landroid/widget/ListView;

    iget-object v1, p0, LI/p;->b:Landroid/view/View;

    const v2, 0x7f0f01eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;

    if-eqz v3, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;

    move-object p0, v0

    move-object v1, p0

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private i()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, LI/p;->c:Lcom/google/googlenav/ui/view/android/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LI/p;->c:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    goto :goto_0
.end method

.method private j()Landroid/widget/ListView;
    .locals 2

    iget-object v0, p0, LI/p;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, LI/p;->b:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ListView;

    if-nez v0, :cond_0

    iget-object v0, p0, LI/p;->b:Landroid/view/View;

    const v1, 0x7f0f0004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    iget-object p0, p0, LI/p;->b:Landroid/view/View;

    check-cast p0, Landroid/widget/ListView;

    move-object v0, p0

    goto :goto_0
.end method

.method private k()LI/t;
    .locals 2

    iget-object v0, p0, LI/p;->f:LI/t;

    if-nez v0, :cond_0

    new-instance v0, LI/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LI/t;-><init>(LI/p;LI/K;)V

    iput-object v0, p0, LI/p;->f:LI/t;

    :cond_0
    iget-object v0, p0, LI/p;->f:LI/t;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f030079

    return v0
.end method

.method protected a(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Lx/B;Landroid/widget/AbsListView;)Landroid/view/View;
    .locals 4

    iget-object v0, p3, Lx/B;->d:Lx/G;

    iget v1, p3, Lx/B;->m:I

    invoke-virtual {p0, p1, v0, v1}, LI/p;->a(Landroid/view/LayoutInflater;Lx/G;I)Landroid/view/View;

    move-result-object v0

    check-cast p4, Landroid/widget/ListView;

    invoke-virtual {p4, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/W;

    const v2, 0x7f0f01f8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/googlenav/ui/view/android/W;-><init>(Landroid/view/View;)V

    iput-object v1, p0, LI/p;->e:Lcom/google/googlenav/ui/view/android/W;

    iget-object v1, p0, LI/p;->e:Lcom/google/googlenav/ui/view/android/W;

    iget-object v2, p0, LI/p;->c:Lcom/google/googlenav/ui/view/android/e;

    invoke-direct {p0}, LI/p;->k()LI/t;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/ui/view/android/W;->a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method protected a(Landroid/view/LayoutInflater;Lx/G;I)Landroid/view/View;
    .locals 4

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f030084

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0f0200

    iget-object v2, p2, Lx/G;->l:Lcom/google/googlenav/ui/bx;

    const/16 v3, 0x192

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, LI/p;->a(Landroid/view/View;ILcom/google/googlenav/ui/bx;Ljava/lang/String;)V

    const v1, 0x7f0f0202

    iget-object v2, p2, Lx/G;->m:Lcom/google/googlenav/ui/bx;

    const/16 v3, 0x421

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, LI/p;->a(Landroid/view/View;ILcom/google/googlenav/ui/bx;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-object v0

    :cond_0
    const v0, 0x7f030083

    goto :goto_0
.end method

.method public a(II)V
    .locals 2

    invoke-direct {p0}, LI/p;->j()Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, LI/p;->f()Lx/B;

    move-result-object v1

    invoke-direct {p0, v1}, LI/p;->b(Lx/z;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_0

    invoke-direct {p0}, LI/p;->h()Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1, p2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    instance-of v1, p1, Landroid/widget/AbsListView;

    if-eqz v1, :cond_2

    check-cast p1, Landroid/widget/AbsListView;

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p0

    check-cast p0, Landroid/widget/ListAdapter;

    :goto_0
    instance-of v1, p0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    check-cast p0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    move-object p0, v1

    goto :goto_0

    :cond_0
    instance-of v1, p0, Landroid/widget/BaseAdapter;

    if-eqz v1, :cond_2

    instance-of v1, p0, Lcom/google/googlenav/ui/view/android/O;

    if-eqz v1, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/google/googlenav/ui/view/android/O;

    move-object v1, v0

    invoke-interface {v1}, Lcom/google/googlenav/ui/view/android/O;->a()V

    :cond_1
    check-cast p0, Landroid/widget/BaseAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V
    .locals 2

    iput-object p2, p0, LI/p;->b:Landroid/view/View;

    invoke-direct {p0}, LI/p;->j()Landroid/widget/ListView;

    move-result-object v0

    invoke-direct {p0}, LI/p;->k()LI/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0}, LI/p;->j()Landroid/widget/ListView;

    move-result-object v0

    invoke-direct {p0}, LI/p;->k()LI/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iput-object p1, p0, LI/p;->c:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LI/p;->d:Landroid/content/Context;

    invoke-virtual {p0}, LI/p;->f()Lx/B;

    move-result-object v0

    invoke-direct {p0, v0}, LI/p;->a(Lx/z;)V

    invoke-virtual {p0}, LI/p;->d()V

    invoke-virtual {p0}, LI/p;->f()Lx/B;

    move-result-object v0

    iget-object v0, v0, Lx/B;->d:Lx/G;

    check-cast v0, Lx/u;

    invoke-direct {p0, p2, v0}, LI/p;->a(Landroid/view/View;Lx/u;)V

    return-void
.end method

.method protected a(Lcom/google/googlenav/ui/br;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/google/googlenav/ui/br;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/googlenav/ui/bx;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/googlenav/ui/bx;

    move-object v1, v0

    iget-object v1, v1, Lcom/google/googlenav/ui/bx;->t:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, LI/p;->c:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/br;->h()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/googlenav/ui/br;->l()I

    move-result v4

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    const v0, 0x103000c

    return v0
.end method

.method protected b(Lcom/google/googlenav/ui/br;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/google/googlenav/ui/br;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LI/p;->c:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/br;->i()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/br;->l()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, LI/p;->b:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, LI/p;->f()Lx/B;

    move-result-object v0

    invoke-virtual {v0}, Lx/B;->k()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, LI/p;->b:Landroid/view/View;

    const v2, 0x7f0f0004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Lx/B;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, LI/p;->a(Landroid/view/View;)V

    :cond_2
    invoke-virtual {v0}, Lx/B;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, LI/p;->d()V

    :cond_3
    invoke-virtual {v0}, Lx/B;->n()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, LI/p;->e()Z

    :cond_4
    invoke-virtual {v0}, Lx/B;->l()V

    goto :goto_0
.end method

.method protected d()V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LI/p;->f()Lx/B;

    move-result-object v0

    iget-object v0, v0, Lx/B;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LI/p;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, LI/p;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LI/p;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f024a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0f0380

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, LI/p;->c:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object v1

    iget-object v1, v1, Lx/z;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/S;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, LI/p;->c:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/a;->requestWindowFeature(I)Z

    goto :goto_0
.end method

.method public e()Z
    .locals 4

    invoke-virtual {p0}, LI/p;->f()Lx/B;

    move-result-object v0

    invoke-direct {p0, v0}, LI/p;->b(Lx/z;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, LI/p;->j()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, LI/p;->b:Landroid/view/View;

    const v2, 0x7f0f01eb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    :cond_0
    invoke-virtual {p0}, LI/p;->f()Lx/B;

    move-result-object v1

    invoke-virtual {p0}, LI/p;->f()Lx/B;

    move-result-object v2

    invoke-static {v2}, LI/p;->a(Lx/B;)Lu/d;

    move-result-object v2

    iget-object v3, p0, LI/p;->g:LB/c;

    invoke-direct {p0, v1, v0, v2, v3}, LI/p;->a(Lx/B;Landroid/view/ViewGroup;Lu/d;LB/c;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Lx/B;
    .locals 1

    iget-object v0, p0, LI/p;->c:Lcom/google/googlenav/ui/view/android/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LI/p;->c:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object p0

    check-cast p0, Lx/B;

    move-object v0, p0

    goto :goto_0
.end method

.method public g()Lcom/google/googlenav/ui/view/android/W;
    .locals 1

    iget-object v0, p0, LI/p;->e:Lcom/google/googlenav/ui/view/android/W;

    return-object v0
.end method
