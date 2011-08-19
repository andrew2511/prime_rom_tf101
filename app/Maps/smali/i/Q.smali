.class Li/Q;
.super Ljava/lang/Object;

# interfaces
.implements LaO/e;


# instance fields
.field final synthetic a:Lcom/google/googlenav/z;

.field final synthetic b:Z

.field final synthetic c:Li/aw;


# direct methods
.method constructor <init>(Li/aw;Lcom/google/googlenav/z;Z)V
    .locals 0

    iput-object p1, p0, Li/Q;->c:Li/aw;

    iput-object p2, p0, Li/Q;->a:Lcom/google/googlenav/z;

    iput-boolean p3, p0, Li/Q;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Li/Q;->c:Li/aw;

    iget-object v0, v0, Li/aw;->g:Lcom/google/googlenav/ui/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aT;->ad()LaU/a;

    move-result-object v0

    new-instance v1, Li/aI;

    invoke-direct {v1, p0}, Li/aI;-><init>(Li/Q;)V

    invoke-interface {v0, v1}, LaU/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method
