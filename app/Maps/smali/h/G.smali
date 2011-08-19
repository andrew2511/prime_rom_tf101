.class public Lh/G;
.super Ljava/lang/Object;

# interfaces
.implements LI/n;


# static fields
.field public static final a:[Ljava/lang/String;

.field private static final h:[I


# instance fields
.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/ArrayList;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;

.field private i:Landroid/widget/GridView;

.field private j:Lh/bh;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x8

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x2cb

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x2c8

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x2c7

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x2c6

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x2c5

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x2c9

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x2cc

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lh/G;->a:[Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lh/G;->h:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x3ct 0x2t 0x2t 0x7ft
        0x36t 0x2t 0x2t 0x7ft
        0x33t 0x2t 0x2t 0x7ft
        0xfft 0xfft 0xfft 0xfft
        0x30t 0x2t 0x2t 0x7ft
        0x2dt 0x2t 0x2t 0x7ft
        0x39t 0x2t 0x2t 0x7ft
        0x3ft 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/G;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lh/G;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Lh/G;->e:Ljava/lang/String;

    iput-boolean p5, p0, Lh/G;->f:Z

    iput-object p4, p0, Lh/G;->g:Ljava/lang/String;

    iput-boolean p6, p0, Lh/G;->d:Z

    return-void
.end method

.method static synthetic a(Lh/G;)Lh/bh;
    .locals 1

    iget-object v0, p0, Lh/G;->j:Lh/bh;

    return-object v0
.end method

.method private a(Lcom/google/googlenav/ui/view/android/e;)V
    .locals 2

    iget-object v0, p0, Lh/G;->i:Landroid/widget/GridView;

    new-instance v1, Lh/fe;

    invoke-direct {v1, p0, p1}, Lh/fe;-><init>(Lh/G;Lcom/google/googlenav/ui/view/android/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lh/G;->i:Landroid/widget/GridView;

    new-instance v1, Lh/fd;

    invoke-direct {v1, p0, p1}, Lh/fd;-><init>(Lh/G;Lcom/google/googlenav/ui/view/android/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method private b(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V
    .locals 4

    invoke-direct {p0}, Lh/G;->c()Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0f01ef

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x2cf

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/av;->au:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1, v3}, Lcom/google/googlenav/ui/android/S;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)V

    const v1, 0x7f0f01eb

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lh/G;->m:Landroid/view/View;

    const v1, 0x7f0f01ee

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lh/G;->l:Landroid/widget/TextView;

    const v1, 0x7f0f0268

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lh/G;->g:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lh/G;->a(Ljava/lang/String;)V

    new-instance v1, Lh/fh;

    invoke-direct {v1, p0, p1}, Lh/fh;-><init>(Lh/G;Lcom/google/googlenav/ui/view/android/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lh/G;->l:Landroid/widget/TextView;

    new-instance v1, Lh/fg;

    invoke-direct {v1, p0, p1}, Lh/fg;-><init>(Lh/G;Lcom/google/googlenav/ui/view/android/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f01ed

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lh/ff;

    invoke-direct {v1, p0, p1}, Lh/ff;-><init>(Lh/G;Lcom/google/googlenav/ui/view/android/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private c()Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f03007f

    invoke-static {v0, v2, v1}, Lcom/google/googlenav/ui/android/S;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f03007e

    invoke-static {v0, v2, v1}, Lcom/google/googlenav/ui/android/S;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private d()V
    .locals 8

    const v7, 0x7f02022a

    const/4 v6, 0x0

    iget-object v0, p0, Lh/G;->j:Lh/bh;

    invoke-static {v0}, Lh/bh;->a(Lh/bh;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v5, v6

    :goto_0
    sget-object v0, Lh/G;->a:[Ljava/lang/String;

    array-length v0, v0

    if-ge v5, v0, :cond_1

    iget-object v0, p0, Lh/G;->c:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lh/G;->a:[Ljava/lang/String;

    aget-object v0, v0, v5

    if-eqz v0, :cond_0

    new-instance v0, Lh/dF;

    sget-object v1, Lh/G;->h:[I

    aget v1, v1, v5

    const/4 v2, 0x0

    sget-object v3, Lh/G;->a:[Ljava/lang/String;

    aget-object v3, v3, v5

    sget-object v4, Lh/a;->a:Lh/a;

    invoke-direct/range {v0 .. v5}, Lh/dF;-><init>(ILjava/lang/String;Ljava/lang/String;Lh/a;I)V

    iget-object v1, p0, Lh/G;->j:Lh/bh;

    invoke-virtual {v1, v0}, Lh/bh;->a(Lh/dF;)V

    :cond_0
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_1
    iget-object v0, p0, Lh/G;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_2

    iget-object v0, p0, Lh/G;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lh/dF;

    iget-object v1, p0, Lh/G;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lh/a;->b:Lh/a;

    move v1, v7

    invoke-direct/range {v0 .. v5}, Lh/dF;-><init>(ILjava/lang/String;Ljava/lang/String;Lh/a;I)V

    iget-object v1, p0, Lh/G;->j:Lh/bh;

    invoke-virtual {v1, v0}, Lh/bh;->a(Lh/dF;)V

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    :cond_2
    new-instance v0, Lh/dF;

    const-string v2, "+"

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lh/a;->c:Lh/a;

    const/4 v5, -0x1

    move v1, v7

    invoke-direct/range {v0 .. v5}, Lh/dF;-><init>(ILjava/lang/String;Ljava/lang/String;Lh/a;I)V

    iget-object v1, p0, Lh/G;->j:Lh/bh;

    invoke-virtual {v1, v0}, Lh/bh;->a(Lh/dF;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f0300c2

    return v0
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V
    .locals 4

    const v0, 0x7f0f0267

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lh/G;->i:Landroid/widget/GridView;

    new-instance v0, Lh/bh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh/bh;-><init>(Lh/fj;)V

    iput-object v0, p0, Lh/G;->j:Lh/bh;

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object v0

    const/16 v1, 0x2c4

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lx/z;->o:Ljava/lang/String;

    const v0, 0x7f0f01f0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-direct {p0}, Lh/G;->d()V

    iget-object v0, p0, Lh/G;->i:Landroid/widget/GridView;

    iget-object v1, p0, Lh/G;->j:Lh/bh;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-boolean v0, p0, Lh/G;->d:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0f003d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lh/G;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lh/G;->k:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lh/G;->e:Ljava/lang/String;

    iget-boolean v1, p0, Lh/G;->f:Z

    invoke-virtual {p0, v0, v1}, Lh/G;->a(Ljava/lang/String;Z)V

    :cond_1
    const v0, 0x7f0f01f3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0f0269

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v2, p0, Lh/G;->d:Z

    if-eqz v2, :cond_3

    const/16 v2, 0x2d0

    :goto_0
    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->bD:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v2, v3}, Lcom/google/googlenav/ui/android/S;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)V

    new-instance v0, Lh/fj;

    invoke-direct {v0, p0, p1}, Lh/fj;-><init>(Lh/G;Lcom/google/googlenav/ui/view/android/e;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0f01f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lh/fi;

    invoke-direct {v1, p0, p1}, Lh/fi;-><init>(Lh/G;Lcom/google/googlenav/ui/view/android/e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p1}, Lh/G;->a(Lcom/google/googlenav/ui/view/android/e;)V

    iget-boolean v0, p0, Lh/G;->d:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lh/G;->b(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V

    :cond_2
    return-void

    :cond_3
    const/16 v2, 0x2d1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lh/G;->g:Ljava/lang/String;

    iget-boolean v0, p0, Lh/G;->d:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lh/G;->l:Landroid/widget/TextView;

    sget-object v1, Lcom/google/googlenav/ui/av;->as:Lcom/google/googlenav/ui/av;

    invoke-static {v0, p1, v1}, Lcom/google/googlenav/ui/android/S;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)V

    iget-object v0, p0, Lh/G;->m:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lh/G;->m:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lh/G;->e:Ljava/lang/String;

    iput-boolean p2, p0, Lh/G;->f:Z

    iget-object v0, p0, Lh/G;->k:Landroid/widget/TextView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lh/G;->k:Landroid/widget/TextView;

    sget-object v1, Lcom/google/googlenav/ui/av;->bF:Lcom/google/googlenav/ui/av;

    invoke-static {v0, p1, v1}, Lcom/google/googlenav/ui/android/S;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)V

    iget-object v0, p0, Lh/G;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v0, p0, Lh/G;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/G;->k:Landroid/widget/TextView;

    const v1, 0x7f02000f

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lh/G;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lh/G;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    iput-object p1, p0, Lh/G;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lh/G;->c:Ljava/util/ArrayList;

    invoke-direct {p0}, Lh/G;->d()V

    iget-object v0, p0, Lh/G;->j:Lh/bh;

    invoke-virtual {v0}, Lh/bh;->notifyDataSetChanged()V

    return-void
.end method

.method public b()I
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x103000c

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0d0032

    goto :goto_0
.end method
