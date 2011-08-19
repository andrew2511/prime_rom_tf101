.class public Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;
.super Landroid/widget/TableLayout;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lu/d;

.field private final c:LB/c;

.field private final d:Lcom/google/googlenav/ui/view/android/rideabout/i;

.field private final e:Lcom/google/googlenav/ui/view/android/rideabout/k;

.field private final f:Lcom/google/googlenav/ui/view/android/e;

.field private final g:Lcom/google/googlenav/ui/bB;

.field private final h:Ljava/util/HashMap;

.field private final i:LB/r;

.field private final j:Ljava/util/ArrayList;

.field private final k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lu/d;LB/c;Lcom/google/googlenav/ui/view/android/e;Lcom/google/googlenav/ui/bB;Z)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lj/u;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->h:Ljava/util/HashMap;

    invoke-static {}, Lj/X;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->j:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->b:Lu/d;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->c:LB/c;

    iput-object p4, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->f:Lcom/google/googlenav/ui/view/android/e;

    iput-object p5, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->g:Lcom/google/googlenav/ui/bB;

    iput-boolean p6, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->k:Z

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/i;

    invoke-direct {v0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/i;

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/k;

    const v1, 0x7f0d00c9

    const v2, 0x7f0d00c7

    invoke-direct {v0, p1, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/k;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/k;

    new-instance v0, LB/r;

    invoke-direct {v0, p3}, LB/r;-><init>(LB/c;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->i:LB/r;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->d()V

    invoke-virtual {p0, v5, v4}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->setColumnStretchable(IZ)V

    invoke-virtual {p0, v5, v4}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->setColumnShrinkable(IZ)V

    const/16 v0, 0x8

    invoke-virtual {p0, v3, v3, v3, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->setPadding(IIII)V

    return-void
.end method

.method private static a(Landroid/view/ViewGroup;)Landroid/view/LayoutInflater;
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    return-object p0
.end method

.method private a(Landroid/view/ViewGroup;I)Landroid/widget/LinearLayout;
    .locals 3

    invoke-static {p1}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Landroid/view/ViewGroup;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03010f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f0336

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, p2}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Landroid/view/View;I)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 2

    const-string v0, ""

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/LinearLayout;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/i;

    invoke-virtual {v1, p1, p2}, Lcom/google/googlenav/ui/view/android/rideabout/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090048

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;)Lcom/google/googlenav/ui/view/android/e;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->f:Lcom/google/googlenav/ui/view/android/e;

    return-object v0
.end method

.method private a(LB/l;LB/t;)Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;
    .locals 7

    new-instance v6, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p2}, LB/t;->r()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;-><init>(Landroid/content/Context;IZ)V

    invoke-direct {p0, v6}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Landroid/widget/TableRow;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/i;

    invoke-virtual {p2}, LB/t;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/i;->a(I)I

    move-result v5

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    sget-object v3, Lcom/google/googlenav/ui/view/android/rideabout/j;->b:Lcom/google/googlenav/ui/view/android/rideabout/j;

    sget-object v4, Lcom/google/googlenav/ui/view/android/rideabout/j;->b:Lcom/google/googlenav/ui/view/android/rideabout/j;

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;-><init>(Landroid/content/Context;LB/l;Lcom/google/googlenav/ui/view/android/rideabout/j;Lcom/google/googlenav/ui/view/android/rideabout/j;I)V

    invoke-virtual {p2}, LB/t;->ai_()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;Landroid/widget/LinearLayout;)V

    return-object v6
.end method

.method private a(LB/r;)Ljava/util/TreeMap;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, LB/r;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    :cond_0
    invoke-virtual {p1}, LB/r;->a()LB/l;

    move-result-object v2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->c:LB/c;

    invoke-virtual {v0, v2}, LB/c;->a(LB/l;)LB/u;

    move-result-object v0

    invoke-virtual {v0}, LB/u;->p()LB/h;

    move-result-object v3

    sget-object v4, LB/h;->c:LB/h;

    if-ne v3, v4, :cond_1

    check-cast v0, LB/t;

    invoke-direct {p0, v2, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(LB/l;LB/t;)Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, LB/r;->b()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_2
    return-object v0
.end method

.method private a(LB/p;LB/l;)V
    .locals 5

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p1}, LB/p;->r()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Landroid/widget/TableRow;)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentEnd;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentEnd;-><init>(Landroid/content/Context;LB/l;)V

    invoke-virtual {p1}, LB/p;->ai_()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {p1}, LB/p;->r()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Landroid/view/View;I)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;Landroid/widget/LinearLayout;)V

    invoke-direct {p0, v0, p2}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;LB/l;)V

    return-void
