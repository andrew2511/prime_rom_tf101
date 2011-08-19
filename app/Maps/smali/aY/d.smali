.class LaY/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaY/c;


# direct methods
.method constructor <init>(LaY/c;)V
    .locals 0

    iput-object p1, p0, LaY/d;->a:LaY/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LaY/d;->a:LaY/c;

    invoke-static {v0}, LaY/c;->a(LaY/c;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, LaY/d;->a:LaY/c;

    invoke-static {v0}, LaY/c;->b(LaY/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LaY/d;->a:LaY/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LaY/c;->a(LaY/c;Z)Z

    iget-object v0, p0, LaY/d;->a:LaY/c;

    invoke-virtual {v0}, LaY/c;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, LaY/d;->a:LaY/c;

    invoke-static {v0}, LaY/c;->a(LaY/c;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, LaY/d;->a:LaY/c;

    invoke-static {v1}, LaY/c;->a(LaY/c;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
