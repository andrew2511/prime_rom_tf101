.class Li/aT;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/layer/g;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Li/aE;


# direct methods
.method constructor <init>(Li/aE;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Li/aT;->b:Li/aE;

    iput-object p2, p0, Li/aT;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    invoke-static {}, Lcom/google/googlenav/layer/h;->a()Lcom/google/googlenav/layer/h;

    move-result-object v0

    const-string v1, "LatitudePublicUpdates"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/h;->c(Ljava/lang/String;)Lcom/google/googlenav/layer/s;

    move-result-object v5

    iget-object v0, p0, Li/aT;->b:Li/aE;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Li/aE;->a(I)V

    new-instance v0, Li/aQ;

    iget-object v1, p0, Li/aT;->b:Li/aE;

    iget-object v1, v1, Li/aE;->d:Lcom/google/googlenav/ui/aT;

    iget-object v2, p0, Li/aT;->b:Li/aE;

    iget-object v2, v2, Li/aE;->f:Lf/v;

    iget-object v3, p0, Li/aT;->b:Li/aE;

    iget-object v3, v3, Li/aE;->g:Lf/Y;

    iget-object v4, p0, Li/aT;->b:Li/aE;

    iget-object v4, v4, Li/aE;->h:Lcom/google/googlenav/ui/X;

    new-instance v6, Lf/x;

    invoke-direct {v6}, Lf/x;-><init>()V

    iget-object v7, p0, Li/aT;->a:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Li/aQ;-><init>(Lcom/google/googlenav/ui/aT;Lf/v;Lf/Y;Lcom/google/googlenav/ui/X;Lcom/google/googlenav/layer/s;Lf/x;Ljava/lang/String;)V

    iget-object v1, p0, Li/aT;->b:Li/aE;

    invoke-virtual {v1, v0}, Li/aE;->f(Li/x;)V

    iget-object v0, p0, Li/aT;->b:Li/aE;

    invoke-static {v0}, Li/aE;->a(Li/aE;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method
