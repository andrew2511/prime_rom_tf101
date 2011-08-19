.class public Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;
.super Lcom/asus/dm/mmi/dialog/DMDialog;
.source "ConfirmUPDialog.java"


# instance fields
.field mSpinner:Landroid/widget/Spinner;

.field mTimeInMS:[I

.field mTimeItems:[Ljava/lang/String;

.field private selectListener:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 21
    invoke-direct {p0}, Lcom/asus/dm/mmi/dialog/DMDialog;-><init>()V

    .line 23
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1hour"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "3hours"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "6hours"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "1day"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mTimeItems:[Ljava/lang/String;

    .line 24
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mTimeInMS:[I

    .line 125
    new-instance v0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog$1;

    invoke-direct {v0, p0}, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog$1;-><init>(Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;)V

    iput-object v0, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->selectListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void

    .line 24
    nop

    :array_0
    .array-data 0x4
        0x80t 0xeet 0x36t 0x0t
        0x80t 0xcbt 0xa4t 0x0t
        0x0t 0x97t 0x49t 0x1t
        0x0t 0x5ct 0x26t 0x5t
    .end array-data
.end method


# virtual methods
.method customSetupDialog()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const v13, 0x7f060002

    .line 36
    const/4 v9, 0x0

    .line 38
    .local v9, title:Ljava/lang/String;
    const-string v11, "TMO"

    const-string v12, "ro.product.carrier"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 45
    .local v4, isTMO:Z
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f06002e

    invoke-virtual {p0, v12}, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f060032

    invoke-virtual {p0, v12}, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f06000e

    invoke-virtual {p0, v12}, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v12}, Lcom/asus/dm/DMCRegistryManager;->getEstimatedInstallTime()I

    move-result v12

    div-int/lit8 v12, v12, 0x3c

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f060001

    invoke-virtual {p0, v12}, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, message:Ljava/lang/String;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 53
    .local v2, factory:Landroid/view/LayoutInflater;
    const v11, 0x7f030005

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ScrollView;

    .line 55
    .local v8, rootLayout:Landroid/widget/ScrollView;
    const v11, 0x7f08001d

    invoke-virtual {v8, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 56
    .local v10, tv:Landroid/widget/TextView;
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const v11, 0x7f08001f

    invoke-virtual {v8, v11}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Spinner;

    iput-object v11, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mSpinner:Landroid/widget/Spinner;

    .line 61
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v11, 0x1090008

    iget-object v12, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mTimeItems:[Ljava/lang/String;

    invoke-direct {v0, p0, v11, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 64
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v11, 0x1090009

    invoke-virtual {v0, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 66
    iget-object v11, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v11, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 67
    iget-object v11, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mSpinner:Landroid/widget/Spinner;

    iget-object v12, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->selectListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 70
    const/4 v3, 0x0

    .line 72
    .local v3, i:I
    const/4 v3, 0x0

    :goto_0
    iget-object v11, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mTimeInMS:[I

    array-length v11, v11

    if-ge v3, v11, :cond_0

    .line 73
    iget-object v11, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    invoke-virtual {v11}, Lcom/asus/dm/DMCRegistryManager;->getPostponeTime()I

    move-result v11

    iget-object v12, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mTimeInMS:[I

    aget v12, v12, v3

    if-ne v11, v12, :cond_2

    .line 76
    :cond_0
    iget-object v11, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mTimeInMS:[I

    array-length v11, v11

    if-lt v3, v11, :cond_3

    .line 77
    iget-object v11, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v11, v14}, Landroid/widget/Spinner;->setSelection(I)V

    .line 82
    :goto_1
    if-eqz v4, :cond_4

    .line 83
    invoke-virtual {p0, v13}, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, negatativeButtonMessage:Ljava/lang/String;
    iget-object v11, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v12, 0x7f060003

    invoke-virtual {p0, v12}, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v11, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 88
    iget-object v11, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v6, v11, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 107
    :goto_2
    iget-object v11, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v11, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 108
    iget-object v11, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v11, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 112
    iget-object v11, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v8, v11, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 115
    iget-object v11, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-boolean v14, v11, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    .line 116
    const v11, 0x7f060026

    invoke-virtual {p0, v11}, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 118
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 120
    iget-object v11, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v9, v11, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 122
    :cond_1
    return-void

    .line 72
    .end local v6           #negatativeButtonMessage:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    :cond_3
    iget-object v11, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v11, v3}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 91
    :cond_4
    :try_start_0
    iget-object v11, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mService:Lcom/asus/dm/IMmiCallback;

    invoke-interface {v11}, Lcom/asus/dm/IMmiCallback;->getPostQuota()I

    move-result v7

    .line 92
    .local v7, postQuota:I
    if-gez v7, :cond_5

    .line 93
    const/4 v7, 0x0

    .line 95
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f060002

    invoke-virtual {p0, v12}, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 103
    .end local v7           #postQuota:I
    .restart local v6       #negatativeButtonMessage:Ljava/lang/String;
    :goto_3
    iget-object v11, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v12, 0x7f060010

    invoke-virtual {p0, v12}, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v11, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 104
    iget-object v11, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v6, v11, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    goto :goto_2

    .line 96
    .end local v6           #negatativeButtonMessage:Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v1, v11

    .line 98
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {p0, v13}, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #negatativeButtonMessage:Ljava/lang/String;
    goto :goto_3
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "pDialog"
    .parameter "pWhich"

    .prologue
    .line 139
    packed-switch p2, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 141
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mService:Lcom/asus/dm/IMmiCallback;

    invoke-interface {v1}, Lcom/asus/dm/IMmiCallback;->doInstall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 145
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 151
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 153
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mRegMgr:Lcom/asus/dm/DMCRegistryManager;

    iget-object v2, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mTimeInMS:[I

    iget-object v3, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/asus/dm/DMCRegistryManager;->setPostponeTime(I)V

    .line 155
    :try_start_1
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mService:Lcom/asus/dm/IMmiCallback;

    invoke-interface {v1}, Lcom/asus/dm/IMmiCallback;->doPostpone()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 156
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 157
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 139
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
    .line 28
    invoke-virtual {p0}, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;->mTimeItems:[Ljava/lang/String;

    .line 29
    invoke-super {p0, p1}, Lcom/asus/dm/mmi/dialog/DMDialog;->onCreate(Landroid/os/Bundle;)V

    .line 30
    return-void
.end method
