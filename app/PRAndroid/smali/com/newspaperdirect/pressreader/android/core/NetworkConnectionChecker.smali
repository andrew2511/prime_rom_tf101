.class public Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;
.super Lcom/newspaperdirect/pressreader/android/core/BaseChecker;
.source "NetworkConnectionChecker.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;-><init>(Landroid/app/Activity;)V

    .line 15
    return-void
.end method

.method public static isNetworkAvailable()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 52
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    .local v0, ctx:Landroid/content/Context;
    if-nez v0, :cond_0

    move v4, v6

    .line 65
    :goto_0
    return v4

    .line 54
    :cond_0
    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 55
    .local v3, mgr:Landroid/net/ConnectivityManager;
    if-nez v3, :cond_1

    move v4, v6

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 58
    .local v2, info:[Landroid/net/NetworkInfo;
    if-nez v2, :cond_2

    move v4, v6

    goto :goto_0

    .line 59
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v2

    if-lt v1, v4, :cond_3

    move v4, v6

    .line 65
    goto :goto_0

    .line 60
    :cond_3
    aget-object v4, v2, v1

    if-nez v4, :cond_5

    .line 59
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 61
    :cond_5
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_4

    .line 62
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public check()V
    .locals 4

    .prologue
    .line 17
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>(Ljava/lang/Object;)V

    .line 18
    .local v0, flag:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;->isNetworkAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 19
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 20
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;->mNegativeResultMessage:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;->mActivity:Landroid/app/Activity;

    const v3, 0x7f09001c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 21
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 22
    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker$1;

    invoke-direct {v2, p0, v0}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;->mActivity:Landroid/app/Activity;

    const v3, 0x7f090060

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker$2;

    invoke-direct {v3, p0, v0}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker$2;-><init>(Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 38
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;->mActivity:Landroid/app/Activity;

    const v3, 0x7f09005c

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker$3;

    invoke-direct {v3, p0, v0}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker$3;-><init>(Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 49
    :goto_1
    return-void

    .line 20
    :cond_0
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;->mNegativeResultMessage:Ljava/lang/String;

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;->ok()V

    goto :goto_1
.end method
