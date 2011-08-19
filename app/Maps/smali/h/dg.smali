.class Lh/dg;
.super Ljava/lang/Object;

# interfaces
.implements Li/aD;


# instance fields
.field final synthetic a:Lh/cQ;


# direct methods
.method constructor <init>(Lh/cQ;)V
    .locals 0

    iput-object p1, p0, Lh/dg;->a:Lh/cQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lh/dg;->a:Lh/cQ;

    iget-object v0, v0, Lh/cQ;->d:Lh/bH;

    iget-object v0, v0, Lh/bH;->b:Lh/dh;

    invoke-static {v0}, Lh/dh;->a(Lh/dh;)LaU/a;

    move-result-object v0

    new-instance v1, Lh/es;

    invoke-direct {v1, p0}, Lh/es;-><init>(Lh/dg;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
