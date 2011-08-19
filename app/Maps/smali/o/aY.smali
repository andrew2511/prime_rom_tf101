.class Lo/aY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lo/bz;


# direct methods
.method constructor <init>(Lo/bz;)V
    .locals 0

    iput-object p1, p0, Lo/aY;->a:Lo/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/aY;->a:Lo/bz;

    invoke-static {v0}, Lo/bz;->a(Lo/bz;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aY;->a:Lo/bz;

    invoke-static {v0}, Lo/bz;->a(Lo/bz;)[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lo/aY;->a:Lo/bz;

    invoke-static {v0}, Lo/bz;->b(Lo/bz;)Lo/bO;

    move-result-object v0

    iget-object v1, p0, Lo/aY;->a:Lo/bz;

    invoke-static {v1}, Lo/bz;->a(Lo/bz;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lo/bO;->a([B)V

    :cond_0
    return-void
.end method
