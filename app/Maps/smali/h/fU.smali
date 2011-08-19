.class Lh/fU;
.super Ljava/lang/Object;

# interfaces
.implements Li/o;


# instance fields
.field final synthetic a:Lh/dN;


# direct methods
.method constructor <init>(Lh/dN;)V
    .locals 0

    iput-object p1, p0, Lh/fU;->a:Lh/dN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/j;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lh/fU;->a:Lh/dN;

    iget-object v0, v0, Lh/dN;->h:LaU/a;

    new-instance v1, Lh/dU;

    invoke-direct {v1, p0, p1}, Lh/dU;-><init>(Lh/fU;Lcom/google/googlenav/j;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
