.class Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/MyLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLibraryListAdapter"
.end annotation


# static fields
.field public static final SORT_BY_DATE:I = 0x0

.field public static final SORT_BY_TITLE:I = 0x1


# instance fields
.field private mCurrentSortBy:I

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

.field private updateTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/MyLibrary;)V
    .locals 1
    .parameter

    .prologue
    .line 404
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    .line 403
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 397
    const/4 v0, 0x0

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->mCurrentSortBy:I

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->delete(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->deleteAll()V

    return-void
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 393
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->mItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$5(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;)Lcom/newspaperdirect/pressreader/android/MyLibrary;
    .locals 1
    .parameter

    .prologue
    .line 389
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    return-object v0
.end method

.method private delete(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V
    .locals 5
    .parameter "item"

    .prologue
    .line 545
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    const-string v2, ""

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    const v4, 0x7f09000b

    invoke-virtual {v3, v4}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 546
    .local v0, dialog:Landroid/app/ProgressDialog;
    new-instance v1, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$6;

    invoke-direct {v1, p0, p1, v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$6;-><init>(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Landroid/app/ProgressDialog;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    .line 560
    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 561
    return-void
.end method

.method private deleteAll()V
    .locals 5

    .prologue
    .line 564
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    const-string v2, ""

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    const v4, 0x7f09000b

    invoke-virtual {v3, v4}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 565
    .local v0, dialog:Landroid/app/ProgressDialog;
    new-instance v1, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$7;

    invoke-direct {v1, p0, v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$7;-><init>(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;Landroid/app/ProgressDialog;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    .line 580
    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 581
    return-void
.end method


# virtual methods
.method public deleteAllItems()V
    .locals 3

    .prologue
    .line 525
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    :goto_0
    return-void

    .line 526
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 527
    const v1, 0x7f09008e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 528
    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 529
    const v1, 0x7f09005d

    new-instance v2, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$4;

    invoke-direct {v2, p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$4;-><init>(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 536
    const v1, 0x7f09005f

    new-instance v2, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$5;

    invoke-direct {v2, p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$5;-><init>(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 541
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public deleteItem(I)V
    .locals 1
    .parameter "idx"

    .prologue
    .line 499
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->deleteItem(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    .line 500
    return-void
.end method

.method public deleteItem(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V
    .locals 6
    .parameter "item"

    .prologue
    .line 503
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    :goto_0
    return-void

    .line 504
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 505
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 506
    const v2, 0x7f09008e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 507
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 508
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getIssueDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 507
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 509
    const v2, 0x7f09005d

    new-instance v3, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$2;

    invoke-direct {v3, p0, p1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$2;-><init>(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 516
    const v2, 0x7f09005f

    new-instance v3, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$3;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$3;-><init>(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 521
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 408
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentSortBy()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->mCurrentSortBy:I

    return v0
.end method

.method public getItem(I)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .locals 1
    .parameter "idx"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 413
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-object v0, p0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->getItem(I)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "idx"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 418
    .end local p0
    :goto_0
    return-wide v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "idx"
    .parameter "view"
    .parameter "parent"

    .prologue
    const v13, 0x7f0c002c

    const/4 v15, 0x0

    .line 423
    if-nez p2, :cond_1

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    move-object v11, v0

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f03000d

    move-object v0, v11

    move v1, v12

    move-object/from16 v2, p3

    move v3, v15

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 436
    .local v7, result:Landroid/view/View;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->mItems:Ljava/util/List;

    move-object v11, v0

    move-object v0, v11

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 437
    .local v5, item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v11, "E, d MMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-direct {v4, v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 438
    .local v4, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v7, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 439
    const v11, 0x7f0c0029

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    const v11, 0x7f0c002a

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getIssueDate()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    invoke-virtual {v5}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->isAdvice()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 442
    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f090072

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(I)V

    .line 446
    :goto_1
    const v11, 0x7f0c0028

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    .line 447
    .local v6, progress:Landroid/widget/ProgressBar;
    invoke-virtual {v5}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->isReady()Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v5}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->hasEverythingButLayout()Z

    move-result v11

    if-nez v11, :cond_3

    .line 448
    invoke-virtual {v5}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getProgress()I

    move-result v10

    .line 449
    .local v10, value:I
    invoke-virtual {v6, v10}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    move-object v11, v0

    invoke-static {v11}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->access$0(Lcom/newspaperdirect/pressreader/android/MyLibrary;)Lcom/newspaperdirect/pressreader/android/MyLibrary$OnDownloadProgressListener;

    move-result-object v11

    invoke-virtual {v11, v5, v7}, Lcom/newspaperdirect/pressreader/android/MyLibrary$OnDownloadProgressListener;->addDownloadState(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Landroid/view/View;)Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    .line 451
    invoke-virtual {v6, v15}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 454
    .end local v10           #value:I
    :goto_2
    invoke-static {v7, v5}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->setThumbnail(Landroid/view/View;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    .line 455
    return-object v7

    .line 427
    .end local v4           #formatter:Ljava/text/SimpleDateFormat;
    .end local v5           #item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .end local v6           #progress:Landroid/widget/ProgressBar;
    .end local v7           #result:Landroid/view/View;
    :cond_1
    move-object/from16 v7, p2

    .line 428
    .restart local v7       #result:Landroid/view/View;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .line 429
    .local v9, tag:Ljava/lang/Object;
    if-eqz v9, :cond_0

    instance-of v11, v9, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    if-eqz v11, :cond_0

    .line 430
    move-object v0, v9

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-object v5, v0

    .line 431
    .restart local v5       #item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    move-object v11, v0

    invoke-static {v11}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->access$0(Lcom/newspaperdirect/pressreader/android/MyLibrary;)Lcom/newspaperdirect/pressreader/android/MyLibrary$OnDownloadProgressListener;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/newspaperdirect/pressreader/android/MyLibrary$OnDownloadProgressListener;->getDownloadState(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    move-result-object v8

    .line 432
    .local v8, state:Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;->getMyLibraryItemView()Landroid/view/View;

    move-result-object v11

    if-ne v11, v7, :cond_0

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    move-object v11, v0

    invoke-static {v11}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->access$0(Lcom/newspaperdirect/pressreader/android/MyLibrary;)Lcom/newspaperdirect/pressreader/android/MyLibrary$OnDownloadProgressListener;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/newspaperdirect/pressreader/android/MyLibrary$OnDownloadProgressListener;->removeDownloadState(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;

    goto/16 :goto_0

    .line 444
    .end local v8           #state:Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;
    .end local v9           #tag:Ljava/lang/Object;
    .restart local v4       #formatter:Ljava/text/SimpleDateFormat;
    :cond_2
    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getPagesCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    move-object v13, v0

    const v14, 0x7f0900a2

    invoke-virtual {v13, v14}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 453
    .restart local v6       #progress:Landroid/widget/ProgressBar;
    :cond_3
    const/16 v11, 0x8

    invoke-virtual {v6, v11}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2
.end method

.method public refreshList()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 459
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->access$1(Lcom/newspaperdirect/pressreader/android/MyLibrary;)Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;->removeMessages(I)V

    .line 461
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$1;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$1;-><init>(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;)V

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->refreshItemsList(Landroid/app/Activity;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnItemsListUpdatedListener;)V

    .line 474
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "auto_delivery"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->this$0:Lcom/newspaperdirect/pressreader/android/MyLibrary;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->access$1(Lcom/newspaperdirect/pressreader/android/MyLibrary;)Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;

    move-result-object v0

    const-wide/32 v1, 0x493e0

    invoke-virtual {v0, v3, v1, v2}, Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public sortList()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 479
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 489
    :goto_0
    return-void

    .line 480
    :cond_0
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->mCurrentSortBy:I

    packed-switch v0, :pswitch_data_0

    .line 488
    :goto_1
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 482
    :pswitch_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->mItems:Ljava/util/List;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/MyLibrary$ByDateComparator;

    invoke-direct {v1, v2}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ByDateComparator;-><init>(Lcom/newspaperdirect/pressreader/android/MyLibrary$ByDateComparator;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 485
    :pswitch_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->mItems:Ljava/util/List;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/MyLibrary$ByTitleComparator;

    invoke-direct {v1, v2}, Lcom/newspaperdirect/pressreader/android/MyLibrary$ByTitleComparator;-><init>(Lcom/newspaperdirect/pressreader/android/MyLibrary$ByTitleComparator;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 480
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sortList(I)V
    .locals 1
    .parameter "sortBy"

    .prologue
    .line 492
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->mCurrentSortBy:I

    if-ne v0, p1, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->mCurrentSortBy:I

    .line 494
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->sortList()V

    goto :goto_0
.end method

.method public updateItemsList()V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->updateTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->updateTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 585
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->updateTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 587
    :cond_0
    new-instance v0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$8;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$8;-><init>(Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 599
    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    .line 587
    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->updateTask:Landroid/os/AsyncTask;

    .line 600
    return-void
.end method
