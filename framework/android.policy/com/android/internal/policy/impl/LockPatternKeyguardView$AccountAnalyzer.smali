.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;
.super Ljava/lang/Object;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountAnalyzer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountIndex:I

.field private final mAccountManager:Landroid/accounts/AccountManager;

.field private final mAccounts:[Landroid/accounts/Account;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/accounts/AccountManager;)V
    .registers 4
    .parameter
    .parameter "accountManager"

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    .line 354
    const-string v0, "com.google"

    invoke-virtual {p2, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    .line 355
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/accounts/AccountManager;Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 347
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;-><init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/accounts/AccountManager;)V

    return-void
.end method

.method private next()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 360
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountIndex:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    array-length v1, v1

    if-lt v0, v1, :cond_3c

    .line 361
    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_20

    .line 362
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "no unlock screen when trying to enable fallback"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_1f
    :goto_1f
    return-void

    .line 363
    :cond_20
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/impl/PatternUnlockScreen;

    if-eqz v0, :cond_1f

    .line 364
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreen:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/PatternUnlockScreen;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setEnableFallback(Z)V

    goto :goto_1f

    .line 370
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccounts:[Landroid/accounts/Account;

    iget v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountIndex:I

    aget-object v1, v1, v3

    move-object v3, v2

    move-object v4, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_1f
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 382
    .local v0, result:Landroid/os/Bundle;
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 383
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$602(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_3f
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_14} :catch_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_29
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_14} :catch_34

    .line 392
    :cond_14
    iget v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountIndex:I

    .line 393
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->next()V

    .line 395
    .end local v0           #result:Landroid/os/Bundle;
    :goto_1d
    return-void

    .line 385
    :catch_1e
    move-exception v1

    .line 392
    iget v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountIndex:I

    .line 393
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->next()V

    goto :goto_1d

    .line 387
    :catch_29
    move-exception v1

    .line 392
    iget v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountIndex:I

    .line 393
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->next()V

    goto :goto_1d

    .line 389
    :catch_34
    move-exception v1

    .line 392
    iget v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountIndex:I

    .line 393
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->next()V

    goto :goto_1d

    .line 392
    :catchall_3f
    move-exception v1

    iget v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountIndex:I

    .line 393
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->next()V

    throw v1
.end method

.method public start()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 374
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$602(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 375
    iput v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->mAccountIndex:I

    .line 376
    invoke-direct {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$AccountAnalyzer;->next()V

    .line 377
    return-void
.end method
