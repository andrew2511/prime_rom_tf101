.class Lo/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Law/e;

.field final synthetic b:Lo/R;


# direct methods
.method constructor <init>(Lo/R;Law/e;)V
    .locals 0

    iput-object p1, p0, Lo/u;->b:Lo/R;

    iput-object p2, p0, Lo/u;->a:Law/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lo/u;->b:Lo/R;

    iget-object v1, p0, Lo/u;->a:Law/e;

    invoke-static {v0, v1}, Lo/R;->a(Lo/R;Law/e;)V

    return-void
.end method
