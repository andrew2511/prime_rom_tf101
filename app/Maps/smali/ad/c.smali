.class Lad/c;
.super Ljava/lang/Object;

# interfaces
.implements Lak/c;


# instance fields
.field private final a:Lak/h;

.field private final b:Ljava/lang/Runnable;

.field private final c:Z


# direct methods
.method public constructor <init>(Lak/h;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad/c;->a:Lak/h;

    iput-object p2, p0, Lad/c;->b:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lak/h;->e()Z

    move-result v0

    iput-boolean v0, p0, Lad/c;->c:Z

    iget-boolean v0, p0, Lad/c;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lak/h;->g()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(IZLjava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lad/b;->f()Lcom/google/android/maps/driveabout/vector/R;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lad/c;->a:Lak/h;

    invoke-virtual {v0, p0}, Lak/h;->b(Lak/c;)V

    iget-object v0, p0, Lad/c;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lad/c;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    const-class v0, Lad/b;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Lad/b;->a(Z)Z

    const-class v1, Lad/b;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lak/d;)V
    .locals 1

    instance-of v0, p1, Lad/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lad/c;->a:Lak/h;

    invoke-virtual {v0, p0}, Lak/h;->b(Lak/c;)V

    iget-boolean v0, p0, Lad/c;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lad/c;->a:Lak/h;

    invoke-virtual {v0}, Lak/h;->f()V

    :cond_0
    return-void
.end method

.method public b(Lak/d;)V
    .locals 0

    return-void
.end method
