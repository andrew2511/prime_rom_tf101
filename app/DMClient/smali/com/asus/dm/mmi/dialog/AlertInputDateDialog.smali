.class public Lcom/asus/dm/mmi/dialog/AlertInputDateDialog;
.super Lcom/asus/dm/mmi/dialog/DMDialog;
.source "AlertInputDateDialog.java"


# static fields
.field private static final DEBUG:Z = true


# instance fields
.field private mDatePicker:Landroid/widget/DatePicker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/asus/dm/mmi/dialog/DMDialog;-><init>()V

    return-void
.end method


# virtual methods
.method customSetupDialog()V
    .locals 5

    .prologue
    .line 28
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 29
    .local v0, clndr:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/AlertInputDateDialog;->mDatePicker:Landroid/widget/DatePicker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 31
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/AlertInputDateDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget-object v2, Lcom/asus/dm/mmi/dialog/AlertInputDateDialog;->mUAPd:Lcom/asus/dm/UIAlertParaDescriptor;

    iget-object v2, v2, Lcom/asus/dm/UIAlertParaDescriptor;->mDialogContent:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 34
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/AlertInputDateDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, p0, Lcom/asus/dm/mmi/dialog/AlertInputDateDialog;->mDatePicker:Landroid/widget/DatePicker;

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 37
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/AlertInputDateDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 38
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/AlertInputDateDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x7f060023

    invoke-virtual {p0, v2}, Lcom/asus/dm/mmi/dialog/AlertInputDateDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 40
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "pDialog"
    .parameter "pWhich"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 43
    packed-switch p2, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 45
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 46
    sget-object v2, Lcom/asus/dm/mmi/dialog/AlertInputDateDialog;->mTimer:Lcom/asus/dm/util/UIAlertDialogTimer;

    invoke-virtual {v2}, Lcom/asus/dm/util/UIAlertDialogTimer;->cancelTimer()V

    .line 49
    const-string v2, "%02d%02d%04d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/asus/dm/mmi/dialog/AlertInputDateDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getMonth()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/asus/dm/mmi/dialog/AlertInputDateDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/asus/dm/mmi/dialog/AlertInputDateDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v5}, Landroid/widget/DatePicker;->getYear()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, result:Ljava/lang/String;
    invoke-static {p0, v1, v6}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 54
    :try_start_0
    iget-object v2, p0, Lcom/asus/dm/mmi/dialog/AlertInputDateDialog;->mService:Lcom/asus/dm/IMmiCallback;

    sget-object v3, Lcom/asus/dm/DMService$UIAlertResult;->INPUT:Lcom/asus/dm/DMService$UIAlertResult;

    invoke-virtual {v3}, Lcom/asus/dm/DMService$UIAlertResult;->ordinal()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/asus/dm/IMmiCallback;->notifyUIAlertDialogResult(IIZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 56
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 61
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #result:Ljava/lang/String;
    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 62
    sget-object v2, Lcom/asus/dm/mmi/dialog/AlertInputDateDialog;->mTimer:Lcom/asus/dm/util/UIAlertDialogTimer;

    invoke-virtual {v2}, Lcom/asus/dm/util/UIAlertDialogTimer;->cancelTimer()V

    .line 67
    :try_start_1
    iget-object v2, p0, Lcom/asus/dm/mmi/dialog/AlertInputDateDialog;->mService:Lcom/asus/dm/IMmiCallback;

    sget-object v3, Lcom/asus/dm/DMService$UIAlertResult;->CANCEL:Lcom/asus/dm/DMService$UIAlertResult;

    invoke-virtual {v3}, Lcom/asus/dm/DMService$UIAlertResult;->ordinal()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/asus/dm/IMmiCallback;->notifyUIAlertDialogResult(IIZLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 69
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 70
    .restart local v0       #ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 21
    new-instance v0, Landroid/widget/DatePicker;

    invoke-direct {v0, p0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertInputDateDialog;->mDatePicker:Landroid/widget/DatePicker;

    .line 22
    invoke-super {p0, p1}, Lcom/asus/dm/mmi/dialog/DMDialog;->onCreate(Landroid/os/Bundle;)V

    .line 24
    return-void
.end method
