.class Lh/ch;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lh/dZ;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Lh/eB;


# direct methods
.method constructor <init>(Lh/eB;Lh/dZ;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lh/ch;->d:Lh/eB;

    iput-object p2, p0, Lh/ch;->a:Lh/dZ;

    iput-object p3, p0, Lh/ch;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lh/ch;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lh/ch;->a:Lh/dZ;

    invoke-virtual {v0}, Lh/dZ;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lh/ch;->d:Lh/eB;

    invoke-static {v0}, Lh/eB;->b(Lh/eB;)V

    iget-object v0, p0, Lh/ch;->a:Lh/dZ;

    invoke-virtual {v0}, Lh/dZ;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh/ch;->d:Lh/eB;

    iget-object v1, p0, Lh/ch;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/eB;->a(Lh/eB;Ljava/lang/String;)Lx/i;

    move-result-object v0

    iget-object v1, p0, Lh/ch;->d:Lh/eB;

    iget-object v1, v1, Lh/eB;->h:LaU/a;

    new-instance v2, Lh/dD;

    invoke-direct {v2, p0, v0}, Lh/dD;-><init>(Lh/ch;Lx/i;)V

    invoke-interface {v1, v2}, LaU/a;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lh/ch;->d:Lh/eB;

    iget-object v1, v1, Lh/eB;->h:LaU/a;

    new-instance v2, Lh/dE;

    invoke-direct {v2, p0, v0}, Lh/dE;-><init>(Lh/ch;Ljava/io/IOException;)V

    invoke-interface {v1, v2}, LaU/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
