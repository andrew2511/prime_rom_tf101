.class Lo/bM;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lo/aN;


# direct methods
.method constructor <init>(Lo/aN;)V
    .locals 0

    iput-object p1, p0, Lo/bM;->a:Lo/aN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/bM;->a:Lo/aN;

    iget-object v0, v0, Lo/aN;->b:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->e()V

    iget-object v0, p0, Lo/bM;->a:Lo/aN;

    invoke-static {v0}, Lo/aN;->a(Lo/aN;)Lcom/google/googlenav/bL;

    move-result-object v0

    const/16 v1, 0x237

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    return-void
.end method
