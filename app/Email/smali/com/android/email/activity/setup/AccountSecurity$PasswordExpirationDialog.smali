.class public Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;
.super Landroid/app/DialogFragment;
.source "AccountSecurity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSecurity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PasswordExpirationDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 336
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Z)Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;
    .locals 3
    .parameter "accountName"
    .parameter "expired"

    .prologue
    .line 345
    new-instance v1, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;

    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;-><init>()V

    .line 346
    .local v1, dialog:Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 347
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "account_name"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string v2, "expired"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 349
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 350
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->dismiss()V

    .line 381
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSecurity;

    .line 382
    .local v0, activity:Lcom/android/email/activity/setup/AccountSecurity;
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 383
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSecurity;->startActivity(Landroid/content/Intent;)V

    .line 386
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    .line 387
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "account_name"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, accountName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "expired"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 360
    .local v4, expired:Z
    if-eqz v4, :cond_0

    const v7, 0x7f080127

    move v6, v7

    .line 363
    .local v6, titleId:I
    :goto_0
    if-eqz v4, :cond_1

    const v7, 0x7f080128

    move v2, v7

    .line 367
    .local v2, contentId:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$PasswordExpirationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 368
    .local v3, context:Landroid/content/Context;
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 369
    .local v5, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 370
    .local v1, b:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 371
    const v7, 0x1010355

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 372
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v5, v2, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 373
    const v7, 0x7f08001f

    invoke-virtual {v1, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 374
    const v7, 0x7f080020

    invoke-virtual {v1, v7, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 375
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    return-object v7

    .line 360
    .end local v1           #b:Landroid/app/AlertDialog$Builder;
    .end local v2           #contentId:I
    .end local v3           #context:Landroid/content/Context;
    .end local v5           #res:Landroid/content/res/Resources;
    .end local v6           #titleId:I
    :cond_0
    const v7, 0x7f080125

    move v6, v7

    goto :goto_0

    .line 363
    .restart local v6       #titleId:I
    :cond_1
    const v7, 0x7f080126

    move v2, v7

    goto :goto_1
.end method
