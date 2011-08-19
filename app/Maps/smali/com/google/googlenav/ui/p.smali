.class Lcom/google/googlenav/ui/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/googlenav/ui/F;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/F;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/p;->b:Lcom/google/googlenav/ui/F;

    iput-object p2, p0, Lcom/google/googlenav/ui/p;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/p;->b:Lcom/google/googlenav/ui/F;

    invoke-static {v0}, Lcom/google/googlenav/ui/F;->a(Lcom/google/googlenav/ui/F;)Lh/eY;

    move-result-object v0

    invoke-virtual {v0}, Lh/eY;->f()V

    iget-object v0, p0, Lcom/google/googlenav/ui/p;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/p;->b:Lcom/google/googlenav/ui/F;

    iget-object v1, p0, Lcom/google/googlenav/ui/p;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/F;->b(Lcom/google/googlenav/ui/F;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
