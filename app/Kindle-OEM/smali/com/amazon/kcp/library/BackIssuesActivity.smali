.class public Lcom/amazon/kcp/library/BackIssuesActivity;
.super Lcom/amazon/kcp/library/LocalLibraryActivity;
.source "BackIssuesActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/amazon/kcp/library/LocalLibraryActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getInitialLibraryFilter()Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->PERIODICALS_ONLY_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    return-object v0
.end method

.method protected getSortedIndices()[I
    .locals 2

    .prologue
    .line 17
    iget v1, p0, Lcom/amazon/kcp/library/BackIssuesActivity;->currentSortType:I

    packed-switch v1, :pswitch_data_0

    .line 28
    invoke-virtual {p0}, Lcom/amazon/kcp/library/BackIssuesActivity;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/CLibrary;->sortBackIssuesByRecent()[I

    move-result-object v0

    .line 32
    .local v0, indices:[I
    :goto_0
    return-object v0

    .line 20
    .end local v0           #indices:[I
    :pswitch_0
    invoke-virtual {p0}, Lcom/amazon/kcp/library/BackIssuesActivity;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/CLibrary;->sortBackIssuesByTitle()[I

    move-result-object v0

    .line 21
    .restart local v0       #indices:[I
    goto :goto_0

    .line 23
    .end local v0           #indices:[I
    :pswitch_1
    invoke-virtual {p0}, Lcom/amazon/kcp/library/BackIssuesActivity;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/CLibrary;->sortBackIssuesByAuthor()[I

    move-result-object v0

    .line 24
    .restart local v0       #indices:[I
    goto :goto_0

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getTitleText()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 38
    invoke-virtual {p0}, Lcom/amazon/kcp/library/BackIssuesActivity;->getLocalLibrary()Lcom/amazon/kcp/library/models/CLibrary;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/library/models/CLibrary;->getBackIssueCount()I

    move-result v0

    .line 39
    .local v0, count:I
    if-ne v0, v2, :cond_0

    .line 41
    const v1, 0x7f0b0065

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/library/BackIssuesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    :goto_0
    return-object v1

    :cond_0
    const v1, 0x7f0b0064

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/amazon/kcp/library/BackIssuesActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