.end method

.method private a(LB/q;LB/l;)V
    .locals 10

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p1}, LB/q;->r()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Landroid/widget/TableRow;)V

    new-instance v1, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStart;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    sget-object v3, Lcom/google/googlenav/ui/view/android/rideabout/j;->c:Lcom/google/googlenav/ui/view/android/rideabout/j;

    invoke-direct {v1, v2, p2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStart;-><init>(Landroid/content/Context;LB/l;Lcom/google/googlenav/ui/view/android/rideabout/j;)V

    invoke-virtual {p1}, LB/q;->ai_()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {p1}, LB/q;->r()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Landroid/view/ViewGroup;I)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/k;

    const/16 v5, 0x3a0

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/google/googlenav/ui/view/android/rideabout/p;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p1}, LB/q;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/googlenav/ui/view/android/rideabout/o;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/p;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/google/googlenav/ui/view/android/rideabout/k;->a(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/p;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->b:Lu/d;

    invoke-virtual {p1}, LB/q;->r()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;-><init>(Landroid/content/Context;Lu/d;I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a(Lcom/google/googlenav/ui/view/android/rideabout/f;)V

    invoke-direct {p0, v0, p2}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;LB/l;)V

    return-void
.end method

.method private a(LB/y;ZLB/l;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    new-instance v6, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p1}, LB/y;->r()I

    move-result v1

    invoke-direct {v6, v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v6}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Landroid/widget/TableRow;)V

    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/j;->a:Lcom/google/googlenav/ui/view/android/rideabout/j;

    move-object v4, v0

    :goto_0
    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    sget-object v3, Lcom/google/googlenav/ui/view/android/rideabout/j;->b:Lcom/google/googlenav/ui/view/android/rideabout/j;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/i;

    invoke-virtual {p1}, LB/y;->j()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/google/googlenav/ui/view/android/rideabout/i;->a(I)I

    move-result v5

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;-><init>(Landroid/content/Context;LB/l;Lcom/google/googlenav/ui/view/android/rideabout/j;Lcom/google/googlenav/ui/view/android/rideabout/j;I)V

    invoke-virtual {p1}, LB/y;->ai_()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, LB/y;->w()Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_1

    move v3, v7

    :goto_1
    invoke-direct {p0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {p1}, LB/y;->r()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Landroid/view/ViewGroup;I)Landroid/widget/LinearLayout;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/view/android/rideabout/j;->c:Lcom/google/googlenav/ui/view/android/rideabout/j;

    if-ne v4, v3, :cond_2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/k;

    const/16 v4, 0x380

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Lcom/google/googlenav/ui/view/android/rideabout/p;

    iget-object v7, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p1}, LB/y;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/googlenav/ui/view/android/rideabout/o;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/p;

    move-result-object v7

    aput-object v7, v5, v9

    invoke-virtual {v3, v4, v5}, Lcom/google/googlenav/ui/view/android/rideabout/k;->a(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/p;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/i;

    invoke-virtual {p1}, LB/y;->H()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v10}, Lcom/google/googlenav/ui/view/android/rideabout/i;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->b:Lu/d;

    invoke-virtual {p1}, LB/y;->r()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/google/googlenav/ui/view/android/rideabout/WalkingDirectionsView;-><init>(Landroid/content/Context;Lu/d;I)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a(Lcom/google/googlenav/ui/view/android/rideabout/f;)V

    :goto_2
    invoke-virtual {v6, v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;Landroid/widget/LinearLayout;)V

    invoke-direct {p0, v6, p3}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;LB/l;)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/j;->c:Lcom/google/googlenav/ui/view/android/rideabout/j;

    move-object v4, v0

    goto :goto_0

    :cond_1
    move v3, v9

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/k;

    const/16 v4, 0x37f

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Lcom/google/googlenav/ui/view/android/rideabout/p;

    invoke-virtual {v3, v4, v5}, Lcom/google/googlenav/ui/view/android/rideabout/k;->a(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/p;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/i;

    invoke-virtual {p1}, LB/y;->H()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v10}, Lcom/google/googlenav/ui/view/android/rideabout/i;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2
