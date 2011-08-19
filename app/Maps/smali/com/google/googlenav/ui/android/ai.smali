.class Lcom/google/googlenav/ui/android/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lau/e;

.field final synthetic b:Lcom/google/googlenav/ui/android/LasagneView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/LasagneView;Lau/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/ai;->b:Lcom/google/googlenav/ui/android/LasagneView;

    iput-object p2, p0, Lcom/google/googlenav/ui/android/ai;->a:Lau/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ai;->a:Lau/e;

    invoke-virtual {v0}, Lau/e;->c()LG/e;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ai;->a:Lau/e;

    invoke-virtual {v1, v0}, Lau/e;->a(LG/e;)LG/B;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/google/googlenav/ui/android/ai;->b:Lcom/google/googlenav/ui/android/LasagneView;

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/ui/android/LasagneView;->a(LG/e;LG/B;)V

    return-void
.end method
