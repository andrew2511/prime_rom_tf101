.class Lp/m;
.super Ljava/lang/Object;

# interfaces
.implements LA/t;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lp/l;


# direct methods
.method constructor <init>(Lp/l;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lp/m;->b:Lp/l;

    iput-object p2, p0, Lp/m;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LA/s;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lp/m;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lp/m;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
