.class Lcom/google/googlenav/ui/android/N;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/ac;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/ac;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/android/N;->a:Lcom/google/googlenav/ui/android/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/android/N;->a:Lcom/google/googlenav/ui/android/ac;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/ac;->a(Lcom/google/googlenav/ui/android/ac;Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/N;->a:Lcom/google/googlenav/ui/android/ac;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/ac;->a(Lcom/google/googlenav/ui/android/ac;Z)V

    return-void
.end method
