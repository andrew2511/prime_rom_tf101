.class public final Lcom/android/asus/modemupdate/BatteryLowAlertDialog;
.super Lcom/android/asus/modemupdate/AlertDialog;
.source "BatteryLowAlertDialog.java"


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
    const-string v0, "BatteryLowAlertDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BatteryLowAlertDialog] onClick is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    packed-switch p2, :pswitch_data_0

    .line 49
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/asus/modemupdate/BatteryLowAlertDialog;->finish()V

    .line 50
    return-void

    .line 41
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 19
    const-string v0, "BatteryLowAlertDialog"

    const-string v1, "BatteryLowAlertDialog onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-super {p0, p1}, Lcom/android/asus/modemupdate/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 23
    iget-object v0, p0, Lcom/android/asus/modemupdate/BatteryLowAlertDialog;->ap:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f04000a

    invoke-virtual {p0, v1}, Lcom/android/asus/modemupdate/BatteryLowAlertDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 26
    iget-object v0, p0, Lcom/android/asus/modemupdate/BatteryLowAlertDialog;->ap:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 29
    iget-object v0, p0, Lcom/android/asus/modemupdate/BatteryLowAlertDialog;->ap:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f040005

    invoke-virtual {p0, v1}, Lcom/android/asus/modemupdate/BatteryLowAlertDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 30
    iget-object v0, p0, Lcom/android/asus/modemupdate/BatteryLowAlertDialog;->ap:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f040007

    invoke-virtual {p0, v1}, Lcom/android/asus/modemupdate/BatteryLowAlertDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 31
    iget-object v0, p0, Lcom/android/asus/modemupdate/BatteryLowAlertDialog;->ap:Lcom/android/internal/app/AlertController$AlertParams;

    const v1, 0x7f020001

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 33
    invoke-virtual {p0}, Lcom/android/asus/modemupdate/BatteryLowAlertDialog;->setupAlert()V

    .line 34
    return-void
.end method
