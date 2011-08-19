.class Ljava/util/AbstractList$SimpleListIterator;
.super Ljava/lang/Object;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field lastPosition:I

.field pos:I

.field final synthetic this$0:Ljava/util/AbstractList;


# direct methods
.method constructor <init>(Ljava/util/AbstractList;)V
    .registers 3
    .parameter

    .prologue
    .local p0, this:Ljava/util/AbstractList$SimpleListIterator;,"Ljava/util/AbstractList<TE;>.SimpleListIterator;"
    const/4 v0, -0x1

    .line 45
    iput-object p1, p0, Ljava/util/AbstractList$SimpleListIterator;->this$0:Ljava/util/AbstractList;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    .line 43
    iput v0, p0, Ljava/util/AbstractList$SimpleListIterator;->lastPosition:I

    .line 47
    iget v0, p1, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/AbstractList$SimpleListIterator;->expectedModCount:I

    .line 48
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .prologue
    .line 51
    .local p0, this:Ljava/util/AbstractList$SimpleListIterator;,"Ljava/util/AbstractList<TE;>.SimpleListIterator;"
    iget v0, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ljava/util/AbstractList$SimpleListIterator;->this$0:Ljava/util/AbstractList;

    invoke-virtual {v1}, Ljava/util/AbstractList;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public next()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, this:Ljava/util/AbstractList$SimpleListIterator;,"Ljava/util/AbstractList<TE;>.SimpleListIterator;"
    iget v2, p0, Ljava/util/AbstractList$SimpleListIterator;->expectedModCount:I

    iget-object v3, p0, Ljava/util/AbstractList$SimpleListIterator;->this$0:Ljava/util/AbstractList;

    iget v3, v3, Ljava/util/AbstractList;->modCount:I

    if-ne v2, v3, :cond_23

    .line 57
    :try_start_8
    iget-object v2, p0, Ljava/util/AbstractList$SimpleListIterator;->this$0:Ljava/util/AbstractList;

    iget v3, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 58
    .local v1, result:Ljava/lang/Object;,"TE;"
    iget v2, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    iput v2, p0, Ljava/util/AbstractList$SimpleListIterator;->lastPosition:I
    :try_end_1a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_1a} :catch_1b

    .line 59
    return-object v1

    .line 60
    .end local v1           #result:Ljava/lang/Object;,"TE;"
    :catch_1b
    move-exception v2

    move-object v0, v2

    .line 61
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 64
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_23
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method

.method public remove()V
    .registers 5

    .prologue
    .local p0, this:Ljava/util/AbstractList$SimpleListIterator;,"Ljava/util/AbstractList<TE;>.SimpleListIterator;"
    const/4 v3, -0x1

    .line 68
    iget v1, p0, Ljava/util/AbstractList$SimpleListIterator;->lastPosition:I

    if-ne v1, v3, :cond_b

    .line 69
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 72
    :cond_b
    iget v1, p0, Ljava/util/AbstractList$SimpleListIterator;->expectedModCount:I

    iget-object v2, p0, Ljava/util/AbstractList$SimpleListIterator;->this$0:Ljava/util/AbstractList;

    iget v2, v2, Ljava/util/AbstractList;->modCount:I

    if-eq v1, v2, :cond_19

    .line 73
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 77
    :cond_19
    :try_start_19
    iget-object v1, p0, Ljava/util/AbstractList$SimpleListIterator;->this$0:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/AbstractList$SimpleListIterator;->lastPosition:I

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_19 .. :try_end_20} :catch_35

    .line 82
    iget-object v1, p0, Ljava/util/AbstractList$SimpleListIterator;->this$0:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/AbstractList$SimpleListIterator;->expectedModCount:I

    .line 83
    iget v1, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    iget v2, p0, Ljava/util/AbstractList$SimpleListIterator;->lastPosition:I

    if-ne v1, v2, :cond_32

    .line 84
    iget v1, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Ljava/util/AbstractList$SimpleListIterator;->pos:I

    .line 86
    :cond_32
    iput v3, p0, Ljava/util/AbstractList$SimpleListIterator;->lastPosition:I

    .line 87
    return-void

    .line 78
    :catch_35
    move-exception v1

    move-object v0, v1

    .line 79
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method
