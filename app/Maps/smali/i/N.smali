.class Li/N;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Li/aZ;


# direct methods
.method constructor <init>(Li/aZ;)V
    .locals 0

    iput-object p1, p0, Li/N;->a:Li/aZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Li/N;->a:Li/aZ;

    iget-object v0, v0, Li/aZ;->c:Li/bq;

    invoke-static {v0}, Li/bq;->c(Li/bq;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Li/N;->a:Li/aZ;

    iget-object v1, v1, Li/aZ;->b:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->ao()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/B;

    if-eqz v0, :cond_0

    iget-object v1, p0, Li/N;->a:Li/aZ;

    invoke-static {v1}, Li/aZ;->a(Li/aZ;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/B;->a(Ljava/util/Vector;)V

    :cond_0
    return-void
.end method
