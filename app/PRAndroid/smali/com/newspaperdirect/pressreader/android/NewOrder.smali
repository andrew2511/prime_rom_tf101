.class public Lcom/newspaperdirect/pressreader/android/NewOrder;
.super Landroid/app/Activity;
.source "NewOrder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;
    }
.end annotation


# static fields
.field public static final EXTRA_ISSUE:Ljava/lang/String; = "new_order_issue"

.field public static final EXTRA_SUPPLEMENTS:Ljava/lang/String; = "new_order_supplements"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "new_order_title"

.field public static final RESULT_CID:Ljava/lang/String; = "new_order_result_cid"

.field public static final RESULT_IS_SUBSCRIPTION:Ljava/lang/String; = "new_order_is_subscription"

.field public static final RESULT_SELECTED_DATE:Ljava/lang/String; = "new_order_selected_date"


# instance fields
.field private mCurrentMonthIdx:I

.field private mDatesByMonths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIssueDates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private mIssueString:Ljava/lang/String;

.field private mMonths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private mNow:I

.field private volatile mProgressDialog:Landroid/app/ProgressDialog;

.field private mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

.field private mScale:F

.field private mSelectedBtn:Landroid/widget/Button;

.field private mSelectedDatePacked:I

.field private mSupplementsString:Ljava/lang/String;

.field private mTitle:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

.field private mTitleString:Ljava/lang/String;

