.class public abstract Lcom/google/googlenav/ui/view/android/bc;
.super Landroid/widget/ArrayAdapter;

# interfaces
.implements Lcom/google/googlenav/ui/view/android/O;


# instance fields
.field protected final a:Lcom/google/googlenav/ui/view/android/e;

.field private final b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/googlenav/ui/view/android/e;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bc;->a:Lcom/google/googlenav/ui/view/android/e;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/bc;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method protected a(LI/B;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, v0, LI/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LI/k;

    move-object v1, p2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bc;->a:Lcom/google/googlenav/ui/view/android/e;

    invoke-interface {p1, v2, v0}, LI/B;->a(Lcom/google/googlenav/ui/view/android/e;LI/k;)V

    return-object v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bc;->b:Landroid/view/LayoutInflater;

    invoke-interface {p1}, LI/B;->a()I

    move-result v1

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, LI/B;->a(Landroid/view/View;)LI/k;

    move-result-object v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method
