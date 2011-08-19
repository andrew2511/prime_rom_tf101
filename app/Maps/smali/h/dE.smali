.class Lh/dE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/io/IOException;

.field final synthetic b:Lh/ch;


# direct methods
.method constructor <init>(Lh/ch;Ljava/io/IOException;)V
    .locals 0

    iput-object p1, p0, Lh/dE;->b:Lh/ch;

    iput-object p2, p0, Lh/dE;->a:Ljava/io/IOException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lh/dE;->b:Lh/ch;

    iget-object v0, v0, Lh/ch;->d:Lh/eB;

    iget-object v0, v0, Lh/eB;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    iget-object v0, p0, Lh/dE;->b:Lh/ch;

    iget-object v0, v0, Lh/ch;->d:Lh/eB;

    invoke-static {v0}, Lh/eB;->c(Lh/eB;)Lcom/google/googlenav/bL;

    move-result-object v0

    iget-object v1, p0, Lh/dE;->a:Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    return-void
.end method
