.class public Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;
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
    name = "SecurityNeededDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;
    .locals 3
    .parameter "accountName"

    .prologue
    .line 288
    new-instance v1, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;

    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;-><init>()V

    .line 289
    .local v1, dialog:Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 290
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "account_name"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;->setArguments(Landroid/os/Bundle;)V

    .line 292
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;->dismiss()V

    .line 313
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSecurity;

    .line 314
    .local v0, activity:Lcom/android/email/activity/setup/AccountSecurity;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSecurity;->access$000(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    if-nez v1, :cond_0

    .line 316
    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    .line 329
    :goto_0
    return-void

    .line 319
    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 324
    :pswitch_0
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSecurity;->access$000(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    invoke-static {v0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSecurity;->access$200(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/emailcommon/provider/EmailContent$Account;Lcom/android/email/SecurityPolicy;)V

    .line 326
    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSecurity;->finish()V

    goto :goto_0

    .line 321
    :pswitch_1
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSecurity;->access$000(Lcom/android/email/activity/setup/AccountSecurity;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSecurity;->access$100(Lcom/android/email/activity/setup/AccountSecurity;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "account_name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, accountName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSecurity$SecurityNeededDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 300
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 301
    .local v3, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 302
    .local v1, b:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f08011a

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 303
    const v4, 0x1010355

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 304
    const v4, 0x7f08011b

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 305
    const v4, 0x7f08001f

    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 306
    const v4, 0x7f080020

    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 307
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
