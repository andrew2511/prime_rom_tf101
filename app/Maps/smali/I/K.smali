.class LI/K;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/bx;

.field final synthetic b:LI/p;


# direct methods
.method constructor <init>(LI/p;Lcom/google/googlenav/ui/bx;)V
    .locals 0

    iput-object p1, p0, LI/K;->b:LI/p;

    iput-object p2, p0, LI/K;->a:Lcom/google/googlenav/ui/bx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, LI/K;->b:LI/p;

    invoke-static {v0}, LI/p;->a(LI/p;)Lcom/google/googlenav/ui/view/android/e;

    move-result-object v0

    iget-object v1, p0, LI/K;->a:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/bx;->h()I

    move-result v1

    iget-object v2, p0, LI/K;->a:Lcom/google/googlenav/ui/bx;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bx;->l()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    return-void
.end method
