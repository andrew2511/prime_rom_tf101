.class Lh/ce;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lh/fJ;


# direct methods
.method constructor <init>(Lh/fJ;)V
    .locals 0

    iput-object p1, p0, Lh/ce;->a:Lh/fJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f013e

    if-ne v0, v1, :cond_0

    move v0, v3

    :goto_0
    iget-object v1, p0, Lh/ce;->a:Lh/fJ;

    invoke-static {v1}, Lh/fJ;->a(Lh/fJ;)Lh/R;

    move-result-object v1

    invoke-interface {v1, v0}, Lh/R;->a(Z)V

    iget-object v1, p0, Lh/ce;->a:Lh/fJ;

    invoke-static {v1}, Lh/fJ;->e(Lh/fJ;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/google/googlenav/ui/android/S;->c()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x8e

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    if-eqz v0, :cond_1

    const-string v0, "oi"

    :goto_1
    invoke-static {v0}, Lh/fJ;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "oo"

    goto :goto_1
.end method
