.class Lcom/google/googlenav/ui/view/android/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/bs;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/bs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/au;->a:Lcom/google/googlenav/ui/view/android/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f02ed

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/au;->a:Lcom/google/googlenav/ui/view/android/bs;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/android/bs;->a(Lcom/google/googlenav/ui/view/android/bs;Z)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/au;->a:Lcom/google/googlenav/ui/view/android/bs;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/android/bs;->b(Lcom/google/googlenav/ui/view/android/bs;)Landroid/view/ViewGroup;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz v0, :cond_1

    const-string v0, "oi"

    :goto_1
    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/bs;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "oo"

    goto :goto_1
.end method
