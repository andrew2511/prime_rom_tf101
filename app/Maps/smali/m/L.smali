.class Lm/L;
.super Lad/g;


# instance fields
.field final synthetic b:Lm/l;


# direct methods
.method constructor <init>(Lm/l;I)V
    .locals 0

    iput-object p1, p0, Lm/L;->b:Lm/l;

    invoke-direct {p0, p2}, Lad/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lm/P;

    invoke-virtual {p0, p1, p2}, Lm/L;->a(Ljava/lang/String;Lm/P;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lm/P;)V
    .locals 3

    invoke-virtual {p2}, Lm/P;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lm/L;->b:Lm/l;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lm/L;->b:Lm/l;

    invoke-static {v2}, Lm/l;->a(Lm/l;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-virtual {p2}, Lm/P;->b()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
