.class public Lcom/android/providers/contacts/PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageIntentReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 36
    .local v2, packageUri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.android.contacts"

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 39
    .local v0, iprovider:Landroid/content/IContentProvider;
    invoke-static {v0}, Landroid/content/ContentProvider;->coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;

    move-result-object v3

    .line 40
    .local v3, provider:Landroid/content/ContentProvider;
    instance-of v4, v3, Lcom/android/providers/contacts/ContactsProvider2;

    if-eqz v4, :cond_0

    .line 41
    check-cast v3, Lcom/android/providers/contacts/ContactsProvider2;

    .end local v3           #provider:Landroid/content/ContentProvider;
    invoke-virtual {v3, v1}, Lcom/android/providers/contacts/ContactsProvider2;->onPackageChanged(Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method
