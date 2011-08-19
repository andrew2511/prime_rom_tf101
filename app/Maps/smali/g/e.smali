.class Lg/e;
.super Ljava/lang/Object;

# interfaces
.implements Ly/p;


# instance fields
.field final synthetic a:Lg/g;


# direct methods
.method private constructor <init>(Lg/g;)V
    .locals 0

    iput-object p1, p0, Lg/e;->a:Lg/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lg/g;Lg/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/e;-><init>(Lg/g;)V

    return-void
.end method


# virtual methods
.method public a(Ly/d;Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.Listener.requestFailed("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/g;->b(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "WindowResumeService.Listener.requestFailed(): try block"

    invoke-static {v0}, Lg/g;->b(Ljava/lang/String;)V

    check-cast p1, Lg/m;

    new-instance v0, Lg/a;

    invoke-direct {v0, p2}, Lg/a;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p1, v0}, Lg/m;->a(Lg/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "WindowResumeService.Listener.requestFailed(): finally block"

    invoke-static {v0}, Lg/g;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lg/e;->a:Lg/g;

    invoke-static {v0}, Lg/g;->g(Lg/g;)LT/d;

    move-result-object v0

    invoke-virtual {v0}, LT/d;->b()V

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "WindowResumeService.Listener.requestFailed(): finally block"

    invoke-static {v1}, Lg/g;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lg/e;->a:Lg/g;

    invoke-static {v1}, Lg/g;->g(Lg/g;)LT/d;

    move-result-object v1

    invoke-virtual {v1}, LT/d;->b()V

    throw v0
.end method

.method public a(Ly/d;Ly/j;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.Listener.requestCompleted("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/g;->b(Ljava/lang/String;)V

    check-cast p1, Lg/m;

    :try_start_0
    const-string v0, "WindowResumeService.Listener.requestCompleted(): try block"

    invoke-static {v0}, Lg/g;->b(Ljava/lang/String;)V

    new-instance v0, Lg/a;

    invoke-direct {v0, p2}, Lg/a;-><init>(Ly/j;)V

    invoke-virtual {p1, v0}, Lg/m;->a(Lg/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "WindowResumeService.Listener.requestCompleted(): finally block"

    invoke-static {v0}, Lg/g;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lg/e;->a:Lg/g;

    invoke-static {v0}, Lg/g;->g(Lg/g;)LT/d;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, LT/d;->b()V

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "WindowResumeService.Listener.requestCompleted(): catch block"

    invoke-static {v1}, Lg/g;->b(Ljava/lang/String;)V

    new-instance v1, Lg/a;

    invoke-direct {v1, v0}, Lg/a;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p1, v1}, Lg/m;->a(Lg/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "WindowResumeService.Listener.requestCompleted(): finally block"

    invoke-static {v0}, Lg/g;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lg/e;->a:Lg/g;

    invoke-static {v0}, Lg/g;->g(Lg/g;)LT/d;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "WindowResumeService.Listener.requestCompleted(): finally block"

    invoke-static {v1}, Lg/g;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lg/e;->a:Lg/g;

    invoke-static {v1}, Lg/g;->g(Lg/g;)LT/d;

    move-result-object v1

    invoke-virtual {v1}, LT/d;->b()V

    throw v0
.end method
