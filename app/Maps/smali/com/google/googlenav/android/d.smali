.class Lcom/google/googlenav/android/d;
.super Lcom/google/googlenav/Q;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/S;

.field final synthetic b:Lcom/google/googlenav/android/U;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/U;ZZLcom/google/googlenav/android/S;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/android/d;->b:Lcom/google/googlenav/android/U;

    iput-object p4, p0, Lcom/google/googlenav/android/d;->a:Lcom/google/googlenav/android/S;

    invoke-direct {p0, p2, p3}, Lcom/google/googlenav/Q;-><init>(ZZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/android/d;->b:Lcom/google/googlenav/android/U;

    invoke-static {v0}, Lcom/google/googlenav/android/U;->a(Lcom/google/googlenav/android/U;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/googlenav/android/d;->a:Lcom/google/googlenav/android/S;

    invoke-virtual {v2}, Lcom/google/googlenav/android/S;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/android/d;->b:Lcom/google/googlenav/android/U;

    invoke-static {v0}, Lcom/google/googlenav/android/U;->b(Lcom/google/googlenav/android/U;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/googlenav/android/d;->b:Lcom/google/googlenav/android/U;

    invoke-static {v2, v0, v1}, Lcom/google/googlenav/android/U;->a(Lcom/google/googlenav/android/U;J)V

    goto :goto_0
.end method
