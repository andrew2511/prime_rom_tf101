.class Lh/es;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lh/dg;


# direct methods
.method constructor <init>(Lh/dg;)V
    .locals 0

    iput-object p1, p0, Lh/es;->a:Lh/dg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lh/es;->a:Lh/dg;

    iget-object v0, v0, Lh/dg;->a:Lh/cQ;

    iget-object v0, v0, Lh/cQ;->d:Lh/bH;

    iget-object v0, v0, Lh/bH;->a:Lh/H;

    iget-object v1, p0, Lh/es;->a:Lh/dg;

    iget-object v1, v1, Lh/dg;->a:Lh/cQ;

    iget-object v1, v1, Lh/cQ;->c:Lcom/google/googlenav/bG;

    invoke-interface {v0, v1}, Lh/H;->a(Lcom/google/googlenav/bG;)V

    return-void
.end method
