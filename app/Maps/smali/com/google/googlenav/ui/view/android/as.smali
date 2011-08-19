.class Lcom/google/googlenav/ui/view/android/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/bs;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/bs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/as;->a:Lcom/google/googlenav/ui/view/android/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/as;->a:Lcom/google/googlenav/ui/view/android/bs;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/android/bs;->a(Lcom/google/googlenav/ui/view/android/bs;I)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/as;->a:Lcom/google/googlenav/ui/view/android/bs;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/android/bs;->b:Lcom/google/googlenav/ui/view/android/e;

    const/16 v2, 0x6a5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/as;->a:Lcom/google/googlenav/ui/view/android/bs;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/bs;->e(Lcom/google/googlenav/ui/view/android/bs;)V

    return-void
.end method
