.class public Lcom/google/googlenav/ui/view/android/L;
.super Landroid/widget/ArrayAdapter;


# instance fields
.field private final a:Landroid/view/LayoutInflater;

.field private final b:Lcom/google/googlenav/ui/view/android/e;

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/e;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/e;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/L;->b:Lcom/google/googlenav/ui/view/android/e;

    iput p3, p0, Lcom/google/googlenav/ui/view/android/L;->c:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/L;->a:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/e;Ljava/util/List;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p4}, Lcom/google/googlenav/ui/view/android/L;-><init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/e;I)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LI/B;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/L;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/L;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LI/B;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/L;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/L;->notifyDataSetChanged()V

    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/L;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LI/B;

    invoke-interface {p0}, LI/B;->c()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/L;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LI/B;

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/L;->a:Landroid/view/LayoutInflater;

    invoke-interface {v0}, LI/B;->a()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, LI/B;->a(Landroid/view/View;)LI/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_0
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/L;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-interface {v0, v3, v1}, LI/B;->a(Lcom/google/googlenav/ui/view/android/e;LI/k;)V

    return-object v2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LI/k;

    move-object v2, p2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/view/android/L;->c:I

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/L;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/view/android/L;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LI/B;

    invoke-interface {p0}, LI/B;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
