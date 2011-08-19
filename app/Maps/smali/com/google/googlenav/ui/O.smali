.class Lcom/google/googlenav/ui/O;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/bv;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/bv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/O;->a:Lcom/google/googlenav/ui/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/O;->a:Lcom/google/googlenav/ui/bv;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bv;->a()Lcom/google/googlenav/login/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/login/h;->b()V

    return-void
.end method
