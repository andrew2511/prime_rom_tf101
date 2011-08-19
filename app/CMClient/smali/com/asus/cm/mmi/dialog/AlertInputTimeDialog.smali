.class public Lcom/asus/cm/mmi/dialog/AlertInputTimeDialog;
.super Lcom/asus/cm/mmi/dialog/DMDialog;
.source "AlertInputTimeDialog.java"


# static fields
.field private static final DEBUG:Z = true


# instance fields
.field private mTimePicker:Landroid/widget/TimePicker;


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
    .locals 3

    .prologue
    .line 32
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 33
    .local v0, now:Ljava/util/Date;
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/AlertInputTimeDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 34
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/AlertInputTimeDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 37
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/AlertInputTimeDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 38
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/AlertInputTimeDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v2, 0x1040009

    invoke-virtual {p0, v2}, Lcom/asus/cm/mmi/dialog/AlertInputTimeDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 41
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/AlertInputTimeDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v2, p0, Lcom/asus/cm/mmi/dialog/AlertInputTimeDialog;->mTimePicker:Landroid/widget/TimePicker;

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 44
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/AlertInputTimeDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget-object v2, Lcom/asus/cm/mmi/dialog/AlertInputTimeDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v2, v2, Lcom/asus/cm/UIAlertParaDescriptor;->mDialogContent:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 45
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "pDialog"
    .parameter "pWhich"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 49
    packed-switch p2, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 51
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 52
    sget-object v2, Lcom/asus/cm/mmi/dialog/AlertInputTimeDialog;->mTimer:Lcom/asus/cm/util/UIAlertDialogTimer;

    invoke-virtual {v2}, Lcom/asus/cm/util/UIAlertDialogTimer;->cancelTimer()V

    .line 54
    const-string v2, "%02d%02d%02d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/asus/cm/mmi/dialog/AlertInputTimeDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v4}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/asus/cm/mmi/dialog/AlertInputTimeDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v4}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, result:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pick result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v6}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/asus/cm/mmi/dialog/AlertInputTimeDialog;->mService:Lcom/asus/cm/IMmiCallback;

    sget-object v3, Lcom/asus/cm/CMService$UIAlertResult;->INPUT:Lcom/asus/cm/CMService$UIAlertResult;

    invoke-virtual {v3}, Lcom/asus/cm/CMService$UIAlertResult;->ordinal()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/asus/cm/IMmiCallback;->notifyUIAlertDialogResult(IIZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 62
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v0           #ex:Landroid/os/RemoteException;
    .end local v1           #result:Ljava/lang/String;
    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 69
    sget-object v2, Lcom/asus/cm/mmi/dialog/AlertInputTimeDialog;->mTimer:Lcom/asus/cm/util/UIAlertDialogTimer;

    invoke-virtual {v2}, Lcom/asus/cm/util/UIAlertDialogTimer;->cancelTimer()V

    .line 73
    :try_start_1
    iget-object v2, p0, Lcom/asus/cm/mmi/dialog/AlertInputTimeDialog;->mService:Lcom/asus/cm/IMmiCallback;

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

    .line 75
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 76
    .restart local v0       #ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 22
    new-instance v0, Landroid/widget/TimePicker;

    invoke-direct {v0, p0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertInputTimeDialog;->mTimePicker:Landroid/widget/TimePicker;

    .line 23
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertInputTimeDialog;->mTimePicker:Landroid/widget/TimePicker;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 24
    invoke-super {p0, p1}, Lcom/asus/cm/mmi/dialog/DMDialog;->onCreate(Landroid/os/Bundle;)V

    .line 25
    return-void
.end method
