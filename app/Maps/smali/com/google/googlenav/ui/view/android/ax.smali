.class Lcom/google/googlenav/ui/view/android/ax;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/bs;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/bs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ax;->a:Lcom/google/googlenav/ui/view/android/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ax;->a:Lcom/google/googlenav/ui/view/android/bs;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/bs;->f(Lcom/google/googlenav/ui/view/android/bs;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const v1, 0x7f0f02f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/ax;->a:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v2, v2, Lcom/google/googlenav/ui/view/android/bs;->b:Lcom/google/googlenav/ui/view/android/e;

    const/16 v3, 0x6b2

    const/4 v4, -0x1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ax;->a:Lcom/google/googlenav/ui/view/android/bs;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-static {v1, v0, p0}, Lcom/google/googlenav/ui/view/android/bs;->a(Lcom/google/googlenav/ui/view/android/bs;Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_0
.end method
