.class public Lcom/google/googlenav/ui/view/android/H;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private b:Lx/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lx/d;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/H;->b:Lx/d;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/H;->a:Landroid/view/LayoutInflater;

    return-void
.end method

.method private static a(Landroid/view/ViewGroup;ILcom/google/googlenav/ui/bx;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/S;->a([Lcom/google/googlenav/ui/aI;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Lcom/google/googlenav/ui/bx;)V
    .locals 4

    const v3, 0x7f0f001e

    const/16 v1, 0x8

    const v2, 0x7f0f001d

    if-nez p2, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1, v3, p2}, Lcom/google/googlenav/ui/view/android/H;->a(Landroid/view/ViewGroup;ILcom/google/googlenav/ui/bx;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-static {p0, p2}, Lcom/google/googlenav/ui/view/android/ah;->a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bx;)V

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/H;->b:Lx/d;

    invoke-virtual {v0}, Lx/d;->a()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/H;->b:Lx/d;

    invoke-virtual {v0, p1}, Lx/d;->a(I)Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x8

    if-eqz p2, :cond_0

    check-cast p2, Landroid/view/ViewGroup;

    move-object v2, p2

    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/H;->b:Lx/d;

    iget-object v0, v0, Lx/d;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/A;

    const v1, 0x7f0f001b

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0f001a

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0f0009

    iget-object v3, v0, Lx/A;->a:Lcom/google/googlenav/ui/bx;

    invoke-static {v2, v1, v3}, Lcom/google/googlenav/ui/view/android/H;->a(Landroid/view/ViewGroup;ILcom/google/googlenav/ui/bx;)V

    const v1, 0x7f0f001c

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, v0, Lx/A;->a:Lcom/google/googlenav/ui/bx;

    iget-object v3, v3, Lcom/google/googlenav/ui/bx;->x:Lcom/google/googlenav/ui/aI;

    if-eqz v3, :cond_1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v0, Lx/A;->a:Lcom/google/googlenav/ui/bx;

    iget-object v3, v3, Lcom/google/googlenav/ui/bx;->x:Lcom/google/googlenav/ui/aI;

    iget-object v3, v3, Lcom/google/googlenav/ui/aI;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v1, 0x7f0f0006

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, v0, Lx/A;->a:Lcom/google/googlenav/ui/bx;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/view/android/ah;->a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bx;)V

    const v1, 0x7f0f0008

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, v0, Lx/A;->a:Lcom/google/googlenav/ui/bx;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/view/android/ah;->b(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bx;)V

    iget-object v0, v0, Lx/A;->b:Lcom/google/googlenav/ui/bx;

    invoke-direct {p0, v2, v0}, Lcom/google/googlenav/ui/view/android/H;->a(Landroid/view/ViewGroup;Lcom/google/googlenav/ui/bx;)V

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/H;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030008

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
