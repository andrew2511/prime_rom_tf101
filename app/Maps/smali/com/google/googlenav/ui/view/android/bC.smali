.class Lcom/google/googlenav/ui/view/android/bC;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/bs;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/bs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bC;->a:Lcom/google/googlenav/ui/view/android/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bC;->a:Lcom/google/googlenav/ui/view/android/bs;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/bs;->b(Lcom/google/googlenav/ui/view/android/bs;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bC;->a:Lcom/google/googlenav/ui/view/android/bs;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/bs;->b(Lcom/google/googlenav/ui/view/android/bs;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bC;->a:Lcom/google/googlenav/ui/view/android/bs;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/view/android/bs;->a(Lcom/google/googlenav/ui/view/android/bs;Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bC;->a:Lcom/google/googlenav/ui/view/android/bs;

    const-string v1, "s"

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/bs;->a(Lcom/google/googlenav/ui/view/android/bs;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bC;->a:Lcom/google/googlenav/ui/view/android/bs;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/bs;->i(Lcom/google/googlenav/ui/view/android/bs;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bC;->a:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/bs;->b:Lcom/google/googlenav/ui/view/android/e;

    const/16 v2, 0x6a7

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bC;->a:Lcom/google/googlenav/ui/view/android/bs;

    invoke-static {v3}, Lcom/google/googlenav/ui/view/android/bs;->j(Lcom/google/googlenav/ui/view/android/bs;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
