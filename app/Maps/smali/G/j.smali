.class public LG/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:LG/P;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(LG/P;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, LG/j;->a:LG/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, LG/j;->b:I

    iput v0, p0, LG/j;->c:I

    return-void
.end method


# virtual methods
.method public a()LG/d;
    .locals 3

    iget-object v0, p0, LG/j;->a:LG/P;

    iget v1, p0, LG/j;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LG/j;->b:I

    invoke-virtual {v0, v1}, LG/P;->a(I)LG/d;

    move-result-object v0

    return-object v0
.end method

.method public b()LG/d;
    .locals 2

    iget-object v0, p0, LG/j;->a:LG/P;

    iget v1, p0, LG/j;->b:I

    invoke-virtual {v0, v1}, LG/P;->a(I)LG/d;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    iget v0, p0, LG/j;->b:I

    iput v0, p0, LG/j;->c:I

    return-void
.end method

.method public d()V
    .locals 1

    iget v0, p0, LG/j;->c:I

    iput v0, p0, LG/j;->b:I

    return-void
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, LG/j;->b:I

    iget-object v1, p0, LG/j;->a:LG/P;

    invoke-virtual {v1}, LG/P;->e()I

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

    invoke-virtual {p0}, LG/j;->a()LG/d;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
