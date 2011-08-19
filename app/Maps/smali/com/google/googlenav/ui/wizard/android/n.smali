.class Lcom/google/googlenav/ui/wizard/android/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaB/f;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/android/i;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/android/i;LaB/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/android/n;->b:Lcom/google/googlenav/ui/wizard/android/i;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/android/n;->a:LaB/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/n;->b:Lcom/google/googlenav/ui/wizard/android/i;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/android/i;->b:Lcom/google/googlenav/ui/wizard/android/f;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/android/f;->f(Lcom/google/googlenav/ui/wizard/android/f;)LI/C;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/n;->a:LaB/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/n;->b:Lcom/google/googlenav/ui/wizard/android/i;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/android/i;->a:Lcom/google/googlenav/ui/wizard/android/b;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/android/n;->a:LaB/f;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/android/b;->a(LaB/f;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/n;->b:Lcom/google/googlenav/ui/wizard/android/i;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/android/i;->b:Lcom/google/googlenav/ui/wizard/android/f;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/android/f;->f(Lcom/google/googlenav/ui/wizard/android/f;)LI/C;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/android/n;->b:Lcom/google/googlenav/ui/wizard/android/i;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/android/i;->a:Lcom/google/googlenav/ui/wizard/android/b;

    invoke-virtual {v0, v1}, LI/C;->a(Lcom/google/googlenav/ui/wizard/android/b;)V

    :cond_0
    return-void
.end method
