.class public Lcom/amazon/kcp/reader/ui/DefinitionContainer;
.super Landroid/widget/LinearLayout;
.source "DefinitionContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/DefinitionContainer$ClickFeedbackTouchListener;
    }
.end annotation


# static fields
.field private static final METRICS_CLASS_NAME:Ljava/lang/String; = "DefinitionContainer"


# instance fields
.field private bookBaseLanguage:Ljava/lang/String;

.field private dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

.field private downloadProgressBarState:Lcom/amazon/android/util/DownloadProgressBarState;

.field private downloadTracker:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

.field private historyManager:Lcom/amazon/kcp/application/HistoryManager;

.field private objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

.field private openedDictionary:Lcom/amazon/kcp/library/models/ILocalBookItem;

.field private openedDictionaryDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

.field private readerController:Lcom/amazon/kcp/reader/IAndroidReaderController;

.field private selectionChangedCallback:Lcom/amazon/foundation/ICallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/DefinitionContainer$1;-><init>(Lcom/amazon/kcp/reader/ui/DefinitionContainer;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->selectionChangedCallback:Lcom/amazon/foundation/ICallback;

    .line 121
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->init(Landroid/content/Context;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    new-instance v0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/DefinitionContainer$1;-><init>(Lcom/amazon/kcp/reader/ui/DefinitionContainer;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->selectionChangedCallback:Lcom/amazon/foundation/ICallback;

    .line 134
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->init(Landroid/content/Context;)V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/DefinitionContainer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->updatePopupVisibility()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/DefinitionContainer;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->updatePopupContents(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/ui/DefinitionContainer;)Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->downloadTracker:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/ui/DefinitionContainer;)Lcom/amazon/android/util/DownloadProgressBarState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->downloadProgressBarState:Lcom/amazon/android/util/DownloadProgressBarState;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/ui/DefinitionContainer;)Lcom/amazon/kcp/library/models/ILocalBookItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->openedDictionary:Lcom/amazon/kcp/library/models/ILocalBookItem;

    return-object v0
.end method

.method static synthetic access$402(Lcom/amazon/kcp/reader/ui/DefinitionContainer;Lcom/amazon/kcp/library/models/ILocalBookItem;)Lcom/amazon/kcp/library/models/ILocalBookItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->openedDictionary:Lcom/amazon/kcp/library/models/ILocalBookItem;

    return-object p1
.end method

.method static synthetic access$500(Lcom/amazon/kcp/reader/ui/DefinitionContainer;)Lcom/amazon/kcp/reader/models/IBookDocument;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->openedDictionaryDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    return-object v0
.end method

.method static synthetic access$502(Lcom/amazon/kcp/reader/ui/DefinitionContainer;Lcom/amazon/kcp/reader/models/IBookDocument;)Lcom/amazon/kcp/reader/models/IBookDocument;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->openedDictionaryDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    return-object p1
.end method

.method static synthetic access$600(Lcom/amazon/kcp/reader/ui/DefinitionContainer;)Lcom/amazon/kcp/reader/IAndroidReaderController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->readerController:Lcom/amazon/kcp/reader/IAndroidReaderController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/reader/ui/DefinitionContainer;)Lcom/amazon/kcp/application/HistoryManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->historyManager:Lcom/amazon/kcp/application/HistoryManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/amazon/kcp/reader/ui/DefinitionContainer;)Lcom/amazon/kcp/reader/ObjectSelectionModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    return-object v0
.end method

