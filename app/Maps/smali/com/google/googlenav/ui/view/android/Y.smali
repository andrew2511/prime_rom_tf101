.class final Lcom/google/googlenav/ui/view/android/Y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/E;

.field final synthetic b:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/E;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/Y;->a:Lcom/google/googlenav/ui/view/android/E;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/Y;->b:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Y;->a:Lcom/google/googlenav/ui/view/android/E;

    const/16 v1, 0x6ab

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/Y;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/ui/view/android/E;->a(ILjava/lang/String;)V

    return-void
.end method
