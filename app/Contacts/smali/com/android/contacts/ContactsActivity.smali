.class public abstract Lcom/android/contacts/ContactsActivity;
.super Landroid/app/Activity;
.source "ContactsActivity.java"

# interfaces
.implements Lcom/android/contacts/ContactSaveService$Listener;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .prologue
    .line 38
    iget-object v1, p0, Lcom/android/contacts/ContactsActivity;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_1

    .line 39
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInjectedServices()Lcom/android/contacts/test/InjectedServices;

    move-result-object v0

    .line 40
    .local v0, services:Lcom/android/contacts/test/InjectedServices;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/android/contacts/test/InjectedServices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactsActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/ContactsActivity;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v1, :cond_1

    .line 44
    invoke-super {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactsActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 47
    .end local v0           #services:Lcom/android/contacts/test/InjectedServices;
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/ContactsActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v1
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 3
    .parameter "name"
    .parameter "mode"

    .prologue
    .line 52
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInjectedServices()Lcom/android/contacts/test/InjectedServices;

    move-result-object v1

    .line 53
    .local v1, services:Lcom/android/contacts/test/InjectedServices;
    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v1}, Lcom/android/contacts/test/InjectedServices;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 55
    .local v0, prefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 60
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :goto_0
    return-object v2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    .local v0, service:Ljava/lang/Object;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 70
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-static {p0}, Lcom/android/contacts/ContactSaveService;->registerListener(Lcom/android/contacts/ContactSaveService$Listener;)V

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 81
    invoke-static {p0}, Lcom/android/contacts/ContactSaveService;->unregisterListener(Lcom/android/contacts/ContactSaveService$Listener;)V

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 83
    return-void
.end method

.method public onServiceCompleted(Landroid/content/Intent;)V
    .locals 0
    .parameter "callbackIntent"

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 88
    return-void
.end method
