.class Lh/bJ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lh/fa;


# direct methods
.method constructor <init>(Lh/fa;)V
    .locals 0

    iput-object p1, p0, Lh/bJ;->a:Lh/fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lh/bJ;->a:Lh/fa;

    invoke-static {v0}, Lh/fa;->d(Lh/fa;)LH/f;

    move-result-object v0

    invoke-virtual {v0}, LH/f;->r()Lf/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lh/bJ;->a:Lh/fa;

    iget-object v1, v1, Lh/fa;->h:LaU/a;

    new-instance v2, Lh/cu;

    invoke-direct {v2, p0, v0}, Lh/cu;-><init>(Lh/bJ;Lf/h;)V

    invoke-interface {v1, v2}, LaU/a;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
