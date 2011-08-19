.class public Lcom/amazon/kcp/library/ui/BookRowView;
.super Lcom/amazon/kcp/library/ui/LibraryBookView;
.source "BookRowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/ui/BookRowView$1;
    }
.end annotation


# instance fields
.field private cover:Lcom/amazon/kcp/library/ui/BookCoverView;

.field private downloadProgressBar:Landroid/widget/ProgressBar;

.field private downloadProgressBarState:Lcom/amazon/android/util/DownloadProgressBarState;

.field private downloadingText:Landroid/widget/TextView;

.field private viewPlace:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/ui/LibraryBookView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    sget-object v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;->OTHER:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookRowView;->viewPlace:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;

    .line 37
    return-void
.end method


# virtual methods
.method public getCoverView()Lcom/amazon/kcp/library/ui/BookCoverView;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookRowView;->cover:Lcom/amazon/kcp/library/ui/BookCoverView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Lcom/amazon/kcp/library/ui/LibraryBookView;->onFinishInflate()V

    .line 102
    const v0, 0x7f0c00b1

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/BookRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ui/BookCoverView;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookRowView;->cover:Lcom/amazon/kcp/library/ui/BookCoverView;

    .line 103
    const v0, 0x7f0c0032

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/BookRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookRowView;->downloadingText:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f0c0031

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/BookRowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookRowView;->downloadProgressBar:Landroid/widget/ProgressBar;

    .line 105
    new-instance v0, Lcom/amazon/android/util/DownloadProgressBarState;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookRowView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/android/util/DownloadProgressBarState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookRowView;->downloadProgressBarState:Lcom/amazon/android/util/DownloadProgressBarState;

    .line 107
    sget-object v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->DOWNLOADED:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/BookRowView;->setState(Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;)V

    .line 108
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 119
    invoke-super {p0}, Lcom/amazon/kcp/library/ui/LibraryBookView;->reset()V

    .line 120
    sget-object v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->DOWNLOADED:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/BookRowView;->setState(Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;)V

    .line 121
    return-void
.end method

.method protected setDownloadProgress(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 3
    .parameter

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/ui/LibraryBookView;->setDownloadProgress(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 91
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookRowView;->downloadProgressBarState:Lcom/amazon/android/util/DownloadProgressBarState;

    sget-object v1, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    iget-object v2, p0, Lcom/amazon/kcp/library/ui/BookRowView;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v0, v1, p1, v2}, Lcom/amazon/android/util/UIUtils;->setDownloadProgressBar(Lcom/amazon/android/util/DownloadProgressBarState;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;Lcom/amazon/kcp/library/models/IDownloadBookItem;Landroid/widget/ProgressBar;)Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookRowView;->cover:Lcom/amazon/kcp/library/ui/BookCoverView;

    sget-object v1, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->INVISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/library/ui/BookCoverView;->setDownloadProgress(Lcom/amazon/kcp/library/models/IDownloadBookItem;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)V

    .line 95
    return-void
.end method

.method public setState(Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;)V
    .locals 5
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State getting updated to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/ui/LibraryBookView;->setState(Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;)V

    .line 47
    sget-object v0, Lcom/amazon/kcp/library/ui/BookRowView$1;->$SwitchMap$com$amazon$kcp$library$ui$LibraryBookView$ViewState:[I

    invoke-virtual {p1}, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookRowView;->downloadingText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookRowView;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 77
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookRowView;->downloadingText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookRowView;->downloadingText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookRowView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/ui/BookRowView;->viewPlace:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;

    sget-object v3, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;->HOME:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;

    if-ne v2, v3, :cond_0

    const v2, 0x7f0b004c

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookRowView;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 51
    :cond_0
    const v2, 0x7f0b0050

    goto :goto_1

    .line 56
    :pswitch_1
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookRowView;->downloadingText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookRowView;->downloadingText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookRowView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b004d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookRowView;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 61
    :pswitch_2
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookRowView;->downloadingText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookRowView;->downloadingText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookRowView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b004e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookRowView;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 66
    :pswitch_3
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookRowView;->downloadingText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookRowView;->downloadingText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookRowView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b004f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookRowView;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setViewPlace(Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;)V
    .locals 0
    .parameter "place"

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/ui/LibraryBookView;->setViewPlace(Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;)V

    .line 83
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/BookRowView;->viewPlace:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;

    .line 84
    return-void
.end method
