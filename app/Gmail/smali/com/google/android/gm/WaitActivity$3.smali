.class Lcom/google/android/gm/WaitActivity$3;
.super Ljava/lang/Object;
.source "WaitActivity.java"

# interfaces
.implements Lcom/google/android/gm/AccountHelper$AccountResultsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/WaitActivity;->waitForLabels(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/WaitActivity;

.field final synthetic val$actionBarView:Lcom/google/android/gm/TwoPaneActionBar;


# direct methods
.method constructor <init>(Lcom/google/android/gm/WaitActivity;Lcom/google/android/gm/TwoPaneActionBar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/google/android/gm/WaitActivity$3;->this$0:Lcom/google/android/gm/WaitActivity;

    iput-object p2, p0, Lcom/google/android/gm/WaitActivity$3;->val$actionBarView:Lcom/google/android/gm/TwoPaneActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exec([Landroid/accounts/Account;)V
    .locals 6
    .parameter "accounts"

    .prologue
    .line 325
    invoke-static {}, Lcom/google/android/gm/WaitActivity;->access$300()Landroid/accounts/Account;

    move-result-object v1

    .line 326
    .local v1, currentAccount:Landroid/accounts/Account;
    const/4 v2, 0x0

    .line 328
    .local v2, currentAccountValidated:Z
    array-length v4, p1

    new-array v0, v4, [Ljava/lang/String;

    .line 329
    .local v0, accountNames:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    .line 330
    aget-object v4, p1, v3

    invoke-virtual {v1, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 331
    const/4 v2, 0x1

    .line 333
    :cond_0
    aget-object v4, p1, v3

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v0, v3

    .line 329
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 335
    :cond_1
    iget-object v4, p0, Lcom/google/android/gm/WaitActivity$3;->val$actionBarView:Lcom/google/android/gm/TwoPaneActionBar;

    iget-object v5, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lcom/google/android/gm/TwoPaneActionBar;->updateActionBar([Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    if-nez v2, :cond_2

    .line 340
    iget-object v4, p0, Lcom/google/android/gm/WaitActivity$3;->this$0:Lcom/google/android/gm/WaitActivity;

    invoke-static {v4}, Lcom/google/android/gm/WaitActivity;->access$400(Lcom/google/android/gm/WaitActivity;)V

    .line 342
    :cond_2
    return-void
.end method
