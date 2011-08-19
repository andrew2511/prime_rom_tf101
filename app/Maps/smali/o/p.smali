.class Lo/p;
.super Ljava/lang/Object;

# interfaces
.implements Lo/aA;


# instance fields
.field private a:Lo/aN;


# direct methods
.method public constructor <init>(Lo/aN;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/p;->a:Lo/aN;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo/p;->a:Lo/aN;

    invoke-static {v0}, Lo/aN;->c(Lo/aN;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/p;->a:Lo/aN;

    invoke-static {v0, p1}, Lo/aN;->a(Lo/aN;Ljava/lang/String;)V

    goto :goto_0
.end method
