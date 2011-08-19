.class public LaJ/b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:LaJ/d;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(LaJ/d;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, LaJ/b;->a:LaJ/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-static {p1}, LaJ/d;->a(LaJ/d;)V

    iput-object p2, p0, LaJ/b;->b:Ljava/lang/String;

    iput-object p3, p0, LaJ/b;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, LaJ/b;->a:LaJ/d;

    invoke-static {v0}, LaJ/d;->b(LaJ/d;)V

    iget-object v0, p0, LaJ/b;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, LaJ/b;->a:LaJ/d;

    :goto_0
    invoke-static {v0}, LaJ/d;->c(LaJ/d;)V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, LaJ/b;->a:LaJ/d;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, LaJ/b;->a:LaJ/d;

    invoke-static {v1}, LaJ/d;->c(LaJ/d;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaJ/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LaJ/b;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