.end method

.method private a(Landroid/view/View;I)V
    .locals 1

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/c;

    invoke-direct {v0, p0, p2}, Lcom/google/googlenav/ui/view/android/rideabout/c;-><init>(Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->k:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/view/android/rideabout/e;

    invoke-direct {v0, p0, p2}, Lcom/google/googlenav/ui/view/android/rideabout/e;-><init>(Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method private a(Landroid/widget/TableRow;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    invoke-virtual {p1, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;LB/l;)V
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->h:Ljava/util/HashMap;

    new-instance v1, Lcom/google/googlenav/ui/view/android/rideabout/l;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildCount()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->c()Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->h()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/l;-><init>(II)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;LB/l;LB/l;)V
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->h:Ljava/util/HashMap;

    new-instance v1, Lcom/google/googlenav/ui/view/android/rideabout/l;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildCount()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->c()Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->h()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/l;-><init>(II)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->h:Ljava/util/HashMap;

    new-instance v2, Lcom/google/googlenav/ui/view/android/rideabout/l;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildCount()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->c()Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;->a()I

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/google/googlenav/ui/view/android/rideabout/l;-><init>(II)V

    invoke-virtual {v1, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/view/android/rideabout/j;LB/v;Ljava/util/TreeMap;LB/l;)V
    .locals 18

    new-instance v11, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual/range {p2 .. p2}, LB/v;->r()I

    move-result v5

    invoke-direct {v11, v4, v5}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Landroid/widget/TableRow;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/i;

    move-object v4, v0

    invoke-virtual/range {p2 .. p2}, LB/v;->j()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/googlenav/ui/view/android/rideabout/i;->a(I)I

    move-result v9

    new-instance v4, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    move-object v5, v0

    sget-object v8, Lcom/google/googlenav/ui/view/android/rideabout/j;->b:Lcom/google/googlenav/ui/view/android/rideabout/j;

    move-object/from16 v6, p4

    move-object/from16 v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentStation;-><init>(Landroid/content/Context;LB/l;Lcom/google/googlenav/ui/view/android/rideabout/j;Lcom/google/googlenav/ui/view/android/rideabout/j;I)V

    invoke-virtual/range {p2 .. p2}, LB/v;->ai_()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, LB/v;->w()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, LB/v;->r()I

    move-result v5

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Landroid/view/ViewGroup;I)Landroid/widget/LinearLayout;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, LB/v;->s()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LR/a;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/i;

    move-object v5, v0

    invoke-virtual/range {p2 .. p2}, LB/v;->s()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/googlenav/ui/view/android/rideabout/i;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    invoke-virtual/range {p2 .. p2}, LB/v;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, LB/v;->t()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LR/a;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual/range {p2 .. p2}, LB/v;->u()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    :goto_0
    invoke-virtual/range {p2 .. p2}, LB/v;->l()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LR/a;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/k;

    move-object v14, v0

    const/16 v5, 0x375

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v15

    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [Lcom/google/googlenav/ui/view/android/rideabout/p;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual/range {p2 .. p2}, LB/v;->v()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, LB/v;->g()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->g:Lcom/google/googlenav/ui/bB;

    move-object v10, v0

    invoke-static/range {v5 .. v10}, Lcom/google/googlenav/ui/view/android/rideabout/o;->a(Landroid/content/Context;Ljava/lang/String;JZLcom/google/googlenav/ui/bB;)Lcom/google/googlenav/ui/view/android/rideabout/p;

    move-result-object v5

    aput-object v5, v16, v17

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual/range {p2 .. p2}, LB/v;->l()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/googlenav/ui/view/android/rideabout/o;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/p;

    move-result-object v6

    aput-object v6, v16, v5

    invoke-virtual/range {v14 .. v16}, Lcom/google/googlenav/ui/view/android/rideabout/k;->a(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/p;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    invoke-virtual/range {p2 .. p2}, LB/v;->i()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/i;

    move-object v5, v0

    const/16 v6, 0x385

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, LB/v;->i()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/googlenav/ui/view/android/rideabout/i;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/i;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, LB/v;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/googlenav/ui/view/android/rideabout/i;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v11, v4, v12}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;LB/l;)V

    invoke-virtual/range {p2 .. p2}, LB/v;->r()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move v2, v4

    move-object v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Ljava/util/TreeMap;ILcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;)V

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual/range {p2 .. p2}, LB/v;->u()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, LB/v;->v()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, LB/v;->g()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->g:Lcom/google/googlenav/ui/bB;

    move-object v10, v0

    invoke-static/range {v5 .. v10}, Lcom/google/googlenav/ui/view/android/rideabout/o;->a(Landroid/content/Context;Ljava/lang/String;JZLcom/google/googlenav/ui/bB;)Lcom/google/googlenav/ui/view/android/rideabout/p;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/k;

    move-object v6, v0

    const/16 v7, 0x374

    invoke-static {v7}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/google/googlenav/ui/view/android/rideabout/p;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/google/googlenav/ui/view/android/rideabout/k;->a(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/p;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    move-object v6, v5

    goto/16 :goto_0
.end method

.method private a(Lcom/google/googlenav/ui/view/android/rideabout/j;LB/y;LB/v;Ljava/util/TreeMap;LB/l;LB/l;)V
    .locals 18

    new-instance v12, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual/range {p3 .. p3}, LB/v;->r()I

    move-result v5

    invoke-direct {v12, v4, v5}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Landroid/widget/TableRow;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/i;

    move-object v4, v0

    invoke-virtual/range {p2 .. p2}, LB/y;->j()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/googlenav/ui/view/android/rideabout/i;->a(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/i;

    move-object v4, v0

    invoke-virtual/range {p3 .. p3}, LB/v;->j()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/googlenav/ui/view/android/rideabout/i;->a(I)I

    move-result v11

    new-instance v4, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    move-object v5, v0

    sget-object v9, Lcom/google/googlenav/ui/view/android/rideabout/j;->b:Lcom/google/googlenav/ui/view/android/rideabout/j;

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p1

    invoke-direct/range {v4 .. v11}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegmentTransfer;-><init>(Landroid/content/Context;LB/l;LB/l;Lcom/google/googlenav/ui/view/android/rideabout/j;Lcom/google/googlenav/ui/view/android/rideabout/j;II)V

    invoke-virtual/range {p2 .. p2}, LB/y;->ai_()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Ljava/lang/String;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, LB/v;->r()I

    move-result v5

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Landroid/view/ViewGroup;I)Landroid/widget/LinearLayout;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, LB/v;->s()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LR/a;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/i;

    move-object v5, v0

    invoke-virtual/range {p3 .. p3}, LB/v;->s()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/googlenav/ui/view/android/rideabout/i;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    invoke-virtual/range {p3 .. p3}, LB/v;->t()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LR/a;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual/range {p3 .. p3}, LB/v;->u()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    :goto_0
    invoke-virtual/range {p3 .. p3}, LB/v;->l()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LR/a;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/k;

    move-object v14, v0

    const/16 v5, 0x39c

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v15

    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [Lcom/google/googlenav/ui/view/android/rideabout/p;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual/range {p3 .. p3}, LB/v;->v()J

    move-result-wide v7

    invoke-virtual/range {p3 .. p3}, LB/v;->g()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->g:Lcom/google/googlenav/ui/bB;

    move-object v10, v0

    invoke-static/range {v5 .. v10}, Lcom/google/googlenav/ui/view/android/rideabout/o;->a(Landroid/content/Context;Ljava/lang/String;JZLcom/google/googlenav/ui/bB;)Lcom/google/googlenav/ui/view/android/rideabout/p;

    move-result-object v5

    aput-object v5, v16, v17

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual/range {p3 .. p3}, LB/v;->l()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/googlenav/ui/view/android/rideabout/o;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/googlenav/ui/view/android/rideabout/p;

    move-result-object v6

    aput-object v6, v16, v5

    invoke-virtual/range {v14 .. v16}, Lcom/google/googlenav/ui/view/android/rideabout/k;->a(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/p;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    invoke-virtual/range {p3 .. p3}, LB/v;->i()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/i;

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x385

    invoke-static {v7}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, LB/v;->i()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/googlenav/ui/view/android/rideabout/i;->b(Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->d:Lcom/google/googlenav/ui/view/android/rideabout/i;

    move-object v5, v0

    invoke-virtual/range {p2 .. p2}, LB/y;->H()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, LB/v;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/googlenav/ui/view/android/rideabout/i;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v12, v4, v11}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;Landroid/widget/LinearLayout;)V

    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;LB/l;LB/l;)V

    invoke-virtual/range {p3 .. p3}, LB/v;->r()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move v2, v4

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Ljava/util/TreeMap;ILcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;)V

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->e:Lcom/google/googlenav/ui/view/android/rideabout/k;

    move-object v14, v0

    const/16 v5, 0x39b

    invoke-static {v5}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v15

    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [Lcom/google/googlenav/ui/view/android/rideabout/p;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual/range {p3 .. p3}, LB/v;->u()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, LB/v;->v()J

    move-result-wide v7

    invoke-virtual/range {p3 .. p3}, LB/v;->g()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->g:Lcom/google/googlenav/ui/bB;

    move-object v10, v0

    invoke-static/range {v5 .. v10}, Lcom/google/googlenav/ui/view/android/rideabout/o;->a(Landroid/content/Context;Ljava/lang/String;JZLcom/google/googlenav/ui/bB;)Lcom/google/googlenav/ui/view/android/rideabout/p;

    move-result-object v5

    aput-object v5, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/google/googlenav/ui/view/android/rideabout/k;->a(Ljava/lang/String;[Lcom/google/googlenav/ui/view/android/rideabout/p;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_3
    move-object v6, v5

    goto/16 :goto_0
.end method

.method private a(Ljava/util/TreeMap;ILcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->b:Lu/d;

    invoke-virtual {v0, p2}, Lu/d;->c(I)Lcom/google/googlenav/bf;

    move-result-object v0

    check-cast v0, Lu/f;

    invoke-virtual {v0}, Lu/f;->c()Lu/e;

    move-result-object v0

    new-instance v2, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lj/X;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v1, v3, v0}, Lcom/google/googlenav/ui/view/android/rideabout/ExpandIntermediateStopCommandView;-><init>(Landroid/content/Context;Ljava/util/List;Lu/e;)V

    invoke-virtual {p3}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->e()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p3, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a(Lcom/google/googlenav/ui/view/android/rideabout/f;)V

    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a(Lcom/google/googlenav/ui/view/android/rideabout/f;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LB/l;

    invoke-direct {p0, v1, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;LB/l;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v9, LB/r;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->c:LB/c;

    invoke-direct {v9, v1}, LB/r;-><init>(LB/c;)V

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/j;->a:Lcom/google/googlenav/ui/view/android/rideabout/j;

    move-object v2, v1

    :goto_0
    invoke-virtual {v9}, LB/r;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v9}, LB/r;->a()LB/l;

    move-result-object v6

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->c:LB/c;

    invoke-virtual {v1, v6}, LB/c;->a(LB/l;)LB/u;

    move-result-object v8

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/d;->a:[I

    invoke-virtual {v8}, LB/u;->p()LB/h;

    move-result-object v3

    invoke-virtual {v3}, LB/h;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    move-object v1, v2

    :goto_2
    move-object v2, v1

    goto :goto_0

    :pswitch_0
    move-object v0, v8

    check-cast v0, LB/q;

    move-object v1, v0

    invoke-direct {p0, v1, v6}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(LB/q;LB/l;)V

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/j;->c:Lcom/google/googlenav/ui/view/android/rideabout/j;

    goto :goto_2

    :pswitch_1
    check-cast v8, LB/v;

    invoke-direct {p0, v9}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(LB/r;)Ljava/util/TreeMap;

    move-result-object v1

    invoke-direct {p0, v2, v8, v1, v6}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/j;LB/v;Ljava/util/TreeMap;LB/l;)V

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/j;->b:Lcom/google/googlenav/ui/view/android/rideabout/j;

    goto :goto_2

    :pswitch_2
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->c:LB/c;

    invoke-virtual {v1, v6}, LB/c;->f(LB/l;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->c:LB/c;

    invoke-virtual {v1, v6}, LB/c;->c(LB/l;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v9}, LB/r;->a()LB/l;

    move-result-object v7

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->c:LB/c;

    invoke-virtual {v1, v7}, LB/c;->a(LB/l;)LB/u;

    move-result-object v4

    move-object v0, v8

    check-cast v0, LB/y;

    move-object v3, v0

    check-cast v4, LB/v;

    invoke-direct {p0, v9}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(LB/r;)Ljava/util/TreeMap;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(Lcom/google/googlenav/ui/view/android/rideabout/j;LB/y;LB/v;Ljava/util/TreeMap;LB/l;LB/l;)V

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/j;->b:Lcom/google/googlenav/ui/view/android/rideabout/j;

    move-object v2, v1

    move v1, v11

    :goto_3
    if-nez v1, :cond_0

    check-cast v8, LB/y;

    invoke-virtual {v9}, LB/r;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v11

    :goto_4
    invoke-direct {p0, v8, v1, v6}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(LB/y;ZLB/l;)V

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/j;->c:Lcom/google/googlenav/ui/view/android/rideabout/j;

    goto :goto_2

    :cond_1
    move v1, v10

    goto :goto_4

    :pswitch_3
    check-cast v8, LB/p;

    invoke-direct {p0, v8, v6}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->a(LB/p;LB/l;)V

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    move v1, v10

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->b:Lu/d;

    invoke-virtual {v0}, Lu/d;->j()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->b:Lu/d;

    invoke-virtual {v0}, Lu/d;->j()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildCount()I

    move-result v2

    move v3, v6

    move v4, v6

    :goto_1
    if-ge v3, v2, :cond_2

    invoke-virtual {p0, v3}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->a()I

    move-result v5

    if-gt v1, v5, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v6, v6}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->measure(II)V

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/ui/view/android/rideabout/n;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(LB/b;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->h:Ljava/util/HashMap;

    iget-object v1, p1, LB/b;->a:LB/l;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/l;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/l;->a:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public b()I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->c()Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->h()I

    move-result v0

    goto :goto_0
.end method

.method public b(LB/b;)I
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->h:Ljava/util/HashMap;

    iget-object v1, p1, LB/b;->a:LB/l;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/l;

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->i:LB/r;

    iget-object v2, p1, LB/b;->a:LB/l;

    invoke-virtual {v1, v2}, LB/r;->a(LB/l;)LB/r;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->i:LB/r;

    invoke-virtual {v1}, LB/r;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->h:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->i:LB/r;

    invoke-virtual {v2}, LB/r;->a()LB/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/view/android/rideabout/l;

    iget v1, v1, Lcom/google/googlenav/ui/view/android/rideabout/l;->b:I

    :goto_1
    iget v2, v0, Lcom/google/googlenav/ui/view/android/rideabout/l;->a:I

    invoke-virtual {p0, v2}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->c()Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    move-result-object v3

    iget v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/l;->b:I

    iget v4, p1, LB/b;->b:F

    invoke-virtual {v3, v0, v1, v4}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->a(IIF)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method

.method public b(Lcom/google/googlenav/ui/view/android/rideabout/n;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()I
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->c()Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->i()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method public c(LB/b;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->h:Ljava/util/HashMap;

    iget-object v1, p1, LB/b;->a:LB/l;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/l;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/google/googlenav/ui/view/android/rideabout/l;->a:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p1, LB/b;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteTableRow;->d()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    invoke-super/range {p0 .. p5}, Landroid/widget/TableLayout;->onLayout(ZIIII)V

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/LineSchematicView;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/rideabout/n;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/rideabout/n;->a(ZIIII)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    return-void
.end method
