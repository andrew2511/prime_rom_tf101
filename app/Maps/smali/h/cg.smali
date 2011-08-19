.class Lh/cg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lh/fJ;


# direct methods
.method constructor <init>(Lh/fJ;)V
    .locals 0

    iput-object p1, p0, Lh/cg;->a:Lh/fJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lh/cg;->a:Lh/fJ;

    invoke-static {v0}, Lh/fJ;->e(Lh/fJ;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/cg;->a:Lh/fJ;

    invoke-static {v0}, Lh/fJ;->e(Lh/fJ;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh/cg;->a:Lh/fJ;

    invoke-static {v0}, Lh/fJ;->a(Lh/fJ;)Lh/R;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lh/R;->a(Z)V

    const-string v0, "oii"

    invoke-static {v0}, Lh/fJ;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lh/cg;->a:Lh/fJ;

    invoke-static {v0}, Lh/fJ;->a(Lh/fJ;)Lh/R;

    move-result-object v0

    invoke-interface {v0}, Lh/R;->c()V

    return-void
.end method
