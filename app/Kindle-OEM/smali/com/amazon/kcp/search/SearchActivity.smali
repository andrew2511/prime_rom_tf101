.class public Lcom/amazon/kcp/search/SearchActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/SearchActivity$BookAdapter;
    }
.end annotation


# static fields
.field public static ACTION_ARCHIVED_ITEM:Ljava/lang/String; = null

.field public static ACTION_LOCAL_BOOK:Ljava/lang/String; = null

.field private static final METRICS_TAG:Ljava/lang/String; = "SearchActivity"


# instance fields
.field private bookAddedAtIndexCallback:Lcom/amazon/foundation/IIntCallback;

.field private query:Ljava/lang/String;

.field private searchListView:Landroid/widget/ListView;

.field private searchResultsQueryView:Landroid/widget/TextView;

.field private searchResultsTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "com.amazon.search.intent.launchBook"

    sput-object v0, Lcom/amazon/kcp/search/SearchActivity;->ACTION_LOCAL_BOOK:Ljava/lang/String;

    .line 55
    const-string v0, "com.amazon.search.intent.downloadItem"

    sput-object v0, Lcom/amazon/kcp/search/SearchActivity;->ACTION_ARCHIVED_ITEM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    .line 60
    new-instance v0, Lcom/amazon/kcp/search/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/SearchActivity$1;-><init>(Lcom/amazon/kcp/search/SearchActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->bookAddedAtIndexCallback:Lcom/amazon/foundation/IIntCallback;

    .line 229
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/search/SearchActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/search/SearchActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->searchWithQuery()V

    return-void
.end method

.method private checkBookNeedsOpening(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 138
    sget-object v2, Lcom/amazon/kcp/search/SearchActivity;->ACTION_ARCHIVED_ITEM:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    const-string v2, "intent_extra_data_key"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 141
    .local v1, index:I
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/library/ILibraryController;->getArchivedItems()Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/amazon/kcp/library/models/IArchivedItemsLibrary;->getArchivedBookFromIndex(I)Lcom/amazon/kcp/library/models/internal/IMetadata;

    move-result-object v0

    .line 142
    .local v0, book:Lcom/amazon/kcp/library/models/IListableBook;
    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/SearchActivity;->launchBook(Lcom/amazon/kcp/library/models/IListableBook;)V

    .line 150
    .end local v0           #book:Lcom/amazon/kcp/library/models/IListableBook;
    .end local v1           #index:I
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    sget-object v2, Lcom/amazon/kcp/search/SearchActivity;->ACTION_LOCAL_BOOK:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    const-string v2, "intent_extra_data_key"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 147
    .restart local v1       #index:I
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/library/ILibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazon/kcp/library/models/CLibrary;->getBookFromIndex(I)Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v0

    .line 148
    .restart local v0       #book:Lcom/amazon/kcp/library/models/IListableBook;
    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/SearchActivity;->launchBook(Lcom/amazon/kcp/library/models/IListableBook;)V

    goto :goto_0
.end method

.method private launchBook(Lcom/amazon/kcp/library/models/IListableBook;)V
    .locals 4
    .parameter

    .prologue
    .line 198
    instance-of v0, p1, Lcom/amazon/kcp/library/models/ILocalBookItem;

    if-eqz v0, :cond_0

    .line 200
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "SearchActivity"

    const-string v2, "LocalBookOpened"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    check-cast p1, Lcom/amazon/kcp/library/models/ILocalBookItem;

    sget-object v1, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->DEFAULT:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    sget-object v2, Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;->LOADING_ASYNC:Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/amazon/kcp/reader/ReaderController;->openReader(Lcom/amazon/kcp/library/models/ILocalBookItem;Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;Lcom/amazon/kcp/reader/IAndroidReaderController$OpenReaderMode;Z)V

    .line 214
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->finish()V

    .line 215
    return-void

    .line 206
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "SearchActivity"

    const-string v2, "BookDownloadTransientScreen"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/LibraryController;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryController;->getArchivedItemsPage()Lcom/amazon/kcp/library/pages/IArchivedItemsPage;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/pages/IArchivedItemsPage;->downloadBook(Lcom/amazon/kcp/library/models/IListableBook;)V

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/library/TransientActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    const-string v1, "DownloadingBookAsin"

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v1, "DownloadingBookIsSample"

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IListableBook;->isSample()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 211
    const-string v1, "DownloadingDocumentType"

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IListableBook;->getBookType()I

    move-result v2

    invoke-static {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->getTodoTypeFromBookType(I)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/SearchActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private searchWithQuery()V
    .locals 7

    .prologue
    .line 166
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->query:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/LibraryController;

    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/LibraryController;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 174
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 176
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "SearchActivity"

    const-string v3, "NoResultsForLibrarySearch"

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/SearchResult;

    .line 183
    iget-object v0, v0, Lcom/amazon/kcp/search/SearchResult;->book:Lcom/amazon/kcp/library/models/IListableBook;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchResultsQueryView:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/search/SearchActivity;->query:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchResultsTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0136

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    new-instance v0, Lcom/amazon/kcp/search/SearchActivity$BookAdapter;

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/search/SearchActivity$BookAdapter;-><init>(Lcom/amazon/kcp/search/SearchActivity;Ljava/util/List;)V

    .line 191
    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->searchListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    iget-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 107
    const v0, 0x7f03003f

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/SearchActivity;->setContentView(I)V

    .line 108
    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchListView:Landroid/widget/ListView;

    .line 109
    const v0, 0x7f0c00b2

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchResultsTextView:Landroid/widget/TextView;

    .line 110
    const v0, 0x7f0c00b3

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->searchResultsQueryView:Landroid/widget/TextView;

    .line 112
    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/search/SearchActivity;->searchResults(Landroid/content/Intent;)V

    .line 121
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0137

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/search/SearchActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/CLibrary;->getAddEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->bookAddedAtIndexCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 125
    return-void

    .line 118
    :cond_0
    invoke-direct {p0, v1}, Lcom/amazon/kcp/search/SearchActivity;->checkBookNeedsOpening(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    .line 133
    invoke-virtual {p0}, Lcom/amazon/kcp/search/SearchActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/CLibrary;->getAddEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/search/SearchActivity;->bookAddedAtIndexCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->unregister(Lcom/amazon/foundation/IIntCallback;)Z

    .line 134
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/IListableBook;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/SearchActivity;->launchBook(Lcom/amazon/kcp/library/models/IListableBook;)V

    .line 227
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "newIntent"

    .prologue
    .line 89
    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/SearchActivity;->setIntent(Landroid/content/Intent;)V

    .line 92
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/SearchActivity;->searchResults(Landroid/content/Intent;)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/SearchActivity;->checkBookNeedsOpening(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public searchResults(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 158
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "SearchActivity"

    const-string v2, "LibrarySearchPerformed"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/SearchActivity;->query:Ljava/lang/String;

    .line 161
    invoke-direct {p0}, Lcom/amazon/kcp/search/SearchActivity;->searchWithQuery()V

    .line 162
    return-void
.end method
