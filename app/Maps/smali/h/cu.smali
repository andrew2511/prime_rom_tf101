.class Lh/cu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lf/h;

.field final synthetic b:Lh/bJ;


# direct methods
.method constructor <init>(Lh/bJ;Lf/h;)V
    .locals 0

    iput-object p1, p0, Lh/cu;->b:Lh/bJ;

    iput-object p2, p0, Lh/cu;->a:Lf/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lh/cu;->b:Lh/bJ;

    iget-object v0, v0, Lh/bJ;->a:Lh/fa;

    invoke-static {v0}, Lh/fa;->e(Lh/fa;)Lcom/google/googlenav/bs;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/cu;->b:Lh/bJ;

    iget-object v0, v0, Lh/bJ;->a:Lh/fa;

    iget-object v1, p0, Lh/cu;->a:Lf/h;

    invoke-static {v0, v1}, Lh/fa;->a(Lh/fa;Lf/h;)V

    :cond_0
    return-void
.end method
