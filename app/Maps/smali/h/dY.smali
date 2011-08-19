.class public Lh/dY;
.super Lh/eR;


# instance fields
.field private a:Lcom/google/googlenav/z;

.field private b:Lcom/google/googlenav/a;

.field private c:Lcom/google/googlenav/bL;

.field private d:Z

.field private e:Landroid/widget/ArrayAdapter;

.field private f:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lh/eY;Lcom/google/googlenav/bL;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/eR;-><init>(Lh/eY;)V

    iput-object p2, p0, Lh/dY;->c:Lcom/google/googlenav/bL;

    return-void
.end method

.method static synthetic a(Lh/dY;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .locals 0

    iput-object p1, p0, Lh/dY;->f:Landroid/view/LayoutInflater;

    return-object p1
.end method

.method static synthetic a(Lh/dY;Landroid/widget/ArrayAdapter;)Landroid/widget/ArrayAdapter;
    .locals 0

    iput-object p1, p0, Lh/dY;->e:Landroid/widget/ArrayAdapter;

    return-object p1
.end method

.method public static a(Lcom/google/googlenav/bL;Lcom/google/googlenav/z;ILcom/google/googlenav/a;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/z;->ax()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {p1}, Lcom/google/googlenav/z;->H()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v3, " loc:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/googlenav/z;->G()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x449

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    :goto_0
    const/16 v3, 0x59

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "t="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v4}, Lac/g;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, p4, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Lcom/google/googlenav/V;

    invoke-virtual {p1}, Lcom/google/googlenav/z;->m()Lcom/google/googlenav/bs;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/googlenav/V;-><init>(Lcom/google/googlenav/bs;)V

    invoke-virtual {v0, v2}, Lcom/google/googlenav/V;->a(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->c(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->b(I)Lcom/google/googlenav/V;

    move-result-object v0

    const-string v1, "20"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->b(Ljava/lang/String;)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/V;->a(Lcom/google/googlenav/a;)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/z;->P()Lf/C;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->a(Lf/C;)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/z;->as()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/V;->c(Z)Lcom/google/googlenav/V;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/bs;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/google/googlenav/bL;->a(Lcom/google/googlenav/bs;)V

    return-void

    :cond_0
    invoke-static {v1, v2}, Lcom/google/googlenav/z;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    move-object v8, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_0
.end method

.method static synthetic a(Lh/dY;)V
    .locals 0

    invoke-direct {p0}, Lh/dY;->j()V

    return-void
.end method

.method static synthetic b(Lh/dY;)Landroid/widget/ArrayAdapter;
    .locals 1

    iget-object v0, p0, Lh/dY;->e:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic c(Lh/dY;)Lcom/google/googlenav/bL;
    .locals 1

    iget-object v0, p0, Lh/dY;->c:Lcom/google/googlenav/bL;

    return-object v0
.end method

.method static synthetic d(Lh/dY;)Lcom/google/googlenav/z;
    .locals 1

    iget-object v0, p0, Lh/dY;->a:Lcom/google/googlenav/z;

    return-object v0
.end method

.method static synthetic e(Lh/dY;)Lcom/google/googlenav/a;
    .locals 1

    iget-object v0, p0, Lh/dY;->b:Lcom/google/googlenav/a;

    return-object v0
.end method

.method static synthetic f(Lh/dY;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lh/dY;->f:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private h()LI/n;
    .locals 1

    new-instance v0, Lh/ba;

    invoke-direct {v0, p0}, Lh/ba;-><init>(Lh/dY;)V

    return-object v0
.end method

.method private j()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    move v1, v6

    :goto_0
    iget-object v0, p0, Lh/dY;->a:Lcom/google/googlenav/z;

    invoke-virtual {v0}, Lcom/google/googlenav/z;->ax()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_5

    iget-object v0, p0, Lh/dY;->a:Lcom/google/googlenav/z;

    invoke-virtual {v0}, Lcom/google/googlenav/z;->ax()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    const-string v2, " loc:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-boolean v3, p0, Lh/dY;->d:Z

    if-eqz v3, :cond_1

    if-ne v2, v5, :cond_2

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    if-ne v2, v5, :cond_0

    :cond_2
    if-eq v2, v5, :cond_3

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, " loc:"

    const-string v3, ""

    invoke-static {v0, v3, v2}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    const/16 v0, 0x33d

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lh/dY;->a:Lcom/google/googlenav/z;

    invoke-virtual {v3}, Lcom/google/googlenav/z;->G()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    sget-object v3, Lcom/google/googlenav/ui/av;->as:Lcom/google/googlenav/ui/av;

    sget-object v4, Lcom/google/googlenav/ui/av;->at:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v3, v4}, Lcom/google/googlenav/ui/i;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;)Ljava/util/Vector;

    move-result-object v3

    move v4, v6

    :goto_2
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v4, v0, :cond_4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aI;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/android/S;->a(Lcom/google/googlenav/ui/aI;Landroid/text/SpannableStringBuilder;)V

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lh/dY;->e:Landroid/widget/ArrayAdapter;

    new-instance v3, Lh/fm;

    invoke-direct {v3, v2, v1}, Lh/fm;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method public T_()V
    .locals 3

    iget-object v0, p0, Lh/dY;->a:Lcom/google/googlenav/z;

    invoke-virtual {p0}, Lh/dY;->v()V

    iget-object v1, p0, Lh/dY;->b:Lcom/google/googlenav/a;

    iget-boolean v2, p0, Lh/dY;->d:Z

    invoke-virtual {p0, v0, v1, v2}, Lh/dY;->a(Lcom/google/googlenav/z;Lcom/google/googlenav/a;Z)V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/dY;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    move-result v0

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/dY;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected a()V
    .locals 3

    iget-object v0, p0, Lh/dY;->j:Lx/J;

    if-nez v0, :cond_0

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    new-instance v1, Lx/z;

    invoke-direct {p0}, Lh/dY;->h()LI/n;

    move-result-object v2

    invoke-direct {v1, v2}, Lx/z;-><init>(LI/n;)V

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/dY;->j:Lx/J;

    :cond_0
    iget-object v0, p0, Lh/dY;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method

.method public a(Lcom/google/googlenav/z;Lcom/google/googlenav/a;Z)V
    .locals 0

    iput-object p1, p0, Lh/dY;->a:Lcom/google/googlenav/z;

    iput-object p2, p0, Lh/dY;->b:Lcom/google/googlenav/a;

    iput-boolean p3, p0, Lh/dY;->d:Z

    invoke-super {p0}, Lh/eR;->u()V

    return-void
.end method

.method protected b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lh/dY;->a:Lcom/google/googlenav/z;

    iput-object v0, p0, Lh/dY;->b:Lcom/google/googlenav/a;

    invoke-super {p0}, Lh/eR;->b()V

    return-void
.end method
