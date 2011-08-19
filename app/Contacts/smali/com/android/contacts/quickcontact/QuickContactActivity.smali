.class public final Lcom/android/contacts/quickcontact/QuickContactActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "QuickContactActivity.java"

# interfaces
.implements Lcom/android/contacts/quickcontact/QuickContactWindow$OnDismissListener;


# instance fields
.field private mQuickContact:Lcom/android/contacts/quickcontact/QuickContactWindow;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->finish()V

    .line 89
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 104
    return-void
.end method

.method public onDismiss(Lcom/android/contacts/quickcontact/QuickContactWindow;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->finish()V

    .line 120
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 61
    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mQuickContact:Lcom/android/contacts/quickcontact/QuickContactWindow;

    if-eqz v7, :cond_0

    .line 63
    :cond_0
    new-instance v7, Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-direct {v7, p0, p0}, Lcom/android/contacts/quickcontact/QuickContactWindow;-><init>(Landroid/content/Context;Lcom/android/contacts/quickcontact/QuickContactWindow$OnDismissListener;)V

    iput-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mQuickContact:Lcom/android/contacts/quickcontact/QuickContactWindow;

    .line 67
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 69
    .local v2, lookupUri:Landroid/net/Uri;
    const-string v7, "contacts"

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 70
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 71
    .local v4, rawContactId:J
    invoke-virtual {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 74
    .end local v4           #rawContactId:J
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 77
    .local v1, extras:Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 78
    .local v6, target:Landroid/graphics/Rect;
    const-string v7, "mode"

    const/4 v8, 0x2

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 79
    .local v3, mode:I
    const-string v7, "exclude_mimes"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, excludeMimes:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mQuickContact:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-virtual {v7, v2, v6, v3, v0}, Lcom/android/contacts/quickcontact/QuickContactWindow;->show(Landroid/net/Uri;Landroid/graphics/Rect;I[Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    .line 97
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mQuickContact:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/QuickContactWindow;->dismiss()V

    .line 98
    return-void
.end method
