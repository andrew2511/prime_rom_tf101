.class Lcom/google/googlenav/android/Y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/J;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/J;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/android/Y;->a:Lcom/google/googlenav/android/J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/Y;->a:Lcom/google/googlenav/android/J;

    iget-object v0, v0, Lcom/google/googlenav/android/J;->b:Lcom/google/googlenav/android/w;

    invoke-static {v0}, Lcom/google/googlenav/android/w;->d(Lcom/google/googlenav/android/w;)V

    return-void
.end method
