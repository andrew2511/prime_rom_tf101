.class final Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;
.super Ljava/lang/Object;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractList$SubAbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubAbstractListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private end:I

.field private final iterator:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field private start:I

.field private final subList:Ljava/util/AbstractList$SubAbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList$SubAbstractList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/ListIterator;Ljava/util/AbstractList$SubAbstractList;II)V
    .registers 6
    .parameter
    .parameter
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator",
            "<TE;>;",
            "Ljava/util/AbstractList$SubAbstractList",
            "<TE;>;II)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, this:Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;,"Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator<TE;>;"
    .local p1, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<TE;>;"
    .local p2, list:Ljava/util/AbstractList$SubAbstractList;,"Ljava/util/AbstractList$SubAbstractList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    .line 185
    iput-object p2, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->subList:Ljava/util/AbstractList$SubAbstractList;

    .line 186
    iput p3, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->start:I

    .line 187
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->start:I

    add-int/2addr v0, p4

    iput v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->end:I

    .line 188
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, this:Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;,"Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->subList:Ljava/util/AbstractList$SubAbstractList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList$SubAbstractList;->sizeChanged(Z)V

    .line 193
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->end:I

    .line 194
    return-void
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 197
    .local p0, this:Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;,"Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->end:I

    if-ge v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hasPrevious()Z
    .registers 3

    .prologue
    .line 201
    .local p0, this:Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;,"Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->start:I

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, this:Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;,"Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->end:I

    if-ge v0, v1, :cond_11

    .line 206
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 208
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .registers 3

    .prologue
    .line 212
    .local p0, this:Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;,"Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, this:Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;,"Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->start:I

    if-lt v0, v1, :cond_11

    .line 217
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 219
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .registers 3

    .prologue
    .line 223
    .local p0, this:Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;,"Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator<TE;>;"
    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    .line 224
    .local v0, previous:I
    iget v1, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->start:I

    if-lt v0, v1, :cond_f

    .line 225
    iget v1, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->start:I

    sub-int v1, v0, v1

    .line 227
    :goto_e
    return v1

    :cond_f
    const/4 v1, -0x1

    goto :goto_e
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 231
    .local p0, this:Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;,"Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 232
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->subList:Ljava/util/AbstractList$SubAbstractList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/AbstractList$SubAbstractList;->sizeChanged(Z)V

    .line 233
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->end:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->end:I

    .line 234
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, this:Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;,"Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 238
    return-void
.end method
