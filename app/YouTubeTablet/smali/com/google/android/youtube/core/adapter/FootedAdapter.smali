.class public Lcom/google/android/youtube/core/adapter/FootedAdapter;
.super Lcom/google/android/youtube/core/adapter/ArrayListAdapter;
.source "FootedAdapter.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/adapter/FootedAdapter$1;,
        Lcom/google/android/youtube/core/adapter/FootedAdapter$InternalDataSetObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/youtube/core/adapter/ArrayListAdapter",
        "<TT;>;",
        "Landroid/widget/WrapperListAdapter;"
    }
.end annotation


# instance fields
.field private final footer:Landroid/view/View;

.field private footerVisible:Z

.field private final target:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/adapter/ArrayListAdapter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/adapter/ArrayListAdapter;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter "footer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/adapter/ArrayListAdapter",
            "<TT;>;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, this:Lcom/google/android/youtube/core/adapter/FootedAdapter;,"Lcom/google/android/youtube/core/adapter/FootedAdapter<TT;>;"
    .local p1, target:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;,"Lcom/google/android/youtube/core/adapter/ArrayListAdapter<TT;>;"
    invoke-direct {p0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;

    iput-object v0, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->target:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;

    .line 30
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->footer:Landroid/view/View;

    .line 31
    new-instance v0, Lcom/google/android/youtube/core/adapter/FootedAdapter$InternalDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/adapter/FootedAdapter$InternalDataSetObserver;-><init>(Lcom/google/android/youtube/core/adapter/FootedAdapter;Lcom/google/android/youtube/core/adapter/FootedAdapter$1;)V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 32
    invoke-virtual {p0}, Lcom/google/android/youtube/core/adapter/FootedAdapter;->hideFooter()V

    .line 33
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Iterable;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, this:Lcom/google/android/youtube/core/adapter/FootedAdapter;,"Lcom/google/android/youtube/core/adapter/FootedAdapter<TT;>;"
    .local p1, entries:Ljava/lang/Iterable;,"Ljava/lang/Iterable<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->target:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->add(Ljava/lang/Iterable;)V

    .line 79
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 88
    .local p0, this:Lcom/google/android/youtube/core/adapter/FootedAdapter;,"Lcom/google/android/youtube/core/adapter/FootedAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->footerVisible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->target:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 83
    .local p0, this:Lcom/google/android/youtube/core/adapter/FootedAdapter;,"Lcom/google/android/youtube/core/adapter/FootedAdapter<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->target:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->clear()V

    .line 84
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 37
    .local p0, this:Lcom/google/android/youtube/core/adapter/FootedAdapter;,"Lcom/google/android/youtube/core/adapter/FootedAdapter<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->target:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->getCount()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->footerVisible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Lcom/google/android/youtube/core/adapter/FootedAdapter;,"Lcom/google/android/youtube/core/adapter/FootedAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->footerVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->target:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->target:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 51
    .local p0, this:Lcom/google/android/youtube/core/adapter/FootedAdapter;,"Lcom/google/android/youtube/core/adapter/FootedAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->footerVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->target:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 53
    const-wide/16 v0, -0x1

    .line 55
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->target:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getMaxItems()I
    .locals 1

    .prologue
    .line 73
    .local p0, this:Lcom/google/android/youtube/core/adapter/FootedAdapter;,"Lcom/google/android/youtube/core/adapter/FootedAdapter<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->target:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->getMaxItems()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 59
    .local p0, this:Lcom/google/android/youtube/core/adapter/FootedAdapter;,"Lcom/google/android/youtube/core/adapter/FootedAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->footerVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->target:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->footer:Landroid/view/View;

    .line 63
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->target:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;

    iget-object v1, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->footer:Landroid/view/View;

    if-ne p2, v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, p1, v1, p3}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v1, p2

    goto :goto_1
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 124
    .local p0, this:Lcom/google/android/youtube/core/adapter/FootedAdapter;,"Lcom/google/android/youtube/core/adapter/FootedAdapter<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->target:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;

    return-object v0
.end method

.method public hideFooter()V
    .locals 2

    .prologue
    .line 112
    .local p0, this:Lcom/google/android/youtube/core/adapter/FootedAdapter;,"Lcom/google/android/youtube/core/adapter/FootedAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->footerVisible:Z

    .line 113
    .local v0, wasVisible:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->footerVisible:Z

    .line 114
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/google/android/youtube/core/adapter/FootedAdapter;->notifyDataSetChanged()V

    .line 117
    :cond_0
    return-void
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 93
    .local p0, this:Lcom/google/android/youtube/core/adapter/FootedAdapter;,"Lcom/google/android/youtube/core/adapter/FootedAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->footerVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->target:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->getCount()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->target:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public setMaxItems(I)V
    .locals 1
    .parameter "maxItems"

    .prologue
    .line 68
    .local p0, this:Lcom/google/android/youtube/core/adapter/FootedAdapter;,"Lcom/google/android/youtube/core/adapter/FootedAdapter<TT;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->target:Lcom/google/android/youtube/core/adapter/ArrayListAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/adapter/ArrayListAdapter;->setMaxItems(I)V

    .line 69
    return-void
.end method

.method public showFooter()V
    .locals 2

    .prologue
    .line 104
    .local p0, this:Lcom/google/android/youtube/core/adapter/FootedAdapter;,"Lcom/google/android/youtube/core/adapter/FootedAdapter<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->footerVisible:Z

    .line 105
    .local v0, wasVisible:Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/youtube/core/adapter/FootedAdapter;->footerVisible:Z

    .line 106
    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/google/android/youtube/core/adapter/FootedAdapter;->notifyDataSetChanged()V

    .line 109
    :cond_0
    return-void
.end method
