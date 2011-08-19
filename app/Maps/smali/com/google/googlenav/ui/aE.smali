.class Lcom/google/googlenav/ui/aE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/o;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/aE;->a:Lcom/google/googlenav/ui/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/aE;->a:Lcom/google/googlenav/ui/o;

    iget-object v0, v0, Lcom/google/googlenav/ui/o;->a:Lcom/google/googlenav/ui/F;

    invoke-static {v0}, Lcom/google/googlenav/ui/F;->a(Lcom/google/googlenav/ui/F;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->f()V

    iget-object v0, p0, Lcom/google/googlenav/ui/aE;->a:Lcom/google/googlenav/ui/o;

    iget-object v0, v0, Lcom/google/googlenav/ui/o;->a:Lcom/google/googlenav/ui/F;

    invoke-static {v0}, Lcom/google/googlenav/ui/F;->b(Lcom/google/googlenav/ui/F;)V

    return-void
.end method
