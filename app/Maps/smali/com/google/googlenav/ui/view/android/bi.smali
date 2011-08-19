.class public Lcom/google/googlenav/ui/view/android/bi;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private b:Lx/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lx/d;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bi;->b:Lx/d;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bi;->a:Landroid/view/LayoutInflater;

    return-void
.end method

.method private static a(Landroid/view/ViewGroup;ILcom/google/googlenav/ui/bx;I)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iget-object v0, p2, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    array-length v0, v0

    if-le v0, p3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p2, Lcom/google/googlenav/ui/bx;->i:[Lcom/google/googlenav/ui/aI;

    aget-object v0, v0, p3

    iget-object v0, v0, Lcom/google/googlenav/ui/aI;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

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

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bi;->b:Lx/d;

    invoke-virtual {v0}, Lx/d;->a()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bi;->b:Lx/d;

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
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    check-cast p2, Landroid/view/ViewGroup;

    move-object v1, p2

    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bi;->b:Lx/d;

    iget-object v0, v0, Lx/d;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/bx;

    const v0, 0x7f0f0009

    invoke-static {v1, v0, p0, v2}, Lcom/google/googlenav/ui/view/android/bi;->a(Landroid/view/ViewGroup;ILcom/google/googlenav/ui/bx;I)V

    const v0, 0x7f0f0013

    const/4 v2, 0x1

    invoke-static {v1, v0, p0, v2}, Lcom/google/googlenav/ui/view/android/bi;->a(Landroid/view/ViewGroup;ILcom/google/googlenav/ui/bx;I)V

    const v0, 0x7f0f0006

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0, p0}, Lcom/google/googlenav/ui/view/android/ah;->a(Landroid/widget/ImageView;Lcom/google/googlenav/ui/bx;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bi;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030005

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move-object v1, v0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
