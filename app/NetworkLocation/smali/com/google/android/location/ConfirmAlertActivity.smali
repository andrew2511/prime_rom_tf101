.class public Lcom/google/android/location/ConfirmAlertActivity;
.super Landroid/app/Activity;
.source "ConfirmAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAgreed:Z

.field private mDialog:Landroid/app/Dialog;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/ConfirmAlertActivity;->mAgreed:Z

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/location/ConfirmAlertActivity;->mDialog:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 67
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/location/ConfirmAlertActivity;->mAgreed:Z

    .line 68
    invoke-virtual {p0}, Lcom/google/android/location/ConfirmAlertActivity;->finish()V

    .line 69
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/ConfirmAlertActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 43
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 45
    const v1, 0x7f020001

    invoke-virtual {p0, v1}, Lcom/google/android/location/ConfirmAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 46
    const v1, 0x7f020002

    invoke-virtual {p0, v1}, Lcom/google/android/location/ConfirmAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 47
    const v1, 0x7f020003

    invoke-virtual {p0, v1}, Lcom/google/android/location/ConfirmAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 48
    const v1, 0x7f020004

    invoke-virtual {p0, v1}, Lcom/google/android/location/ConfirmAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 49
    new-instance v1, Lcom/google/android/location/ConfirmAlertActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/location/ConfirmAlertActivity$1;-><init>(Lcom/google/android/location/ConfirmAlertActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 56
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/ConfirmAlertActivity;->mDialog:Landroid/app/Dialog;

    .line 57
    iget-object v1, p0, Lcom/google/android/location/ConfirmAlertActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 58
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 63
    sget-object v0, Lcom/google/android/location/NetworkLocationProvider;->sInstance:Lcom/google/android/location/NetworkLocationProvider;

    iget-boolean v1, p0, Lcom/google/android/location/ConfirmAlertActivity;->mAgreed:Z

    invoke-virtual {v0, v1}, Lcom/google/android/location/NetworkLocationProvider;->userConfirmedEnable(Z)V

    .line 64
    return-void
.end method
