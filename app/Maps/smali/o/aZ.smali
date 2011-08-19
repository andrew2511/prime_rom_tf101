.class Lo/aZ;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lo/bz;


# direct methods
.method constructor <init>(Lo/bz;I)V
    .locals 0

    iput-object p1, p0, Lo/aZ;->b:Lo/bz;

    iput p2, p0, Lo/aZ;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/aZ;->b:Lo/bz;

    invoke-static {v0}, Lo/bz;->b(Lo/bz;)Lo/bO;

    move-result-object v0

    iget v1, p0, Lo/aZ;->a:I

    invoke-interface {v0, v1}, Lo/bO;->a(I)V

    return-void
.end method
