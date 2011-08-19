.class public Lcom/amazon/kcp/library/LibraryBookViewFactory;
.super Ljava/lang/Object;
.source "LibraryBookViewFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAIBookCell(Landroid/content/Context;Lcom/amazon/kcp/library/models/IDownloadBookItem;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "bookItem"
    .parameter "recyclableView"

    .prologue
    .line 176
    invoke-static {p0, p1, p2}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->getHomeBookCell(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public static getAIBookRow(Landroid/content/Context;Lcom/amazon/kcp/library/models/IDownloadBookItem;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    const v0, 0x7f03000c

    invoke-static {p2, v0, p0}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->getBookRow(Landroid/view/View;ILandroid/content/Context;)Lcom/amazon/kcp/library/ui/BookRowView;

    move-result-object v2

    .line 190
    const v0, 0x7f0c002f

    invoke-virtual {v2, v0}, Lcom/amazon/kcp/library/ui/BookRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 191
    const v1, 0x7f0c002e

    invoke-virtual {v2, v1}, Lcom/amazon/kcp/library/ui/BookRowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 192
    invoke-static {p0, p1, v1, v0}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->setTitleAndSubtitle(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 195
    invoke-static {p0, p1, v2}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->setCover(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Lcom/amazon/kcp/library/ui/CoverRowView;)V

    .line 198
    invoke-virtual {v2, p1}, Lcom/amazon/kcp/library/ui/BookRowView;->setState(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 201
    invoke-virtual {v2, p1}, Lcom/amazon/kcp/library/ui/BookRowView;->setBookItemSource(Lcom/amazon/kcp/library/models/IDownloadBookItem;)Z

    .line 203
    return-object v2
.end method

.method public static getBackIssuesCell(Landroid/content/Context;ILandroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;

    if-eqz v0, :cond_0

    .line 127
    check-cast p2, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;

    move-object v0, p2

    .line 134
    :goto_0
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;->setBackIssuesCount(I)V

    .line 135
    return-object v0

    .line 131
    :cond_0
    const v0, 0x7f030006

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/ui/BackIssuesCoverView;

    move-object v0, p0

    goto :goto_0
.end method

.method public static getBackIssuesRow(Landroid/content/Context;ILandroid/view/View;)Landroid/view/View;
    .locals 8
    .parameter "context"
    .parameter "numBackIssues"
    .parameter "recyclableView"

    .prologue
    const v6, 0x7f0c0017

    .line 147
    const/4 v1, 0x0

    .line 148
    .local v1, backIssuesRow:Landroid/view/View;
    const/4 v2, 0x0

    .line 149
    .local v2, rowTextView:Landroid/widget/TextView;
    if-eqz p2, :cond_0

    .line 151
    move-object v1, p2

    .line 152
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object v0, v4

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 155
    :cond_0
    if-eqz v1, :cond_1

    if-nez v2, :cond_2

    .line 157
    :cond_1
    const v4, 0x7f030007

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 158
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object v0, v4

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 161
    :cond_2
    const v4, 0x7f0b0046

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, textForRow:Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    return-object v1
.end method

.method private static getBookCell(Landroid/view/View;ILandroid/content/Context;)Lcom/amazon/kcp/library/ui/BookCellView;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 391
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/amazon/kcp/library/ui/BookCellView;

    if-eqz v0, :cond_0

    .line 394
    check-cast p0, Lcom/amazon/kcp/library/ui/BookCellView;

    .line 397
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookCellView;->reset()V

    move-object v0, p0

    .line 404
    :goto_0
    return-object v0

    .line 401
    :cond_0
    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/ui/BookCellView;

    move-object v0, p0

    goto :goto_0
.end method

.method private static getBookRow(Landroid/view/View;ILandroid/content/Context;)Lcom/amazon/kcp/library/ui/BookRowView;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 371
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/amazon/kcp/library/ui/BookRowView;

    if-eqz v0, :cond_0

    .line 374
    check-cast p0, Lcom/amazon/kcp/library/ui/BookRowView;

    .line 377
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookRowView;->reset()V

    move-object v0, p0

    .line 384
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/kcp/library/ui/BookRowView;->getCoverView()Lcom/amazon/kcp/library/ui/BookCoverView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/ui/BookCoverView;->getCover()Lcom/amazon/kcp/library/ui/Cover;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/ui/Cover;->setGravity(I)V

    .line 386
    return-object v0

    .line 381
    :cond_0
    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/ui/BookRowView;

    move-object v0, p0

    goto :goto_0
.end method

.method public static getDeleteBookRow(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "bookItem"
    .parameter "recyclableView"

    .prologue
    .line 216
    const v3, 0x7f030016

    invoke-static {p2, v3, p0}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->getDeleteBookRow(Landroid/view/View;ILandroid/content/Context;)Lcom/amazon/kcp/library/ui/DeleteBookRowView;

    move-result-object v1

    .line 218
    .local v1, bookRow:Lcom/amazon/kcp/library/ui/DeleteBookRowView;
    const v3, 0x7f0c002f

    invoke-virtual {v1, v3}, Lcom/amazon/kcp/library/ui/DeleteBookRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 219
    .local v0, authorView:Landroid/widget/TextView;
    const v3, 0x7f0c002e

    invoke-virtual {v1, v3}, Lcom/amazon/kcp/library/ui/DeleteBookRowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 220
    .local v2, titleView:Landroid/widget/TextView;
    invoke-static {p0, p1, v2, v0}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->setTitleAndSubtitle(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 223
    invoke-static {p0, p1, v1}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->setCover(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Lcom/amazon/kcp/library/ui/CoverRowView;)V

    .line 225
    return-object v1
.end method

.method private static getDeleteBookRow(Landroid/view/View;ILandroid/content/Context;)Lcom/amazon/kcp/library/ui/DeleteBookRowView;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 352
    instance-of v0, p0, Lcom/amazon/kcp/library/ui/DeleteBookRowView;

    if-eqz v0, :cond_0

    .line 356
    check-cast p0, Lcom/amazon/kcp/library/ui/DeleteBookRowView;

    .line 359
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/DeleteBookRowView;->reset()V

    move-object v0, p0

    .line 366
    :goto_0
    return-object v0

    .line 363
    :cond_0
    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/ui/DeleteBookRowView;

    move-object v0, p0

    goto :goto_0
.end method

.method public static getHomeBookCell(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    const v1, 0x7f030008

    invoke-static {p2, v1, p0}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->getBookCell(Landroid/view/View;ILandroid/content/Context;)Lcom/amazon/kcp/library/ui/BookCellView;

    move-result-object v2

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a0009

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v6, v1

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a000a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v7, v1

    .line 50
    sget-object v4, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE_IF_DEFAULT_COVER:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 51
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isListableBookPeriodical(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    move-object v5, v1

    .line 52
    :goto_0
    const/4 v1, 0x1

    invoke-static {p1, v1, p0}, Lcom/amazon/android/util/UIUtils;->getBookSubtitle(Lcom/amazon/kcp/library/models/IListableBook;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->setCover(Lcom/amazon/kcp/library/models/IListableBook;Lcom/amazon/kcp/library/ui/CoverRowView;Ljava/lang/String;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;II)V

    .line 55
    instance-of v1, p1, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eqz v1, :cond_1

    .line 57
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-object v1, v0

    invoke-virtual {v2, v1}, Lcom/amazon/kcp/library/ui/BookCellView;->setState(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 58
    check-cast p1, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-virtual {v2, p1}, Lcom/amazon/kcp/library/ui/BookCellView;->setBookItemSource(Lcom/amazon/kcp/library/models/IDownloadBookItem;)Z

    .line 66
    :goto_1
    return-object v2

    .line 51
    :cond_0
    sget-object v1, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE_IF_DEFAULT_COVER:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    move-object v5, v1

    goto :goto_0

    .line 63
    :cond_1
    sget-object v1, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->DOWNLOADED:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    invoke-virtual {v2, v1}, Lcom/amazon/kcp/library/ui/BookCellView;->setState(Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;)V

    goto :goto_1
.end method

.method public static getHomeBookRow(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    const v1, 0x7f03000c

    invoke-static {p2, v1, p0}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->getBookRow(Landroid/view/View;ILandroid/content/Context;)Lcom/amazon/kcp/library/ui/BookRowView;

    move-result-object v3

    .line 80
    const v1, 0x7f0c002f

    invoke-virtual {v3, v1}, Lcom/amazon/kcp/library/ui/BookRowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 81
    const v2, 0x7f0c002e

    invoke-virtual {v3, v2}, Lcom/amazon/kcp/library/ui/BookRowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 82
    invoke-static {p0, p1, v2, v1}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->setTitleAndSubtitle(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 85
    invoke-static {p0, p1, v3}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->setCover(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Lcom/amazon/kcp/library/ui/CoverRowView;)V

    .line 88
    sget-object v1, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;->HOME:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;

    invoke-virtual {v3, v1}, Lcom/amazon/kcp/library/ui/BookRowView;->setViewPlace(Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;)V

    .line 91
    instance-of v1, p1, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eqz v1, :cond_1

    .line 93
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-object v1, v0

    invoke-virtual {v3, v1}, Lcom/amazon/kcp/library/ui/BookRowView;->setState(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 94
    check-cast p1, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-virtual {v3, p1}, Lcom/amazon/kcp/library/ui/BookRowView;->setBookItemSource(Lcom/amazon/kcp/library/models/IDownloadBookItem;)Z

    .line 112
    :cond_0
    :goto_0
    return-object v3

    .line 99
    :cond_1
    sget-object v1, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->DOWNLOADED:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    invoke-virtual {v3, v1}, Lcom/amazon/kcp/library/ui/BookRowView;->setState(Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;)V

    .line 101
    invoke-static {}, Lcom/amazon/kcp/library/HomeActivity;->getLargestBookLocationInHome()I

    move-result v1

    .line 106
    if-lez v1, :cond_0

    .line 108
    invoke-static {p0, v3, p1, v1}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->setReadingProgress(Landroid/content/Context;Lcom/amazon/kcp/library/ui/BookRowView;Lcom/amazon/kcp/library/models/IListableBook;I)V

    goto :goto_0
.end method

.method public static getSearchBookRow(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 237
    const v1, 0x7f03000c

    invoke-static {p2, v1, p0}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->getBookRow(Landroid/view/View;ILandroid/content/Context;)Lcom/amazon/kcp/library/ui/BookRowView;

    move-result-object v3

    .line 239
    const v1, 0x7f0c002f

    invoke-virtual {v3, v1}, Lcom/amazon/kcp/library/ui/BookRowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 240
    const v2, 0x7f0c002e

    invoke-virtual {v3, v2}, Lcom/amazon/kcp/library/ui/BookRowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 241
    invoke-static {p0, p1, v2, v1}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->setTitleAndSubtitle(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 244
    invoke-static {p0, p1, v3}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->setCover(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Lcom/amazon/kcp/library/ui/CoverRowView;)V

    .line 247
    instance-of v1, p1, Lcom/amazon/kcp/library/models/ILocalBookItem;

    if-eqz v1, :cond_0

    .line 249
    sget-object v1, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->DOWNLOADED:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    invoke-virtual {v3, v1}, Lcom/amazon/kcp/library/ui/BookRowView;->setState(Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;)V

    .line 261
    :goto_0
    return-object v3

    .line 251
    :cond_0
    instance-of v1, p1, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-object v1, v0

    invoke-interface {v1}, Lcom/amazon/kcp/library/models/IDownloadBookItem;->getDownloadState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 253
    move-object v0, p1

    check-cast v0, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    move-object v1, v0

    invoke-virtual {v3, v1}, Lcom/amazon/kcp/library/ui/BookRowView;->setState(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 254
    check-cast p1, Lcom/amazon/kcp/library/models/IDownloadBookItem;

    invoke-virtual {v3, p1}, Lcom/amazon/kcp/library/ui/BookRowView;->setBookItemSource(Lcom/amazon/kcp/library/models/IDownloadBookItem;)Z

    goto :goto_0

    .line 258
    :cond_1
    sget-object v1, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->AI_SEARCH_RESULT:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    invoke-virtual {v3, v1}, Lcom/amazon/kcp/library/ui/BookRowView;->setState(Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;)V

    goto :goto_0
.end method

.method private static setCover(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Lcom/amazon/kcp/library/ui/CoverRowView;)V
    .locals 7
    .parameter "context"
    .parameter "bookItem"
    .parameter "bookRow"

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/amazon/android/util/UIUtils;->getBookSubtitle(Lcom/amazon/kcp/library/models/IListableBook;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->INVISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    sget-object v4, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->INVISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v5, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v6, v0

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lcom/amazon/kcp/library/LibraryBookViewFactory;->setCover(Lcom/amazon/kcp/library/models/IListableBook;Lcom/amazon/kcp/library/ui/CoverRowView;Ljava/lang/String;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;II)V

    .line 273
    return-void
.end method

.method private static setCover(Lcom/amazon/kcp/library/models/IListableBook;Lcom/amazon/kcp/library/ui/CoverRowView;Ljava/lang/String;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;II)V
    .locals 8
    .parameter "bookItem"
    .parameter "bookView"
    .parameter "dateOrAuthor"
    .parameter "titleVisibility"
    .parameter "authorVisibility"
    .parameter "coverWidth"
    .parameter "coverHeight"

    .prologue
    .line 283
    const/high16 v2, 0x3f00

    .line 284
    .local v2, bookLengthPercent:F
    instance-of v6, p0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    if-eqz v6, :cond_0

    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isListableBookPeriodical(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 287
    move-object v0, p0

    check-cast v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-object v6, v0

    invoke-interface {v6}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getBookFurthestLocation()I

    move-result v1

    .line 288
    .local v1, bookLength:I
    invoke-static {}, Lcom/amazon/kcp/library/HomeActivity;->getLargestBookLocationInHome()I

    move-result v4

    .line 289
    .local v4, largestBookLength:I
    if-lez v1, :cond_0

    if-lez v4, :cond_0

    .line 291
    int-to-float v6, v1

    int-to-float v7, v4

    div-float v2, v6, v7

    .line 295
    .end local v1           #bookLength:I
    .end local v4           #largestBookLength:I
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/cover/CoverManager;->getInstance()Lcom/amazon/kcp/cover/CoverManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, p0, p5, p6, v7}, Lcom/amazon/kcp/cover/CoverManager;->getCover(Lcom/amazon/kcp/library/models/IListableBook;IIZ)Lcom/amazon/kcp/cover/UpdatableCover;

    move-result-object v5

    .line 296
    .local v5, updatableCover:Lcom/amazon/kcp/cover/UpdatableCover;
    invoke-virtual {p1, v5, v2}, Lcom/amazon/kcp/library/ui/CoverRowView;->setUpdatableCover(Lcom/amazon/kcp/cover/UpdatableCover;F)V

    .line 298
    invoke-virtual {p1}, Lcom/amazon/kcp/library/ui/CoverRowView;->getCoverView()Lcom/amazon/kcp/library/ui/BookCoverView;

    move-result-object v3

    .line 299
    .local v3, coverView:Lcom/amazon/kcp/library/ui/BookCoverView;
    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IListableBook;->isSample()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/amazon/kcp/library/ui/BookCoverView;->setSample(Z)V

    .line 300
    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, p3}, Lcom/amazon/kcp/library/ui/BookCoverView;->setTitle(Ljava/lang/String;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)V

    .line 301
    invoke-virtual {v3, p2, p4}, Lcom/amazon/kcp/library/ui/BookCoverView;->setAuthor(Ljava/lang/String;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)V

    .line 302
    invoke-interface {p0}, Lcom/amazon/kcp/library/models/IListableBook;->getBookType()I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/amazon/kcp/library/ui/BookCoverView;->setBookType(I)V

    .line 304
    instance-of v6, p0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    if-eqz v6, :cond_2

    .line 306
    check-cast p0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    .end local p0
    invoke-interface {p0}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getLocalBookState()Lcom/amazon/kcp/library/models/LocalBookState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/kcp/library/models/LocalBookState;->isBookKept()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    :goto_0
    invoke-virtual {v3, v6}, Lcom/amazon/kcp/library/ui/BookCoverView;->setKeepVisibility(Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)V

    .line 314
    :goto_1
    return-void

    .line 306
    :cond_1
    sget-object v6, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->INVISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    goto :goto_0

    .line 312
    .restart local p0
    :cond_2
    sget-object v6, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->INVISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    invoke-virtual {v3, v6}, Lcom/amazon/kcp/library/ui/BookCoverView;->setKeepVisibility(Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)V

    goto :goto_1
.end method

.method private static setReadingProgress(Landroid/content/Context;Lcom/amazon/kcp/library/ui/BookRowView;Lcom/amazon/kcp/library/models/IListableBook;I)V
    .locals 8
    .parameter "context"
    .parameter "bookRow"
    .parameter "bookItem"
    .parameter "largestBookLocation"

    .prologue
    .line 417
    const v5, 0x7f0c0030

    invoke-virtual {p1, v5}, Lcom/amazon/kcp/library/ui/BookRowView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/library/ui/ReadingProgressView;

    .line 418
    .local v3, rpv:Lcom/amazon/kcp/library/ui/ReadingProgressView;
    const/16 v4, 0x8

    .line 420
    .local v4, visibility:I
    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isListableBookPeriodical(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v5

    if-nez v5, :cond_0

    instance-of v5, p2, Lcom/amazon/kcp/library/models/ILocalBookItem;

    if-eqz v5, :cond_0

    .line 425
    move-object v0, p2

    check-cast v0, Lcom/amazon/kcp/library/models/ILocalBookItem;

    move-object v5, v0

    invoke-interface {v5}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getUserCurrentLocation()I

    move-result v1

    .line 426
    .local v1, currentLocation:I
    check-cast p2, Lcom/amazon/kcp/library/models/ILocalBookItem;

    .end local p2
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/ILocalBookItem;->getBookFurthestLocation()I

    move-result v2

    .line 430
    .local v2, lastLocation:I
    if-ltz v1, :cond_0

    if-lez v2, :cond_0

    if-lez p3, :cond_0

    .line 432
    int-to-float v5, v2

    int-to-float v6, p3

    div-float/2addr v5, v6

    int-to-float v6, v1

    int-to-float v7, v2

    div-float/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Lcom/amazon/kcp/library/ui/ReadingProgressView;->updateProgressBar(FF)V

    .line 433
    const/4 v4, 0x0

    .line 436
    .end local v1           #currentLocation:I
    .end local v2           #lastLocation:I
    :cond_0
    invoke-virtual {v3, v4}, Lcom/amazon/kcp/library/ui/ReadingProgressView;->setVisibility(I)V

    .line 437
    return-void
.end method

.method private static setTitleAndSubtitle(Landroid/content/Context;Lcom/amazon/kcp/library/models/IListableBook;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 4
    .parameter "context"
    .parameter "bookItem"
    .parameter "titleView"
    .parameter "authorView"

    .prologue
    const/4 v3, 0x0

    .line 319
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, title:Ljava/lang/String;
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    const v2, 0x7f0b004b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 325
    :cond_0
    invoke-static {p1, v3, p0}, Lcom/amazon/android/util/UIUtils;->getBookSubtitle(Lcom/amazon/kcp/library/models/IListableBook;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, subtitleViewText:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 332
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 334
    const/16 v2, 0x8

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 344
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 346
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    :cond_2
    return-void

    .line 338
    :cond_3
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
