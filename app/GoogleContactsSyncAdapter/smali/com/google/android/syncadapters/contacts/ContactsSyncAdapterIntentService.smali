.class public Lcom/google/android/syncadapters/contacts/ContactsSyncAdapterIntentService;
.super Landroid/app/IntentService;
.source "ContactsSyncAdapterIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "ContactsSyncAdapterIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapterIntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 34
    .local v1, applicationContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapterService;->getOrMakeContactsSyncAdapter(Landroid/content/Context;)Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;

    move-result-object v2

    .line 36
    .local v2, contactsSyncAdapter:Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;
    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v4, "com.google"

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 38
    .local v0, accounts:[Landroid/accounts/Account;
    invoke-virtual {v2, v0}, Lcom/google/android/syncadapters/contacts/ContactsSyncAdapter;->ensureSpecialGroupsAreCreated([Landroid/accounts/Account;)V

    .line 39
    return-void
.end method
