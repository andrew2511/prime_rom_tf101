.class public final Lcom/android/asus/modemupdate/UpdateAlertDialog;
.super Lcom/android/asus/modemupdate/AlertDialog;
.source "UpdateAlertDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/android/asus/modemupdate/AlertDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 38
    const-string v0, "UpdateAlertDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UpdateAlertDialog] onClick is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    packed-switch p2, :pswitch_data_0

    .line 53
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/asus/modemupdate/UpdateAlertDialog;->finish()V

    .line 54
    return-void

    .line 43
    :pswitch_1
    iget-object v0, p0, Lcom/android/asus/modemupdate/UpdateAlertDialog;->mService:Lcom/android/asus/modemupdate/ModemUpdateService;

    invoke-virtual {v0}, Lcom/android/asus/modemupdate/ModemUpdateService;->isAllow()V

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 19
    const-string v0, "UpdateAlertDialog"

    const-string v1, "UpdateAlertDialog onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-super {p0, p1}, Lcom/android/asus/modemupdate/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 23
    iget-object v0, p0, Lcom/android/asus/modemupdate/UpdateAlertDialog;->ap:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f040008

    invoke-virtual {p0, v1}, Lcom/android/asus/modemupdate/UpdateAlertDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 24
    iget-object v0, p0, Lcom/android/asus/modemupdate/UpdateAlertDialog;->ap:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f040009

    invoke-virtual {p0, v1}, Lcom/android/asus/modemupdate/UpdateAlertDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 26
    iget-object v0, p0, Lcom/android/asus/modemupdate/UpdateAlertDialog;->ap:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 27
    iget-object v0, p0, Lcom/android/asus/modemupdate/UpdateAlertDialog;->ap:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 29
    iget-object v0, p0, Lcom/android/asus/modemupdate/UpdateAlertDialog;->ap:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f040003

    invoke-virtual {p0, v1}, Lcom/android/asus/modemupdate/UpdateAlertDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 30
    iget-object v0, p0, Lcom/android/asus/modemupdate/UpdateAlertDialog;->ap:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f040002

    invoke-virtual {p0, v1}, Lcom/android/asus/modemupdate/UpdateAlertDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 31
    iget-object v0, p0, Lcom/android/asus/modemupdate/UpdateAlertDialog;->ap:Lcom/android/internal/app/AlertController$AlertParams;

    const/high16 v1, 0x7f02

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 33
    invoke-virtual {p0}, Lcom/android/asus/modemupdate/UpdateAlertDialog;->setupAlert()V

    .line 34
    return-void
.end method
