.class Li/ah;
.super Ljava/lang/Object;

# interfaces
.implements LI/B;


# instance fields
.field private a:Li/d;

.field private final b:Ljava/util/List;

.field private final c:[Lcom/google/googlenav/bu;

.field private final d:Lcom/google/googlenav/c;

.field private final e:Lcom/google/googlenav/ui/aj;

.field private f:Ljava/lang/String;

.field private g:Lcom/google/googlenav/ui/view/android/e;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/c;Ljava/util/List;[Lcom/google/googlenav/bu;Lcom/google/googlenav/ui/aj;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/ah;->d:Lcom/google/googlenav/c;

    iput-object p2, p0, Li/ah;->b:Ljava/util/List;

    iput-object p3, p0, Li/ah;->c:[Lcom/google/googlenav/bu;

    iput-object p4, p0, Li/ah;->e:Lcom/google/googlenav/ui/aj;

    iput-object p5, p0, Li/ah;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/google/googlenav/ui/aH;Landroid/widget/ImageView;)V
    .locals 3

    iget-object v0, p0, Li/ah;->e:Lcom/google/googlenav/ui/aj;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/aj;->a(Lcom/google/googlenav/ui/aH;)Lk/l;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    check-cast p0, LaB/f;

    invoke-virtual {p0}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_0
    if-eq v1, v0, :cond_1

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/ViewGroup;[Lcom/google/googlenav/bu;I)V
    .locals 1

    new-instance v0, Li/t;

    invoke-direct {v0, p0, p4, p1, p3}, Li/t;-><init>(Li/ah;ILcom/google/googlenav/ui/view/android/e;[Lcom/google/googlenav/bu;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Li/ah;)V
    .locals 0

    invoke-direct {p0}, Li/ah;->e()V

    return-void
.end method

.method static synthetic a(Li/ah;Li/d;)V
    .locals 0

    invoke-direct {p0, p1}, Li/ah;->a(Li/d;)V

    return-void
.end method

.method private a(Li/d;)V
    .locals 0

    iput-object p1, p0, Li/ah;->a:Li/d;

    return-void
.end method

.method static synthetic b(Li/ah;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Li/ah;->f:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Li/ah;->a:Li/d;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f0300cf

    return v0
.end method

.method public a(Landroid/view/View;)LI/k;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    new-instance v0, Li/d;

    invoke-direct {v0, v6}, Li/d;-><init>(Li/j;)V

    const v1, 0x7f0f0280

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    iput-object p0, v0, Li/d;->a:Landroid/view/ViewGroup;

    const v1, 0x7f0f027e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Li/d;->b:Landroid/view/View;

    const v1, 0x7f0f027f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Li/d;->c:Landroid/view/View;

    const v1, 0x7f0f0281

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Li/d;->e:Landroid/widget/TextView;

    const v1, 0x7f0f0024

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/16 v1, 0x2b9

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    invoke-static {p0, v1, v2}, Lcom/google/googlenav/ui/android/S;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)V

    move v1, v5

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    new-instance v2, Li/bs;

    invoke-direct {v2, v6}, Li/bs;-><init>(Li/j;)V

    const v3, 0x7f0300cc

    iget-object v4, v0, Li/d;->a:Landroid/view/ViewGroup;

    invoke-static {v3, v4, v5}, Lcom/google/googlenav/ui/android/S;->a(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    iput-object p0, v2, Li/bs;->a:Landroid/view/ViewGroup;

    iget-object v3, v2, Li/bs;->a:Landroid/view/ViewGroup;

    const v4, 0x7f0f027a

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v2, Li/bs;->c:Landroid/widget/ImageView;

    iget-object v3, v0, Li/d;->a:Landroid/view/ViewGroup;

    iget-object v4, v2, Li/bs;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v3, v2, Li/bs;->a:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, v2, Li/bs;->a:Landroid/view/ViewGroup;

    const v4, 0x7f0f027b

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v2, Li/bs;->b:Landroid/widget/TextView;

    iget-object v3, v0, Li/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;LI/k;)V
    .locals 7

    const/4 v4, 0x3

    const/16 v3, 0x8

    const/4 v6, 0x0

    check-cast p2, Li/d;

    iput-object p1, p0, Li/ah;->g:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {p2, p0}, Li/d;->a(Li/ah;)V

    iget-object v0, p0, Li/ah;->d:Lcom/google/googlenav/c;

    if-nez v0, :cond_1

    iget-object v0, p2, Li/d;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p2, Li/d;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Li/d;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, Li/d;->b:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p2, Li/d;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p2, Li/d;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Li/d;->c:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p2, Li/d;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    move v1, v6

    :goto_0
    if-ge v1, v4, :cond_2

    iget-object v0, p2, Li/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/bs;

    iget-object v2, v0, Li/bs;->a:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, v0, Li/bs;->c:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Li/ah;->b:Ljava/util/List;

    if-nez v0, :cond_5

    move v2, v4

    :goto_1
    iget-object v0, p0, Li/ah;->f:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Li/ah;->b:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Li/ah;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_6

    iget-object v0, p2, Li/d;->e:Landroid/widget/TextView;

    const/16 v1, 0x2b8

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/av;->aT:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1, v3}, Lcom/google/googlenav/ui/android/S;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)V

    iget-object v0, p2, Li/d;->e:Landroid/widget/TextView;

    new-instance v1, Li/u;

    invoke-direct {v1, p0, p1}, Li/u;-><init>(Li/ah;Lcom/google/googlenav/ui/view/android/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    move v3, v6

    :goto_3
    if-ge v3, v2, :cond_0

    iget-object v0, p2, Li/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/bs;

    iget-object v1, p0, Li/ah;->c:[Lcom/google/googlenav/bu;

    if-eqz v1, :cond_3

    iget-object v1, v0, Li/bs;->a:Landroid/view/ViewGroup;

    iget-object v4, p0, Li/ah;->c:[Lcom/google/googlenav/bu;

    invoke-direct {p0, p1, v1, v4, v3}, Li/ah;->a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/ViewGroup;[Lcom/google/googlenav/bu;I)V

    :cond_3
    iget-object v1, v0, Li/bs;->b:Landroid/widget/TextView;

    iget-object v4, p0, Li/ah;->d:Lcom/google/googlenav/c;

    invoke-virtual {v4}, Lcom/google/googlenav/c;->u()[Lcom/google/googlenav/bu;

    move-result-object v4

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/google/googlenav/bu;->b:Ljava/lang/String;

    sget-object v5, Lcom/google/googlenav/ui/av;->aZ:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v4, v5}, Lcom/google/googlenav/ui/android/S;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)V

    iget-object v1, p0, Li/ah;->b:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Li/ah;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_4

    iget-object v1, p0, Li/ah;->b:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/aH;

    iget-object v4, v0, Li/bs;->c:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v4}, Li/ah;->a(Lcom/google/googlenav/ui/aH;Landroid/widget/ImageView;)V

    iget-object v0, v0, Li/bs;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Li/ah;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v0

    goto :goto_1

    :cond_6
    iget-object v0, p2, Li/d;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Li/ah;->a:Li/d;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Li/ah;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Li/ah;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aH;

    iget-object v1, p0, Li/ah;->a:Li/d;

    iget-object v1, v1, Li/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/bs;

    iget-object v1, v1, Li/bs;->c:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Li/ah;->a(Lcom/google/googlenav/ui/aH;Landroid/widget/ImageView;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Li/ah;->g:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->g()Lx/z;

    move-result-object v0

    sget-object v1, Lx/f;->a:Lx/f;

    invoke-virtual {v0, v1}, Lx/z;->a(Lx/f;)V

    iget-object v0, p0, Li/ah;->g:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->f()V

    :cond_1
    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
