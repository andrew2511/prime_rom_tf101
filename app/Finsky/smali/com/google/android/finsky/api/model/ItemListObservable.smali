.class public Lcom/google/android/finsky/api/model/ItemListObservable;
.super Landroid/database/Observable;
.source "ItemListObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Lcom/google/android/finsky/api/model/OnDataChangedListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyListChanged()V
    .locals 3

    .prologue
    .line 29
    iget-object v1, p0, Lcom/google/android/finsky/api/model/ItemListObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 30
    iget-object v1, p0, Lcom/google/android/finsky/api/model/ItemListObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/OnDataChangedListener;

    invoke-interface {v1}, Lcom/google/android/finsky/api/model/OnDataChangedListener;->onDataChanged()V

    .line 29
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method
