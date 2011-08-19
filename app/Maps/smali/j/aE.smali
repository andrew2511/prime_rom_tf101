.class Lj/aE;
.super Lj/ai;


# instance fields
.field a:Z

.field final synthetic b:I

.field final synthetic c:Lj/m;


# direct methods
.method constructor <init>(Lj/m;I)V
    .locals 1

    iput-object p1, p0, Lj/aE;->c:Lj/m;

    iput p2, p0, Lj/aE;->b:I

    invoke-direct {p0}, Lj/ai;-><init>()V

    iget v0, p0, Lj/aE;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lj/aE;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lj/aE;->a:Z

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    iget-boolean v0, p0, Lj/aE;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lj/aE;->a:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lj/aE;->a:Z

    iget-object v0, p0, Lj/aE;->c:Lj/m;

    iget-object v0, v0, Lj/m;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    iget-boolean v0, p0, Lj/aE;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lj/aE;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lj/aE;->a:Z

    iget-object v0, p0, Lj/aE;->c:Lj/m;

    iget-object v0, v0, Lj/m;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    iget-boolean v0, p0, Lj/aE;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
