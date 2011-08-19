.class public Lo/y;
.super Ljava/lang/Object;

# interfaces
.implements Lo/bx;


# instance fields
.field protected final a:Lo/bv;

.field private final b:I

.field private final c:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/bv;

    invoke-direct {v0}, Lo/bv;-><init>()V

    iput-object v0, p0, Lo/y;->a:Lo/bv;

    iput p1, p0, Lo/y;->b:I

    iput-boolean p2, p0, Lo/y;->c:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lo/y;->a:Lo/bv;

    iget v1, p0, Lo/y;->b:I

    invoke-virtual {v0, v1}, Lo/bv;->c(I)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lo/y;->a:Lo/bv;

    iget v1, p0, Lo/y;->b:I

    invoke-virtual {v0, v1}, Lo/bv;->b(I)V

    return-void
.end method

.method public c()Z
    .locals 2

    iget-boolean v0, p0, Lo/y;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/y;->a:Lo/bv;

    iget v1, p0, Lo/y;->b:I

    invoke-virtual {v0, v1}, Lo/bv;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
