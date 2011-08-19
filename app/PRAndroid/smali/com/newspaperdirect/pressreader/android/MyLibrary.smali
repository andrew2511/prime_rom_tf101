.class public Lcom/newspaperdirect/pressreader/android/MyLibrary;
.super Landroid/app/ListActivity;
.source "MyLibrary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/MyLibrary$ByDateComparator;,
        Lcom/newspaperdirect/pressreader/android/MyLibrary$ByTitleComparator;,
        Lcom/newspaperdirect/pressreader/android/MyLibrary$ItemDownloadState;,
        Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;,
        Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;,
        Lcom/newspaperdirect/pressreader/android/MyLibrary$OnDownloadProgressListener;
    }
.end annotation


# static fields
.field private static final DELIVERY_QUEUE_CHECK_INTERVAL:I = 0x493e0

.field private static final DISABLE_NO_LAYOUT_TIP_KEY:Ljava/lang/String; = "NewspaperView.DisableNoLayoutTip"

.field private static final NETWORK_CONNECTION_CHECK_INTERVAL:I = 0x2710

.field private static final NEWSPAPER_VIEW_REQUEST_CODE:I = 0x1

.field private static final PREF_AUTO_DELIVERY:Ljava/lang/String; = "auto_delivery"

.field private static final TAG:Ljava/lang/String; = "MyLibrary"


# instance fields
.field private categoriestoolbar:Landroid/view/View;

.field private filtertoolbar:Landroid/view/View;

.field private mActiveSortButton:Landroid/widget/Button;

.field private mDownloadServiceHelper:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

.field private mHandler:Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;

.field private mLoadingView:Landroid/view/View;

.field private mOnDownloadProgressListener:Lcom/newspaperdirect/pressreader/android/MyLibrary$OnDownloadProgressListener;

.field private newspapertoolbar:Landroid/view/View;

