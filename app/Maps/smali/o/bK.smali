.class Lo/bK;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lo/aN;


# direct methods
.method constructor <init>(Lo/aN;)V
    .locals 0

    iput-object p1, p0, Lo/bK;->a:Lo/aN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lo/bK;->a:Lo/aN;

    iget-object v0, v0, Lo/aN;->b:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    return-void
.end method
