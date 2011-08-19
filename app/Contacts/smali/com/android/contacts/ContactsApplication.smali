.class public final Lcom/android/contacts/ContactsApplication;
.super Landroid/app/Application;
.source "ContactsApplication.java"


# static fields
.field private static sInjectedServices:Lcom/android/contacts/test/InjectedServices;


# instance fields
.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getInjectedServices()Lcom/android/contacts/test/InjectedServices;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    return-object v0
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .prologue
    .line 49
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    if-eqz v1, :cond_0

    .line 50
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    invoke-virtual {v1}, Lcom/android/contacts/test/InjectedServices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 51
    .local v0, resolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 55
    .end local v0           #resolver:Landroid/content/ContentResolver;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    goto :goto_0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "name"
    .parameter "mode"

    .prologue
    .line 60
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    if-eqz v1, :cond_0

    .line 61
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    invoke-virtual {v1}, Lcom/android/contacts/test/InjectedServices;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 62
    .local v0, prefs:Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 67
    .end local v0           #prefs:Landroid/content/SharedPreferences;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"

    .prologue
    .line 72
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    if-eqz v1, :cond_0

    .line 73
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    invoke-virtual {v1, p1}, Lcom/android/contacts/test/InjectedServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    .local v0, service:Ljava/lang/Object;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 94
    .end local v0           #service:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 79
    :cond_0
    const-string v1, "contactAccountTypes"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    if-nez v1, :cond_1

    .line 81
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->createAccountTypeManager(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactsApplication;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 83
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    goto :goto_0

    .line 86
    :cond_2
    const-string v1, "contactPhotos"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    if-nez v1, :cond_3

    .line 88
    invoke-static {p0}, Lcom/android/contacts/ContactPhotoManager;->createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 89
    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/android/contacts/ContactPhotoManager;->preloadPhotosInBackground()V

    .line 91
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    goto :goto_0

    .line 94
    :cond_4
    invoke-super {p0, p1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 102
    invoke-virtual {p0}, Lcom/android/contacts/ContactsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 104
    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    .line 105
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/app/LoaderManager;->enableDebugLogging(Z)V

    .line 107
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 109
    return-void
.end method
