.class Ljava/util/Collections$CheckedList;
.super Ljava/util/Collections$CheckedCollection;
.source "Collections.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$CheckedCollection",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xe7ce7692c45f7cL


# instance fields
.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/Class;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 3145
    .local p0, this:Ljava/util/Collections$CheckedList;,"Ljava/util/Collections$CheckedList<TE;>;"
    .local p1, l:Ljava/util/List;,"Ljava/util/List<TE;>;"
    .local p2, type:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$CheckedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Class;)V

    .line 3146
    iput-object p1, p0, Ljava/util/Collections$CheckedList;->l:Ljava/util/List;

    .line 3147
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 3179
    .local p0, this:Ljava/util/Collections$CheckedList;,"Ljava/util/Collections$CheckedList<TE;>;"
    .local p2, obj:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->l:Ljava/util/List;

    iget-object v1, p0, Ljava/util/Collections$CheckedList;->type:Ljava/lang/Class;

    invoke-static {p2, v1}, Ljava/util/Collections;->checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 3180
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 10
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 3154
    .local p0, this:Ljava/util/Collections$CheckedList;,"Ljava/util/Collections$CheckedList<TE;>;"
    .local p2, c1:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-interface {p2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 3155
    .local v1, array:[Ljava/lang/Object;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_7
    if-ge v2, v3, :cond_13

    aget-object v4, v0, v2

    .line 3156
    .local v4, o:Ljava/lang/Object;
    iget-object v5, p0, Ljava/util/Collections$CheckedList;->type:Ljava/lang/Class;

    invoke-static {v4, v5}, Ljava/util/Collections;->checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 3155
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3158
    .end local v4           #o:Ljava/lang/Object;
    :cond_13
    iget-object v5, p0, Ljava/util/Collections$CheckedList;->l:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, p1, v6}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v5

    return v5
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj"

    .prologue
    .line 3229
    .local p0, this:Ljava/util/Collections$CheckedList;,"Ljava/util/Collections$CheckedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->l:Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 3165
    .local p0, this:Ljava/util/Collections$CheckedList;,"Ljava/util/Collections$CheckedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 3237
    .local p0, this:Ljava/util/Collections$CheckedList;,"Ljava/util/Collections$CheckedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->l:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter "obj"

    .prologue
    .line 3193
    .local p0, this:Ljava/util/Collections$CheckedList;,"Ljava/util/Collections$CheckedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .parameter "obj"

    .prologue
    .line 3200
    .local p0, this:Ljava/util/Collections$CheckedList;,"Ljava/util/Collections$CheckedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 3207
    .local p0, this:Ljava/util/Collections$CheckedList;,"Ljava/util/Collections$CheckedList<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedListIterator;

    iget-object v1, p0, Ljava/util/Collections$CheckedList;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Collections$CheckedList;->type:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Ljava/util/Collections$CheckedListIterator;-><init>(Ljava/util/ListIterator;Ljava/lang/Class;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 3214
    .local p0, this:Ljava/util/Collections$CheckedList;,"Ljava/util/Collections$CheckedList<TE;>;"
    new-instance v0, Ljava/util/Collections$CheckedListIterator;

    iget-object v1, p0, Ljava/util/Collections$CheckedList;->l:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Collections$CheckedList;->type:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Ljava/util/Collections$CheckedListIterator;-><init>(Ljava/util/ListIterator;Ljava/lang/Class;)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 3186
    .local p0, this:Ljava/util/Collections$CheckedList;,"Ljava/util/Collections$CheckedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 3172
    .local p0, this:Ljava/util/Collections$CheckedList;,"Ljava/util/Collections$CheckedList<TE;>;"
    .local p2, obj:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->l:Ljava/util/List;

    iget-object v1, p0, Ljava/util/Collections$CheckedList;->type:Ljava/lang/Class;

    invoke-static {p2, v1}, Ljava/util/Collections;->checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .registers 5
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 3221
    .local p0, this:Ljava/util/Collections$CheckedList;,"Ljava/util/Collections$CheckedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedList;->l:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedList;->type:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Collections;->checkedList(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
