.class Lcom/google/googlenav/ui/be;
.super Ljava/lang/Object;

# interfaces
.implements Lo/cf;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/aP;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/aP;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/be;->a:Lcom/google/googlenav/ui/aP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/be;->a:Lcom/google/googlenav/ui/aP;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aP;->a(Lcom/google/googlenav/ui/aP;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/googlenav/ui/be;->a:Lcom/google/googlenav/ui/aP;

    invoke-static {v0}, Lcom/google/googlenav/ui/aP;->a(Lcom/google/googlenav/ui/aP;)Lcom/google/googlenav/ui/aT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->ad()LaU/a;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/T;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/T;-><init>(Lcom/google/googlenav/ui/be;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method
