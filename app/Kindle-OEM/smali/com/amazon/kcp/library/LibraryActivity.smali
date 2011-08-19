.class public abstract Lcom/amazon/kcp/library/LibraryActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "LibraryActivity.java"

# interfaces
.implements Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/LibraryActivity$20;,
        Lcom/amazon/kcp/library/LibraryActivity$ViewType;,
        Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BookType::",
        "Lcom/amazon/kcp/library/models/IListableBook;",
        ">",
        "Lcom/amazon/kcp/redding/ReddingActivity;",
        "Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BOOK_LIST_UI_UPDATE_DELAY:J = 0x3e8L

.field private static final HELP_URL_PATH:Ljava/lang/String; = "gp/kindle/android/redirect.html?redirect=AndroidHelp0"

.field private static final LIBRARY_PREFS:Ljava/lang/String; = "LibrarySettings"

.field private static final SHELFARI_PAGE_SCALE:I = 0x4b

.field private static final SORT_DIALOG_ID:I = 0x0

.field protected static final SORT_TYPE_AUTHOR:I = 0x2

.field protected static final SORT_TYPE_RECENT:I = 0x0

.field protected static final SORT_TYPE_TITLE:I = 0x1

.field private static final VIEW_TYPE_KEY:Ljava/lang/String; = "ViewType"


# instance fields
.field protected books:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TBookType;>;"
        }
    .end annotation
.end field

.field protected booksAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<TBookType;>;"
        }
    .end annotation
.end field

.field protected coverGallery:Lcom/amazon/kcp/library/ui/CoverGalleryLayout;

.field protected currentLibraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

.field protected currentSortType:I

.field protected currentViewType:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

.field private hasDelayedBookListUIUpdate:Z

.field private localLibraryPage:Lcom/amazon/kcp/library/pages/internal/CLibraryPage;

.field protected metricsTag:Ljava/lang/String;

.field private onItemAddedCallback:Lcom/amazon/foundation/IIntCallback;

.field private onItemDeletedCallback:Lcom/amazon/foundation/IIntCallback;

.field private onListInvalidatedCallback:Lcom/amazon/foundation/ICallback;

.field private onQueryTextListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;

.field protected prefs:Landroid/content/SharedPreferences;

.field private searchView:Lcom/amazon/android/widget/SearchViewWrapper;

.field protected sortLabel:Landroid/widget/TextView;

.field private syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

.field protected titleText:Landroid/widget/TextView;

.field private final updateBookListUIDelayedHandler:Landroid/os/Handler;

