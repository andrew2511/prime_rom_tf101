.class Lcom/google/googlenav/ui/view/android/Q;
.super Lx/W;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/P;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/P;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/Q;->a:Lcom/google/googlenav/ui/view/android/P;

    invoke-direct {p0}, Lx/W;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx/Q;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Q;->a:Lcom/google/googlenav/ui/view/android/P;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/P;->b:Lcom/google/googlenav/ui/view/android/e;

    const/16 v1, 0x3f9

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/view/android/e;->a(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Q;->a:Lcom/google/googlenav/ui/view/android/P;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/P;->b:Lcom/google/googlenav/ui/view/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/e;->d()V

    :cond_0
    const/16 v0, 0x64

    const-string v1, "x"

    invoke-static {v0, v1}, Lac/g;->a(ILjava/lang/String;)Z

    const/4 v0, 0x1

    return v0
.end method
