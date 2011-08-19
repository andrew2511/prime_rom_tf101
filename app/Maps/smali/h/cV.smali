.class Lh/cV;
.super Ljava/lang/Object;

# interfaces
.implements LI/n;


# instance fields
.field final synthetic a:LI/n;

.field final synthetic b:Lh/eC;


# direct methods
.method constructor <init>(Lh/eC;LI/n;)V
    .locals 0

    iput-object p1, p0, Lh/cV;->b:Lh/eC;

    iput-object p2, p0, Lh/cV;->a:LI/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lh/cV;->a:LI/n;

    invoke-interface {v0}, LI/n;->a()I

    move-result v0

    return v0
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lh/cV;->a:LI/n;

    invoke-interface {v0, p1, p2}, LI/n;->a(Lcom/google/googlenav/ui/view/android/e;Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/google/googlenav/ui/view/android/e;->i()Lcom/google/googlenav/ui/view/android/a;

    move-result-object v0

    new-instance v1, Lh/cz;

    invoke-direct {v1, p0}, Lh/cz;-><init>(Lh/cV;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/a;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lh/cV;->a:LI/n;

    invoke-interface {v0}, LI/n;->b()I

    move-result v0

    return v0
.end method
