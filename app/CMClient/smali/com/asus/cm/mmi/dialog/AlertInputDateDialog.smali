.class public Lcom/asus/cm/mmi/dialog/AlertInputDateDialog;
.super Lcom/asus/cm/mmi/dialog/DMDialog;
.source "AlertInputDateDialog.java"


# static fields
.field private static final DEBUG:Z = true


# instance fields
.field private mDatePicker:Landroid/widget/DatePicker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/asus/cm/mmi/dialog/DMDialog;-><init>()V

    return-void
.end method


# virtual methods
.method customSetupDialog()V
    .locals 5

    .prologue
    .line 27
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 28
    .local v0, clndr:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/AlertInputDateDialog;->mDatePicker:Landroid/widget/DatePicker;

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

    .line 30
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/AlertInputDateDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget-object v2, Lcom/asus/cm/mmi/dialog/AlertInputDateDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v2, v2, Lcom/asus/cm/UIAlertParaDescriptor;->mDialogContent:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 33
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/AlertInputDateDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, p0, Lcom/asus/cm/mmi/dialog/AlertInputDateDialog;->mDatePicker:Landroid/widget/DatePicker;

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 36
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/AlertInputDateDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 37
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/AlertInputDateDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x1040009

    invoke-virtual {p0, v2}, Lcom/asus/cm/mmi/dialog/AlertInputDateDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 39
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "pDialog"
    .parameter "pWhich"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 42
    packed-switch p2, :pswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 44
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 45
    sget-object v2, Lcom/asus/cm/mmi/dialog/AlertInputDateDialog;->mTimer:Lcom/asus/cm/util/UIAlertDialogTimer;

    invoke-virtual {v2}, Lcom/asus/cm/util/UIAlertDialogTimer;->cancelTimer()V

    .line 48
    const-string v2, "%02d%02d%04d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/asus/cm/mmi/dialog/AlertInputDateDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getMonth()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/asus/cm/mmi/dialog/AlertInputDateDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/asus/cm/mmi/dialog/AlertInputDateDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v5}, Landroid/widget/DatePicker;->getYear()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, result:Ljava/lang/String;
    invoke-static {p0, v1, v6}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 53
    :try_start_0
    iget-object v2, p0, Lcom/asus/cm/mmi/dialog/AlertInputDateDialog;->mService:Lcom/asus/cm/IMmiCallback;

    sget-object v3, Lcom/asus/cm/CMService$UIAlertResult;->INPUT:Lcom/asus/cm/CMService$UIAlertResult;

    invoke-virtual {v3}, Lcom/asus/cm/CMService$UIAlertResult;->ordinal()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/asus/cm/IMmiCallback;->notifyUIAlertDialogResult(IIZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 55
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 60
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #result:Ljava/lang/String;
    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 61
    sget-object v2, Lcom/asus/cm/mmi/dialog/AlertInputDateDialog;->mTimer:Lcom/asus/cm/util/UIAlertDialogTimer;

    invoke-virtual {v2}, Lcom/asus/cm/util/UIAlertDialogTimer;->cancelTimer()V

    .line 66
    :try_start_1
    iget-object v2, p0, Lcom/asus/cm/mmi/dialog/AlertInputDateDialog;->mService:Lcom/asus/cm/IMmiCallback;

    sget-object v3, Lcom/asus/cm/CMService$UIAlertResult;->CANCEL:Lcom/asus/cm/CMService$UIAlertResult;

    invoke-virtual {v3}, Lcom/asus/cm/CMService$UIAlertResult;->ordinal()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/asus/cm/IMmiCallback;->notifyUIAlertDialogResult(IIZLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 68
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 69
    .restart local v0       #ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 42
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
    .line 20
    new-instance v0, Landroid/widget/DatePicker;

    invoke-direct {v0, p0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertInputDateDialog;->mDatePicker:Landroid/widget/DatePicker;

    .line 21
    invoke-super {p0, p1}, Lcom/asus/cm/mmi/dialog/DMDialog;->onCreate(Landroid/os/Bundle;)V

    .line 23
    return-void
.end method
