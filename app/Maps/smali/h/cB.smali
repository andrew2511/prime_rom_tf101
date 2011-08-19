.class Lh/cB;
.super Ljava/lang/Object;

# interfaces
.implements LI/B;


# instance fields
.field final synthetic a:Lh/dw;

.field private final b:Law/e;


# direct methods
.method public constructor <init>(Lh/dw;Law/e;)V
    .locals 0

    iput-object p1, p0, Lh/cB;->a:Lh/dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh/cB;->b:Law/e;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x1090004

    return v0
.end method

.method public a(Landroid/view/View;)LI/k;
    .locals 2

    new-instance v0, Lh/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lh/n;-><init>(Lh/cB;Lh/z;)V

    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lh/n;->a:Landroid/widget/TextView;

    const v1, 0x1020015

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v0, Lh/n;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;LI/k;)V
    .locals 3

    check-cast p2, Lh/n;

    iget-object v0, p2, Lh/n;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lh/cB;->b:Law/e;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lh/n;->b:Landroid/widget/TextView;

    const/4 v1, 0x4

    iget-object v2, p0, Lh/cB;->b:Law/e;

    invoke-static {v1, v2}, Lcom/google/googlenav/af;->a(ILaw/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()Law/e;
    .locals 1

    iget-object v0, p0, Lh/cB;->b:Law/e;

    return-object v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
