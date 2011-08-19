.class Lcom/google/googlenav/ui/android/af;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lau/e;

.field final synthetic b:LG/e;

.field final synthetic c:Lcom/google/googlenav/ui/android/LasagneView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/LasagneView;Lau/e;LG/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/af;->c:Lcom/google/googlenav/ui/android/LasagneView;

    iput-object p2, p0, Lcom/google/googlenav/ui/android/af;->a:Lau/e;

    iput-object p3, p0, Lcom/google/googlenav/ui/android/af;->b:LG/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/af;->a:Lau/e;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/af;->b:LG/e;

    invoke-virtual {v0, v1}, Lau/e;->a(LG/e;)LG/B;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/af;->c:Lcom/google/googlenav/ui/android/LasagneView;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/LasagneView;->c(Lcom/google/googlenav/ui/android/LasagneView;)LG/e;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/af;->b:LG/e;

    invoke-virtual {v1}, LG/e;->a()LG/A;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/android/af;->c:Lcom/google/googlenav/ui/android/LasagneView;

    invoke-static {v2}, Lcom/google/googlenav/ui/android/LasagneView;->c(Lcom/google/googlenav/ui/android/LasagneView;)LG/e;

    move-result-object v2

    invoke-virtual {v2}, LG/e;->a()LG/A;

    move-result-object v2

    invoke-virtual {v1, v2}, LG/A;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/af;->c:Lcom/google/googlenav/ui/android/LasagneView;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/af;->c:Lcom/google/googlenav/ui/android/LasagneView;

    invoke-static {v2}, Lcom/google/googlenav/ui/android/LasagneView;->c(Lcom/google/googlenav/ui/android/LasagneView;)LG/e;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/ui/android/LasagneView;->a(LG/e;LG/B;)V

    :cond_0
    return-void
.end method
