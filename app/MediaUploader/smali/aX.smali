.class final LaX;
.super Ljava/lang/Object;

# interfaces
.implements LaG;


# instance fields
.field private synthetic a:LaT;


# direct methods
.method synthetic constructor <init>(LaT;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LaX;-><init>(LaT;B)V

    return-void
.end method

.method private constructor <init>(LaT;B)V
    .locals 0

    iput-object p1, p0, LaX;->a:LaT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LaF;LaH;)V
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

    invoke-static {v0}, LaT;->c(Ljava/lang/String;)V

    check-cast p1, LaR;

    :try_start_0
    const-string v0, "WindowResumeService.Listener.requestCompleted(): try block"

    invoke-static {v0}, LaT;->c(Ljava/lang/String;)V

    new-instance v0, LaS;

    invoke-direct {v0, p2}, LaS;-><init>(LaH;)V

    invoke-virtual {p1, v0}, LaR;->a(LaS;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "WindowResumeService.Listener.requestCompleted(): finally block"

    invoke-static {v0}, LaT;->c(Ljava/lang/String;)V

    iget-object v0, p0, LaX;->a:LaT;

    invoke-static {v0}, LaT;->g(LaT;)LV;

    move-result-object v0

    invoke-virtual {v0}, LV;->e()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "WindowResumeService.Listener.requestCompleted(): catch block"

    invoke-static {v1}, LaT;->c(Ljava/lang/String;)V

    new-instance v1, LaS;

    invoke-direct {v1, v0}, LaS;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p1, v1}, LaR;->a(LaS;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "WindowResumeService.Listener.requestCompleted(): finally block"

    invoke-static {v0}, LaT;->c(Ljava/lang/String;)V

    iget-object v0, p0, LaX;->a:LaT;

    invoke-static {v0}, LaT;->g(LaT;)LV;

    move-result-object v0

    invoke-virtual {v0}, LV;->e()V

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "WindowResumeService.Listener.requestCompleted(): finally block"

    invoke-static {v1}, LaT;->c(Ljava/lang/String;)V

    iget-object v1, p0, LaX;->a:LaT;

    invoke-static {v1}, LaT;->g(LaT;)LV;

    move-result-object v1

    invoke-virtual {v1}, LV;->e()V

    throw v0
.end method

.method public final a(LaF;Ljava/lang/Exception;)V
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

    invoke-static {v0}, LaT;->c(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "WindowResumeService.Listener.requestFailed(): try block"

    invoke-static {v0}, LaT;->c(Ljava/lang/String;)V

    check-cast p1, LaR;

    new-instance v0, LaS;

    invoke-direct {v0, p2}, LaS;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p1, v0}, LaR;->a(LaS;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "WindowResumeService.Listener.requestFailed(): finally block"

    invoke-static {v0}, LaT;->c(Ljava/lang/String;)V

    iget-object v0, p0, LaX;->a:LaT;

    invoke-static {v0}, LaT;->g(LaT;)LV;

    move-result-object v0

    invoke-virtual {v0}, LV;->e()V

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "WindowResumeService.Listener.requestFailed(): finally block"

    invoke-static {v1}, LaT;->c(Ljava/lang/String;)V

    iget-object v1, p0, LaX;->a:LaT;

    invoke-static {v1}, LaT;->g(LaT;)LV;

    move-result-object v1

    invoke-virtual {v1}, LV;->e()V

    throw v0
.end method
