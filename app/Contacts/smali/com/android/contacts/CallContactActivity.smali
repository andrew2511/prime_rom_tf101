.class public Lcom/android/contacts/CallContactActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "CallContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mPhoneNumberInteraction:Lcom/android/contacts/interactions/PhoneNumberInteraction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    new-instance v1, Lcom/android/contacts/interactions/PhoneNumberInteraction;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p0}, Lcom/android/contacts/interactions/PhoneNumberInteraction;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnDismissListener;)V

    iput-object v1, p0, Lcom/android/contacts/CallContactActivity;->mPhoneNumberInteraction:Lcom/android/contacts/interactions/PhoneNumberInteraction;

    .line 42
    invoke-virtual {p0}, Lcom/android/contacts/CallContactActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 43
    .local v0, contactUri:Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/android/contacts/CallContactActivity;->finish()V

    .line 49
    :cond_0
    if-eqz p1, :cond_1

    .line 59
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {p0}, Lcom/android/contacts/CallContactActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    iget-object v1, p0, Lcom/android/contacts/CallContactActivity;->mPhoneNumberInteraction:Lcom/android/contacts/interactions/PhoneNumberInteraction;

    invoke-virtual {v1, v0}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->startInteraction(Landroid/net/Uri;)V

    goto :goto_0

    .line 56
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/CallContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/contacts/CallContactActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "args"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/contacts/CallContactActivity;->mPhoneNumberInteraction:Lcom/android/contacts/interactions/PhoneNumberInteraction;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/contacts/CallContactActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/contacts/CallContactActivity;->finish()V

    .line 66
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/contacts/CallContactActivity;->mPhoneNumberInteraction:Lcom/android/contacts/interactions/PhoneNumberInteraction;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/interactions/PhoneNumberInteraction;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)Z

    .line 76
    return-void
.end method
