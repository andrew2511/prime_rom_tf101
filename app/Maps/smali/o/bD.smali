.class Lo/bD;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lo/aO;


# direct methods
.method constructor <init>(Lo/aO;)V
    .locals 0

    iput-object p1, p0, Lo/bD;->a:Lo/aO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/bD;->a:Lo/aO;

    iget-object v0, v0, Lo/aO;->a:Lo/cg;

    invoke-static {v0}, Lo/cg;->a(Lo/cg;)Li/C;

    move-result-object v0

    invoke-virtual {v0}, Li/C;->M()V

    return-void
.end method
