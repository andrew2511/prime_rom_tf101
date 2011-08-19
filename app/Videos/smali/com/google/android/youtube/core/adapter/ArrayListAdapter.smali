.class public abstract Lcom/google/android/youtube/core/adapter/ArrayListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ArrayListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_ITEMS:I = 0x64


# instance fields
.field final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field private maxItems:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    .local p0, this:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;,"Lcom/google/android/youtube/core/adapter/ArrayListAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->maxItems:I

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->maxItems:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->items:Ljava/util/ArrayList;

    .line 37
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Iterable;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, this:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;,"Lcom/google/android/youtube/core/adapter/ArrayListAdapter<TT;>;"
    .local p1, entries:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->internalAdd(Ljava/lang/Iterable;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->notifyDataSetChanged()V

    .line 63
    return-void
.end method

.method public final add(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, this:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;,"Lcom/google/android/youtube/core/adapter/ArrayListAdapter<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->internalAdd(Ljava/lang/Object;)V

    .line 93
    invoke-virtual {p0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->notifyDataSetChanged()V

    .line 94
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 72
    .local p0, this:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;,"Lcom/google/android/youtube/core/adapter/ArrayListAdapter<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->notifyDataSetChanged()V

    .line 74
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 43
    .local p0, this:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;,"Lcom/google/android/youtube/core/adapter/ArrayListAdapter<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;,"Lcom/google/android/youtube/core/adapter/ArrayListAdapter<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 57
    .local p0, this:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;,"Lcom/google/android/youtube/core/adapter/ArrayListAdapter<TT;>;"
    int-to-long v0, p1

    return-wide v0
.end method

.method public getMaxItems()I
    .locals 1

    .prologue
    .line 82
    .local p0, this:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;,"Lcom/google/android/youtube/core/adapter/ArrayListAdapter<TT;>;"
    iget v0, p0, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->maxItems:I

    return v0
.end method

.method public insert(ILjava/lang/Object;)V
    .locals 2
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, this:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;,"Lcom/google/android/youtube/core/adapter/ArrayListAdapter<TT;>;"
    .local p2, item:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->maxItems:I

    if-ge v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->notifyDataSetChanged()V

    .line 101
    return-void
.end method

.method public internalAdd(Ljava/lang/Iterable;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, this:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;,"Lcom/google/android/youtube/core/adapter/ArrayListAdapter<TT;>;"
    .local p1, entries:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 67
    .local v0, entry:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->internalAdd(Ljava/lang/Object;)V

    goto :goto_0

    .line 69
    .end local v0           #entry:Ljava/lang/Object;,"TT;"
    :cond_0
    return-void
.end method

.method protected internalAdd(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, this:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;,"Lcom/google/android/youtube/core/adapter/ArrayListAdapter<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->maxItems:I

    if-ge v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    return-void
.end method

.method public internalSet(ILjava/lang/Object;)V
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, this:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;,"Lcom/google/android/youtube/core/adapter/ArrayListAdapter<TT;>;"
    .local p2, item:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, this:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;,"Lcom/google/android/youtube/core/adapter/ArrayListAdapter<TT;>;"
    .local p1, item:Ljava/lang/Object;,"TT;"
    iget-object v0, p0, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {p0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->notifyDataSetChanged()V

    .line 106
    return-void
.end method

.method public final set(ILjava/lang/Object;)V
    .locals 0
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, this:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;,"Lcom/google/android/youtube/core/adapter/ArrayListAdapter<TT;>;"
    .local p2, item:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->internalSet(ILjava/lang/Object;)V

    .line 110
    invoke-virtual {p0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->notifyDataSetChanged()V

    .line 111
    return-void
.end method

.method public setMaxItems(I)V
    .locals 1
    .parameter "maxItems"

    .prologue
    .line 77
    .local p0, this:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;,"Lcom/google/android/youtube/core/adapter/ArrayListAdapter<TT;>;"
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(Z)V

    .line 78
    iput p1, p0, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->maxItems:I

    .line 79
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
