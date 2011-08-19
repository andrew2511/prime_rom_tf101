.class public Lak/e;
.super Ljava/lang/Object;

# interfaces
.implements Lak/i;
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ln/b;

.field private final b:Ljava/lang/String;

.field private final c:Lak/p;

.field private volatile d:Z

.field private e:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lak/p;)V
    .locals 1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->x()Ln/b;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lak/e;-><init>(Ln/b;Ljava/lang/String;Lak/p;)V

    return-void
.end method

.method public constructor <init>(Ln/b;Ljava/lang/String;Lak/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lak/e;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lak/e;->e:Ljava/lang/Thread;

    iput-object p1, p0, Lak/e;->a:Ln/b;

    iput-object p2, p0, Lak/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lak/e;->c:Lak/p;

    return-void
.end method


# virtual methods
.method public X_()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lak/e;->d:Z

    iget-object v0, p0, Lak/e;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public a()V
    .locals 1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lak/e;->e:Ljava/lang/Thread;

    iget-object v0, p0, Lak/e;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lak/e;->a:Ln/b;

    iget-object v1, p0, Lak/e;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x7d0

    invoke-static {v0, v1, v2, v3, v4}, Ln/c;->a(Ln/b;Ljava/lang/String;Ljava/util/Vector;II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v1, p0, Lak/e;->c:Lak/p;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lak/e;->d:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lak/e;->c:Lak/p;

    iget-object v1, p0, Lak/e;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/InterruptedException;

    const-string v3, "Cancelled"

    invoke-direct {v2, v3}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lak/p;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lak/e;->c:Lak/p;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lak/e;->c:Lak/p;

    iget-object v2, p0, Lak/e;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lak/p;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lak/e;->c:Lak/p;

    iget-object v2, p0, Lak/e;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lak/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
