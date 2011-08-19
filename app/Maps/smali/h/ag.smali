.class Lh/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lh/fo;


# direct methods
.method constructor <init>(Lh/fo;)V
    .locals 0

    iput-object p1, p0, Lh/ag;->a:Lh/fo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lh/ag;->a:Lh/fo;

    invoke-virtual {v0}, Lh/fo;->w()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lh/ag;->a:Lh/fo;

    iget-object v0, v0, Lh/fo;->a:Lh/bN;

    iget-object v0, v0, Lh/bN;->h:Lh/eJ;

    iget-object v1, p0, Lh/ag;->a:Lh/fo;

    iget-object v1, v1, Lh/fo;->a:Lh/bN;

    iget-object v1, v1, Lh/bN;->i:Landroid/widget/CheckBox;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lh/ag;->a:Lh/fo;

    invoke-virtual {v2}, Lh/fo;->v()V

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lh/eJ;->b(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lh/ag;->a:Lh/fo;

    iget-object v1, v1, Lh/fo;->a:Lh/bN;

    iget-object v1, v1, Lh/bN;->i:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    goto :goto_1
.end method
