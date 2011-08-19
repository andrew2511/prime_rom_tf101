.class public Lcom/amazon/kcp/library/DeleteActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "DeleteActivity.java"


# instance fields
.field private bookAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/amazon/kcp/library/models/IListableBook;",
            ">;"
        }
    .end annotation
.end field

.field private bookListChangedAtIndexCallback:Lcom/amazon/foundation/IIntCallback;

.field private bookListChangedCallback:Lcom/amazon/foundation/ICallback;

.field private books:Lcom/amazon/kcp/library/SortedBookList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kcp/library/SortedBookList",
            "<",
            "Lcom/amazon/kcp/library/models/IListableBook;",
            ">;"
        }
    .end annotation
.end field

.field private booksView:Landroid/widget/ListView;

.field private checkedItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/kcp/library/models/IListableBook;",
            ">;"
        }
    .end annotation
.end field

.field private deleteBook:Landroid/widget/Button;

.field private localLibrary:Lcom/amazon/kcp/library/models/CLibrary;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/DeleteActivity;->checkedItems:Ljava/util/Set;

    .line 51
    new-instance v0, Lcom/amazon/kcp/library/DeleteActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/DeleteActivity$1;-><init>(Lcom/amazon/kcp/library/DeleteActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/DeleteActivity;->bookListChangedAtIndexCallback:Lcom/amazon/foundation/IIntCallback;

    .line 63
    new-instance v0, Lcom/amazon/kcp/library/DeleteActivity$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/DeleteActivity$2;-><init>(Lcom/amazon/kcp/library/DeleteActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/DeleteActivity;->bookListChangedCallback:Lcom/amazon/foundation/ICallback;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/DeleteActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/amazon/kcp/library/DeleteActivity;->updateDueToLibraryChange()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/DeleteActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/DeleteActivity;->handleClick(I)V

    return-void
.end method

.method private handleClick(I)V
    .locals 2
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteActivity;->books:Lcom/amazon/kcp/library/SortedBookList;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/SortedBookList;->get(I)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteActivity;->checkedItems:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteActivity;->checkedItems:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 196
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/DeleteActivity;->updateDeleteButtonState()V

    .line 197
    return-void

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteActivity;->checkedItems:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private synchronizeCheckedSet()V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteActivity;->booksView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 173
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 175
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/amazon/kcp/library/DeleteActivity;->books:Lcom/amazon/kcp/library/SortedBookList;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/library/SortedBookList;->get(I)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v2

    .line 178
    iget-object v3, p0, Lcom/amazon/kcp/library/DeleteActivity;->checkedItems:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    :cond_1
    return-void
.end method

.method private updateDeleteButtonState()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteActivity;->deleteBook:Landroid/widget/Button;

    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteActivity;->checkedItems:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 202
    return-void

    .line 201
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateDueToLibraryChange()V
    .locals 3

    .prologue
    .line 153
    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteActivity;->books:Lcom/amazon/kcp/library/SortedBookList;

    iget-object v2, p0, Lcom/amazon/kcp/library/DeleteActivity;->localLibrary:Lcom/amazon/kcp/library/models/CLibrary;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/CLibrary;->sortLocalItemsByTitle()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/SortedBookList;->replaceIndicies([I)V

    .line 154
    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteActivity;->bookAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 155
    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteActivity;->booksView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    .line 157
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteActivity;->books:Lcom/amazon/kcp/library/SortedBookList;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/SortedBookList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteActivity;->checkedItems:Ljava/util/Set;

    iget-object v2, p0, Lcom/amazon/kcp/library/DeleteActivity;->books:Lcom/amazon/kcp/library/SortedBookList;

    invoke-virtual {v2, v0}, Lcom/amazon/kcp/library/SortedBookList;->get(I)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteActivity;->booksView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 157
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_1
    return-void
.end method


# virtual methods
.method public onCancelClicked(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/amazon/kcp/library/DeleteActivity;->finish()V

    .line 252
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/DeleteActivity;->setContentView(I)V

    .line 79
    const v0, 0x7f0c005d

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/DeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/amazon/kcp/library/DeleteActivity;->booksView:Landroid/widget/ListView;

    .line 80
    const v0, 0x7f0c005e

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/DeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kcp/library/DeleteActivity;->deleteBook:Landroid/widget/Button;

    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteActivity;->booksView:Landroid/widget/ListView;

    new-instance v1, Lcom/amazon/kcp/library/DeleteActivity$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/DeleteActivity$3;-><init>(Lcom/amazon/kcp/library/DeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/amazon/kcp/library/DeleteActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/DeleteActivity;->localLibrary:Lcom/amazon/kcp/library/models/CLibrary;

    .line 93
    new-instance v0, Lcom/amazon/kcp/library/SortedBookList;

    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteActivity;->localLibrary:Lcom/amazon/kcp/library/models/CLibrary;

    iget-object v2, p0, Lcom/amazon/kcp/library/DeleteActivity;->localLibrary:Lcom/amazon/kcp/library/models/CLibrary;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/models/CLibrary;->sortLocalItemsByTitle()[I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/SortedBookList;-><init>(Lcom/amazon/kcp/library/models/IBookList;[I)V

    iput-object v0, p0, Lcom/amazon/kcp/library/DeleteActivity;->books:Lcom/amazon/kcp/library/SortedBookList;

    .line 94
    new-instance v0, Lcom/amazon/kcp/library/DeleteActivity$4;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amazon/kcp/library/DeleteActivity;->books:Lcom/amazon/kcp/library/SortedBookList;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/amazon/kcp/library/DeleteActivity$4;-><init>(Lcom/amazon/kcp/library/DeleteActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/DeleteActivity;->bookAdapter:Landroid/widget/ArrayAdapter;

    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteActivity;->booksView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteActivity;->bookAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 107
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteActivity;->localLibrary:Lcom/amazon/kcp/library/models/CLibrary;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/CLibrary;->getAddEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteActivity;->bookListChangedAtIndexCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteActivity;->localLibrary:Lcom/amazon/kcp/library/models/CLibrary;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/CLibrary;->getDeleteEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteActivity;->bookListChangedAtIndexCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 109
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteActivity;->localLibrary:Lcom/amazon/kcp/library/models/CLibrary;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/CLibrary;->getInvalidatedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteActivity;->bookListChangedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 110
    return-void
.end method

.method public onDeleteClicked(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 212
    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteActivity;->localLibrary:Lcom/amazon/kcp/library/models/CLibrary;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/CLibrary;->getDeleteEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/DeleteActivity;->bookListChangedAtIndexCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v1, v2}, Lcom/amazon/foundation/IIntEventProvider;->unregister(Lcom/amazon/foundation/IIntCallback;)Z

    .line 213
    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteActivity;->localLibrary:Lcom/amazon/kcp/library/models/CLibrary;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/CLibrary;->getInvalidatedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/DeleteActivity;->bookListChangedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v1, v2}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 216
    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteActivity;->checkedItems:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v7

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/models/IListableBook;

    .line 220
    iget-object v5, p0, Lcom/amazon/kcp/library/DeleteActivity;->localLibrary:Lcom/amazon/kcp/library/models/CLibrary;

    move-object v0, v1

    check-cast v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-object v2, v0

    invoke-virtual {v5, v2}, Lcom/amazon/kcp/library/models/CLibrary;->deleteBook(Lcom/amazon/kcp/library/models/ILocalBookItem;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1, v6}, Lcom/amazon/kcp/library/models/BookCapability;->supportsCapability(Lcom/amazon/kcp/library/models/IListableBook;I)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v6

    :goto_1
    move v4, v1

    .line 223
    goto :goto_0

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteActivity;->checkedItems:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 229
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 230
    const-string v2, "count"

    iget-object v3, p0, Lcom/amazon/kcp/library/DeleteActivity;->checkedItems:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    const-string v3, "DeleteActivity"

    const-string v5, "DeletedViaMenuItem"

    sget-object v6, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v2, v3, v5, v6, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;)V

    .line 234
    :cond_1
    if-eqz v4, :cond_2

    .line 236
    const v1, 0x7f0b0045

    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 239
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteActivity;->checkedItems:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 241
    invoke-virtual {p0}, Lcom/amazon/kcp/library/DeleteActivity;->finish()V

    .line 242
    return-void

    :cond_3
    move v1, v4

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteActivity;->localLibrary:Lcom/amazon/kcp/library/models/CLibrary;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/CLibrary;->getAddEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteActivity;->bookListChangedAtIndexCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->unregister(Lcom/amazon/foundation/IIntCallback;)Z

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteActivity;->localLibrary:Lcom/amazon/kcp/library/models/CLibrary;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/CLibrary;->getDeleteEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteActivity;->bookListChangedAtIndexCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->isRegistered(Lcom/amazon/foundation/IIntCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteActivity;->localLibrary:Lcom/amazon/kcp/library/models/CLibrary;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/CLibrary;->getDeleteEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteActivity;->bookListChangedAtIndexCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->unregister(Lcom/amazon/foundation/IIntCallback;)Z

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteActivity;->localLibrary:Lcom/amazon/kcp/library/models/CLibrary;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/CLibrary;->getInvalidatedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteActivity;->bookListChangedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->isRegistered(Lcom/amazon/foundation/ICallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/amazon/kcp/library/DeleteActivity;->localLibrary:Lcom/amazon/kcp/library/models/CLibrary;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/CLibrary;->getInvalidatedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/DeleteActivity;->bookListChangedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 146
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 117
    if-eqz p1, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/amazon/kcp/library/DeleteActivity;->synchronizeCheckedSet()V

    .line 123
    invoke-direct {p0}, Lcom/amazon/kcp/library/DeleteActivity;->updateDeleteButtonState()V

    .line 125
    :cond_0
    return-void
.end method
