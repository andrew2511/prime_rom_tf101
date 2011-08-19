.class public Lh/cL;
.super Ljava/lang/Object;

# interfaces
.implements LI/n;


# instance fields
.field private final a:I

.field private final b:[Lcom/google/googlenav/bu;

.field private final c:LaU/a;

.field private final d:Lh/eY;

.field private e:Ljava/util/Timer;

.field private final f:Landroid/view/animation/Animation;

.field private final g:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>([Lcom/google/googlenav/bu;ILaU/a;Lh/eY;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/googlenav/ui/android/S;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lh/cL;->f:Landroid/view/animation/Animation;

    invoke-static {}, Lcom/google/googlenav/ui/android/S;->c()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lh/cL;->g:Landroid/view/animation/Animation;

    iput-object p1, p0, Lh/cL;->b:[Lcom/google/googlenav/bu;

    iput p2, p0, Lh/cL;->a:I

    iput-object p3, p0, Lh/cL;->c:LaU/a;

    iput-object p4, p0, Lh/cL;->d:Lh/eY;

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Lh/cL;->c()V

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lh/cL;->f:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lh/cL;->e:Ljava/util/Timer;

    iget-object v0, p0, Lh/cL;->e:Ljava/util/Timer;

    new-instance v1, Lh/dA;

    invoke-direct {v1, p0, p1}, Lh/dA;-><init>(Lh/cL;Landroid/view/View;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method static synthetic a(Lh/cL;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/cL;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lh/cL;)[Lcom/google/googlenav/bu;
    .locals 1

    iget-object v0, p0, Lh/cL;->b:[Lcom/google/googlenav/bu;

    return-object v0
.end method

.method static synthetic b(Lh/cL;)Lh/eY;
    .locals 1

    iget-object v0, p0, Lh/cL;->d:Lh/eY;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lh/cL;->c:LaU/a;

    new-instance v1, Lh/dv;

    invoke-direct {v1, p0, p1}, Lh/dv;-><init>(Lh/cL;Landroid/view/View;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lh/cL;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/cL;->b(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lh/cL;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lh/cL;->g:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f0300cd

    return v0
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V
    .locals 9

    const v1, 0x7f0f027c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Gallery;

    move-object v7, v0

    const v1, 0x7f0f006c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v1, 0x7f0f0024

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v1, 0x7f0f027b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v1, 0x7f0f027d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v1, Lh/ds;

    iget-object v2, p0, Lh/cL;->b:[Lcom/google/googlenav/bu;

    iget-object v8, p0, Lh/cL;->c:LaU/a;

    invoke-direct {v1, v7, v2, v8}, Lh/ds;-><init>(Landroid/widget/Gallery;[Lcom/google/googlenav/bu;LaU/a;)V

    invoke-virtual {v7, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget v1, p0, Lh/cL;->a:I

    if-lez v1, :cond_0

    iget v1, p0, Lh/cL;->a:I

    iget-object v2, p0, Lh/cL;->b:[Lcom/google/googlenav/bu;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lh/cL;->a:I

    invoke-virtual {v7, v1}, Landroid/widget/Gallery;->setSelection(I)V

    :cond_0
    new-instance v1, Lh/dz;

    invoke-direct {v1, p0, v4}, Lh/dz;-><init>(Lh/cL;Landroid/widget/TextView;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lh/dy;

    invoke-direct {v1, p0, v3}, Lh/dy;-><init>(Lh/cL;Landroid/view/View;)V

    invoke-virtual {v7, v1}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v1, Lh/dB;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lh/dB;-><init>(Lh/cL;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v7, v1}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public b()I
    .locals 1

    const v0, 0x1030009

    return v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lh/cL;->e:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/cL;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/cL;->e:Ljava/util/Timer;

    :cond_0
    return-void
.end method
