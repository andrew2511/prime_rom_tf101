.class Lcom/google/googlenav/android/B;
.super Lcom/google/googlenav/Q;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/w;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/w;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/android/B;->a:Lcom/google/googlenav/android/w;

    invoke-direct {p0}, Lcom/google/googlenav/Q;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/android/B;->a:Lcom/google/googlenav/android/w;

    invoke-static {v0}, Lcom/google/googlenav/android/w;->a(Lcom/google/googlenav/android/w;)LE/i;

    move-result-object v0

    invoke-interface {v0}, LE/i;->b()V

    return-void
.end method
