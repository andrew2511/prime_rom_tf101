.class Lo/Q;
.super Ljava/lang/Object;

# interfaces
.implements LaR/e;


# instance fields
.field final synthetic a:Lo/ah;


# direct methods
.method constructor <init>(Lo/ah;)V
    .locals 0

    iput-object p1, p0, Lo/Q;->a:Lo/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    invoke-static {}, LaR/d;->k()Z

    move-result v0

    invoke-static {v0}, Li/i;->a(Z)V

    iget-object v0, p0, Lo/Q;->a:Lo/ah;

    iget-object v0, v0, Lo/ah;->a:Lo/cg;

    invoke-static {v0}, Lo/cg;->a(Lo/cg;)Li/C;

    move-result-object v0

    invoke-virtual {v0}, Li/C;->M()V

    return-void
.end method
