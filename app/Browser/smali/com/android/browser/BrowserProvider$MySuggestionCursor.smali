.class Lcom/android/browser/BrowserProvider$MySuggestionCursor;
.super Landroid/database/AbstractCursor;
.source "BrowserProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySuggestionCursor"
.end annotation


# instance fields
.field private mHistoryCount:I

.field private mHistoryCursor:Landroid/database/Cursor;

.field private mIncludeWebSearch:Z

.field private mString:Ljava/lang/String;

.field private mSuggestCursor:Landroid/database/Cursor;

.field private mSuggestIntentExtraDataId:I

.field private mSuggestQueryId:I

.field private mSuggestText1Id:I

.field private mSuggestText2Id:I

.field private mSuggestText2UrlId:I

.field private mSuggestionCount:I

.field final synthetic this$0:Lcom/android/browser/BrowserProvider;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "hc"
    .parameter "sc"
    .parameter "string"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 470
    iput-object p1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->this$0:Lcom/android/browser/BrowserProvider;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 471
    iput-object p2, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    .line 472
    iput-object p3, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    .line 473
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    .line 474
    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestionCount:I

    .line 475
    iget v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestionCount:I

    invoke-static {p1}, Lcom/android/browser/BrowserProvider;->access$200(Lcom/android/browser/BrowserProvider;)I

    move-result v1

    iget v2, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 476
    invoke-static {p1}, Lcom/android/browser/BrowserProvider;->access$200(Lcom/android/browser/BrowserProvider;)I

    move-result v0

    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestionCount:I

    .line 478
    :cond_0
    iput-object p4, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mString:Ljava/lang/String;

    .line 479
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mIncludeWebSearch:Z

    .line 484
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    if-nez v0, :cond_4

    .line 485
    iput v3, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestText1Id:I

    .line 486
    iput v3, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestText2Id:I

    .line 487
    iput v3, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestText2UrlId:I

    .line 488
    iput v3, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestQueryId:I

    .line 489
    iput v3, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestIntentExtraDataId:I

    .line 502
    :goto_3
    return-void

    :cond_1
    move v0, v4

    .line 473
    goto :goto_0

    :cond_2
    move v0, v4

    .line 474
    goto :goto_1

    :cond_3
    move v0, v4

    .line 479
    goto :goto_2

    .line 491
    :cond_4
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    const-string v1, "suggest_text_1"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestText1Id:I

    .line 493
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    const-string v1, "suggest_text_2"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestText2Id:I

    .line 495
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    const-string v1, "suggest_text_2_url"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestText2UrlId:I

    .line 497
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    const-string v1, "suggest_intent_query"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestQueryId:I

    .line 499
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    const-string v1, "suggest_intent_extra_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestIntentExtraDataId:I

    goto :goto_3
.end method

.method private getHistoryTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 728
    iget-object v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, title:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_1

    .line 730
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/browser/BrowserProvider;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 732
    :cond_1
    return-object v0
.end method

