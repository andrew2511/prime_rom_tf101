.class public Lcom/android/contacts/ContactsSearchManager;
.super Ljava/lang/Object;
.source "ContactsSearchManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildIntent(Landroid/app/Activity;Ljava/lang/String;Lcom/android/contacts/list/ContactsRequest;)Landroid/content/Intent;
    .locals 4
    .parameter "context"
    .parameter "initialQuery"
    .parameter "originalRequest"

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v0, intent:Landroid/content/Intent;
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 60
    const-string v3, "com.android.contacts.action.FILTER_CONTACTS"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 63
    .local v2, originalIntent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 64
    .local v1, originalExtras:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 67
    :cond_0
    const-string v3, "com.android.contacts.extra.FILTER_TEXT"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    if-eqz p2, :cond_1

    .line 69
    const-string v3, "originalRequest"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 71
    :cond_1
    return-object v0
.end method

.method public static startSearch(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "initialQuery"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/contacts/ContactsSearchManager;->buildIntent(Landroid/app/Activity;Ljava/lang/String;Lcom/android/contacts/list/ContactsRequest;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 43
    return-void
.end method

.method public static startSearch(Landroid/app/Activity;Ljava/lang/String;Lcom/android/contacts/list/ContactsRequest;)V
    .locals 1
    .parameter "context"
    .parameter "initialQuery"
    .parameter "originalRequest"

    .prologue
    .line 53
    invoke-static {p0, p1, p2}, Lcom/android/contacts/ContactsSearchManager;->buildIntent(Landroid/app/Activity;Ljava/lang/String;Lcom/android/contacts/list/ContactsRequest;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method

.method public static startSearchForResult(Landroid/app/Activity;Ljava/lang/String;ILcom/android/contacts/list/ContactsRequest;)V
    .locals 1
    .parameter "context"
    .parameter "initialQuery"
    .parameter "requestCode"
    .parameter "originalRequest"

    .prologue
    .line 47
    invoke-static {p0, p1, p3}, Lcom/android/contacts/ContactsSearchManager;->buildIntent(Landroid/app/Activity;Ljava/lang/String;Lcom/android/contacts/list/ContactsRequest;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 49
    return-void
.end method
