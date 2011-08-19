.class public abstract Lo/aV;
.super Ljava/lang/Object;

# interfaces
.implements Lo/s;


# instance fields
.field private final a:Lo/aN;


# direct methods
.method public constructor <init>(Lo/aN;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/aV;->a:Lo/aN;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lo/aV;->a:Lo/aN;

    invoke-virtual {v0}, Lo/aN;->n()I

    move-result v0

    return v0
.end method

.method public a(Law/e;)V
    .locals 1

    iget-object v0, p0, Lo/aV;->a:Lo/aN;

    invoke-virtual {v0}, Lo/aN;->s()V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lo/aV;->a:Lo/aN;

    invoke-virtual {v0}, Lo/aN;->x()Z

    move-result v0

    return v0
.end method
