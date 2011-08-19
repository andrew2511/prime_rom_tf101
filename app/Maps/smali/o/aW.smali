.class public Lo/aW;
.super Ljava/lang/Object;

# interfaces
.implements Lo/aE;
.implements Lo/aT;


# instance fields
.field private final a:Lo/aN;


# direct methods
.method public constructor <init>(Lo/aN;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/aW;->a:Lo/aN;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lo/aW;->a:Lo/aN;

    invoke-static {v0}, Lo/aN;->c(Lo/aN;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lo/aW;->a:Lo/aN;

    invoke-virtual {v0}, Lo/aN;->s()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lo/aW;->a:Lo/aN;

    invoke-static {v0}, Lo/aN;->d(Lo/aN;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lo/aW;->a:Lo/aN;

    invoke-static {v0}, Lo/aN;->b(Lo/aN;)V

    goto :goto_0
.end method
