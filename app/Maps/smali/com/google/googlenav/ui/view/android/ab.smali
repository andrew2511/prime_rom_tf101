.class final Lcom/google/googlenav/ui/view/android/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/E;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:Landroid/widget/TextView;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Landroid/widget/Button;

.field final synthetic f:Landroid/widget/Button;

.field final synthetic g:Landroid/widget/Button;

.field final synthetic h:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/E;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ab;->a:Lcom/google/googlenav/ui/view/android/E;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/ab;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/ab;->c:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/google/googlenav/ui/view/android/ab;->d:Landroid/view/View;

    iput-object p5, p0, Lcom/google/googlenav/ui/view/android/ab;->e:Landroid/widget/Button;

    iput-object p6, p0, Lcom/google/googlenav/ui/view/android/ab;->f:Landroid/widget/Button;

    iput-object p7, p0, Lcom/google/googlenav/ui/view/android/ab;->g:Landroid/widget/Button;

    iput-object p8, p0, Lcom/google/googlenav/ui/view/android/ab;->h:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ab;->a:Lcom/google/googlenav/ui/view/android/E;

    const/16 v1, 0x6a9

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/ab;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/E;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ab;->c:Landroid/widget/TextView;

    const/16 v1, 0x310

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ab;->d:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ab;->e:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ab;->f:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ab;->g:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ab;->h:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
