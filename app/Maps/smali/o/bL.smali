.class Lo/bL;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lo/aN;


# direct methods
.method constructor <init>(Lo/aN;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/bL;->b:Lo/aN;

    iput-object p2, p0, Lo/bL;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Lo/bL;->b:Lo/aN;

    iget-object v0, v0, Lo/aN;->b:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->e()V

    iget-object v0, p0, Lo/bL;->b:Lo/aN;

    iget-object v0, v0, Lo/aN;->b:Lh/eY;

    const/16 v1, 0x4f

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/bL;->a:Ljava/lang/String;

    const/16 v3, 0x2a0

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lh/eJ;)V

    return-void
.end method
