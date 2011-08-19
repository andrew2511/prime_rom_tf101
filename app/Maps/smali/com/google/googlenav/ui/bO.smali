.class Lcom/google/googlenav/ui/bO;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/aT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/aT;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/bO;->a:Lcom/google/googlenav/ui/aT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bO;->a:Lcom/google/googlenav/ui/aT;

    invoke-static {v0}, Lcom/google/googlenav/ui/aT;->d(Lcom/google/googlenav/ui/aT;)Li/aE;

    move-result-object v0

    invoke-virtual {v0}, Li/aE;->X()V

    return-void
.end method
