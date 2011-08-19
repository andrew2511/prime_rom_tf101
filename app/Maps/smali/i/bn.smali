.class Li/bn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Li/ab;


# direct methods
.method constructor <init>(Li/ab;)V
    .locals 0

    iput-object p1, p0, Li/bn;->a:Li/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Li/bn;->a:Li/ab;

    invoke-static {v0}, Li/ab;->b(Li/ab;)Lcom/google/googlenav/ui/bj;

    move-result-object v0

    iget-object v1, p0, Li/bn;->a:Li/ab;

    invoke-static {v1}, Li/ab;->a(Li/ab;)Lcom/google/googlenav/ui/bx;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/bj;->a(Lcom/google/googlenav/ui/bx;)V

    return-void
.end method
