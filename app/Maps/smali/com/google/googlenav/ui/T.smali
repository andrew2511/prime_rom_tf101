.class Lcom/google/googlenav/ui/T;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/be;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/be;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/T;->a:Lcom/google/googlenav/ui/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/T;->a:Lcom/google/googlenav/ui/be;

    iget-object v0, v0, Lcom/google/googlenav/ui/be;->a:Lcom/google/googlenav/ui/aP;

    invoke-static {v0}, Lcom/google/googlenav/ui/aP;->b(Lcom/google/googlenav/ui/aP;)V

    return-void
.end method
