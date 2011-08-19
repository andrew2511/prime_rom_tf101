.class Ljava/util/WeakHashMap$HashIterator;
.super Ljava/lang/Object;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HashIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private currentEntry:Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private expectedModCount:I

.field private nextEntry:Ljava/util/WeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private nextKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private position:I

.field final synthetic this$0:Ljava/util/WeakHashMap;

.field final type:Ljava/util/WeakHashMap$Entry$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap$Entry$Type",
            "<TR;TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/WeakHashMap;Ljava/util/WeakHashMap$Entry$Type;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap$Entry$Type",
            "<TR;TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, this:Ljava/util/WeakHashMap$HashIterator;,"Ljava/util/WeakHashMap<TK;TV;>.HashIterator<TR;>;"
    .local p2, type:Ljava/util/WeakHashMap$Entry$Type;,"Ljava/util/WeakHashMap$Entry$Type<TR;TK;TV;>;"
    iput-object p1, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/WeakHashMap$HashIterator;->position:I

    .line 125
    iput-object p2, p0, Ljava/util/WeakHashMap$HashIterator;->type:Ljava/util/WeakHashMap$Entry$Type;

    .line 126
    iget v0, p1, Ljava/util/WeakHashMap;->modCount:I

    iput v0, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    .line 127
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 5

    .prologue
    .local p0, this:Ljava/util/WeakHashMap$HashIterator;,"Ljava/util/WeakHashMap<TK;TV;>.HashIterator<TR;>;"
    const/4 v3, 0x1

    .line 130
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    if-eqz v0, :cond_17

    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    if-nez v0, :cond_f

    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    iget-boolean v0, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v0, :cond_17

    :cond_f
    move v0, v3

    .line 147
    :goto_10
    return v0

    .line 149
    :cond_11
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    iget-object v0, v0, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    .line 134
    :cond_17
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    if-nez v0, :cond_3a

    .line 135
    :cond_1b
    iget v0, p0, Ljava/util/WeakHashMap$HashIterator;->position:I

    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    iget-object v1, v1, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    array-length v1, v1

    if-ge v0, v1, :cond_34

    .line 136
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    iget-object v0, v0, Ljava/util/WeakHashMap;->elementData:[Ljava/util/WeakHashMap$Entry;

    iget v1, p0, Ljava/util/WeakHashMap$HashIterator;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/WeakHashMap$HashIterator;->position:I

    aget-object v0, v0, v1

    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    if-eqz v0, :cond_1b

    .line 140
    :cond_34
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    if-nez v0, :cond_3a

    .line 141
    const/4 v0, 0x0

    goto :goto_10

    .line 145
    :cond_3a
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    invoke-virtual {v0}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    if-nez v0, :cond_4c

    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    iget-boolean v0, v0, Ljava/util/WeakHashMap$Entry;->isNull:Z

    if-eqz v0, :cond_11

    :cond_4c
    move v0, v3

    .line 147
    goto :goto_10
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, this:Ljava/util/WeakHashMap$HashIterator;,"Ljava/util/WeakHashMap<TK;TV;>.HashIterator<TR;>;"
    iget v1, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    iget-object v2, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    iget v2, v2, Ljava/util/WeakHashMap;->modCount:I

    if-ne v1, v2, :cond_2a

    .line 155
    invoke-virtual {p0}, Ljava/util/WeakHashMap$HashIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 156
    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    iput-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->currentEntry:Ljava/util/WeakHashMap$Entry;

    .line 157
    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->currentEntry:Ljava/util/WeakHashMap$Entry;

    iget-object v1, v1, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->nextEntry:Ljava/util/WeakHashMap$Entry;

    .line 158
    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->type:Ljava/util/WeakHashMap$Entry$Type;

    iget-object v2, p0, Ljava/util/WeakHashMap$HashIterator;->currentEntry:Ljava/util/WeakHashMap$Entry;

    invoke-interface {v1, v2}, Ljava/util/WeakHashMap$Entry$Type;->get(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    .line 160
    .local v0, result:Ljava/lang/Object;,"TR;"
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    .line 161
    return-object v0

    .line 163
    .end local v0           #result:Ljava/lang/Object;,"TR;"
    :cond_24
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 165
    :cond_2a
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 169
    .local p0, this:Ljava/util/WeakHashMap$HashIterator;,"Ljava/util/WeakHashMap<TK;TV;>.HashIterator<TR;>;"
    iget v0, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    iget v1, v1, Ljava/util/WeakHashMap;->modCount:I

    if-ne v0, v1, :cond_23

    .line 170
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->currentEntry:Ljava/util/WeakHashMap$Entry;

    if-eqz v0, :cond_1d

    .line 171
    iget-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->this$0:Ljava/util/WeakHashMap;

    iget-object v1, p0, Ljava/util/WeakHashMap$HashIterator;->currentEntry:Ljava/util/WeakHashMap$Entry;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->removeEntry(Ljava/util/WeakHashMap$Entry;)V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/WeakHashMap$HashIterator;->currentEntry:Ljava/util/WeakHashMap$Entry;

    .line 173
    iget v0, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/WeakHashMap$HashIterator;->expectedModCount:I

    .line 181
    return-void

    .line 176
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 179
    :cond_23
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