.field private subtitle:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/MyLibrary;)Lcom/newspaperdirect/pressreader/android/MyLibrary$OnDownloadProgressListener;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->mOnDownloadProgressListener:Lcom/newspaperdirect/pressreader/android/MyLibrary$OnDownloadProgressListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/MyLibrary;)Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->mHandler:Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;

    return-object v0
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/MyLibrary;)Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->mDownloadServiceHelper:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

    return-object v0
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/MyLibrary;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->mLoadingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/MyLibrary;)Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->getMyLibraryListAdapter()Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/newspaperdirect/pressreader/android/MyLibrary;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->mActiveSortButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$6(Lcom/newspaperdirect/pressreader/android/MyLibrary;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->mActiveSortButton:Landroid/widget/Button;

    return-void
.end method

.method private getMyLibraryListAdapter()Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;
    .locals 0

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    return-object p0
.end method

.method public static setThumbnail(Landroid/view/View;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V
    .locals 13
    .parameter "view"
    .parameter "item"

    .prologue
    const v12, 0x7f0c0027

    const v11, 0x7f0c0026

    const v10, 0x7f0c002b

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 604
    const/4 v0, 0x0

    .line 605
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->hasThumbnail()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 606
    const/4 v3, 0x0

    .line 608
    .local v3, stream:Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getThumbnailFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    .end local v3           #stream:Ljava/io/InputStream;
    .local v4, stream:Ljava/io/InputStream;
    :try_start_1
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 610
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 611
    const/4 v3, 0x0

    .line 612
    .end local v4           #stream:Ljava/io/InputStream;
    .restart local v3       #stream:Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 613
    .local v5, w:I
    sget v6, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->THUMBNAIL_WIDTH:I

    div-int/lit8 v1, v6, 0x2

    .line 614
    .local v1, h:I
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v6, v7, v5, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 618
    if-eqz v3, :cond_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 622
    .end local v1           #h:I
    .end local v3           #stream:Ljava/io/InputStream;
    .end local v5           #w:I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getEnableSmart()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 624
    :goto_1
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->isSemiReady()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 625
    invoke-virtual {p0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 628
    :goto_2
    invoke-virtual {p0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->hasSmartLayout()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->checkLayoutFileConsistency()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_3
    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 629
    if-eqz v0, :cond_7

    .line 630
    invoke-virtual {p0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 631
    .local v2, imgview:Landroid/widget/ImageView;
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 632
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 633
    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->isAdvice()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 634
    const/16 v6, 0x4b

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 639
    .end local v2           #imgview:Landroid/widget/ImageView;
    :goto_4
    return-void

    .line 616
    .restart local v3       #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v6

    .line 618
    :goto_5
    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 619
    :cond_1
    :goto_6
    const/4 v3, 0x0

    goto :goto_0

    .line 617
    :catchall_0
    move-exception v6

    .line 618
    :goto_7
    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 619
    :cond_2
    :goto_8
    const/4 v3, 0x0

    .line 620
    throw v6

    .line 623
    .end local v3           #stream:Ljava/io/InputStream;
    :cond_3
    invoke-virtual {p0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 627
    :cond_4
    invoke-virtual {p0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_5
    move v7, v8

    .line 628
    goto :goto_3

    .line 636
    .restart local v2       #imgview:Landroid/widget/ImageView;
    :cond_6
    const/16 v6, 0xff

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setAlpha(I)V

    goto :goto_4

    .line 638
    .end local v2           #imgview:Landroid/widget/ImageView;
    :cond_7
    invoke-virtual {p0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 618
    .restart local v3       #stream:Ljava/io/InputStream;
    :catch_1
    move-exception v6

    goto :goto_6

    :catch_2
    move-exception v7

    goto :goto_8

    .restart local v1       #h:I
    .restart local v5       #w:I
    :catch_3
    move-exception v6

    goto :goto_0

    .line 617
    .end local v1           #h:I
    .end local v3           #stream:Ljava/io/InputStream;
    .end local v5           #w:I
    .restart local v4       #stream:Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #stream:Ljava/io/InputStream;
    .restart local v3       #stream:Ljava/io/InputStream;
    goto :goto_7

    .line 616
    .end local v3           #stream:Ljava/io/InputStream;
    .restart local v4       #stream:Ljava/io/InputStream;
    :catch_4
    move-exception v6

    move-object v3, v4

    .end local v4           #stream:Ljava/io/InputStream;
    .restart local v3       #stream:Ljava/io/InputStream;
    goto :goto_5
.end method

.method private showConsistencyCheckFailedDialog(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V
    .locals 3
    .parameter "item"

    .prologue
    const v1, 0x7f090018

    .line 321
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->isExternalStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 324
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 325
    const v1, 0x7f090028

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 326
    const v1, 0x7f090072

    new-instance v2, Lcom/newspaperdirect/pressreader/android/MyLibrary$6;

    invoke-direct {v2, p0, p1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$6;-><init>(Lcom/newspaperdirect/pressreader/android/MyLibrary;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 351
    const v1, 0x7f090073

    new-instance v2, Lcom/newspaperdirect/pressreader/android/MyLibrary$7;

    invoke-direct {v2, p0, p1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$7;-><init>(Lcom/newspaperdirect/pressreader/android/MyLibrary;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 362
    const v1, 0x7f09005c

    new-instance v2, Lcom/newspaperdirect/pressreader/android/MyLibrary$8;

    invoke-direct {v2, p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$8;-><init>(Lcom/newspaperdirect/pressreader/android/MyLibrary;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 380
    :goto_0
    return-void

    .line 375
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 376
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 377
    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showNoLayoutTip()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 286
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .local v7, builder:Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .line 289
    .local v12, reader:Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v13, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 290
    .end local v12           #reader:Ljava/io/InputStreamReader;
    .local v13, reader:Ljava/io/InputStreamReader;
    const v0, 0x8000

    :try_start_1
    new-array v6, v0, [C

    .line 292
    .local v6, buffer:[C
    :goto_0
    invoke-virtual {v13, v6}, Ljava/io/InputStreamReader;->read([C)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .local v8, count:I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_1

    .line 300
    if-eqz v13, :cond_3

    :try_start_2
    invoke-virtual {v13}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v12, v13

    .line 302
    .end local v6           #buffer:[C
    .end local v8           #count:I
    .end local v13           #reader:Ljava/io/InputStreamReader;
    .restart local v12       #reader:Ljava/io/InputStreamReader;
    :cond_0
    :goto_1
    new-instance v11, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>(Ljava/lang/Object;)V

    .line 303
    .local v11, flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 304
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030013

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 305
    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 306
    const v1, 0x7f09005e

    new-instance v2, Lcom/newspaperdirect/pressreader/android/MyLibrary$5;

    invoke-direct {v2, p0, v11}, Lcom/newspaperdirect/pressreader/android/MyLibrary$5;-><init>(Lcom/newspaperdirect/pressreader/android/MyLibrary;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v9

    .line 317
    .local v9, dlg:Landroid/app/AlertDialog;
    const v0, 0x7f0c0043

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void

    .line 293
    .end local v9           #dlg:Landroid/app/AlertDialog;
    .end local v11           #flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    .end local v12           #reader:Ljava/io/InputStreamReader;
    .restart local v6       #buffer:[C
    .restart local v8       #count:I
    .restart local v13       #reader:Ljava/io/InputStreamReader;
    :cond_1
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {v7, v6, v0, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 296
    .end local v6           #buffer:[C
    .end local v8           #count:I
    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v12, v13

    .line 297
    .end local v13           #reader:Ljava/io/InputStreamReader;
    .local v10, e:Ljava/lang/Exception;
    .restart local v12       #reader:Ljava/io/InputStreamReader;
    :goto_2
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 300
    if-eqz v12, :cond_0

    :try_start_5
    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    .line 299
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 300
    :goto_3
    if-eqz v12, :cond_2

    :try_start_6
    invoke-virtual {v12}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 301
    :cond_2
    :goto_4
    throw v0

    .line 300
    .end local v12           #reader:Ljava/io/InputStreamReader;
    .restart local v6       #buffer:[C
    .restart local v8       #count:I
    .restart local v13       #reader:Ljava/io/InputStreamReader;
    :catch_2
    move-exception v0

    move-object v12, v13

    .end local v13           #reader:Ljava/io/InputStreamReader;
    .restart local v12       #reader:Ljava/io/InputStreamReader;
    goto :goto_1

    .end local v6           #buffer:[C
    .end local v8           #count:I
    :catch_3
    move-exception v1

    goto :goto_4

    .line 299
    .end local v12           #reader:Ljava/io/InputStreamReader;
    .restart local v13       #reader:Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v0

    move-object v12, v13

    .end local v13           #reader:Ljava/io/InputStreamReader;
    .restart local v12       #reader:Ljava/io/InputStreamReader;
    goto :goto_3

    .line 296
    :catch_4
    move-exception v0

    move-object v10, v0

    goto :goto_2

    .end local v12           #reader:Ljava/io/InputStreamReader;
    .restart local v6       #buffer:[C
    .restart local v8       #count:I
    .restart local v13       #reader:Ljava/io/InputStreamReader;
    :cond_3
    move-object v12, v13

    .end local v13           #reader:Ljava/io/InputStreamReader;
    .restart local v12       #reader:Ljava/io/InputStreamReader;
    goto :goto_1
.end method

.method private updateTBPanel()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 383
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->categoriestoolbar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->newspapertoolbar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->filtertoolbar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->subtitle:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->isSmartEdition()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 387
    return-void

    .line 386
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 272
    packed-switch p1, :pswitch_data_0

    .line 279
    :goto_0
    return-void

    .line 274
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 276
    :pswitch_1
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getCurrent()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->showConsistencyCheckFailedDialog(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 274
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 206
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 225
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    .line 227
    .end local p0
    :goto_0
    return v3

    .line 208
    .restart local p0
    :pswitch_0
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->getMyLibraryListAdapter()Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    move-result-object v4

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v3

    check-cast v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v3, v3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v4, v3}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->getItem(I)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v1

    .line 209
    .local v1, mlitem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->isSemiReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->setAsCurrent()V

    .line 211
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 212
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "NewspaperView.DisableNoLayoutTip"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 213
    .local v0, disableTip:Z
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->checkFilesConsistency()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->showConsistencyCheckFailedDialog(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    .end local v0           #disableTip:Z
    .end local v1           #mlitem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    .end local p0
    :cond_0
    :goto_1
    move v3, v5

    .line 227
    goto :goto_0

    .line 214
    .restart local v0       #disableTip:Z
    .restart local v1       #mlitem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .restart local v2       #prefs:Landroid/content/SharedPreferences;
    .restart local p0
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getEnableSmart()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->hasLayout()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->checkLayoutFileConsistency()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->showNoLayoutTip()V

    goto :goto_1

    .line 215
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3, v5}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 219
    .end local v0           #disableTip:Z
    .end local v1           #mlitem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :pswitch_1
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->getMyLibraryListAdapter()Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v4, p0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->deleteItem(I)V

    goto :goto_1

    .line 222
    .restart local p0
    :pswitch_2
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->getMyLibraryListAdapter()Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->deleteAllItems()V

    goto :goto_1

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c009b
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 91
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/AppInitHelper;->init(Landroid/app/Activity;)V

    .line 93
    new-instance v2, Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;

    invoke-direct {v2, p0, v5}, Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;-><init>(Lcom/newspaperdirect/pressreader/android/MyLibrary;Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;)V

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->mHandler:Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;

    .line 94
    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->getParent()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->mDownloadServiceHelper:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

    .line 95
    new-instance v2, Lcom/newspaperdirect/pressreader/android/MyLibrary$OnDownloadProgressListener;

    invoke-direct {v2, p0, v5}, Lcom/newspaperdirect/pressreader/android/MyLibrary$OnDownloadProgressListener;-><init>(Lcom/newspaperdirect/pressreader/android/MyLibrary;Lcom/newspaperdirect/pressreader/android/MyLibrary$OnDownloadProgressListener;)V

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->mOnDownloadProgressListener:Lcom/newspaperdirect/pressreader/android/MyLibrary$OnDownloadProgressListener;

    .line 96
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->mDownloadServiceHelper:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->mOnDownloadProgressListener:Lcom/newspaperdirect/pressreader/android/MyLibrary$OnDownloadProgressListener;

    invoke-virtual {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->setOnDownloadProgressListener(Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper$OnDownloadProgressListener;)V

    .line 97
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->mDownloadServiceHelper:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->bindService()V

    .line 99
    const v2, 0x7f03000c

    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->setContentView(I)V

    .line 100
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 101
    .local v1, progressBar:Landroid/widget/ProgressBar;
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 102
    new-instance v2, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    invoke-direct {v2, p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;-><init>(Lcom/newspaperdirect/pressreader/android/MyLibrary;)V

    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->registerForContextMenu(Landroid/view/View;)V

    .line 105
    const v2, 0x7f0c0024

    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->mLoadingView:Landroid/view/View;

    .line 106
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->getParent()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0020

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->categoriestoolbar:Landroid/view/View;

    .line 107
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->getParent()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0021

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->newspapertoolbar:Landroid/view/View;

    .line 108
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->getParent()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0022

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->filtertoolbar:Landroid/view/View;

    .line 110
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->getParent()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0023

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->subtitle:Landroid/widget/LinearLayout;

    .line 111
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->subtitle:Landroid/widget/LinearLayout;

    const v3, 0x7f0c002d

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 112
    .local v0, btn:Landroid/widget/Button;
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->getMyLibraryListAdapter()Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->getCurrentSortBy()I

    move-result v2

    if-nez v2, :cond_0

    .line 113
    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->mActiveSortButton:Landroid/widget/Button;

    .line 114
    :cond_0
    new-instance v2, Lcom/newspaperdirect/pressreader/android/MyLibrary$1;

    invoke-direct {v2, p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$1;-><init>(Lcom/newspaperdirect/pressreader/android/MyLibrary;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->subtitle:Landroid/widget/LinearLayout;

    const v3, 0x7f0c002e

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #btn:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 123
    .restart local v0       #btn:Landroid/widget/Button;
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->getMyLibraryListAdapter()Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->getCurrentSortBy()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 124
    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->mActiveSortButton:Landroid/widget/Button;

    .line 125
    :cond_1
    new-instance v2, Lcom/newspaperdirect/pressreader/android/MyLibrary$2;

    invoke-direct {v2, p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$2;-><init>(Lcom/newspaperdirect/pressreader/android/MyLibrary;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->mActiveSortButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setSelected(Z)V

    .line 136
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 197
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 198
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->getMyLibraryListAdapter()Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    move-result-object v1

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->getItem(I)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v0

    .line 199
    .local v0, mlitem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0b0001

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 200
    const v1, 0x7f0c009b

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->isSemiReady()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 201
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 202
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 174
    const/4 v0, 0x1

    const v1, 0x7f09004e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 175
    const v1, 0x7f02003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 176
    const/4 v0, 0x2

    const v1, 0x7f090086

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 177
    const v1, 0x7f020044

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 178
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 141
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->removeOnItemsListUpdatedListener()V

    .line 142
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->mHandler:Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;->removeMessages(I)V

    .line 143
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->mDownloadServiceHelper:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->removeOnDownloadProgressListener()V

    .line 144
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->mDownloadServiceHelper:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->removeOnDownloadCompleteListener()V

    .line 145
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->mDownloadServiceHelper:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;->unbindService()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->mDownloadServiceHelper:Lcom/newspaperdirect/pressreader/android/core/DownloadServiceHelper;

    .line 147
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 234
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 235
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->getMyLibraryListAdapter()Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->getItem(I)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v1

    .line 237
    .local v1, item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 238
    .local v3, prefs:Landroid/content/SharedPreferences;
    const-string v4, "NewspaperView.DisableNoLayoutTip"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 239
    .local v0, disableTip:Z
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->isSemiReady()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 240
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->isAdvice()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 242
    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;

    invoke-direct {v2}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;-><init>()V

    .line 243
    .local v2, orderHelper:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;
    invoke-virtual {v2, p0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->setActivity(Landroid/app/Activity;)V

    .line 244
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getIssueId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->setIssue(Ljava/lang/String;)V

    .line 245
    new-instance v4, Lcom/newspaperdirect/pressreader/android/MyLibrary$3;

    invoke-direct {v4, p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$3;-><init>(Lcom/newspaperdirect/pressreader/android/MyLibrary;)V

    invoke-virtual {v2, v4}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->setOrderCompleteListener(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;)V

    .line 252
    new-instance v4, Lcom/newspaperdirect/pressreader/android/MyLibrary$4;

    invoke-direct {v4, p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary$4;-><init>(Lcom/newspaperdirect/pressreader/android/MyLibrary;)V

    invoke-virtual {v2, v4}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->setAuthorizationListener(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnAuthorizationListener;)V

    .line 260
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->adviseOrder(Ljava/lang/String;)V

    goto :goto_0

    .line 262
    .end local v2           #orderHelper:Lcom/newspaperdirect/pressreader/android/core/OrderHelper;
    :cond_2
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->setAsCurrent()V

    .line 263
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->checkFilesConsistency()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->showConsistencyCheckFailedDialog(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    goto :goto_0

    .line 264
    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getEnableSmart()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->hasLayout()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->checkLayoutFileConsistency()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->showNoLayoutTip()V

    goto :goto_0

    .line 265
    :cond_4
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/newspaperdirect/pressreader/android/NewspaperView;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 183
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/app/TabActivity;

    invoke-virtual {v1}, Landroid/app/TabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    .line 184
    .local v0, tabHost:Landroid/widget/TabHost;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 192
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 186
    :pswitch_0
    const-string v1, "store"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    move v1, v2

    .line 187
    goto :goto_0

    .line 189
    :pswitch_1
    const-string v1, "settings"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    move v1, v2

    .line 190
    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 169
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->removeOnItemsListUpdatedListener()V

    .line 170
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 151
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 153
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 154
    .local v0, mgr:Landroid/app/NotificationManager;
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 156
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->updateTBPanel()V

    .line 157
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->getMyLibraryListAdapter()Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->updateItemsList()V

    .line 158
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;->isNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/MyLibrary;->getMyLibraryListAdapter()Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/MyLibrary$MyLibraryListAdapter;->refreshList()V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/MyLibrary;->mHandler:Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v4, v2, v3}, Lcom/newspaperdirect/pressreader/android/MyLibrary$NetworkConnectionCheckerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
