.class Lcom/google/googlenav/ui/view/android/bo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/aY;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/aA;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/aA;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bo;->a:Lcom/google/googlenav/ui/view/android/aA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bo;->a:Lcom/google/googlenav/ui/view/android/aA;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/aA;->b(Lcom/google/googlenav/ui/view/android/aA;)Lx/J;

    move-result-object v0

    invoke-interface {v0}, Lx/J;->k()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bo;->a:Lcom/google/googlenav/ui/view/android/aA;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/aA;->b:Lcom/google/googlenav/ui/view/android/e;

    const/16 v1, 0x149

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bo;->a:Lcom/google/googlenav/ui/view/android/aA;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/aA;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bo;->a:Lcom/google/googlenav/ui/view/android/aA;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/aA;->b(Lcom/google/googlenav/ui/view/android/aA;)Lx/J;

    move-result-object v0

    invoke-interface {v0}, Lx/J;->k()V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bo;->a:Lcom/google/googlenav/ui/view/android/aA;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/aA;->b:Lcom/google/googlenav/ui/view/android/e;

    const/16 v1, 0x149

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    return-void
.end method
