.class Lh/W;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lh/dL;


# direct methods
.method constructor <init>(Lh/dL;Z)V
    .locals 0

    iput-object p1, p0, Lh/W;->b:Lh/dL;

    iput-boolean p2, p0, Lh/W;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lh/W;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lh/W;->b:Lh/dL;

    iget-object v0, v0, Lh/dL;->b:Lh/eI;

    iget-object v1, p0, Lh/W;->b:Lh/dL;

    iget-object v1, v1, Lh/dL;->a:Lh/fM;

    invoke-static {v0, v1}, Lh/eI;->a(Lh/eI;Lh/fM;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lh/W;->b:Lh/dL;

    iget-object v0, v0, Lh/dL;->a:Lh/fM;

    invoke-interface {v0}, Lh/fM;->a()V

    goto :goto_0
.end method
