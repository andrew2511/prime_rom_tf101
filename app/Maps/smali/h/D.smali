.class Lh/D;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lh/dw;


# direct methods
.method constructor <init>(Lh/dw;)V
    .locals 0

    iput-object p1, p0, Lh/D;->a:Lh/dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lh/D;->a:Lh/dw;

    invoke-static {v0}, Lh/dw;->a(Lh/dw;)Lh/dR;

    move-result-object v0

    invoke-virtual {v0}, Lh/dR;->l()V

    iget-object v0, p0, Lh/D;->a:Lh/dw;

    invoke-static {v0}, Lh/dw;->b(Lh/dw;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
