.class Lcom/google/googlenav/ui/bD;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/aT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/aT;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/bD;->a:Lcom/google/googlenav/ui/aT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/bD;->a:Lcom/google/googlenav/ui/aT;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->p(Z)V

    return-void
.end method
