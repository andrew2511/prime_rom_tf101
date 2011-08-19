.class public Lcom/amazon/kcp/library/ui/BookCellView;
.super Lcom/amazon/kcp/library/ui/LibraryBookView;
.source "BookCellView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/ui/BookCellView$1;
    }
.end annotation


# instance fields
.field private cover:Lcom/amazon/kcp/library/ui/BookCoverView;

.field private downloadProgressBar:Landroid/widget/ProgressBar;

.field private downloadProgressBarState:Lcom/amazon/android/util/DownloadProgressBarState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/ui/LibraryBookView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCellView;->cover:Lcom/amazon/kcp/library/ui/BookCoverView;

    .line 36
    return-void
.end method


# virtual methods
.method public getCoverView()Lcom/amazon/kcp/library/ui/BookCoverView;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCellView;->cover:Lcom/amazon/kcp/library/ui/BookCoverView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/amazon/kcp/library/ui/LibraryBookView;->onFinishInflate()V

    .line 42
    const v0, 0x7f0c0019

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/BookCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ui/BookCoverView;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCellView;->cover:Lcom/amazon/kcp/library/ui/BookCoverView;

    .line 43
    new-instance v0, Lcom/amazon/android/util/DownloadProgressBarState;

    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/BookCellView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/android/util/DownloadProgressBarState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCellView;->downloadProgressBarState:Lcom/amazon/android/util/DownloadProgressBarState;

    .line 44
    const v0, 0x7f0c001f

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/BookCellView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/amazon/kcp/library/ui/BookCellView;->downloadProgressBar:Landroid/widget/ProgressBar;

    .line 45
    return-void
.end method

.method protected setDownloadProgress(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V
    .locals 3
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/ui/LibraryBookView;->setDownloadProgress(Lcom/amazon/kcp/library/models/IDownloadBookItem;)V

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCellView;->cover:Lcom/amazon/kcp/library/ui/BookCoverView;

    sget-object v1, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/library/ui/BookCoverView;->setDownloadProgress(Lcom/amazon/kcp/library/models/IDownloadBookItem;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;)V

    .line 59
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCellView;->downloadProgressBarState:Lcom/amazon/android/util/DownloadProgressBarState;

    sget-object v1, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    iget-object v2, p0, Lcom/amazon/kcp/library/ui/BookCellView;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-static {v0, v1, p1, v2}, Lcom/amazon/android/util/UIUtils;->setDownloadProgressBar(Lcom/amazon/android/util/DownloadProgressBarState;Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;Lcom/amazon/kcp/library/models/IDownloadBookItem;Landroid/widget/ProgressBar;)Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 61
    return-void
.end method

.method public setState(Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State getting updated to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    invoke-super {p0, p1}, Lcom/amazon/kcp/library/ui/LibraryBookView;->setState(Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;)V

    .line 70
    sget-object v0, Lcom/amazon/kcp/library/ui/BookCellView$1;->$SwitchMap$com$amazon$kcp$library$ui$LibraryBookView$ViewState:[I

    invoke-virtual {p1}, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCellView;->downloadProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 90
    :goto_0
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCellView;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCellView;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 79
    :pswitch_2
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCellView;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 82
    :pswitch_3
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCellView;->downloadProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
