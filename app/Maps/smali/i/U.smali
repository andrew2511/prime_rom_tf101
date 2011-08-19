.class Li/U;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/z;

.field final synthetic b:Li/aw;


# direct methods
.method constructor <init>(Li/aw;Lcom/google/googlenav/z;)V
    .locals 0

    iput-object p1, p0, Li/U;->b:Li/aw;

    iput-object p2, p0, Li/U;->a:Lcom/google/googlenav/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Li/U;->b:Li/aw;

    iget-object v1, p0, Li/U;->a:Lcom/google/googlenav/z;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Li/aw;->b(Lcom/google/googlenav/z;Z)V

    return-void
.end method
