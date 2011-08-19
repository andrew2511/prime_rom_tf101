.class public Lcom/google/android/maps/driveabout/app/RouteSelectorView;
.super Landroid/widget/LinearLayout;


# instance fields
.field private final a:[Lcom/google/android/maps/driveabout/app/eF;

.field private b:Lcom/google/android/maps/driveabout/app/eF;

.field private c:Lcom/google/android/maps/driveabout/app/t;

.field private d:LF/M;

.field private e:[LF/M;

.field private f:I

.field private g:Lcom/google/android/maps/driveabout/app/cj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/maps/driveabout/app/eF;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/eF;

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/maps/driveabout/app/eF;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/eF;

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/RouteSelectorView;)Lcom/google/android/maps/driveabout/app/cj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->g:Lcom/google/android/maps/driveabout/app/cj;

    return-object v0
.end method

.method static a(Landroid/content/Context;LF/M;II)Ljava/lang/String;
    .locals 10

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-lez p2, :cond_5

    add-int/lit8 v3, p2, -0x1

    :goto_0
    move v9, v3

    move-object v3, v0

    move v0, v9

    :goto_1
    invoke-virtual {p1}, LF/M;->j()I

    move-result v4

    sub-int/2addr v4, v8

    if-ge v0, v4, :cond_2

    invoke-virtual {p1, v0}, LF/M;->a(I)LF/y;

    move-result-object v4

    invoke-virtual {v4}, LF/y;->v()LF/C;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, LF/C;->b()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, LF/M;->a(I)LF/y;

    move-result-object v5

    invoke-virtual {v5}, LF/y;->e()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v6, v5, v1

    if-lez v6, :cond_0

    invoke-virtual {v4}, LF/C;->b()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    move v1, v5

    :cond_0
    int-to-float v6, p3

    const/high16 v7, 0x3e80

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    invoke-virtual {v4}, LF/C;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, LF/C;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v8, :cond_3

    const v0, 0x7f0b0078

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_3
    if-eqz v3, :cond_4

    move-object v0, v3

    goto :goto_2

    :cond_4
    const v0, 0x7f0b0087

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move v3, p2

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/google/android/maps/driveabout/app/t;->a()Lcom/google/android/maps/driveabout/app/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->c:Lcom/google/android/maps/driveabout/app/t;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030038

    invoke-virtual {v0, v1, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/eF;

    new-instance v1, Lcom/google/android/maps/driveabout/app/eF;

    const v2, 0x7f0f00de

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/google/android/maps/driveabout/app/eF;-><init>(Lcom/google/android/maps/driveabout/app/RouteSelectorView;Landroid/view/View;ZLcom/google/android/maps/driveabout/app/bl;)V

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/eF;

    new-instance v1, Lcom/google/android/maps/driveabout/app/eF;

    const v2, 0x7f0f00df

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/google/android/maps/driveabout/app/eF;-><init>(Lcom/google/android/maps/driveabout/app/RouteSelectorView;Landroid/view/View;ZLcom/google/android/maps/driveabout/app/bl;)V

    aput-object v1, v0, v6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/eF;

    const/4 v1, 0x2

    new-instance v2, Lcom/google/android/maps/driveabout/app/eF;

    const v3, 0x7f0f00e0

    invoke-virtual {p0, v3}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/google/android/maps/driveabout/app/eF;-><init>(Lcom/google/android/maps/driveabout/app/RouteSelectorView;Landroid/view/View;ZLcom/google/android/maps/driveabout/app/bl;)V

    aput-object v2, v0, v1

    new-instance v0, Lcom/google/android/maps/driveabout/app/eF;

    const v1, 0x7f0f00dd

    invoke-virtual {p0, v1}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1, v6, v5}, Lcom/google/android/maps/driveabout/app/eF;-><init>(Lcom/google/android/maps/driveabout/app/RouteSelectorView;Landroid/view/View;ZLcom/google/android/maps/driveabout/app/bl;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b:Lcom/google/android/maps/driveabout/app/eF;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b:Lcom/google/android/maps/driveabout/app/eF;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/app/eF;->b(Z)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/RouteSelectorView;)Lcom/google/android/maps/driveabout/app/t;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->c:Lcom/google/android/maps/driveabout/app/t;

    return-object v0
.end method


# virtual methods
.method public a(III)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->f:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->f:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b:Lcom/google/android/maps/driveabout/app/eF;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->d:LF/M;

    invoke-static {v1, v2, p1, p2}, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a(Landroid/content/Context;LF/M;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/eF;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b:Lcom/google/android/maps/driveabout/app/eF;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->d:LF/M;

    invoke-virtual {v1}, LF/M;->p()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/google/android/maps/driveabout/app/eF;->a(II)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b:Lcom/google/android/maps/driveabout/app/eF;

    invoke-virtual {v0, p3, v3}, Lcom/google/android/maps/driveabout/app/eF;->a(IZ)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b:Lcom/google/android/maps/driveabout/app/eF;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/eF;->a(I)V

    return-void
.end method

.method public a(LF/M;[LF/M;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->d:LF/M;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->e:[LF/M;

    invoke-static {v0, p2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->d:LF/M;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->e:[LF/M;

    array-length v0, p2

    if-le v0, v5, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/eF;

    aget-object v0, v0, v5

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/app/eF;->a(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/eF;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/app/eF;->a(I)V

    move v0, v3

    :goto_1
    array-length v1, p2

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/eF;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/google/android/maps/driveabout/app/eF;->a(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/eF;

    aget-object v1, v1, v0

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/app/eF;->a(LF/M;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/eF;

    aget-object v1, v1, v0

    aget-object v2, p2, v0

    if-ne p1, v2, :cond_1

    move v2, v5

    :goto_2
    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/app/eF;->a(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b:Lcom/google/android/maps/driveabout/app/eF;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/app/eF;->a(I)V

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_3
    if-ge v0, v6, :cond_4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->a:[Lcom/google/android/maps/driveabout/app/eF;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Lcom/google/android/maps/driveabout/app/eF;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b:Lcom/google/android/maps/driveabout/app/eF;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/eF;->a(LF/M;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->b:Lcom/google/android/maps/driveabout/app/eF;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/app/eF;->a(I)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/app/cj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/RouteSelectorView;->g:Lcom/google/android/maps/driveabout/app/cj;

    return-void
.end method