.field private processing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mMonths:Ljava/util/ArrayList;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/NewOrder;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/NewOrder;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$10(Lcom/newspaperdirect/pressreader/android/NewOrder;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/NewOrder;->changeSelectedDate(Landroid/widget/Button;)V

    return-void
.end method

.method static synthetic access$11(Lcom/newspaperdirect/pressreader/android/NewOrder;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->processing:Z

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/NewOrder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 216
    invoke-direct {p0, p1, p2, p3}, Lcom/newspaperdirect/pressreader/android/NewOrder;->fetchData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/NewOrder;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->updateViews()V

    return-void
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/NewOrder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mIssueString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/newspaperdirect/pressreader/android/NewOrder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mSupplementsString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/newspaperdirect/pressreader/android/NewOrder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mTitleString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/newspaperdirect/pressreader/android/NewOrder;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/NewOrder;->changeMonth(I)V

    return-void
.end method

.method static synthetic access$8(Lcom/newspaperdirect/pressreader/android/NewOrder;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->confirmOrder()V

    return-void
.end method

.method static synthetic access$9(Lcom/newspaperdirect/pressreader/android/NewOrder;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    return-object v0
.end method

.method private changeMonth(I)V
    .locals 10
    .parameter "direction"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 391
    const v5, 0x7f0c004a

    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/NewOrder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ViewSwitcher;

    .line 392
    .local v3, switcher:Landroid/widget/ViewSwitcher;
    move-object v1, p0

    .line 393
    .local v1, context:Landroid/content/Context;
    if-lez p1, :cond_0

    .line 394
    iget v5, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mCurrentMonthIdx:I

    sub-int/2addr v5, v8

    iput v5, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mCurrentMonthIdx:I

    .line 395
    const v5, 0x7f040002

    invoke-virtual {v3, v1, v5}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/content/Context;I)V

    .line 396
    const v5, 0x7f040003

    invoke-virtual {v3, v1, v5}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    .line 404
    :goto_0
    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableLayout;

    .line 405
    .local v4, tbl:Landroid/widget/TableLayout;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 406
    .local v0, calendar:Ljava/util/Calendar;
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mMonths:Ljava/util/ArrayList;

    iget v6, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mCurrentMonthIdx:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Date;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 407
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "MMMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 408
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    const v5, 0x7f0c0048

    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/NewOrder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 409
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    invoke-direct {p0, v4, v0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->updateTable(Landroid/widget/TableLayout;Ljava/util/Calendar;)V

    .line 411
    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 413
    const v5, 0x7f0c0047

    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/NewOrder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iget v6, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mCurrentMonthIdx:I

    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mMonths:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_1

    move v6, v8

    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 414
    const v5, 0x7f0c0049

    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/NewOrder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iget v6, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mCurrentMonthIdx:I

    if-lez v6, :cond_2

    move v6, v8

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 415
    return-void

    .line 399
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v2           #formatter:Ljava/text/SimpleDateFormat;
    .end local v4           #tbl:Landroid/widget/TableLayout;
    :cond_0
    iget v5, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mCurrentMonthIdx:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mCurrentMonthIdx:I

    .line 400
    const v5, 0x7f040004

    invoke-virtual {v3, v1, v5}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/content/Context;I)V

    .line 401
    const v5, 0x7f040005

    invoke-virtual {v3, v1, v5}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/content/Context;I)V

    goto :goto_0

    .restart local v0       #calendar:Ljava/util/Calendar;
    .restart local v2       #formatter:Ljava/text/SimpleDateFormat;
    .restart local v4       #tbl:Landroid/widget/TableLayout;
    :cond_1
    move v6, v9

    .line 413
    goto :goto_1

    :cond_2
    move v6, v9

    .line 414
    goto :goto_2
.end method

.method private changeSelectedDate(Landroid/widget/Button;)V
    .locals 4
    .parameter "btn"

    .prologue
    const/4 v3, 0x1

    .line 418
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mSelectedBtn:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mSelectedBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 419
    :cond_0
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mSelectedBtn:Landroid/widget/Button;

    .line 420
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 421
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    invoke-virtual {p1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, v2, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->selectedDate:Ljava/util/Date;

    .line 422
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 423
    .local v0, calendar:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    iget-object v1, v1, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->selectedDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 424
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x2710

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mSelectedDatePacked:I

    .line 425
    return-void
.end method

.method private confirmOrder()V
    .locals 2

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->processing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->processing:Z

    .line 430
    new-instance v0, Lcom/newspaperdirect/pressreader/android/NewOrder$9;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/NewOrder$9;-><init>(Lcom/newspaperdirect/pressreader/android/NewOrder;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 497
    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private fetchData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17
    .parameter "issue"
    .parameter "supplements"
    .parameter "title"

    .prologue
    .line 218
    invoke-direct/range {p0 .. p1}, Lcom/newspaperdirect/pressreader/android/NewOrder;->parseIssueString(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/NewOrder;->mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    .line 220
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActive()Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v13

    invoke-virtual {v13}, Lcom/newspaperdirect/pressreader/android/core/Service;->getId()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-object v15, v0

    iget-object v15, v15, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->cid:Ljava/lang/String;

    invoke-static {v13, v14, v15}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->getNewspaper(JLjava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/NewOrder;->mTitle:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-object v14, v0

    iget-object v14, v14, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->cid:Ljava/lang/String;

    invoke-static {v14}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->getByCid(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/Subscription;

    move-result-object v14

    if-eqz v14, :cond_2

    const/4 v14, 0x1

    :goto_0
    iput-boolean v14, v13, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->isSubscription:Z

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mTitle:Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/newspaperdirect/pressreader/android/core/catalog/Newspaper;->isFavorite()Z

    move-result v14

    iput-boolean v14, v13, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->isFavorite:Z

    .line 225
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 226
    const-string v13, "\\|"

    move-object/from16 v0, p2

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 227
    .local v12, supplementsStrings:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-object v13, v0

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v13, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->Supplements:Ljava/util/List;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-object v13, v0

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->includeSupplements:Z

    .line 229
    array-length v13, v12

    const/4 v14, 0x0

    :goto_1
    if-lt v14, v13, :cond_3

    .line 236
    .end local v12           #supplementsStrings:[Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 237
    .local v2, calendar:Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-object v13, v0

    iget-object v13, v13, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->selectedDate:Ljava/util/Date;

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 238
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    mul-int/lit8 v13, v13, 0x64

    const/4 v14, 0x2

    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int v10, v13, v14

    .line 239
    .local v10, selectedMonth:I
    mul-int/lit8 v13, v10, 0x64

    const/4 v14, 0x5

    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/2addr v13, v14

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/newspaperdirect/pressreader/android/NewOrder;->mSelectedDatePacked:I

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-object v13, v0

    iget-object v13, v13, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->cid:Ljava/lang/String;

    invoke-static {v13}, Lcom/newspaperdirect/pressreader/android/core/PRRequests;->getIssueDates(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/NewOrder;->mIssueDates:Ljava/util/List;

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mIssueDates:Ljava/util/List;

    move-object v13, v0

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mIssueDates:Ljava/util/List;

    move-object v13, v0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_5

    :cond_1
    const/4 v13, 0x0

    .line 264
    .end local p1
    :goto_2
    return v13

    .line 222
    .end local v2           #calendar:Ljava/util/Calendar;
    .end local v10           #selectedMonth:I
    .restart local p1
    :cond_2
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 229
    .restart local v12       #supplementsStrings:[Ljava/lang/String;
    :cond_3
    aget-object v11, v12, v14

    .line 230
    .local v11, supplementString:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/NewOrder;->parseIssueString(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v9

    .line 231
    .local v9, r:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-object v15, v0

    iget-object v15, v15, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->Supplements:Ljava/util/List;

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->includeSupplements:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    move-object v0, v9

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->cid:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/newspaperdirect/pressreader/android/core/Subscription;->getByCid(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/Subscription;

    move-result-object v16

    if-eqz v16, :cond_4

    const/16 v16, 0x1

    :goto_3
    move/from16 v0, v16

    move-object v1, v15

    iput-boolean v0, v1, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->includeSupplements:Z

    .line 229
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 232
    :cond_4
    const/16 v16, 0x0

    goto :goto_3

    .line 242
    .end local v9           #r:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;
    .end local v11           #supplementString:Ljava/lang/String;
    .end local v12           #supplementsStrings:[Ljava/lang/String;
    .restart local v2       #calendar:Ljava/util/Calendar;
    .restart local v10       #selectedMonth:I
    :cond_5
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/NewOrder;->mDatesByMonths:Ljava/util/HashMap;

    .line 243
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v7, imonths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, -0x1

    .line 245
    .local v5, idx:I
    const v4, 0x7fffffff

    .line 246
    .local v4, delta:I
    const/4 v13, -0x1

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/newspaperdirect/pressreader/android/NewOrder;->mCurrentMonthIdx:I

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mIssueDates:Ljava/util/List;

    move-object v13, v0

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .end local p1
    :cond_6
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_7

    .line 264
    const/4 v13, 0x1

    goto :goto_2

    .line 247
    :cond_7
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Date;

    .line 248
    .local v3, date:Ljava/util/Date;
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 249
    const/4 v14, 0x1

    invoke-virtual {v2, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    mul-int/lit8 v14, v14, 0x64

    const/4 v15, 0x2

    invoke-virtual {v2, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int v6, v14, v15

    .line 250
    .local v6, imonth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mDatesByMonths:Ljava/util/HashMap;

    move-object v14, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mDatesByMonths:Ljava/util/HashMap;

    move-object v14, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v14 .. v16}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mDatesByMonths:Ljava/util/HashMap;

    move-object v14, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    mul-int/lit8 v14, v6, 0x64

    const/4 v15, 0x5

    invoke-virtual {v2, v15}, Ljava/util/Calendar;->get(I)I

    move-result v15

    add-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 254
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mMonths:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    add-int/lit8 v5, v5, 0x1

    .line 257
    sub-int v14, v10, v6

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 258
    .local v8, newDelta:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mCurrentMonthIdx:I

    move v14, v0

    if-ltz v14, :cond_9

    if-ge v8, v4, :cond_6

    .line 259
    :cond_9
    move v4, v8

    .line 260
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/newspaperdirect/pressreader/android/NewOrder;->mCurrentMonthIdx:I

    goto/16 :goto_4
.end method

.method private parseIssueString(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;
    .locals 7
    .parameter "issueString"

    .prologue
    const/4 v6, 0x4

    .line 268
    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    invoke-direct {v3}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;-><init>()V

    .line 271
    .local v3, result:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 273
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    const/4 v4, 0x4

    const/16 v5, 0xc

    :try_start_0
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 279
    .local v2, issueDate:Ljava/util/Date;
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->cid:Ljava/lang/String;

    .line 280
    iput-object v2, v3, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->selectedDate:Ljava/util/Date;

    .line 281
    return-object v3

    .line 274
    .end local v2           #issueDate:Ljava/util/Date;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 275
    .local v0, e:Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 276
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .restart local v2       #issueDate:Ljava/util/Date;
    goto :goto_0
.end method

.method private updateTable(Landroid/widget/TableLayout;Ljava/util/Calendar;)V
    .locals 21
    .parameter "tbl"
    .parameter "calendar"

    .prologue
    .line 319
    const/4 v13, 0x0

    .line 320
    .local v13, listener:Landroid/view/View$OnClickListener;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v19

    if-lez v19, :cond_2

    const/16 v19, 0x1

    move/from16 v15, v19

    .line 321
    .local v15, reusing:Z
    :goto_0
    if-nez v15, :cond_0

    .line 322
    new-instance v16, Landroid/widget/TableRow;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 323
    .local v16, tr:Landroid/widget/TableRow;
    new-instance v5, Ljava/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 324
    .local v5, dfs:Ljava/text/DateFormatSymbols;
    invoke-virtual {v5}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v18

    .line 325
    .local v18, wdays:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v10

    .line 326
    .local v10, idx:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    const/16 v19, 0x7

    move v0, v8

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 334
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 336
    new-instance v13, Lcom/newspaperdirect/pressreader/android/NewOrder$8;

    .end local v13           #listener:Landroid/view/View$OnClickListener;
    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/NewOrder$8;-><init>(Lcom/newspaperdirect/pressreader/android/NewOrder;)V

    .line 342
    .end local v5           #dfs:Ljava/text/DateFormatSymbols;
    .end local v8           #i:I
    .end local v10           #idx:I
    .end local v16           #tr:Landroid/widget/TableRow;
    .end local v18           #wdays:[Ljava/lang/String;
    .restart local v13       #listener:Landroid/view/View$OnClickListener;
    :cond_0
    const/16 v19, 0x5

    const/16 v20, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 343
    const/16 v19, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 344
    .local v14, m:I
    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v19

    mul-int/lit8 v19, v19, 0x64

    const/16 v20, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v20

    add-int v11, v19, v20

    .line 345
    .local v11, imonth:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v7

    .line 346
    .local v7, fdow:I
    const/16 v19, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 347
    .local v6, dow:I
    if-le v7, v6, :cond_1

    add-int/lit8 v7, v7, -0x7

    .line 348
    :cond_1
    mul-int/lit8 v19, v11, 0x64

    const/16 v20, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v20

    add-int v19, v19, v20

    add-int v19, v19, v7

    sub-int v9, v19, v6

    .line 349
    .local v9, idate:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mDatesByMonths:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 350
    .local v4, dates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v19, 0x5

    sub-int v20, v7, v6

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 351
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_2
    const/16 v19, 0x6

    move v0, v8

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    .line 388
    return-void

    .line 320
    .end local v4           #dates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6           #dow:I
    .end local v7           #fdow:I
    .end local v8           #i:I
    .end local v9           #idate:I
    .end local v11           #imonth:I
    .end local v14           #m:I
    .end local v15           #reusing:Z
    :cond_2
    const/16 v19, 0x0

    move/from16 v15, v19

    goto/16 :goto_0

    .line 327
    .restart local v5       #dfs:Ljava/text/DateFormatSymbols;
    .restart local v8       #i:I
    .restart local v10       #idx:I
    .restart local v15       #reusing:Z
    .restart local v16       #tr:Landroid/widget/TableRow;
    .restart local v18       #wdays:[Ljava/lang/String;
    :cond_3
    new-instance v17, Landroid/widget/TextView;

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TableRow;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 328
    .local v17, txt:Landroid/widget/TextView;
    aget-object v19, v18, v10

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 330
    invoke-virtual/range {v16 .. v17}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 331
    add-int/lit8 v10, v10, 0x1

    .line 332
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move v0, v10

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    const/4 v10, 0x1

    .line 326
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 352
    .end local v5           #dfs:Ljava/text/DateFormatSymbols;
    .end local v10           #idx:I
    .end local v16           #tr:Landroid/widget/TableRow;
    .end local v17           #txt:Landroid/widget/TextView;
    .end local v18           #wdays:[Ljava/lang/String;
    .restart local v4       #dates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6       #dow:I
    .restart local v7       #fdow:I
    .restart local v9       #idate:I
    .restart local v11       #imonth:I
    .restart local v14       #m:I
    :cond_5
    if-eqz v15, :cond_7

    add-int/lit8 v19, v8, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TableRow;

    move-object/from16 v16, v3

    .line 353
    .restart local v16       #tr:Landroid/widget/TableRow;
    :goto_3
    const/16 v19, 0x5

    move v0, v8

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/16 v19, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v19

    move/from16 v0, v19

    move v1, v14

    if-eq v0, v1, :cond_8

    .line 354
    const/16 v19, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setVisibility(I)V

    .line 356
    :goto_4
    const/4 v12, 0x0

    .local v12, j:I
    :goto_5
    const/16 v19, 0x7

    move v0, v12

    move/from16 v1, v19

    if-lt v0, v1, :cond_9

    .line 386
    if-nez v15, :cond_6

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 351
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 352
    .end local v12           #j:I
    .end local v16           #tr:Landroid/widget/TableRow;
    :cond_7
    new-instance v19, Landroid/widget/TableRow;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    move-object/from16 v16, v19

    goto :goto_3

    .line 355
    .restart local v16       #tr:Landroid/widget/TableRow;
    :cond_8
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setVisibility(I)V

    goto :goto_4

    .line 358
    .restart local v12       #j:I
    :cond_9
    if-eqz v15, :cond_b

    move-object/from16 v0, v16

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 364
    .local v3, btn:Landroid/widget/Button;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v19

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 365
    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mNow:I

    move/from16 v19, v0

    move v0, v9

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 366
    const v19, 0x7f020001

    move-object v0, v3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 368
    :goto_7
    const/16 v19, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v19

    move/from16 v0, v19

    move v1, v14

    if-eq v0, v1, :cond_d

    .line 369
    const-string v19, " "

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 370
    const/16 v19, 0x0

    move-object v0, v3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 371
    const/16 v19, 0x0

    move-object v0, v3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 382
    :goto_8
    add-int/lit8 v9, v9, 0x1

    .line 383
    if-nez v15, :cond_a

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 384
    :cond_a
    const/16 v19, 0x5

    const/16 v20, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 356
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    .line 360
    .end local v3           #btn:Landroid/widget/Button;
    :cond_b
    new-instance v3, Landroid/widget/Button;

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TableRow;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 361
    .restart local v3       #btn:Landroid/widget/Button;
    const v19, 0x7f0a0005

    move-object v0, v3

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 362
    invoke-virtual {v3, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    .line 367
    :cond_c
    const/high16 v19, 0x7f02

    move-object v0, v3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_7

    .line 374
    :cond_d
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 375
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    move-object v0, v3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 376
    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mSelectedDatePacked:I

    move/from16 v19, v0

    move v0, v9

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    .line 377
    const/16 v19, 0x1

    move-object v0, v3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 378
    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/NewOrder;->mSelectedBtn:Landroid/widget/Button;

    goto/16 :goto_8

    .line 380
    :cond_e
    const/16 v19, 0x0

    move-object v0, v3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    goto/16 :goto_8
.end method

.method private updateView()V
    .locals 12

    .prologue
    const v11, 0x7f0c004c

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 285
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->isFinishing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mIssueDates:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mIssueDates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 288
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mSelectedBtn:Landroid/widget/Button;

    .line 289
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 290
    .local v0, calendar:Ljava/util/Calendar;
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mMonths:Ljava/util/ArrayList;

    iget v6, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mCurrentMonthIdx:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Date;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 292
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v5, "MMMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 293
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    const v5, 0x7f0c0048

    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/NewOrder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 294
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    const v5, 0x7f0c004a

    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/NewOrder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ViewSwitcher;

    .line 297
    .local v3, switcher:Landroid/widget/ViewSwitcher;
    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableLayout;

    .line 298
    .local v4, tbl:Landroid/widget/TableLayout;
    invoke-direct {p0, v4, v0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->updateTable(Landroid/widget/TableLayout;Ljava/util/Calendar;)V

    .line 300
    const v5, 0x7f0c004d

    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/NewOrder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 301
    .local v1, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getPaddingLeft()I

    move-result v5

    const/high16 v6, 0x4100

    iget v7, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mScale:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    .line 302
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getPaddingTop()I

    move-result v6

    .line 303
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getPaddingRight()I

    move-result v7

    .line 304
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getPaddingBottom()I

    move-result v8

    .line 301
    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 306
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    iget-boolean v5, v5, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->isFavorite:Z

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 307
    const v5, 0x7f0c004b

    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/NewOrder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    iget-boolean v6, v6, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->isSubscription:Z

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 309
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mSupplementsString:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 310
    invoke-virtual {p0, v11}, Lcom/newspaperdirect/pressreader/android/NewOrder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 311
    invoke-virtual {p0, v11}, Lcom/newspaperdirect/pressreader/android/NewOrder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    iget-boolean v6, v6, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->includeSupplements:Z

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 313
    :cond_2
    const v5, 0x7f0c0047

    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/NewOrder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iget v6, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mCurrentMonthIdx:I

    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mMonths:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v10

    if-ge v6, v7, :cond_3

    move v6, v10

    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 314
    const v5, 0x7f0c0049

    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/NewOrder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iget v6, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mCurrentMonthIdx:I

    if-lez v6, :cond_4

    move v6, v10

    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_3
    move v6, v9

    .line 313
    goto :goto_1

    :cond_4
    move v6, v9

    .line 314
    goto :goto_2
.end method

.method private updateViews()V
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->updateView()V

    .line 129
    const v0, 0x7f0c0047

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 130
    new-instance v1, Lcom/newspaperdirect/pressreader/android/NewOrder$1;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/NewOrder$1;-><init>(Lcom/newspaperdirect/pressreader/android/NewOrder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v0, 0x7f0c0049

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 136
    new-instance v1, Lcom/newspaperdirect/pressreader/android/NewOrder$2;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/NewOrder$2;-><init>(Lcom/newspaperdirect/pressreader/android/NewOrder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v0, 0x7f0c004f

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/NewOrder$3;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/NewOrder$3;-><init>(Lcom/newspaperdirect/pressreader/android/NewOrder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v0, 0x7f0c004e

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/NewOrder$4;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/NewOrder$4;-><init>(Lcom/newspaperdirect/pressreader/android/NewOrder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v0, 0x7f0c004b

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 154
    new-instance v1, Lcom/newspaperdirect/pressreader/android/NewOrder$5;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/NewOrder$5;-><init>(Lcom/newspaperdirect/pressreader/android/NewOrder;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 165
    const v0, 0x7f0c004c

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 166
    new-instance v1, Lcom/newspaperdirect/pressreader/android/NewOrder$6;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/NewOrder$6;-><init>(Lcom/newspaperdirect/pressreader/android/NewOrder;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 178
    const v0, 0x7f0c004d

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 179
    new-instance v1, Lcom/newspaperdirect/pressreader/android/NewOrder$7;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/NewOrder$7;-><init>(Lcom/newspaperdirect/pressreader/android/NewOrder;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 214
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 122
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->setContentView(I)V

    .line 123
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->updateViews()V

    .line 124
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 83
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 84
    .local v1, extra:Landroid/os/Bundle;
    const-string v2, "new_order_issue"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mIssueString:Ljava/lang/String;

    .line 85
    const-string v2, "new_order_supplements"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mSupplementsString:Ljava/lang/String;

    .line 86
    const-string v2, "new_order_title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mTitleString:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/NewOrder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mScale:F

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->init(Landroid/content/Context;)V

    .line 92
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->init(Landroid/content/Context;)Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;

    .line 93
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->create(Landroid/content/Context;)V

    .line 94
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/HandlerHolder;->init()V

    .line 95
    const v2, 0x7f030014

    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/NewOrder;->setContentView(I)V

    .line 97
    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    invoke-direct {v2}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;-><init>()V

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    .line 98
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 99
    .local v0, calendar:Ljava/util/Calendar;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 100
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x2710

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    add-int/2addr v2, v3

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mNow:I

    .line 101
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mTitleString:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/NewOrder;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    new-instance v2, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;-><init>(Lcom/newspaperdirect/pressreader/android/NewOrder;Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mIssueString:Ljava/lang/String;

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mSupplementsString:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mTitleString:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lcom/newspaperdirect/pressreader/android/NewOrder$FetchDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 103
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 113
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 115
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/NewOrder;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 117
    :cond_1
    return-void
.end method
