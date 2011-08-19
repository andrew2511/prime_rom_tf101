.class Lh/bt;
.super Ljava/lang/Object;

# interfaces
.implements LI/B;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lh/I;


# direct methods
.method constructor <init>(Lh/I;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lh/bt;->b:Lh/I;

    iput-object p2, p0, Lh/bt;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x7f030118

    return v0
.end method

.method public a(Landroid/view/View;)LI/k;
    .locals 1

    new-instance v0, Lh/eS;

    invoke-direct {v0, p0}, Lh/eS;-><init>(Lh/bt;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lh/eS;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;LI/k;)V
    .locals 3

    check-cast p2, Lh/eS;

    iget-object v0, p2, Lh/eS;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lh/bt;->a:Ljava/lang/String;

    sget-object v2, Lcom/google/googlenav/ui/av;->D:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/android/S;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)V

    return-void
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
