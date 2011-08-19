.class public Lcom/google/android/apps/books/service/SetSyncableService;
.super Landroid/app/IntentService;
.source "SetSyncableService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const-string v0, "SetSyncableService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 27
    move-object v2, p0

    .line 28
    .local v2, context:Landroid/content/Context;
    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    .line 32
    .local v5, manager:Landroid/accounts/AccountManager;
    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 33
    .local v0, account:Landroid/accounts/Account;
    const-string v6, "com.google.android.apps.books"

    const/4 v7, 0x1

    invoke-static {v0, v6, v7}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 32
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 35
    .end local v0           #account:Landroid/accounts/Account;
    :cond_0
    return-void
.end method
