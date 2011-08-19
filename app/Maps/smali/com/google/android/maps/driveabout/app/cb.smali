.class public Lcom/google/android/maps/driveabout/app/cb;
.super Landroid/app/Dialog;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/app/aR;

.field private final b:Lcom/google/android/maps/driveabout/app/cw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ay;Lcom/google/android/maps/driveabout/app/ay;IZZLcom/google/android/maps/driveabout/app/aR;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cb;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {p0, v6}, Lcom/google/android/maps/driveabout/app/cb;->requestWindowFeature(I)Z

    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/cb;->setContentView(I)V

    invoke-static {p1}, Las/a;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f0042

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/cb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f00b4

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/cb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v1, Lcom/google/android/maps/driveabout/app/cn;

    invoke-direct {v1, p0}, Lcom/google/android/maps/driveabout/app/cn;-><init>(Lcom/google/android/maps/driveabout/app/cb;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-static/range {p1 .. p6}, Lcom/google/android/maps/driveabout/app/cb;->a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ay;Lcom/google/android/maps/driveabout/app/ay;IZZ)[Lcom/google/android/maps/driveabout/app/bi;

    move-result-object v1

    const v0, 0x7f0f00b5

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/cb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v2, Lcom/google/android/maps/driveabout/app/cw;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v1, v3}, Lcom/google/android/maps/driveabout/app/cw;-><init>(Lcom/google/android/maps/driveabout/app/cb;Landroid/content/Context;[Lcom/google/android/maps/driveabout/app/bi;Lcom/google/android/maps/driveabout/app/cn;)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/app/cb;->b:Lcom/google/android/maps/driveabout/app/cw;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cb;->b:Lcom/google/android/maps/driveabout/app/cw;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cb;->b:Lcom/google/android/maps/driveabout/app/cw;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object p7, p0, Lcom/google/android/maps/driveabout/app/cb;->a:Lcom/google/android/maps/driveabout/app/aR;

    const v0, 0x7f0f00b7

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/app/cb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/google/android/maps/driveabout/app/cm;

    invoke-direct {v2, p0}, Lcom/google/android/maps/driveabout/app/cm;-><init>(Lcom/google/android/maps/driveabout/app/cb;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    array-length v2, v1

    move v3, v5

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/app/bi;->j()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v6

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_1
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cb;->a:Lcom/google/android/maps/driveabout/app/aR;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cb;->a:Lcom/google/android/maps/driveabout/app/aR;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/aR;->a(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cb;->a:Lcom/google/android/maps/driveabout/app/aR;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/aR;->b(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cb;->a:Lcom/google/android/maps/driveabout/app/aR;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/aR;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cb;->dismiss()V

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/app/bi;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cb;->a:Lcom/google/android/maps/driveabout/app/aR;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/google/android/maps/driveabout/app/aM;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bi;->j()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bi;->a(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cb;->a:Lcom/google/android/maps/driveabout/app/aR;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bi;->j()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/aR;->a(Z)V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/cb;->dismiss()V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/google/android/maps/driveabout/app/cg;

    if-nez v0, :cond_3

    instance-of v0, p1, Lcom/google/android/maps/driveabout/app/o;

    if-eqz v0, :cond_5

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bi;->j()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/app/bi;->a(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cb;->a:Lcom/google/android/maps/driveabout/app/aR;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/bi;->j()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/aR;->b(Z)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cb;->a:Lcom/google/android/maps/driveabout/app/aR;

    invoke-interface {v0, p1}, Lcom/google/android/maps/driveabout/app/aR;->a(Lcom/google/android/maps/driveabout/app/bi;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/cb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/cb;->a()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/cb;Lcom/google/android/maps/driveabout/app/bi;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/cb;->a(Lcom/google/android/maps/driveabout/app/bi;)V

    return-void
.end method

.method private static a(Ljava/util/ArrayList;Lcom/google/android/maps/driveabout/app/ay;I)V
    .locals 4

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/ay;->a()I

    move-result v1

    if-ge v3, v1, :cond_1

    invoke-virtual {p1, v3}, Lcom/google/android/maps/driveabout/app/ay;->a(I)Lcom/google/android/maps/driveabout/app/ay;

    move-result-object v2

    instance-of v1, v2, Lcom/google/android/maps/driveabout/app/bi;

    if-eqz v1, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/google/android/maps/driveabout/app/bi;

    move-object v1, v0

    invoke-virtual {v1, p2}, Lcom/google/android/maps/driveabout/app/bi;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v2, Lcom/google/android/maps/driveabout/app/bi;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ay;Lcom/google/android/maps/driveabout/app/ay;IZZ)[Lcom/google/android/maps/driveabout/app/bi;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p3, :cond_0

    new-instance v1, Lcom/google/android/maps/driveabout/app/cg;

    invoke-direct {v1, p0, v2}, Lcom/google/android/maps/driveabout/app/cg;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/cn;)V

    :goto_0
    invoke-virtual {v1, p5}, Lcom/google/android/maps/driveabout/app/bi;->a(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/google/android/maps/driveabout/app/aM;

    invoke-direct {v1, p0, v2}, Lcom/google/android/maps/driveabout/app/aM;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/cn;)V

    invoke-virtual {v1, p4}, Lcom/google/android/maps/driveabout/app/aM;->a(Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0, p1, p3}, Lcom/google/android/maps/driveabout/app/cb;->a(Ljava/util/ArrayList;Lcom/google/android/maps/driveabout/app/ay;I)V

    invoke-static {v0, p2, p3}, Lcom/google/android/maps/driveabout/app/cb;->a(Ljava/util/ArrayList;Lcom/google/android/maps/driveabout/app/ay;I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/maps/driveabout/app/bi;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/maps/driveabout/app/bi;

    return-object p0

    :cond_0
    new-instance v1, Lcom/google/android/maps/driveabout/app/o;

    invoke-direct {v1, p0, v2}, Lcom/google/android/maps/driveabout/app/o;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/cn;)V

    goto :goto_0
.end method
