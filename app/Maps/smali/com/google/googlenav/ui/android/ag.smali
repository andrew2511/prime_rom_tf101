.class Lcom/google/googlenav/ui/android/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LH/f;

.field final synthetic b:Lcom/google/googlenav/ui/android/LasagneView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/LasagneView;LH/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/ag;->b:Lcom/google/googlenav/ui/android/LasagneView;

    iput-object p2, p0, Lcom/google/googlenav/ui/android/ag;->a:LH/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ag;->b:Lcom/google/googlenav/ui/android/LasagneView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/ag;->a:LH/f;

    invoke-virtual {v1}, LH/f;->A()LG/Z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/LasagneView;->a(LG/Z;)V

    return-void
.end method