.method private getHistoryUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 743
    iget-object v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, title:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_1

    .line 745
    :cond_0
    const/4 v1, 0x0

    .line 747
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/browser/BrowserProvider;->access$400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 710
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 711
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 713
    iput-object v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 716
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 717
    iput-object v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    .line 719
    :cond_1
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 698
    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->deactivate()V

    .line 699
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 541
    invoke-static {}, Lcom/android/browser/BrowserProvider;->access$300()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mIncludeWebSearch:Z

    if-eqz v0, :cond_0

    .line 533
    iget v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestionCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 535
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestionCount:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getDouble(I)D
    .locals 1
    .parameter "column"

    .prologue
    .line 658
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 663
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 668
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "column"

    .prologue
    .line 673
    iget v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 674
    iget v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mPos:I

    int-to-long v0, v0

    return-wide v0

    .line 676
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 681
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 7
    .parameter "columnIndex"

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 546
    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mPos:I

    if-eq v1, v5, :cond_2

    iget-object v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 547
    const/4 v0, -0x1

    .line 548
    .local v0, type:I
    iget-boolean v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mIncludeWebSearch:Z

    if-eqz v1, :cond_6

    .line 549
    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mPos:I

    if-nez v1, :cond_3

    .line 550
    const/4 v0, 0x0

    .line 558
    :cond_0
    :goto_0
    if-ne v0, v5, :cond_1

    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mPos:I

    sub-int/2addr v1, v3

    iget v2, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-ge v1, v2, :cond_5

    move v0, v3

    .line 563
    :cond_1
    :goto_1
    packed-switch p1, :pswitch_data_0

    .end local v0           #type:I
    :cond_2
    move-object v1, v4

    .line 653
    :goto_2
    return-object v1

    .line 551
    .restart local v0       #type:I
    :cond_3
    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-lez v1, :cond_0

    .line 552
    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mPos:I

    if-nez v1, :cond_4

    .line 553
    const/4 v0, 0x1

    goto :goto_0

    .line 554
    :cond_4
    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mPos:I

    if-ne v1, v3, :cond_0

    .line 555
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    move v0, v6

    .line 558
    goto :goto_1

    .line 560
    :cond_6
    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mPos:I

    iget v2, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-ge v1, v2, :cond_7

    move v0, v3

    :goto_3
    goto :goto_1

    :cond_7
    move v0, v6

    goto :goto_3

    .line 565
    :pswitch_0
    if-ne v0, v3, :cond_8

    .line 566
    const-string v1, "android.intent.action.VIEW"

    goto :goto_2

    .line 568
    :cond_8
    const-string v1, "android.intent.action.SEARCH"

    goto :goto_2

    .line 572
    :pswitch_1
    if-ne v0, v3, :cond_9

    .line 573
    iget-object v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_9
    move-object v1, v4

    .line 575
    goto :goto_2

    .line 579
    :pswitch_2
    if-nez v0, :cond_a

    .line 580
    iget-object v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mString:Ljava/lang/String;

    goto :goto_2

    .line 581
    :cond_a
    if-ne v0, v3, :cond_b

    .line 582
    invoke-direct {p0}, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->getHistoryTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 584
    :cond_b
    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestText1Id:I

    if-ne v1, v5, :cond_c

    move-object v1, v4

    goto :goto_2

    .line 585
    :cond_c
    iget-object v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestText1Id:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 589
    :pswitch_3
    if-nez v0, :cond_d

    .line 590
    iget-object v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->this$0:Lcom/android/browser/BrowserProvider;

    invoke-virtual {v1}, Lcom/android/browser/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090136

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 591
    :cond_d
    if-ne v0, v3, :cond_e

    move-object v1, v4

    .line 592
    goto :goto_2

    .line 594
    :cond_e
    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestText2Id:I

    if-ne v1, v5, :cond_f

    move-object v1, v4

    goto :goto_2

    .line 595
    :cond_f
    iget-object v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestText2Id:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 599
    :pswitch_4
    if-nez v0, :cond_10

    move-object v1, v4

    .line 600
    goto :goto_2

    .line 601
    :cond_10
    if-ne v0, v3, :cond_11

    .line 602
    invoke-direct {p0}, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->getHistoryUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 604
    :cond_11
    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestText2UrlId:I

    if-ne v1, v5, :cond_12

    move-object v1, v4

    goto :goto_2

    .line 605
    :cond_12
    iget-object v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestText2UrlId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 609
    :pswitch_5
    if-ne v0, v3, :cond_14

    .line 610
    iget-object v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_13

    .line 611
    const v1, 0x7f020057

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 615
    :cond_13
    const v1, 0x7f020059

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 620
    :cond_14
    const v1, 0x7f02005a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 626
    :pswitch_6
    const-string v1, "0"

    goto/16 :goto_2

    .line 629
    :pswitch_7
    if-nez v0, :cond_15

    .line 630
    iget-object v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mString:Ljava/lang/String;

    goto/16 :goto_2

    .line 631
    :cond_15
    if-ne v0, v3, :cond_16

    .line 636
    iget-object v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 638
    :cond_16
    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestQueryId:I

    if-ne v1, v5, :cond_17

    move-object v1, v4

    goto/16 :goto_2

    .line 639
    :cond_17
    iget-object v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestQueryId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 643
    :pswitch_8
    if-nez v0, :cond_18

    move-object v1, v4

    .line 644
    goto/16 :goto_2

    .line 645
    :cond_18
    if-ne v0, v3, :cond_19

    move-object v1, v4

    .line 646
    goto/16 :goto_2

    .line 648
    :cond_19
    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestIntentExtraDataId:I

    if-ne v1, v5, :cond_1a

    move-object v1, v4

    goto/16 :goto_2

    .line 649
    :cond_1a
    iget-object v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestIntentExtraDataId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 686
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onMove(II)Z
    .locals 3
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 506
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    move v0, v1

    .line 527
    :goto_0
    return v0

    .line 509
    :cond_0
    iget-boolean v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mIncludeWebSearch:Z

    if-eqz v0, :cond_4

    .line 510
    iget v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    move v0, v2

    .line 511
    goto :goto_0

    .line 512
    :cond_1
    iget v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-lez v0, :cond_3

    .line 513
    if-nez p2, :cond_2

    .line 514
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v0, v2

    .line 515
    goto :goto_0

    .line 516
    :cond_2
    if-ne p2, v2, :cond_3

    move v0, v2

    .line 517
    goto :goto_0

    .line 520
    :cond_3
    add-int/lit8 p2, p2, -0x1

    .line 522
    :cond_4
    iget v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-le v0, p2, :cond_5

    .line 523
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_1
    move v0, v2

    .line 527
    goto :goto_0

    .line 525
    :cond_5
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    sub-int v1, p2, v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_1
.end method

.method public requery()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 703
    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/browser/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    move-result v1

    :goto_1
    or-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
