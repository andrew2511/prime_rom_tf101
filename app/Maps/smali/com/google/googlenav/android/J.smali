.class Lcom/google/googlenav/android/J;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/google/googlenav/android/w;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/w;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/android/J;->b:Lcom/google/googlenav/android/w;

    iput-object p2, p0, Lcom/google/googlenav/android/J;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/android/J;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/googlenav/android/Y;

    invoke-direct {v1, p0}, Lcom/google/googlenav/android/Y;-><init>(Lcom/google/googlenav/android/J;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
