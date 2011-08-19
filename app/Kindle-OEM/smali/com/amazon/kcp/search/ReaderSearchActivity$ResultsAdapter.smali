.class public Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ReaderSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/ReaderSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ResultsAdapter"
.end annotation


# static fields
.field private static final ITEM_TYPE_LABEL:I = 0x1

.field private static final ITEM_TYPE_RESULT:I = 0x0

.field private static final ITEM_TYPE_SECTION_HEADER:I = 0x2

.field private static final NUM_ITEM_TYPES:I = 0x3


# instance fields
.field private absoluteLocation:Z

.field private final currentLocationMarker:Lcom/amazon/kcp/reader/models/BookSearchResult;

.field private final resultComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/amazon/kcp/reader/models/BookSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amazon/kcp/reader/models/BookSearchResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

.field private tooManyResultsMarker:Lcom/amazon/kcp/reader/models/BookSearchResult;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/search/ReaderSearchActivity;Z)V
    .locals 7
    .parameter
    .parameter "absoluteLocation"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 541
    iput-object p1, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 480
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->results:Ljava/util/ArrayList;

    .line 485
    new-instance v3, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter$1;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter$1;-><init>(Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;)V

    iput-object v3, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->resultComparator:Ljava/util/Comparator;

    .line 532
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->tooManyResultsMarker:Lcom/amazon/kcp/reader/models/BookSearchResult;

    .line 542
    iput-boolean p2, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->absoluteLocation:Z

    .line 544
    iget-object v3, p1, Lcom/amazon/kcp/search/ReaderSearchActivity;->book:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v3}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getPageFirstPosition(I)I

    move-result v2

    .line 545
    .local v2, currentPosition:I
    iget-object v3, p1, Lcom/amazon/kcp/search/ReaderSearchActivity;->book:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v3}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getLocationFromPosition(I)I

    move-result v0

    .line 547
    .local v0, currentLocation:I
    if-eqz p2, :cond_0

    .line 549
    const v3, 0x7f0b0141

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v3, v4}, Lcom/amazon/kcp/search/ReaderSearchActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 555
    .local v1, currentLocationString:Ljava/lang/String;
    :goto_0
    new-instance v3, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultLabel;

    invoke-direct {v3, v1, v2, v6}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultLabel;-><init>(Ljava/lang/String;IZ)V

    iput-object v3, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->currentLocationMarker:Lcom/amazon/kcp/reader/models/BookSearchResult;

    .line 556
    return-void

    .line 553
    .end local v1           #currentLocationString:Ljava/lang/String;
    :cond_0
    const v3, 0x7f0b0142

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v3, v4}, Lcom/amazon/kcp/search/ReaderSearchActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #currentLocationString:Ljava/lang/String;
    goto :goto_0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->getResults()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private applyTextColorMode(Landroid/widget/TextView;)V
    .locals 2
    .parameter "textView"

    .prologue
    .line 755
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/ReaderSearchActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/SettingsController;->getColorMode()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/ReaderSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/color/AndroidColorModeFactory;->getColorMode(ILandroid/content/res/Resources;)Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getTextColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 757
    return-void
.end method

.method private getResults()Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 567
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 568
    iget-object v1, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/models/BookSearchResult;

    .line 571
    instance-of v2, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultLabel;

    if-nez v2, :cond_0

    .line 573
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 577
    :cond_1
    return-object v0
.end method