.field protected final updateBookListUIRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/amazon/kcp/library/LibraryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/amazon/kcp/library/LibraryActivity;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity;,"Lcom/amazon/kcp/library/LibraryActivity<TBookType;>;"
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    .line 283
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->updateBookListUIDelayedHandler:Landroid/os/Handler;

    .line 298
    new-instance v0, Lcom/amazon/kcp/library/LibraryActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/LibraryActivity$1;-><init>(Lcom/amazon/kcp/library/LibraryActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->updateBookListUIRunnable:Ljava/lang/Runnable;

    .line 311
    new-instance v0, Lcom/amazon/kcp/library/LibraryActivity$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/LibraryActivity$2;-><init>(Lcom/amazon/kcp/library/LibraryActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->onListInvalidatedCallback:Lcom/amazon/foundation/ICallback;

    .line 324
    new-instance v0, Lcom/amazon/kcp/library/LibraryActivity$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/LibraryActivity$3;-><init>(Lcom/amazon/kcp/library/LibraryActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->onItemDeletedCallback:Lcom/amazon/foundation/IIntCallback;

    .line 337
    new-instance v0, Lcom/amazon/kcp/library/LibraryActivity$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/LibraryActivity$4;-><init>(Lcom/amazon/kcp/library/LibraryActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->onItemAddedCallback:Lcom/amazon/foundation/IIntCallback;

    .line 351
    new-instance v0, Lcom/amazon/kcp/library/LibraryActivity$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/LibraryActivity$5;-><init>(Lcom/amazon/kcp/library/LibraryActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->onQueryTextListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/LibraryActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryActivity;->updateBookListUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/library/LibraryActivity;Lcom/amazon/foundation/IIntEventProvider;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/LibraryActivity;->scheduleBookListUIUpdate(Lcom/amazon/foundation/IIntEventProvider;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/LibraryActivity;)Lcom/amazon/android/widget/SearchViewWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->searchView:Lcom/amazon/android/widget/SearchViewWrapper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/library/LibraryActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/LibraryActivity;->setSort(I)V

    return-void
.end method

.method private buildSortDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    .line 838
    const/4 v0, -0x1

    .line 839
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity;->currentLibraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    iget-object v1, v1, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->supportedSortTypes:[I

    .line 842
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    .line 845
    const/4 v3, 0x0

    move v6, v3

    move v3, v0

    move v0, v6

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 850
    aget v4, v1, v0

    packed-switch v4, :pswitch_data_0

    .line 862
    const-string v4, ""

    .line 867
    :goto_1
    aput-object v4, v2, v0

    .line 870
    aget v4, v1, v0

    iget v5, p0, Lcom/amazon/kcp/library/LibraryActivity;->currentSortType:I

    if-ne v4, v5, :cond_0

    move v3, v0

    .line 845
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 853
    :pswitch_0
    const v4, 0x7f0b0067

    invoke-virtual {p0, v4}, Lcom/amazon/kcp/library/LibraryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 856
    :pswitch_1
    const v4, 0x7f0b0068

    invoke-virtual {p0, v4}, Lcom/amazon/kcp/library/LibraryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 859
    :pswitch_2
    const v4, 0x7f0b0069

    invoke-virtual {p0, v4}, Lcom/amazon/kcp/library/LibraryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 876
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 877
    const v4, 0x7f0b0066

    invoke-virtual {p0, v4}, Lcom/amazon/kcp/library/LibraryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 878
    const v4, 0x7f0b000d

    invoke-virtual {p0, v4}, Lcom/amazon/kcp/library/LibraryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 880
    new-instance v4, Lcom/amazon/kcp/library/LibraryActivity$7;

    invoke-direct {v4, p0, v1}, Lcom/amazon/kcp/library/LibraryActivity$7;-><init>(Lcom/amazon/kcp/library/LibraryActivity;[I)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 895
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 850
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initializeBooksView(Landroid/widget/AdapterView;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<",
            "Landroid/widget/ArrayAdapter",
            "<+",
            "Lcom/amazon/kcp/library/models/IListableBook;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 989
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity;,"Lcom/amazon/kcp/library/LibraryActivity<TBookType;>;"
    .local p1, booksView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<Landroid/widget/ArrayAdapter<+Lcom/amazon/kcp/library/models/IListableBook;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 991
    new-instance v0, Lcom/amazon/kcp/library/LibraryActivity$8;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/LibraryActivity$8;-><init>(Lcom/amazon/kcp/library/LibraryActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1000
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->booksAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    .line 1003
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 1004
    return-void
.end method

.method private initiateManualSync()V
    .locals 4

    .prologue
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity;,"Lcom/amazon/kcp/library/LibraryActivity<TBookType;>;"
    const/4 v3, 0x0

    .line 1067
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canPerformSync()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1069
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->LIBRARY_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-direct {v0, v2, v3, v3, v3}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kcp/library/models/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/foundation/IStatusTracker;)V

    .line 1070
    .local v0, manualSyncParams:Lcom/amazon/kcp/application/sync/internal/SyncParameters;
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSynchronizationManager()Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    move-result-object v1

    .line 1071
    .local v1, syncManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;
    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->hasRequestFor(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1073
    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)V

    .line 1076
    .end local v0           #manualSyncParams:Lcom/amazon/kcp/application/sync/internal/SyncParameters;
    .end local v1           #syncManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;
    :cond_0
    return-void
.end method

.method private initiateUpgradeSync()V
    .locals 4

    .prologue
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity;,"Lcom/amazon/kcp/library/LibraryActivity<TBookType;>;"
    const/4 v3, 0x0

    .line 1046
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canPerformSync()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1049
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->LAUNCH:Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-direct {v0, v2, v3, v3, v3}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kcp/library/models/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/foundation/IStatusTracker;)V

    .line 1050
    .local v0, manualSyncParams:Lcom/amazon/kcp/application/sync/internal/SyncParameters;
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSynchronizationManager()Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    move-result-object v1

    .line 1051
    .local v1, syncManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;
    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->hasRequestFor(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1053
    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)V

    .line 1057
    :cond_0
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    .end local v0           #manualSyncParams:Lcom/amazon/kcp/application/sync/internal/SyncParameters;
    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->LIBRARY_MANUAL:Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-direct {v0, v2, v3, v3, v3}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/kcp/library/models/ILocalBookInfo;Ljava/util/Date;Lcom/amazon/foundation/IStatusTracker;)V

    .line 1058
    .restart local v0       #manualSyncParams:Lcom/amazon/kcp/application/sync/internal/SyncParameters;
    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->hasRequestFor(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1060
    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)V

    .line 1063
    .end local v0           #manualSyncParams:Lcom/amazon/kcp/application/sync/internal/SyncParameters;
    .end local v1           #syncManager:Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;
    :cond_1
    return-void
.end method

.method private resetSortByLabel()V
    .locals 2

    .prologue
    const v1, 0x7f0b0057

    .line 1163
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->sortLabel:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1187
    :goto_0
    return-void

    .line 1169
    :cond_0
    iget v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->currentSortType:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 1186
    :goto_1
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity;->sortLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1172
    :pswitch_0
    const v0, 0x7f0b0059

    .line 1173
    goto :goto_1

    :pswitch_1
    move v0, v1

    .line 1176
    goto :goto_1

    .line 1178
    :pswitch_2
    const v0, 0x7f0b0058

    .line 1179
    goto :goto_1

    .line 1169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private resetTitleLabel()V
    .locals 2

    .prologue
    .line 1152
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity;,"Lcom/amazon/kcp/library/LibraryActivity<TBookType;>;"
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->titleText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->titleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getTitleText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1156
    :cond_0
    return-void
.end method

.method private scheduleBookListUIUpdate(Lcom/amazon/foundation/IIntEventProvider;)V
    .locals 4
    .parameter

    .prologue
    .line 1114
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryActivity;->eventsOccurInRapidSuccession(Lcom/amazon/foundation/IIntEventProvider;)Z

    move-result v0

    .line 1115
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/amazon/kcp/library/LibraryActivity;->hasDelayedBookListUIUpdate:Z

    if-nez v1, :cond_1

    .line 1117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->hasDelayedBookListUIUpdate:Z

    .line 1118
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->updateBookListUIDelayedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity;->updateBookListUIRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1124
    :cond_0
    :goto_0
    return-void

    .line 1120
    :cond_1
    if-nez v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->updateBookListUIRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/LibraryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setLibraryFilterVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 979
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity;,"Lcom/amazon/kcp/library/LibraryActivity<TBookType;>;"
    const v2, 0x7f0c0082

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/library/LibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 980
    .local v0, libraryFilterContainer:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 982
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    move v1, v2

    .line 983
    .local v1, visibility:I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 985
    .end local v1           #visibility:I
    :cond_0
    return-void

    .line 982
    :cond_1
    const/16 v2, 0x8

    move v1, v2

    goto :goto_0
.end method

.method private setSort(I)V
    .locals 4
    .parameter

    .prologue
    .line 900
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->currentLibraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->supportsSortType(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 902
    const-string v0, "Requested sortType (%d) not allowed for current libraryFilter (%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryActivity;->currentLibraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 926
    :cond_0
    :goto_0
    return-void

    .line 915
    :cond_1
    iget v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->currentSortType:I

    if-eq v0, p1, :cond_0

    .line 917
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryActivity;->changeCurrentSortType(I)V

    .line 918
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryActivity;->updateBookListUI()V

    .line 919
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryActivity;->resetSortByLabel()V

    .line 922
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 923
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity;->currentLibraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    iget-object v1, v1, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->sortPersistenceKey:Ljava/lang/String;

    iget v2, p0, Lcom/amazon/kcp/library/LibraryActivity;->currentSortType:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 924
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private setSyncMessageVisible(ZZ)V
    .locals 3
    .parameter "visible"
    .parameter "animated"

    .prologue
    .line 1098
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity;,"Lcom/amazon/kcp/library/LibraryActivity<TBookType;>;"
    if-eqz p1, :cond_1

    const/high16 v1, 0x10a

    :goto_0
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1099
    .local v0, animation:Landroid/view/animation/Animation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1100
    if-nez p2, :cond_0

    .line 1102
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1104
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity;->syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/ui/SyncMessageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1105
    return-void

    .line 1098
    .end local v0           #animation:Landroid/view/animation/Animation;
    :cond_1
    const v1, 0x10a0001

    goto :goto_0
.end method

.method private setupSearchView(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 730
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity;,"Lcom/amazon/kcp/library/LibraryActivity<TBookType;>;"
    sget-boolean v2, Lcom/amazon/kcp/application/ReddingApplication;->HAS_SEARCH_VIEW:Z

    if-eqz v2, :cond_0

    .line 732
    new-instance v1, Lcom/amazon/android/widget/SearchViewWrapper;

    const v2, 0x7f0c00e8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/android/widget/SearchViewWrapper;-><init>(Landroid/view/MenuItem;)V

    .line 733
    .local v1, searchView:Lcom/amazon/android/widget/SearchViewWrapper;
    const-string v2, "search"

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/library/LibraryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 735
    .local v0, searchManager:Landroid/app/SearchManager;
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/amazon/android/widget/SearchViewWrapper;->setSearchableInfo(Landroid/app/SearchManager;Landroid/content/ComponentName;)V

    .line 736
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amazon/android/widget/SearchViewWrapper;->setIconifiedByDefault(Z)V

    .line 737
    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryActivity;->onQueryTextListenerCallback:Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;

    invoke-virtual {v1, v2}, Lcom/amazon/android/widget/SearchViewWrapper;->setOnQueryTextListener(Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;)V

    .line 739
    iput-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity;->searchView:Lcom/amazon/android/widget/SearchViewWrapper;

    .line 741
    .end local v0           #searchManager:Landroid/app/SearchManager;
    .end local v1           #searchView:Lcom/amazon/android/widget/SearchViewWrapper;
    :cond_0
    return-void
.end method

.method private shouldPerformUpgradeActions()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1020
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    .line 1025
    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getReaderInstructionViewCount()I

    move-result v1

    .line 1026
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App has shown reader instructions "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " times."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getLibraryLastUpgradedVersion()J

    move-result-wide v2

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last library upgraded version is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1032
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getAppVersionNumber()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    move v0, v7

    .line 1037
    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    move v0, v7

    :goto_1
    return v0

    :cond_0
    move v0, v6

    .line 1032
    goto :goto_0

    :cond_1
    move v0, v6

    .line 1037
    goto :goto_1
.end method

.method private switchToViewType(Lcom/amazon/kcp/library/LibraryActivity$ViewType;)V
    .locals 3
    .parameter

    .prologue
    .line 940
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->currentViewType:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    if-ne p1, v0, :cond_0

    .line 974
    :goto_0
    return-void

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->currentViewType:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    sget-object v1, Lcom/amazon/kcp/library/LibraryActivity$ViewType;->GALLERY:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    if-ne v0, v1, :cond_1

    .line 947
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getCoverGallery()Lcom/amazon/kcp/library/ui/CoverGalleryLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->hide()V

    .line 951
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getBooksView()Landroid/widget/AdapterView;

    move-result-object v0

    .line 952
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    .line 953
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setVisibility(I)V

    .line 956
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryActivity;->currentViewType:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    .line 957
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getBooksView()Landroid/widget/AdapterView;

    move-result-object v0

    .line 958
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/LibraryActivity;->initializeBooksView(Landroid/widget/AdapterView;)V

    .line 959
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 961
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->currentViewType:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    sget-object v1, Lcom/amazon/kcp/library/LibraryActivity$ViewType;->GALLERY:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    if-ne v0, v1, :cond_2

    .line 963
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getCoverGallery()Lcom/amazon/kcp/library/ui/CoverGalleryLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->show()V

    .line 968
    :cond_2
    invoke-static {p0}, Lcom/amazon/android/menu/InvalidateOptionsMenuReflect;->invalidateOptionsMenu(Landroid/app/Activity;)V

    .line 971
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 972
    const-string v1, "ViewType"

    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryActivity;->currentViewType:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/LibraryActivity$ViewType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 973
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private updateBookListUI()V
    .locals 2

    .prologue
    .line 1128
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity;,"Lcom/amazon/kcp/library/LibraryActivity<TBookType;>;"
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->updateBookListUIDelayedHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity;->updateBookListUIRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->hasDelayedBookListUIUpdate:Z

    .line 1132
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->refreshBooksList()V

    .line 1135
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->booksAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 1138
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryActivity;->resetTitleLabel()V

    .line 1141
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->coverGallery:Lcom/amazon/kcp/library/ui/CoverGalleryLayout;

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->coverGallery:Lcom/amazon/kcp/library/ui/CoverGalleryLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->updateUI()V

    .line 1145
    :cond_0
    return-void
.end method

.method private updateMenusForSort(Landroid/view/Menu;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 640
    const v0, 0x7f0c00ee

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 641
    if-nez v0, :cond_0

    .line 679
    :goto_0
    return-void

    .line 647
    :cond_0
    const v1, 0x7f0c00f2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 648
    const v2, 0x7f0c00f0

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 649
    const v3, 0x7f0c00f1

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 650
    iget v4, p0, Lcom/amazon/kcp/library/LibraryActivity;->currentSortType:I

    if-ne v4, v6, :cond_1

    .line 652
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 653
    const v4, 0x7f0b0031

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 668
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->currentLibraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    invoke-virtual {v0, v6}, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->supportsSortType(I)Z

    move-result v0

    .line 669
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 670
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 672
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->currentLibraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->supportsSortType(I)Z

    move-result v0

    .line 673
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 674
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 676
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->currentLibraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    invoke-virtual {v0, v5}, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->supportsSortType(I)Z

    move-result v0

    .line 677
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 678
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 655
    :cond_1
    iget v4, p0, Lcom/amazon/kcp/library/LibraryActivity;->currentSortType:I

    if-nez v4, :cond_2

    .line 657
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 658
    const v4, 0x7f0b002f

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 663
    :cond_2
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 664
    const v4, 0x7f0b0030

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private updateMenusForView(Landroid/view/Menu;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0c00e7

    const v3, 0x7f0c00e6

    const/4 v2, 0x1

    .line 685
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->currentViewType:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    sget-object v1, Lcom/amazon/kcp/library/LibraryActivity$ViewType;->LIST:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    if-ne v0, v1, :cond_0

    .line 687
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 688
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 696
    :goto_0
    const v1, 0x7f0c00e5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 697
    return-void

    .line 693
    :cond_0
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 694
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected addShelfariContextMenuItem(Landroid/view/ContextMenu;Lcom/amazon/kcp/library/models/IListableBook;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1346
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1348
    const v0, 0x7f0b0042

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/LibraryActivity$11;

    invoke-direct {v1, p0, p3, p2}, Lcom/amazon/kcp/library/LibraryActivity$11;-><init>(Lcom/amazon/kcp/library/LibraryActivity;Ljava/lang/String;Lcom/amazon/kcp/library/models/IListableBook;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1367
    :cond_0
    return-void
.end method

.method protected changeCurrentSortType(I)V
    .locals 0
    .parameter "sortType"

    .prologue
    .line 934
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity;,"Lcom/amazon/kcp/library/LibraryActivity<TBookType;>;"
    iput p1, p0, Lcom/amazon/kcp/library/LibraryActivity;->currentSortType:I

    .line 935
    return-void
.end method

.method protected eventsOccurInRapidSuccession(Lcom/amazon/foundation/IIntEventProvider;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 493
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity;,"Lcom/amazon/kcp/library/LibraryActivity<TBookType;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getBook(I)Lcom/amazon/kcp/library/models/IListableBook;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBookType;"
        }
    .end annotation
.end method

.method protected getBooksView()Landroid/widget/AdapterView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/AdapterView",
            "<",
            "Landroid/widget/ArrayAdapter",
            "<+",
            "Lcom/amazon/kcp/library/models/IListableBook;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1196
    sget-object v0, Lcom/amazon/kcp/library/LibraryActivity$20;->$SwitchMap$com$amazon$kcp$library$LibraryActivity$ViewType:[I

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity;->currentViewType:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryActivity$ViewType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1212
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not find view for current view mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1200
    :pswitch_0
    const v0, 0x7f0c007a

    const v1, 0x7f0c0079

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/LibraryActivity;->getStubbedView(II)Landroid/view/View;

    move-result-object v0

    move-object p0, v0

    .line 1215
    :goto_0
    check-cast p0, Landroid/widget/AdapterView;

    return-object p0

    .line 1204
    :pswitch_1
    const v0, 0x7f0c007c

    const v1, 0x7f0c007b

    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/library/LibraryActivity;->getStubbedView(II)Landroid/view/View;

    move-result-object v0

    move-object p0, v0

    .line 1205
    goto :goto_0

    .line 1208
    :pswitch_2
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getCoverGallery()Lcom/amazon/kcp/library/ui/CoverGalleryLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->getBookAdapterView()Landroid/widget/AdapterView;

    move-result-object v0

    move-object p0, v0

    .line 1209
    goto :goto_0

    .line 1196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getCoverGallery()Lcom/amazon/kcp/library/ui/CoverGalleryLayout;
    .locals 2

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->coverGallery:Lcom/amazon/kcp/library/ui/CoverGalleryLayout;

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->coverGallery:Lcom/amazon/kcp/library/ui/CoverGalleryLayout;

    .line 1228
    :goto_0
    return-object v0

    .line 1225
    :cond_0
    const v0, 0x7f0c0083

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/LibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1226
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->coverGallery:Lcom/amazon/kcp/library/ui/CoverGalleryLayout;

    .line 1227
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->coverGallery:Lcom/amazon/kcp/library/ui/CoverGalleryLayout;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity;->books:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/ui/CoverGalleryLayout;->setBookList(Ljava/util/List;)V

    .line 1228
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->coverGallery:Lcom/amazon/kcp/library/ui/CoverGalleryLayout;

    goto :goto_0
.end method

.method protected abstract getInitialBooksList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TBookType;>;"
        }
    .end annotation
.end method

.method protected abstract getInitialLibraryFilter()Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;
.end method

.method protected abstract getItemAddedEvent()Lcom/amazon/foundation/IIntEventProvider;
.end method

.method protected abstract getItemDeletedEvent()Lcom/amazon/foundation/IIntEventProvider;
.end method

.method protected abstract getListInvalidatedEvent()Lcom/amazon/foundation/IEventProvider;
.end method

.method protected getReaderController()Lcom/amazon/kcp/reader/ReaderController;
    .locals 1

    .prologue
    .line 1250
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity;,"Lcom/amazon/kcp/library/LibraryActivity<TBookType;>;"
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p0

    .end local p0           #this:Lcom/amazon/kcp/library/LibraryActivity;,"Lcom/amazon/kcp/library/LibraryActivity<TBookType;>;"
    check-cast p0, Lcom/amazon/kcp/reader/ReaderController;

    return-object p0
.end method

.method protected getSortTypeForLibraryFilter(Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;)I
    .locals 3
    .parameter "libraryFilter"

    .prologue
    .line 507
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity;,"Lcom/amazon/kcp/library/LibraryActivity<TBookType;>;"
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->prefs:Landroid/content/SharedPreferences;

    iget-object v1, p1, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->sortPersistenceKey:Ljava/lang/String;

    iget v2, p1, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->defaultSortType:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getStubbedView(II)Landroid/view/View;
    .locals 2
    .parameter "viewId"
    .parameter "viewStubId"

    .prologue
    .line 1233
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity;,"Lcom/amazon/kcp/library/LibraryActivity<TBookType;>;"
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/LibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1236
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_0

    .line 1238
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/library/LibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1239
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 1242
    .end local v0           #stub:Landroid/view/ViewStub;
    :cond_0
    return-object v1
.end method

.method protected abstract getTitleText()Ljava/lang/String;
.end method

.method protected abstract makeBookGridCell(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TBookType;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method protected abstract makeBookListRow(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TBookType;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method protected newBooksAdapter()Landroid/widget/ArrayAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter",
            "<TBookType;>;"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity;,"Lcom/amazon/kcp/library/LibraryActivity<TBookType;>;"
    new-instance v0, Lcom/amazon/kcp/library/LibraryActivity$6;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryActivity;->books:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/amazon/kcp/library/LibraryActivity$6;-><init>(Lcom/amazon/kcp/library/LibraryActivity;Landroid/content/Context;ILjava/util/List;)V

    return-object v0
.end method

.method protected abstract onBookItemClick(Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBookType;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation
.end method

.method protected onBooksViewClicked(Landroid/widget/AdapterView;Landroid/view/View;I)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1009
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity;,"Lcom/amazon/kcp/library/LibraryActivity<TBookType;>;"
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/IListableBook;

    .line 1010
    .local v0, item:Lcom/amazon/kcp/library/models/IListableBook;,"TBookType;"
    invoke-virtual {p0, v0, p2}, Lcom/amazon/kcp/library/LibraryActivity;->onBookItemClick(Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)V

    .line 1011
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 513
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 516
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->metricsTag:Ljava/lang/String;

    .line 517
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->metricsTag:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 518
    if-le v0, v5, :cond_0

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryActivity;->metricsTag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 521
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity;->metricsTag:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->metricsTag:Ljava/lang/String;

    .line 524
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/LibraryController;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryController;->getLocalLibraryPage()Lcom/amazon/kcp/library/pages/internal/CLibraryPage;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->localLibraryPage:Lcom/amazon/kcp/library/pages/internal/CLibraryPage;

    .line 526
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/LibraryActivity;->setContentView(I)V

    .line 530
    const v0, 0x7f0c0077

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/LibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->titleText:Landroid/widget/TextView;

    .line 532
    const v0, 0x7f0c0078

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/LibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->sortLabel:Landroid/widget/TextView;

    .line 535
    const-string v0, "LibrarySettings"

    invoke-virtual {p0, v0, v4}, Lcom/amazon/kcp/library/LibraryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->prefs:Landroid/content/SharedPreferences;

    .line 538
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getInitialLibraryFilter()Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->currentLibraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    .line 539
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->currentLibraryFilter:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/LibraryActivity;->getSortTypeForLibraryFilter(Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->currentSortType:I

    .line 542
    sget-object v0, Lcom/amazon/kcp/library/LibraryActivity$ViewType;->LIST:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    .line 543
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 545
    sget-object v0, Lcom/amazon/kcp/library/LibraryActivity$ViewType;->GRID:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    .line 550
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v2, "ViewType"

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryActivity$ViewType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/library/LibraryActivity$ViewType;->valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity;->currentViewType:Lcom/amazon/kcp/library/LibraryActivity$ViewType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "LibraryActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StartedIn"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryActivity;->currentViewType:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/LibraryActivity$ViewType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getInitialBooksList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->books:Ljava/util/List;

    .line 560
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->newBooksAdapter()Landroid/widget/ArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->booksAdapter:Landroid/widget/ArrayAdapter;

    .line 562
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getBooksView()Landroid/widget/AdapterView;

    move-result-object v0

    .line 563
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/LibraryActivity;->initializeBooksView(Landroid/widget/AdapterView;)V

    .line 566
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getListInvalidatedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity;->onListInvalidatedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 567
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getItemAddedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity;->onItemAddedCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 568
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getItemDeletedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity;->onItemDeletedCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->register(Lcom/amazon/foundation/IIntCallback;)Z

    .line 571
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSynchronizationManager()Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/amazon/kcp/ui/SyncMessageView;->newInstance(Landroid/content/Context;Lcom/amazon/kcp/application/sync/internal/SynchronizationManager;)Lcom/amazon/kcp/ui/SyncMessageView;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

    .line 572
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v5, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/ui/SyncMessageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    const v0, 0x7f0c0081

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/LibraryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity;->syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 574
    invoke-direct {p0, v4, v4}, Lcom/amazon/kcp/library/LibraryActivity;->setSyncMessageVisible(ZZ)V

    .line 576
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/ui/SyncMessageView;->setOnSyncMessageListener(Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;)V

    .line 579
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryActivity;->resetTitleLabel()V

    .line 582
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryActivity;->resetSortByLabel()V

    .line 586
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->wasAppUpgradedThisOpening()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryActivity;->shouldPerformUpgradeActions()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    invoke-static {p0}, Lcom/amazon/kcp/info/WhatsNewDialogBuilder;->buildDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 597
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryActivity;->initiateUpgradeSync()V

    .line 601
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getAppVersionNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/SettingsController;->setLibraryLastUpgradedVersion(J)V

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set library app version to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getAppVersionNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 603
    return-void

    .line 555
    :catch_0
    move-exception v1

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->currentViewType:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 702
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity;,"Lcom/amazon/kcp/library/LibraryActivity<TBookType;>;"
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getBooksView()Landroid/widget/AdapterView;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 704
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 705
    .local v3, position:I
    move-object v0, p2

    check-cast v0, Landroid/widget/AdapterView;

    move-object v2, v0

    .line 707
    .local v2, books:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/models/IListableBook;

    .line 708
    .local v1, bookItem:Lcom/amazon/kcp/library/models/IListableBook;,"TBookType;"
    invoke-virtual {p0, p1, v1}, Lcom/amazon/kcp/library/LibraryActivity;->populateContextMenuForBook(Landroid/view/ContextMenu;Lcom/amazon/kcp/library/models/IListableBook;)V

    .line 710
    .end local v1           #bookItem:Lcom/amazon/kcp/library/models/IListableBook;,"TBookType;"
    .end local v2           #books:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    .end local v3           #position:I
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 818
    const/4 v0, 0x0

    .line 819
    packed-switch p1, :pswitch_data_0

    .line 823
    :goto_0
    return-object v0

    .line 822
    :pswitch_0
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryActivity;->buildSortDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 819
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 715
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity;,"Lcom/amazon/kcp/library/LibraryActivity<TBookType;>;"
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 716
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/LibraryActivity;->setupSearchView(Landroid/view/Menu;)V

    .line 718
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 608
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    .line 610
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getListInvalidatedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity;->onListInvalidatedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 611
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getItemAddedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity;->onItemAddedCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->unregister(Lcom/amazon/foundation/IIntCallback;)Z

    .line 612
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getItemDeletedEvent()Lcom/amazon/foundation/IIntEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity;->onItemDeletedCallback:Lcom/amazon/foundation/IIntCallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IIntEventProvider;->unregister(Lcom/amazon/foundation/IIntCallback;)Z

    .line 613
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->syncMessageView:Lcom/amazon/kcp/ui/SyncMessageView;

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/ui/SyncMessageView;->setOnSyncMessageListener(Lcom/amazon/kcp/ui/SyncMessageView$OnSyncMessageListener;)V

    .line 615
    sget-boolean v0, Lcom/amazon/kcp/application/ReddingApplication;->HAS_SEARCH_VIEW:Z

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->searchView:Lcom/amazon/android/widget/SearchViewWrapper;

    invoke-virtual {v0, v2}, Lcom/amazon/android/widget/SearchViewWrapper;->setOnQueryTextListener(Lcom/amazon/android/widget/SearchViewWrapper$OnQueryTextListenerWrapper;)V

    .line 619
    :cond_0
    return-void
.end method

.method public onHideSyncMessage(Lcom/amazon/kcp/ui/SyncMessageView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1088
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity;,"Lcom/amazon/kcp/library/LibraryActivity<TBookType;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/library/LibraryActivity;->setSyncMessageVisible(ZZ)V

    .line 1089
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 746
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 749
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 810
    :pswitch_0
    sget-boolean v0, Lcom/amazon/kcp/library/LibraryActivity;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 752
    :pswitch_1
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->showLibraryPage()Lcom/amazon/kcp/library/pages/ILibraryPage;

    move v0, v3

    .line 812
    :goto_0
    return v0

    .line 755
    :pswitch_2
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->localLibraryPage:Lcom/amazon/kcp/library/pages/internal/CLibraryPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/pages/internal/CLibraryPage;->gotoArchivedItems()V

    move v0, v3

    .line 756
    goto :goto_0

    .line 758
    :pswitch_3
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/store/IWebStoreController;->showStorefront()V

    move v0, v3

    .line 759
    goto :goto_0

    .line 764
    :pswitch_4
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/LibraryActivity;->showDialog(I)V

    move v0, v3

    .line 765
    goto :goto_0

    .line 767
    :pswitch_5
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/LibraryActivity;->setSort(I)V

    move v0, v3

    .line 768
    goto :goto_0

    .line 770
    :pswitch_6
    invoke-direct {p0, v3}, Lcom/amazon/kcp/library/LibraryActivity;->setSort(I)V

    move v0, v3

    .line 771
    goto :goto_0

    .line 773
    :pswitch_7
    invoke-direct {p0, v1}, Lcom/amazon/kcp/library/LibraryActivity;->setSort(I)V

    move v0, v3

    .line 774
    goto :goto_0

    .line 776
    :pswitch_8
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryActivity;->initiateManualSync()V

    move v0, v3

    .line 777
    goto :goto_0

    .line 779
    :pswitch_9
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->onSearchRequested()Z

    move v0, v3

    .line 780
    goto :goto_0

    .line 782
    :pswitch_a
    sget-object v0, Lcom/amazon/kcp/library/LibraryActivity$ViewType;->LIST:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/LibraryActivity;->switchToViewType(Lcom/amazon/kcp/library/LibraryActivity$ViewType;)V

    move v0, v3

    .line 783
    goto :goto_0

    .line 785
    :pswitch_b
    sget-object v0, Lcom/amazon/kcp/library/LibraryActivity$ViewType;->GRID:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/LibraryActivity;->switchToViewType(Lcom/amazon/kcp/library/LibraryActivity$ViewType;)V

    move v0, v3

    .line 786
    goto :goto_0

    .line 788
    :pswitch_c
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/library/DeleteActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/LibraryActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 789
    goto :goto_0

    .line 791
    :pswitch_d
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/LibraryActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 792
    goto :goto_0

    .line 794
    :pswitch_e
    const-string v0, "gp/kindle/android/redirect.html?redirect=AndroidHelp0"

    invoke-static {v0}, Lcom/amazon/kcp/RedirectUrlAuthority;->getRedirectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 795
    const-string v1, "tag"

    invoke-static {}, Lcom/amazon/kcp/application/AssociateInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IAssociateInformationProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAssociateInformationProvider;->getAssociateTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/Utils;->addGetParamaterToURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 799
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->openUrl(Ljava/lang/String;)V

    move v0, v3

    .line 800
    goto :goto_0

    .line 802
    :pswitch_f
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/feedback/FeedbackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/LibraryActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 803
    goto/16 :goto_0

    .line 805
    :pswitch_10
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/info/InfoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/LibraryActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v3

    .line 806
    goto/16 :goto_0

    :cond_0
    move v0, v1

    goto/16 :goto_0

    .line 749
    :pswitch_data_0
    .packed-switch 0x7f0c00df
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_c
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter

    .prologue
    .line 625
    const v0, 0x7f0c00e3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canPerformSync()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 626
    const v0, 0x7f0c00ea

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canSendFeedback()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 627
    const v0, 0x7f0c00e1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canGotoStore()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 630
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/LibraryActivity;->updateMenusForView(Landroid/view/Menu;)V

    .line 631
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/LibraryActivity;->updateMenusForSort(Landroid/view/Menu;)V

    .line 633
    const/4 v0, 0x1

    return v0
.end method

.method public onShowSyncMessage(Lcom/amazon/kcp/ui/SyncMessageView;Z)Z
    .locals 2
    .parameter "view"
    .parameter "inProgress"

    .prologue
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity;,"Lcom/amazon/kcp/library/LibraryActivity<TBookType;>;"
    const/4 v1, 0x1

    .line 1081
    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/amazon/kcp/library/LibraryActivity;->setSyncMessageVisible(ZZ)V

    .line 1082
    return v1

    .line 1081
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected populateContextMenuForAIBook(Landroid/view/ContextMenu;Lcom/amazon/kcp/library/models/internal/IMetadata;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 1377
    const/4 v0, 0x3

    invoke-static {p2, v0}, Lcom/amazon/kcp/library/models/BookCapability;->supportsCapability(Lcom/amazon/kcp/library/models/IListableBook;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1379
    const v0, 0x7f0b003d

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/LibraryActivity$12;

    invoke-direct {v1, p0, p2}, Lcom/amazon/kcp/library/LibraryActivity$12;-><init>(Lcom/amazon/kcp/library/LibraryActivity;Lcom/amazon/kcp/library/models/internal/IMetadata;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1390
    const v0, 0x7f0b003e

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/LibraryActivity$13;

    invoke-direct {v1, p0, p2}, Lcom/amazon/kcp/library/LibraryActivity$13;-><init>(Lcom/amazon/kcp/library/LibraryActivity;Lcom/amazon/kcp/library/models/internal/IMetadata;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1403
    :cond_0
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getDownloadState()I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-interface {p2}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getDownloadState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 1405
    const v0, 0x7f0b0041

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/LibraryActivity$14;

    invoke-direct {v1, p0, p2}, Lcom/amazon/kcp/library/LibraryActivity$14;-><init>(Lcom/amazon/kcp/library/LibraryActivity;Lcom/amazon/kcp/library/models/internal/IMetadata;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1417
    :cond_1
    invoke-static {p2, v2}, Lcom/amazon/kcp/library/models/BookCapability;->supportsCapability(Lcom/amazon/kcp/library/models/IListableBook;I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canGotoShelfari()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1421
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->metricsTag:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kcp/library/LibraryActivity;->addShelfariContextMenuItem(Landroid/view/ContextMenu;Lcom/amazon/kcp/library/models/IListableBook;Ljava/lang/String;)V

    .line 1423
    :cond_2
    return-void
.end method

.method protected populateContextMenuForBook(Landroid/view/ContextMenu;Lcom/amazon/kcp/library/models/IListableBook;)V
    .locals 3
    .parameter "menu"
    .parameter "bookItem"

    .prologue
    .line 1260
    .local p0, this:Lcom/amazon/kcp/library/LibraryActivity;,"Lcom/amazon/kcp/library/LibraryActivity<TBookType;>;"
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryActivity;->prepareTitle(Landroid/view/ContextMenu;Lcom/amazon/kcp/library/models/IListableBook;)V

    .line 1262
    instance-of v1, p2, Lcom/amazon/kcp/library/models/ILocalBookItem;

    if-eqz v1, :cond_1

    .line 1265
    check-cast p2, Lcom/amazon/kcp/library/models/ILocalBookItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryActivity;->populateContextMenuForLocalBook(Landroid/view/ContextMenu;Lcom/amazon/kcp/library/models/ILocalBookItem;)V

    .line 1277
    :cond_0
    :goto_0
    return-void

    .line 1267
    .restart local p2
    :cond_1
    instance-of v1, p2, Lcom/amazon/kcp/library/models/internal/IMetadata;

    if-eqz v1, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/amazon/kcp/library/models/internal/IMetadata;

    move-object v1, v0

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/internal/IMetadata;->getDownloadState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1269
    check-cast p2, Lcom/amazon/kcp/library/models/internal/IMetadata;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryActivity;->populateContextMenuForAIBook(Landroid/view/ContextMenu;Lcom/amazon/kcp/library/models/internal/IMetadata;)V

    goto :goto_0

    .line 1271
    .restart local p2
    :cond_2
    instance-of v1, p2, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eqz v1, :cond_0

    .line 1274
    check-cast p2, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    .end local p2
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryActivity;->metricsTag:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v1}, Lcom/amazon/kcp/library/LibraryActivity;->populateContextMenuForDownloadingBook(Landroid/view/ContextMenu;Lcom/amazon/kcp/library/models/IDownloadBookItem;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected populateContextMenuForDownloadingBook(Landroid/view/ContextMenu;Lcom/amazon/kcp/library/models/IDownloadBookItem;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1304
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-interface {p2}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1307
    :cond_0
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1309
    const v0, 0x7f0b0055

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/LibraryActivity$9;

    invoke-direct {v1, p0, p2}, Lcom/amazon/kcp/library/LibraryActivity$9;-><init>(Lcom/amazon/kcp/library/LibraryActivity;Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1320
    const v0, 0x7f0b0040

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/LibraryActivity$10;

    invoke-direct {v1, p0, p2}, Lcom/amazon/kcp/library/LibraryActivity$10;-><init>(Lcom/amazon/kcp/library/LibraryActivity;Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1331
    :cond_1
    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/amazon/kcp/library/models/BookCapability;->supportsCapability(Lcom/amazon/kcp/library/models/IListableBook;I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canGotoShelfari()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1334
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/library/LibraryActivity;->addShelfariContextMenuItem(Landroid/view/ContextMenu;Lcom/amazon/kcp/library/models/IListableBook;Ljava/lang/String;)V

    .line 1336
    :cond_2
    return-void
.end method

.method protected populateContextMenuForLocalBook(Landroid/view/ContextMenu;Lcom/amazon/kcp/library/models/ILocalBookItem;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1433
    const/4 v0, 0x3

    invoke-static {p2, v0}, Lcom/amazon/kcp/library/models/BookCapability;->supportsCapability(Lcom/amazon/kcp/library/models/IListableBook;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1436
    const v0, 0x7f0b003d

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/LibraryActivity$15;

    invoke-direct {v1, p0, p2}, Lcom/amazon/kcp/library/LibraryActivity$15;-><init>(Lcom/amazon/kcp/library/LibraryActivity;Lcom/amazon/kcp/library/models/ILocalBookItem;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1448
    const v0, 0x7f0b003e

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/LibraryActivity$16;

    invoke-direct {v1, p0, p2}, Lcom/amazon/kcp/library/LibraryActivity$16;-><init>(Lcom/amazon/kcp/library/LibraryActivity;Lcom/amazon/kcp/library/models/ILocalBookItem;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1460
    const v0, 0x7f0b003f

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/LibraryActivity$17;

    invoke-direct {v1, p0, p2}, Lcom/amazon/kcp/library/LibraryActivity$17;-><init>(Lcom/amazon/kcp/library/LibraryActivity;Lcom/amazon/kcp/library/models/ILocalBookItem;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1473
    :cond_0
    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/amazon/kcp/library/models/BookCapability;->supportsCapability(Lcom/amazon/kcp/library/models/IListableBook;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1475
    new-instance v0, Lcom/amazon/kcp/library/LibraryActivity$18;

    invoke-direct {v0, p0, p2}, Lcom/amazon/kcp/library/LibraryActivity$18;-><init>(Lcom/amazon/kcp/library/LibraryActivity;Lcom/amazon/kcp/library/models/ILocalBookItem;)V

    .line 1508
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getLocalBookState()Lcom/amazon/kcp/library/models/LocalBookState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/LocalBookState;->isBookKept()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1510
    const v1, 0x7f0b0044

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1518
    :cond_1
    :goto_0
    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/amazon/kcp/library/models/BookCapability;->supportsCapability(Lcom/amazon/kcp/library/models/IListableBook;I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->canGotoShelfari()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1522
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryActivity;->metricsTag:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kcp/library/LibraryActivity;->addShelfariContextMenuItem(Landroid/view/ContextMenu;Lcom/amazon/kcp/library/models/IListableBook;Ljava/lang/String;)V

    .line 1526
    :cond_2
    const v0, 0x7f0b0040

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/library/LibraryActivity$19;

    invoke-direct {v1, p0, p2}, Lcom/amazon/kcp/library/LibraryActivity$19;-><init>(Lcom/amazon/kcp/library/LibraryActivity;Lcom/amazon/kcp/library/models/ILocalBookItem;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1543
    return-void

    .line 1514
    :cond_3
    const v1, 0x7f0b0043

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected prepareTitle(Landroid/view/ContextMenu;Lcom/amazon/kcp/library/models/IListableBook;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1287
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 1288
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1290
    invoke-virtual {p0}, Lcom/amazon/kcp/library/LibraryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1292
    :cond_0
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1293
    return-void
.end method

.method protected abstract refreshBooksList()V
.end method
