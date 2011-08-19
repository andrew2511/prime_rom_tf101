.class public Lh/cq;
.super Ljava/lang/Object;

# interfaces
.implements LI/B;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Landroid/view/View$OnClickListener;

.field final synthetic c:Lh/fQ;


# direct methods
.method constructor <init>(Lh/fQ;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lh/cq;->c:Lh/fQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh/cq;->a:Ljava/lang/String;

    iput-object p3, p0, Lh/cq;->b:Landroid/view/View$OnClickListener;

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

    new-instance v0, Lh/bU;

    invoke-direct {v0, p0}, Lh/bU;-><init>(Lh/cq;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, v0, Lh/bU;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ui/view/android/e;LI/k;)V
    .locals 3

    check-cast p2, Lh/bU;

    iget-object v0, p2, Lh/bU;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lh/cq;->a:Ljava/lang/String;

    sget-object v2, Lcom/google/googlenav/ui/av;->ar:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/android/S;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/av;)V

    iget-object v0, p2, Lh/bU;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lh/cq;->b:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/ar;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

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