.method private setHighlightedResultText(Landroid/widget/TextView;ILcom/amazon/kcp/reader/models/BookSearchResult;)V
    .locals 25
    .parameter "textView"
    .parameter "textViewWidth"
    .parameter "result"

    .prologue
    .line 770
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kcp/reader/models/BookSearchResult;->getText()Ljava/lang/String;

    move-result-object v21

    const-string v22, "\\s"

    const-string v23, " "

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 771
    .local v17, resultText:Ljava/lang/String;
    const/16 v21, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kcp/reader/models/BookSearchResult;->getMatchOffset()I

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 774
    .local v16, resultMatchOffset:I
    const-string v14, "..."

    .line 775
    .local v14, prefix:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 776
    .local v19, text:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v21

    add-int v10, v16, v21

    .line 777
    .local v10, matchOffset:I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v20

    .line 778
    .local v20, textWidth:F
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v8, v20, v21

    .line 784
    .local v8, charWidth:F
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v21

    sub-int v21, p2, v21

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v22

    sub-int v21, v21, v22

    mul-int/lit8 v7, v21, 0x2

    .line 785
    .local v7, availableWidth:I
    move v0, v7

    int-to-double v0, v0

    move-wide/from16 v21, v0

    const/high16 v23, 0x40c0

    mul-float v23, v23, v8

    const/high16 v24, 0x3f80

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v23

    sub-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move v7, v0

    .line 787
    move v0, v7

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v21, v20, v21

    if-lez v21, :cond_0

    .line 789
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kcp/reader/models/BookSearchResult;->getMatchLength()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v11, v21, v8

    .line 790
    .local v11, matchTextWidth:F
    const/16 v21, 0x0

    move v0, v7

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v22, v11

    div-float v22, v22, v8

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->floor(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v23

    sub-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 792
    .local v15, remainingChars:I
    move/from16 v6, v16

    .line 793
    .local v6, availablePreChars:I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v21

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kcp/reader/models/BookSearchResult;->getMatchLength()I

    move-result v22

    add-int v22, v22, v16

    sub-int v5, v21, v22

    .line 794
    .local v5, availablePostChars:I
    div-int/lit8 v13, v15, 0x2

    .line 795
    .local v13, preChars:I
    sub-int v12, v15, v13

    .line 796
    .local v12, postChars:I
    if-le v13, v6, :cond_1

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kcp/reader/models/BookSearchResult;->getMatchLength()I

    move-result v22

    add-int v22, v22, v16

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    sub-int v23, v13, v6

    add-int v23, v23, v12

    const/16 v24, 0x1

    invoke-static/range {v21 .. v24}, Lcom/amazon/kcp/search/ReaderSearchActivity;->access$500(Lcom/amazon/kcp/search/ReaderSearchActivity;Ljava/lang/String;IZ)I

    move-result v12

    .line 801
    move v13, v6

    .line 815
    :goto_0
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sub-int v22, v16, v13

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kcp/reader/models/BookSearchResult;->getMatchLength()I

    move-result v23

    add-int v23, v23, v16

    add-int v23, v23, v12

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 816
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v21

    add-int v10, v13, v21

    .line 819
    .end local v5           #availablePostChars:I
    .end local v6           #availablePreChars:I
    .end local v11           #matchTextWidth:F
    .end local v12           #postChars:I
    .end local v13           #preChars:I
    .end local v15           #remainingChars:I
    :cond_0
    new-instance v18, Landroid/text/SpannableString;

    invoke-direct/range {v18 .. v19}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 820
    .local v18, spannedText:Landroid/text/SpannableString;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/amazon/kcp/search/ReaderSearchActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/amazon/kcp/application/SettingsController;->getColorMode()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/amazon/kcp/search/ReaderSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/amazon/kcp/reader/ui/color/AndroidColorModeFactory;->getColorMode(ILandroid/content/res/Resources;)Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/amazon/kcp/reader/ui/color/AndroidColorMode;->getHighlightColor()I

    move-result v9

    .line 822
    .local v9, highlightColor:I
    new-instance v21, Landroid/text/style/BackgroundColorSpan;

    move-object/from16 v0, v21

    move v1, v9

    invoke-direct {v0, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kcp/reader/models/BookSearchResult;->getMatchLength()I

    move-result v22

    add-int v22, v22, v10

    const/16 v23, 0x21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move v2, v10

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 823
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 824
    return-void

    .line 803
    .end local v9           #highlightColor:I
    .end local v18           #spannedText:Landroid/text/SpannableString;
    .restart local v5       #availablePostChars:I
    .restart local v6       #availablePreChars:I
    .restart local v11       #matchTextWidth:F
    .restart local v12       #postChars:I
    .restart local v13       #preChars:I
    .restart local v15       #remainingChars:I
    :cond_1
    if-le v12, v5, :cond_2

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    sub-int v23, v12, v5

    add-int v23, v23, v13

    const/16 v24, 0x0

    invoke-static/range {v21 .. v24}, Lcom/amazon/kcp/search/ReaderSearchActivity;->access$500(Lcom/amazon/kcp/search/ReaderSearchActivity;Ljava/lang/String;IZ)I

    move-result v13

    .line 807
    move v12, v5

    goto/16 :goto_0

    .line 811
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move v2, v13

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kcp/search/ReaderSearchActivity;->access$500(Lcom/amazon/kcp/search/ReaderSearchActivity;Ljava/lang/String;IZ)I

    move-result v13

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kcp/reader/models/BookSearchResult;->getMatchLength()I

    move-result v22

    add-int v22, v22, v16

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move v2, v12

    move/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kcp/search/ReaderSearchActivity;->access$500(Lcom/amazon/kcp/search/ReaderSearchActivity;Ljava/lang/String;IZ)I

    move-result v12

    goto/16 :goto_0
.end method


# virtual methods
.method public addResult(Lcom/amazon/kcp/reader/models/BookSearchResult;)V
    .locals 3
    .parameter

    .prologue
    .line 583
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->results:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->currentLocationMarker:Lcom/amazon/kcp/reader/models/BookSearchResult;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->results:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->resultComparator:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 591
    if-gez v0, :cond_1

    .line 593
    iget-object v1, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->results:Ljava/util/ArrayList;

    neg-int v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 596
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->notifyDataSetChanged()V

    .line 597
    return-void
.end method

.method public appendTooManyResultsLabel()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 602
    new-instance v0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultLabel;

    iget-object v1, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    const v2, 0x7f0b0143

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x1f4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/search/ReaderSearchActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2, v5}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultLabel;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->tooManyResultsMarker:Lcom/amazon/kcp/reader/models/BookSearchResult;

    .line 603
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->results:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->tooManyResultsMarker:Lcom/amazon/kcp/reader/models/BookSearchResult;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-virtual {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->notifyDataSetChanged()V

    .line 605
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 673
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 610
    invoke-virtual {p0}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->notifyDataSetChanged()V

    .line 611
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 634
    iget-object v0, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 640
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 652
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 653
    .local v0, item:Ljava/lang/Object;
    instance-of v1, v0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultLabel;

    if-eqz v1, :cond_1

    .line 655
    check-cast v0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultLabel;

    .end local v0           #item:Ljava/lang/Object;
    iget-boolean v1, v0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultLabel;->isSectionHeader:Z

    if-eqz v1, :cond_0

    .line 657
    const/4 v1, 0x2

    .line 666
    :goto_0
    return v1

    .line 661
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 666
    .restart local v0       #item:Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getResultCount()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 615
    iget-object v3, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->results:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 619
    .local v0, actualSize:I
    if-lez v0, :cond_0

    move v1, v4

    .line 620
    .local v1, adjustmentForCurrentLocationMarker:I
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->tooManyResultsMarker:Lcom/amazon/kcp/reader/models/BookSearchResult;

    if-eqz v3, :cond_1

    move v2, v4

    .line 622
    .local v2, adjustmentForTooManyResultsMarker:I
    :goto_1
    add-int v3, v0, v1

    add-int/2addr v3, v2

    return v3

    .end local v1           #adjustmentForCurrentLocationMarker:I
    .end local v2           #adjustmentForTooManyResultsMarker:I
    :cond_0
    move v1, v5

    .line 619
    goto :goto_0

    .restart local v1       #adjustmentForCurrentLocationMarker:I
    :cond_1
    move v2, v5

    .line 620
    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 685
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/reader/models/BookSearchResult;

    .line 686
    .local v4, result:Lcom/amazon/kcp/reader/models/BookSearchResult;
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->getItemViewType(I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 745
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Unknown item type passed to getView"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 692
    :pswitch_0
    move-object v1, p2

    .line 693
    .local v1, labelView:Landroid/view/View;
    if-nez v1, :cond_0

    .line 695
    iget-object v8, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    const v9, 0x7f03003a

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 696
    const v8, 0x7f0c00ad

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->applyTextColorMode(Landroid/widget/TextView;)V

    .line 699
    :cond_0
    const v8, 0x7f0c00ad

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/models/BookSearchResult;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v8, v1

    .line 742
    .end local v1           #labelView:Landroid/view/View;
    :goto_0
    return-object v8

    .line 704
    .restart local p0
    .restart local p1
    :pswitch_1
    move-object v0, p2

    .line 705
    .local v0, headerView:Landroid/view/View;
    if-nez v0, :cond_1

    .line 707
    iget-object v8, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    const v9, 0x7f030039

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 710
    :cond_1
    const v8, 0x7f0c00ac

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/models/BookSearchResult;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v8, v0

    .line 711
    goto :goto_0

    .line 714
    .end local v0           #headerView:Landroid/view/View;
    .restart local p0
    :pswitch_2
    move-object v6, p2

    .line 715
    .local v6, resultView:Landroid/view/View;
    if-nez v6, :cond_2

    .line 717
    iget-object v8, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    const v9, 0x7f03003b

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 718
    const v8, 0x7f0c00ae

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->applyTextColorMode(Landroid/widget/TextView;)V

    .line 720
    :cond_2
    const v8, 0x7f0c00ae

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 722
    .local v5, resultTextView:Landroid/widget/TextView;
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v9

    sub-int v7, v8, v9

    .line 723
    .local v7, textViewWidth:I
    invoke-direct {p0, v5, v7, v4}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->setHighlightedResultText(Landroid/widget/TextView;ILcom/amazon/kcp/reader/models/BookSearchResult;)V

    .line 724
    const v8, 0x7f0c00af

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 725
    .local v3, locationTextView:Landroid/widget/TextView;
    iget-boolean v8, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->absoluteLocation:Z

    if-eqz v8, :cond_3

    .line 727
    iget-object v8, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    iget-object v8, v8, Lcom/amazon/kcp/search/ReaderSearchActivity;->book:Lcom/amazon/kcp/reader/models/IBookDocument;

    invoke-interface {v8}, Lcom/amazon/kcp/reader/models/IBookDocument;->getNavigator()Lcom/amazon/kcp/reader/models/IBookNavigator;

    move-result-object v8

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/models/BookSearchResult;->getPosition()I

    move-result v9

    invoke-interface {v8, v9}, Lcom/amazon/kcp/reader/models/IBookNavigator;->getLocationFromPosition(I)I

    move-result v2

    .line 728
    .local v2, location:I
    iget-object v8, p0, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->this$0:Lcom/amazon/kcp/search/ReaderSearchActivity;

    const v9, 0x7f0b0140

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/amazon/kcp/search/ReaderSearchActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v2           #location:I
    :goto_1
    move-object v8, v6

    .line 742
    goto/16 :goto_0

    .line 735
    :cond_3
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v8

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v9

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v10

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v11

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 740
    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 686
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x3

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 679
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/search/ReaderSearchActivity$ResultsAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
