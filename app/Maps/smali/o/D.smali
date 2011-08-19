.class Lo/D;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lo/al;


# direct methods
.method constructor <init>(Lo/al;)V
    .locals 0

    iput-object p1, p0, Lo/D;->a:Lo/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lo/D;->a:Lo/al;

    iget-object v0, v0, Lo/al;->b:Lo/cg;

    invoke-static {v0}, Lo/cg;->f(Lo/cg;)Lo/bg;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lo/bg;->a(ZZ)V

    return-void
.end method
