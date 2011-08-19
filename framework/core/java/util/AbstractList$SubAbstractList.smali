.class Ljava/util/AbstractList$SubAbstractList;
.super Ljava/util/AbstractList;
.source "AbstractList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubAbstractList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final fullList:Ljava/util/AbstractList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private offset:I

.field private size:I


# direct methods
.method constructor <init>(Ljava/util/AbstractList;II)V
    .registers 5
    .parameter
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/AbstractList",
            "<TE;>;II)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, this:Ljava/util/AbstractList$SubAbstractList;,"Ljava/util/AbstractList$SubAbstractList<TE;>;"
    .local p1, list:Ljava/util/AbstractList;,"Ljava/util/AbstractList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 243
    iput-object p1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    .line 244
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    .line 245
    iput p2, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    .line 246
    sub-int v0, p3, p2

    iput v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    .line 247
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, this:Ljava/util/AbstractList$SubAbstractList;,"Ljava/util/AbstractList$SubAbstractList<TE;>;"
    .local p2, object:Ljava/lang/Object;,"TE;"
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    if-ne v0, v1, :cond_29

    .line 252
    if-ltz p1, :cond_23

    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    if-gt p1, v0, :cond_23

    .line 253
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 254
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    .line 255
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    .line 262
    return-void

    .line 257
    :cond_23
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 260
    :cond_29
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 6
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, this:Ljava/util/AbstractList$SubAbstractList;,"Ljava/util/AbstractList$SubAbstractList<TE;>;"
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    iget-object v2, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v2, v2, Ljava/util/AbstractList;->modCount:I

    if-ne v1, v2, :cond_2f

    .line 267
    if-ltz p1, :cond_29

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    if-gt p1, v1, :cond_29

    .line 268
    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2, p2}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 270
    .local v0, result:Z
    if-eqz v0, :cond_28

    .line 271
    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    .line 272
    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    .line 274
    :cond_28
    return v0

    .line 276
    .end local v0           #result:Z
    :cond_29
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 278
    :cond_2f
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, this:Ljava/util/AbstractList$SubAbstractList;,"Ljava/util/AbstractList$SubAbstractList<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    iget-object v2, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v2, v2, Ljava/util/AbstractList;->modCount:I

    if-ne v1, v2, :cond_25

    .line 284
    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    iget v3, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2, p1}, Ljava/util/AbstractList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 285
    .local v0, result:Z
    if-eqz v0, :cond_24

    .line 286
    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    .line 287
    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    .line 289
    :cond_24
    return v0

    .line 291
    .end local v0           #result:Z
    :cond_25
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, this:Ljava/util/AbstractList$SubAbstractList;,"Ljava/util/AbstractList$SubAbstractList<TE;>;"
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    if-ne v0, v1, :cond_1e

    .line 297
    if-ltz p1, :cond_18

    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    if-ge p1, v0, :cond_18

    .line 298
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 300
    :cond_18
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 302
    :cond_1e
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, this:Ljava/util/AbstractList$SubAbstractList;,"Ljava/util/AbstractList$SubAbstractList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/AbstractList$SubAbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 6
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 312
    .local p0, this:Ljava/util/AbstractList$SubAbstractList;,"Ljava/util/AbstractList$SubAbstractList<TE;>;"
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    if-ne v0, v1, :cond_27

    .line 313
    if-ltz p1, :cond_21

    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    if-gt p1, v0, :cond_21

    .line 314
    new-instance v0, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;

    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    iget v2, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    iget v3, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    invoke-direct {v0, v1, p0, v2, v3}, Ljava/util/AbstractList$SubAbstractList$SubAbstractListIterator;-><init>(Ljava/util/ListIterator;Ljava/util/AbstractList$SubAbstractList;II)V

    return-object v0

    .line 318
    :cond_21
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 320
    :cond_27
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 5
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, this:Ljava/util/AbstractList$SubAbstractList;,"Ljava/util/AbstractList$SubAbstractList<TE;>;"
    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    iget-object v2, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v2, v2, Ljava/util/AbstractList;->modCount:I

    if-ne v1, v2, :cond_2a

    .line 326
    if-ltz p1, :cond_24

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    if-ge p1, v1, :cond_24

    .line 327
    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 328
    .local v0, result:Ljava/lang/Object;,"TE;"
    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    .line 329
    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iput v1, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    .line 330
    return-object v0

    .line 332
    .end local v0           #result:Ljava/lang/Object;,"TE;"
    :cond_24
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 334
    :cond_2a
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method protected removeRange(II)V
    .registers 6
    .parameter "start"
    .parameter "end"

    .prologue
    .line 339
    .local p0, this:Ljava/util/AbstractList$SubAbstractList;,"Ljava/util/AbstractList$SubAbstractList<TE;>;"
    if-eq p1, p2, :cond_22

    .line 340
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    if-ne v0, v1, :cond_23

    .line 341
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractList;->removeRange(II)V

    .line 342
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    .line 343
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    .line 348
    :cond_22
    return-void

    .line 345
    :cond_23
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, this:Ljava/util/AbstractList$SubAbstractList;,"Ljava/util/AbstractList$SubAbstractList<TE;>;"
    .local p2, object:Ljava/lang/Object;,"TE;"
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    if-ne v0, v1, :cond_1e

    .line 353
    if-ltz p1, :cond_18

    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    if-ge p1, v0, :cond_18

    .line 354
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v1, p0, Ljava/util/AbstractList$SubAbstractList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 356
    :cond_18
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 358
    :cond_1e
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public size()I
    .registers 3

    .prologue
    .line 363
    .local p0, this:Ljava/util/AbstractList$SubAbstractList;,"Ljava/util/AbstractList$SubAbstractList<TE;>;"
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    iget-object v1, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    if-ne v0, v1, :cond_b

    .line 364
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    return v0

    .line 366
    :cond_b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method sizeChanged(Z)V
    .registers 4
    .parameter "increment"

    .prologue
    .line 370
    .local p0, this:Ljava/util/AbstractList$SubAbstractList;,"Ljava/util/AbstractList$SubAbstractList<TE;>;"
    if-eqz p1, :cond_f

    .line 371
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    .line 375
    :goto_8
    iget-object v0, p0, Ljava/util/AbstractList$SubAbstractList;->fullList:Ljava/util/AbstractList;

    iget v0, v0, Ljava/util/AbstractList;->modCount:I

    iput v0, p0, Ljava/util/AbstractList$SubAbstractList;->modCount:I

    .line 376
    return-void

    .line 373
    :cond_f
    iget v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/AbstractList$SubAbstractList;->size:I

    goto :goto_8
.end method
