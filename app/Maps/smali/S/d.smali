.class public LS/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:I

.field b:LS/e;

.field c:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, LS/d;->c:Ljava/util/Iterator;

    invoke-direct {p0}, LS/d;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    iget-object v0, p0, LS/d;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, LS/d;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LS/d;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LS/e;

    iput-object v0, p0, LS/d;->b:LS/e;

    iget-object v0, p0, LS/d;->b:LS/e;

    invoke-virtual {v0}, LS/e;->c()I

    move-result v0

    if-lez v0, :cond_0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, LS/d;->a:I

    return-void

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, LS/d;->b:LS/e;

    goto :goto_0
.end method


# virtual methods
.method public a()LS/c;
    .locals 3

    iget-object v0, p0, LS/d;->b:LS/e;

    iget v1, p0, LS/d;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LS/d;->a:I

    invoke-virtual {v0, v1}, LS/e;->a(I)LS/c;

    move-result-object v0

    iget v1, p0, LS/d;->a:I

    iget-object v2, p0, LS/d;->b:LS/e;

    invoke-virtual {v2}, LS/e;->c()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, LS/d;->b()V

    :cond_0
    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    iget-object v0, p0, LS/d;->b:LS/e;

    if-eqz v0, :cond_0

    iget v0, p0, LS/d;->a:I

    iget-object v1, p0, LS/d;->b:LS/e;

    invoke-virtual {v1}, LS/e;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LS/d;->a()LS/c;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
