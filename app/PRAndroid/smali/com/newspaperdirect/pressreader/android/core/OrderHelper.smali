.class public Lcom/newspaperdirect/pressreader/android/core/OrderHelper;
.super Ljava/lang/Object;
.source "OrderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnAuthorizationListener;,
        Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;,
        Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OrderHelper"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mOnAuthorizationListener:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnAuthorizationListener;

.field private mOnOrderCompleteListener:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;

.field private mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

.field private processing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    invoke-direct {v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;Landroid/app/Activity;Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnAuthorizationListener;)V
    .locals 0
    .parameter "result"
    .parameter "activity"
    .parameter "orderListener"
    .parameter "authorizationListener"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    .line 46
    iput-object p2, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mActivity:Landroid/app/Activity;

    .line 47
    iput-object p3, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mOnOrderCompleteListener:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;

    .line 48
    iput-object p4, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mOnAuthorizationListener:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnAuthorizationListener;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->processing:Z

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mOnOrderCompleteListener:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->processOrder(Z)V

    return-void
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    return-object v0
.end method

.method static synthetic access$5(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnAuthorizationListener;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mOnAuthorizationListener:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnAuthorizationListener;

    return-object v0
.end method

.method static synthetic access$6(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 400
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->showPurchaseConfirmationRequiredDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)Z
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->processing:Z

    return v0
.end method

.method static synthetic access$8(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->processAdditionalPurchase()V

    return-void
.end method

.method private processAdditionalPurchase()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 428
    const/4 v2, 0x1

    .line 430
    .local v2, successful:Z
    :try_start_0
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mActivity:Landroid/app/Activity;

    const v4, 0x7f09002b

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>(Ljava/lang/Object;)V

    .line 431
    .local v1, message:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    iget-object v3, v3, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->cid:Ljava/lang/String;

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    iget-object v4, v4, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->selectedDate:Ljava/util/Date;

    invoke-static {v3, v4, v1}, Lcom/newspaperdirect/pressreader/android/core/PRRequests;->requestConfirmedBackIssue(Ljava/lang/String;Ljava/util/Date;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 432
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 433
    const v4, 0x7f090018

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 434
    iget-object v3, v1, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 435
    const v4, 0x7f09005e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 436
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    const/4 v2, 0x0

    .line 450
    :cond_0
    iput-boolean v6, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->processing:Z

    .line 452
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mOnOrderCompleteListener:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;

    if-eqz v3, :cond_1

    .line 453
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mOnOrderCompleteListener:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;

    invoke-interface {v3, v2}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;->onOrderComplete(Z)V

    .line 455
    .end local v1           #message:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 441
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 442
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 443
    const v4, 0x7f090010

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 444
    const v4, 0x7f09002d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 445
    const v4, 0x7f09005e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 446
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    const/4 v2, 0x0

    .line 450
    iput-boolean v6, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->processing:Z

    .line 452
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mOnOrderCompleteListener:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;

    if-eqz v3, :cond_1

    .line 453
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mOnOrderCompleteListener:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;

    invoke-interface {v3, v2}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;->onOrderComplete(Z)V

    goto :goto_0

    .line 449
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 450
    iput-boolean v6, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->processing:Z

    .line 452
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mOnOrderCompleteListener:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;

    if-eqz v4, :cond_2

    .line 453
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mOnOrderCompleteListener:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;

    invoke-interface {v4, v2}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;->onOrderComplete(Z)V

    .line 454
    :cond_2
    throw v3
.end method

.method private processOrder(Z)V
    .locals 5
    .parameter "endOfTrial"

    .prologue
    .line 251
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mActivity:Landroid/app/Activity;

    const-string v2, ""

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mActivity:Landroid/app/Activity;

    const v4, 0x7f09000b

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 252
    .local v0, dlg:Landroid/app/ProgressDialog;
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;-><init>(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;Landroid/app/ProgressDialog;Z)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    .line 397
    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 398
    return-void
.end method

.method private showPurchaseConfirmationRequiredDialog(Ljava/lang/String;)V
    .locals 5
    .parameter "message"

    .prologue
    const/4 v4, 0x0

    .line 401
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>(Ljava/lang/Object;)V

    .line 402
    .local v0, flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 403
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x7f09008e

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 404
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 405
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 406
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090062

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$5;

    invoke-direct {v3, p0, v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$5;-><init>(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 414
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x7f09005c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$6;

    invoke-direct {v3, p0, v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$6;-><init>(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 424
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 425
    return-void
.end method


# virtual methods
.method public adviseOrder(Ljava/lang/String;)V
    .locals 8
    .parameter "title"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 82
    iget-boolean v2, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->processing:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iput-boolean v7, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->processing:Z

    .line 84
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>(Ljava/lang/Object;)V

    .line 85
    .local v0, flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "d MMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 86
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mActivity:Landroid/app/Activity;

    const v4, 0x7f09008e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 88
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mActivity:Landroid/app/Activity;

    const v4, 0x7f090004

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 89
    aput-object p1, v4, v6

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    iget-object v5, v5, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->selectedDate:Ljava/util/Date;

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 88
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 90
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 91
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mActivity:Landroid/app/Activity;

    const v4, 0x7f090062

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$1;

    invoke-direct {v4, p0, v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 100
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mActivity:Landroid/app/Activity;

    const v4, 0x7f09005c

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$2;

    invoke-direct {v4, p0, v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$2;-><init>(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 110
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public confirmOrder()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 114
    iget-boolean v1, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->processing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iput-boolean v5, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->processing:Z

    .line 116
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mActivity:Landroid/app/Activity;

    const-string v2, ""

    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mActivity:Landroid/app/Activity;

    const v4, 0x7f09000b

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 117
    .local v0, dlg:Landroid/app/ProgressDialog;
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;

    invoke-direct {v1, p0, v0}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;-><init>(Lcom/newspaperdirect/pressreader/android/core/OrderHelper;Landroid/app/ProgressDialog;)V

    new-array v2, v5, [Ljava/lang/Void;

    const/4 v3, 0x0

    .line 247
    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mActivity:Landroid/app/Activity;

    .line 67
    return-void
.end method

.method public setAuthorizationListener(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnAuthorizationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mOnAuthorizationListener:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnAuthorizationListener;

    .line 79
    return-void
.end method

.method public setIssue(Ljava/lang/String;)V
    .locals 6
    .parameter "issue"

    .prologue
    const/4 v4, 0x4

    .line 52
    const/4 v2, 0x0

    .line 53
    .local v2, issueDate:Ljava/util/Date;
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, cid:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const/4 v4, 0x4

    const/16 v5, 0xc

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 61
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    iput-object v0, v3, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->cid:Ljava/lang/String;

    .line 62
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mResult:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    iput-object v2, v3, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->selectedDate:Ljava/util/Date;

    .line 63
    return-void

    .line 57
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 58
    .local v1, e:Ljava/text/ParseException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid issue format"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setOrderCompleteListener(Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/OrderHelper;->mOnOrderCompleteListener:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;

    .line 75
    return-void
.end method
