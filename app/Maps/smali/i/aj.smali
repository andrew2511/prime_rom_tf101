.class Li/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Li/o;

.field final synthetic b:Lcom/google/googlenav/j;

.field final synthetic c:Li/br;


# direct methods
.method constructor <init>(Li/br;Li/o;Lcom/google/googlenav/j;)V
    .locals 0

    iput-object p1, p0, Li/aj;->c:Li/br;

    iput-object p2, p0, Li/aj;->a:Li/o;

    iput-object p3, p0, Li/aj;->b:Lcom/google/googlenav/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Li/aj;->a:Li/o;

    iget-object v1, p0, Li/aj;->b:Lcom/google/googlenav/j;

    invoke-interface {v0, v1}, Li/o;->a(Lcom/google/googlenav/j;)V

    return-void
.end method
