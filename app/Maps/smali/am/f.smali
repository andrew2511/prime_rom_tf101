.class Lam/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/bA;


# instance fields
.field final synthetic a:Lam/m;


# direct methods
.method constructor <init>(Lam/m;)V
    .locals 0

    iput-object p1, p0, Lam/f;->a:Lam/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/cr;)V
    .locals 3

    iget-object v0, p0, Lam/f;->a:Lam/m;

    invoke-static {v0}, Lam/m;->g(Lam/m;)Li/M;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lam/f;->a:Lam/m;

    invoke-virtual {v0}, Li/M;->v_()Lcom/google/googlenav/j;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/googlenav/j;->c()I

    move-result v2

    invoke-static {v1, v0, v2}, Lam/m;->a(Lam/m;Li/x;I)V

    :cond_0
    return-void
.end method
