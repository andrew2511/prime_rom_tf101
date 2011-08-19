.class public Lcom/mobipocket/common/library/reader/BookViewManager$Search;
.super Ljava/lang/Object;
.source "BookViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/BookViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Search"
.end annotation


# static fields
.field public static final SEARCH_MATCH_CASE:I = 0x8

.field public static final SEARCH_OPTION_FIRST:I = 0x0

.field public static final SEARCH_OPTION_LAST:I = 0x3

.field public static final SEARCH_OPTION_MASK:I = 0x7

.field public static final SEARCH_OPTION_NEXT:I = 0x1

.field public static final SEARCH_OPTION_PREVIOUS:I = 0x2

.field public static final SEARCH_WHOLE_WORD:I = 0x10


# instance fields
.field final synthetic this$0:Lcom/mobipocket/common/library/reader/BookViewManager;


# direct methods
.method private constructor <init>(Lcom/mobipocket/common/library/reader/BookViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 5243
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Search;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/BookViewManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5241
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager$Search;-><init>(Lcom/mobipocket/common/library/reader/BookViewManager;)V

    return-void
.end method


# virtual methods
.method public asyncSearch(Lcom/mobipocket/common/library/reader/SearchEvents;Ljava/lang/String;II)Ljava/lang/Thread;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5289
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Search;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->cancelPrelayouting()V

    .line 5290
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 5293
    :cond_0
    invoke-interface {p1, v3}, Lcom/mobipocket/common/library/reader/SearchEvents;->close(Z)V

    .line 5295
    const/4 v0, 0x0

    .line 5319
    :goto_0
    return-object v0

    .line 5297
    :cond_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Search;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0, p2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$6102(Lcom/mobipocket/common/library/reader/BookViewManager;Ljava/lang/String;)Ljava/lang/String;

    .line 5298
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Search;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->position:Lcom/mobipocket/common/library/reader/BookViewManager$Position;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Position;->getCurrentPageBeginPosition()I

    move-result v0

    .line 5299
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Search;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$6100(Lcom/mobipocket/common/library/reader/BookViewManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Search;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2700(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    if-ltz v1, :cond_5

    .line 5301
    and-int/lit8 v1, p3, 0x7

    .line 5303
    if-eq v1, v3, :cond_2

    if-nez v1, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Search;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2700(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 5305
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Search;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2700(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v0

    .line 5307
    :cond_3
    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Search;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2700(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 5309
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Search;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2700(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v0

    move v6, v0

    .line 5314
    :goto_1
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Search;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->getTextLength()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {p1, v4, v0}, Lcom/mobipocket/common/library/reader/SearchEvents;->init(II)V

    .line 5315
    new-instance v0, Lcom/mobipocket/common/library/reader/SearchManager;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Search;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    invoke-direct {v0, v1}, Lcom/mobipocket/common/library/reader/SearchManager;-><init>(Lcom/mobipocket/common/library/reader/bookreader/EBook;)V

    .line 5316
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Search;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/SearchManager;->setBookViewManager(Lcom/mobipocket/common/library/reader/BookViewManager;)V

    .line 5319
    const/4 v5, -0x1

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Search;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->currentEBook:Lcom/mobipocket/common/library/reader/bookreader/EBook;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/bookreader/EBook;->fileHeader:Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;

    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/book/MobiFileHeaderSecure;->getTextLength()I

    move-result v1

    sub-int v7, v1, v3

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Lcom/mobipocket/common/library/reader/SearchManager;->search(Lcom/mobipocket/common/library/reader/SearchEvents;Ljava/lang/String;IZIIII)Ljava/lang/Thread;

    move-result-object v0

    goto :goto_0

    :cond_5
    move v6, v0

    goto :goto_1
.end method

.method searchEnded(IIIZZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5332
    new-instance v0, Lcom/mobipocket/common/library/reader/Range;

    invoke-direct {v0, p2, p3}, Lcom/mobipocket/common/library/reader/Range;-><init>(II)V

    .line 5334
    if-ltz p1, :cond_0

    .line 5336
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Search;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->internalNavigator:Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;

    invoke-virtual {v1, p1, p4, p5}, Lcom/mobipocket/common/library/reader/BookViewManager$InternalNavigator;->gotoPosition(IZZ)V

    .line 5337
    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Search;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/DisplayableFrame;->wordSelection:Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;

    invoke-virtual {v1, v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$WordSelection;->addDecoration(Lcom/mobipocket/common/library/reader/Range;)V

    .line 5338
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Search;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    add-int/lit8 v1, p2, 0x1

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$2702(Lcom/mobipocket/common/library/reader/BookViewManager;I)I

    .line 5339
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$Search;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->navigator:Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;->access$5100(Lcom/mobipocket/common/library/reader/BookViewManager$Navigator;)V

    .line 5341
    :cond_0
    return-void
.end method