.method static checkAndGetSingleWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 628
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 629
    const/4 v1, 0x0

    .line 630
    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpace(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 632
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 634
    :cond_0
    if-ne v1, v0, :cond_1

    move-object v0, v4

    .line 663
    :goto_1
    return-object v0

    .line 641
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    :goto_2
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpace(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 644
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 645
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 649
    :cond_2
    :goto_3
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpace(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 651
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 653
    :cond_3
    if-ne v1, v0, :cond_4

    .line 657
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v4

    .line 663
    goto :goto_1
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    .line 98
    .local v0, app:Lcom/amazon/kcp/application/IAndroidApplicationController;
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryController;->getDictionaryManager()Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

    .line 99
    new-instance v1, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getDownloadManager()Lcom/amazon/kcp/library/models/internal/IDownloadManager;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getTodoManager()Lcom/amazon/kcp/application/internal/ILocalTodoManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;-><init>(Lcom/amazon/kcp/library/models/internal/IDownloadManager;Lcom/amazon/kcp/application/internal/ILocalTodoManager;)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->downloadTracker:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    .line 101
    new-instance v1, Lcom/amazon/android/util/DownloadProgressBarState;

    invoke-direct {v1, p1}, Lcom/amazon/android/util/DownloadProgressBarState;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->downloadProgressBarState:Lcom/amazon/android/util/DownloadProgressBarState;

    .line 103
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/IAndroidReaderController;

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->readerController:Lcom/amazon/kcp/reader/IAndroidReaderController;

    .line 104
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/IReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/IReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->readerController:Lcom/amazon/kcp/reader/IAndroidReaderController;

    invoke-interface {v1}, Lcom/amazon/kcp/reader/IAndroidReaderController;->getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/reader/models/IBookDocument;->getBookInfo()Lcom/amazon/kcp/library/models/ILocalBookInfo;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->bookBaseLanguage:Ljava/lang/String;

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->readerController:Lcom/amazon/kcp/reader/IAndroidReaderController;

    invoke-interface {v1}, Lcom/amazon/kcp/reader/IAndroidReaderController;->getHistoryManager()Lcom/amazon/kcp/application/HistoryManager;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->historyManager:Lcom/amazon/kcp/application/HistoryManager;

    .line 111
    return-void
.end method

.method private static isStopWord(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "word"
    .parameter "languageCode"

    .prologue
    .line 555
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 556
    .local v0, locale:Ljava/util/Locale;
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 557
    invoke-static {p0, p1}, Lcom/amazon/kcp/util/PunctuationStripper;->stripPunctuation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 558
    invoke-static {p0, p1}, Lcom/amazon/kcp/library/dictionary/internal/StopWords;->isStopWord(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private showDictionaryCorruptView(Ljava/lang/String;Landroid/view/View;Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;Lcom/amazon/kcp/reader/models/ColorMode;)V
    .locals 2
    .parameter "selectedText"
    .parameter "dictionaryCorruptView"
    .parameter "dictLocator"
    .parameter "colorMode"

    .prologue
    .line 536
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 537
    invoke-virtual {p4}, Lcom/amazon/kcp/reader/models/ColorMode;->getTextColor()I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->updateChildTextViewColors(Landroid/view/View;I)V

    .line 539
    const v1, 0x7f0c0051

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 540
    .local v0, dictionaryCorruptButton:Landroid/widget/Button;
    new-instance v1, Lcom/amazon/kcp/reader/ui/DefinitionContainer$6;

    invoke-direct {v1, p0, p3, p1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer$6;-><init>(Lcom/amazon/kcp/reader/ui/DefinitionContainer;Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    return-void
.end method

.method private showDictionaryDownloadFailedView(Landroid/view/View;Ljava/lang/String;Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;Lcom/amazon/kcp/reader/models/ColorMode;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 392
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 393
    invoke-virtual {p4}, Lcom/amazon/kcp/reader/models/ColorMode;->getTextColor()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->updateChildTextViewColors(Landroid/view/View;I)V

    .line 397
    invoke-interface {p3}, Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;->getBoundDictionary()Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    .line 400
    const v1, 0x7f0c0056

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 401
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->downloadProgressBarState:Lcom/amazon/android/util/DownloadProgressBarState;

    sget-object v3, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    invoke-static {v2, v3, v0, v1}, Lcom/amazon/android/util/UIUtils;->setDownloadProgressBar(Lcom/amazon/android/util/DownloadProgressBarState;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;Lcom/amazon/kcp/library/models/IDownloadBookItem;Landroid/widget/ProgressBar;)Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 404
    const v0, 0x7f0c0057

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 405
    new-instance v1, Lcom/amazon/kcp/reader/ui/DefinitionContainer$2;

    invoke-direct {v1, p0, p3, p2}, Lcom/amazon/kcp/reader/ui/DefinitionContainer$2;-><init>(Lcom/amazon/kcp/reader/ui/DefinitionContainer;Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 417
    return-void
.end method

.method private showDictionaryDownloadingView(Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;Ljava/lang/String;Landroid/view/View;Lcom/amazon/kcp/reader/models/ColorMode;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 426
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 427
    invoke-virtual {p4}, Lcom/amazon/kcp/reader/models/ColorMode;->getTextColor()I

    move-result v0

    invoke-direct {p0, p3, v0}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->updateChildTextViewColors(Landroid/view/View;I)V

    .line 430
    const v0, 0x7f0c0053

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 431
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->downloadProgressBarState:Lcom/amazon/android/util/DownloadProgressBarState;

    sget-object v3, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    invoke-interface {p1}, Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;->getBoundDictionary()Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-static {v2, v3, v1, v0}, Lcom/amazon/android/util/UIUtils;->setDownloadProgressBar(Lcom/amazon/android/util/DownloadProgressBarState;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;Lcom/amazon/kcp/library/models/IDownloadBookItem;Landroid/widget/ProgressBar;)Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 436
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->downloadTracker:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-interface {p1}, Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;->getAsin()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/application/models/internal/TodoItem$Type;->BOOK:Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    new-instance v4, Lcom/amazon/kcp/reader/ui/DefinitionContainer$3;

    invoke-direct {v4, p0, p2, p1, v0}, Lcom/amazon/kcp/reader/ui/DefinitionContainer$3;-><init>(Lcom/amazon/kcp/reader/ui/DefinitionContainer;Ljava/lang/String;Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;Landroid/widget/ProgressBar;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->startTracking(Ljava/lang/String;Lcom/amazon/kcp/application/models/internal/TodoItem$Type;Lcom/amazon/kcp/library/models/internal/IBookDownloadObserver;)V

    .line 493
    const v0, 0x7f0c0054

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 494
    new-instance v1, Lcom/amazon/kcp/reader/ui/DefinitionContainer$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/reader/ui/DefinitionContainer$4;-><init>(Lcom/amazon/kcp/reader/ui/DefinitionContainer;Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    return-void
.end method

.method private showDownloadDictionaryView(Ljava/lang/String;Landroid/view/View;Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;Lcom/amazon/kcp/reader/models/ColorMode;)V
    .locals 2
    .parameter "selectedText"
    .parameter "dictionaryNotAvailableView"
    .parameter "dictLocator"
    .parameter "colorMode"

    .prologue
    .line 516
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 517
    invoke-virtual {p4}, Lcom/amazon/kcp/reader/models/ColorMode;->getTextColor()I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->updateChildTextViewColors(Landroid/view/View;I)V

    .line 519
    const v1, 0x7f0c004f

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 520
    .local v0, downloadButton:Landroid/widget/Button;
    new-instance v1, Lcom/amazon/kcp/reader/ui/DefinitionContainer$5;

    invoke-direct {v1, p0, p3, p1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer$5;-><init>(Lcom/amazon/kcp/reader/ui/DefinitionContainer;Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    return-void
.end method

.method private updateChildTextViewColors(Landroid/view/View;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 369
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 383
    :cond_0
    return-void

    .line 374
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    .line 375
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 378
    const-class v1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 380
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 375
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateDefinitionLinks(ZLcom/amazon/kcp/reader/models/ColorMode;Ljava/lang/String;)V
    .locals 3
    .parameter "definitionFound"
    .parameter "colorMode"
    .parameter "selectedText"

    .prologue
    .line 566
    new-instance v0, Lcom/amazon/kcp/reader/ui/DefinitionContainer$ClickFeedbackTouchListener;

    invoke-virtual {p2}, Lcom/amazon/kcp/reader/models/ColorMode;->getLinkColor()I

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/amazon/kcp/reader/ui/DefinitionContainer$ClickFeedbackTouchListener;-><init>(Lcom/amazon/kcp/reader/ui/DefinitionContainer;I)V

    .line 568
    .local v0, clickFeedbackListener:Landroid/view/View$OnTouchListener;
    const v2, 0x7f0c005b

    invoke-virtual {p0, v2}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 569
    .local v1, dictionaryLink:Landroid/widget/TextView;
    if-eqz p1, :cond_0

    .line 571
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 572
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/models/ColorMode;->getLinkColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 573
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 574
    new-instance v2, Lcom/amazon/kcp/reader/ui/DefinitionContainer$7;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/reader/ui/DefinitionContainer$7;-><init>(Lcom/amazon/kcp/reader/ui/DefinitionContainer;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 619
    :goto_0
    return-void

    .line 617
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updatePopupContents(Ljava/lang/String;)Z
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x1

    const/16 v3, 0x8

    const/4 v10, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/SettingsController;->getColorMode()I

    move-result v1

    .line 204
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kcp/reader/ui/color/AndroidColorModeFactory;->getColorMode(ILandroid/content/res/Resources;)Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    move-result-object v6

    .line 205
    invoke-virtual {v6}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getDefinitionContainerBackgroundResId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->setBackgroundResource(I)V

    .line 209
    const v1, 0x7f0c004e

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 210
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 211
    const v1, 0x7f0c0050

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 212
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 213
    const v1, 0x7f0c0052

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 214
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 215
    const v1, 0x7f0c0055

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 216
    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    .line 217
    const v1, 0x7f0c0058

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 218
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 219
    const v1, 0x7f0c0059

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ui/DefinitionView;

    .line 220
    invoke-virtual {v1, v3}, Lcom/amazon/kcp/reader/ui/DefinitionView;->setVisibility(I)V

    .line 232
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->bookBaseLanguage:Ljava/lang/String;

    invoke-static {v3}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->bookBaseLanguage:Ljava/lang/String;

    .line 235
    :goto_0
    iget-object v9, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->dictionaryManager:Lcom/amazon/kcp/library/dictionary/IDictionaryManager;

    invoke-interface {v9, v3}, Lcom/amazon/kcp/library/dictionary/IDictionaryManager;->getDictionaryLocator(Ljava/lang/String;)Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;

    move-result-object v9

    .line 237
    if-eqz v9, :cond_e

    invoke-static {p1, v3}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->isStopWord(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 239
    invoke-interface {v9}, Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;->getBoundDictionary()Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v3

    .line 240
    if-eqz v3, :cond_b

    .line 242
    instance-of v2, v3, Lcom/amazon/kcp/library/models/ILocalBookItem;

    if-eqz v2, :cond_8

    .line 245
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->openedDictionary:Lcom/amazon/kcp/library/models/ILocalBookItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->openedDictionaryDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    if-eqz v2, :cond_0

    move-object v0, v3

    check-cast v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-object v2, v0

    invoke-interface {v2}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/library/models/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->openedDictionary:Lcom/amazon/kcp/library/models/ILocalBookItem;

    invoke-interface {v4}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/library/models/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 250
    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->openedDictionaryDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    if-eqz v2, :cond_1

    .line 252
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->openedDictionaryDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDocument;->closeDocument()V

    .line 253
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->openedDictionaryDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    .line 255
    :cond_1
    move-object v0, v3

    check-cast v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-object v4, v0

    iput-object v4, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->openedDictionary:Lcom/amazon/kcp/library/models/ILocalBookItem;

    .line 256
    move-object v0, v3

    check-cast v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-object v4, v0

    invoke-interface {v4}, Lcom/amazon/kcp/library/models/ILocalBookItem;->createDocument()Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->openedDictionaryDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    .line 259
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->openedDictionaryDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    if-eqz v2, :cond_2

    .line 261
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->openedDictionaryDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDocument;->getDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/reader/ui/DefinitionView;->setDictionaryDisplay(Lcom/amazon/kcp/reader/models/IBookDisplay;)V

    .line 264
    :cond_2
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->openedDictionaryDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    if-eqz v2, :cond_7

    .line 266
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->openedDictionaryDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getDictionaryCapabilities()Lcom/amazon/kcp/library/dictionary/IDictionary;

    move-result-object v2

    .line 267
    if-eqz v2, :cond_6

    .line 269
    invoke-interface {v2, p1}, Lcom/amazon/kcp/library/dictionary/IDictionary;->lookup(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 272
    invoke-virtual {v1, v10}, Lcom/amazon/kcp/reader/ui/DefinitionView;->setVisibility(I)V

    .line 273
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/DefinitionView;->getDictionaryDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;

    move-result-object v1

    invoke-interface {v1, v6}, Lcom/amazon/kcp/reader/models/IBookDisplay;->setColorMode(Lcom/amazon/kcp/reader/models/ColorMode;)V

    .line 277
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "DefinitionContainer"

    const-string v3, "DictLookupSuccess"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    move v1, v11

    move v2, v11

    .line 353
    :goto_1
    if-eqz v2, :cond_3

    .line 356
    invoke-direct {p0, v1, v6, p1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->updateDefinitionLinks(ZLcom/amazon/kcp/reader/models/ColorMode;Ljava/lang/String;)V

    .line 359
    :cond_3
    return v2

    .line 232
    :cond_4
    const-string v3, "en-US"

    goto/16 :goto_0

    .line 283
    :cond_5
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 284
    move-object v0, v5

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    invoke-virtual {v6}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 286
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "DefinitionContainer"

    const-string v3, "DictLookupFailure"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    move v1, v10

    move v2, v11

    goto :goto_1

    .line 295
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dictCapability is null for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast v3, Lcom/amazon/kcp/library/models/ILocalBookItem;

    invoke-interface {v3}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v1, v10

    move v2, v10

    .line 296
    goto :goto_1

    .line 302
    :cond_7
    invoke-direct {p0, p1, v7, v9, v6}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->showDictionaryCorruptView(Ljava/lang/String;Landroid/view/View;Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;Lcom/amazon/kcp/reader/models/ColorMode;)V

    move v1, v10

    move v2, v11

    goto :goto_1

    .line 305
    :cond_8
    invoke-interface {v9}, Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;->isDownloading()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 308
    instance-of v1, v3, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eqz v1, :cond_a

    .line 310
    check-cast v3, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    .line 311
    invoke-interface {v3}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 313
    invoke-direct {p0, v8, p1, v9, v6}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->showDictionaryDownloadFailedView(Landroid/view/View;Ljava/lang/String;Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;Lcom/amazon/kcp/reader/models/ColorMode;)V

    :goto_2
    move v1, v10

    move v2, v11

    .line 321
    goto :goto_1

    .line 318
    :cond_9
    invoke-direct {p0, v9, p1, v4, v6}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->showDictionaryDownloadingView(Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;Ljava/lang/String;Landroid/view/View;Lcom/amazon/kcp/reader/models/ColorMode;)V

    goto :goto_2

    .line 325
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t know how to handle book-type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v10

    move v2, v10

    .line 327
    goto :goto_1

    .line 333
    :cond_b
    invoke-interface {v9}, Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;->isDownloading()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 335
    invoke-direct {p0, v9, p1, v4, v6}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->showDictionaryDownloadingView(Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;Ljava/lang/String;Landroid/view/View;Lcom/amazon/kcp/reader/models/ColorMode;)V

    move v1, v10

    move v2, v11

    goto/16 :goto_1

    .line 341
    :cond_c
    invoke-direct {p0, p1, v2, v9, v6}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->showDownloadDictionaryView(Ljava/lang/String;Landroid/view/View;Lcom/amazon/kcp/library/dictionary/IDictionaryLocator;Lcom/amazon/kcp/reader/models/ColorMode;)V

    :cond_d
    move v1, v10

    move v2, v11

    goto/16 :goto_1

    :cond_e
    move v1, v10

    move v2, v10

    .line 349
    goto/16 :goto_1
.end method

.method private updatePopupVisibility()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 160
    .line 163
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectionState()Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    if-ne v0, v1, :cond_2

    .line 166
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getFirstSelectedElementId()I

    move-result v0

    .line 167
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getLastSelectedElementId()I

    move-result v1

    .line 168
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getBookDisplay()Lcom/amazon/kcp/reader/models/IBookDisplay;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/models/IBookDisplay;->getCurrentDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;

    move-result-object v2

    invoke-interface {v2, v0, v1, v3}, Lcom/amazon/kcp/reader/models/IDocumentPage;->createText(III)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->checkAndGetSingleWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    if-eqz v1, :cond_2

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectedTest: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->updatePopupContents(Ljava/lang/String;)Z

    move-result v0

    .line 180
    :goto_0
    if-eqz v0, :cond_1

    move v1, v3

    :goto_1
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->setVisibility(I)V

    .line 181
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->setShowDefinition(Z)V

    .line 185
    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->downloadTracker:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->isTrackingOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->downloadTracker:Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/internal/BookDownloadTracker;->stopTracking()V

    .line 192
    :cond_0
    return-void

    .line 180
    :cond_1
    const/16 v1, 0x8

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 671
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->openedDictionaryDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->openedDictionaryDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->closeDocument()V

    .line 675
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->openedDictionaryDocument:Lcom/amazon/kcp/reader/models/IBookDocument;

    .line 676
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->openedDictionary:Lcom/amazon/kcp/library/models/ILocalBookItem;

    .line 678
    :cond_0
    return-void
.end method

.method setObjectSelectionModel(Lcom/amazon/kcp/reader/ObjectSelectionModel;)V
    .locals 2
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectionAreaChangedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->selectionChangedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 143
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectionStateChangedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->selectionChangedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 145
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    .line 146
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectionAreaChangedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->selectionChangedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->objectSelectionModel:Lcom/amazon/kcp/reader/ObjectSelectionModel;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ObjectSelectionModel;->getSelectionStateChangedEvent()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/DefinitionContainer;->selectionChangedCallback:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 151
    :cond_1
    return-void
.end method
