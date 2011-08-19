.class public Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;
.super Lcom/asus/cm/mmi/dialog/DMDialog;
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
    invoke-direct {p0}, Lcom/asus/cm/mmi/dialog/DMDialog;-><init>()V

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

    iput-object v0, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mTimeItems:[Ljava/lang/String;

    .line 24
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mTimeInMS:[I

    .line 111
    new-instance v0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog$1;

    invoke-direct {v0, p0}, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog$1;-><init>(Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;)V

    iput-object v0, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->selectListener:Landroid/widget/AdapterView$OnItemSelectedListener;

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
    .locals 13

    .prologue
    const v12, 0x7f060002

    const/4 v11, 0x0

    .line 38
    const/4 v7, 0x0

    .line 40
    .local v7, title:Ljava/lang/String;
    const-string v9, "TMO"

    const-string v10, "ro.product.carrier"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 47
    .local v3, isTMO:Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f060011

    invoke-virtual {p0, v10}, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f060013

    invoke-virtual {p0, v10}, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v10}, Lcom/asus/cm/CMCRegistryManager;->getPostponeTime()I

    move-result v10

    div-int/lit8 v10, v10, 0x3c

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f060001

    invoke-virtual {p0, v10}, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, message:Ljava/lang/String;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 51
    .local v1, factory:Landroid/view/LayoutInflater;
    const v9, 0x7f030007

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    .line 53
    .local v6, rootLayout:Landroid/widget/ScrollView;
    const v9, 0x7f0b002b

    invoke-virtual {v6, v9}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 54
    .local v8, tv:Landroid/widget/TextView;
    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    const v9, 0x7f0b002d

    invoke-virtual {v6, v9}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mSpinner:Landroid/widget/Spinner;

    .line 59
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v9, 0x1090008

    iget-object v10, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mTimeItems:[Ljava/lang/String;

    invoke-direct {v0, p0, v9, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 62
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v9, 0x1090009

    invoke-virtual {v0, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 64
    iget-object v9, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 65
    iget-object v9, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mSpinner:Landroid/widget/Spinner;

    iget-object v10, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->selectListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v9, v10}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 68
    const/4 v2, 0x0

    .line 70
    .local v2, i:I
    const/4 v2, 0x0

    :goto_0
    iget-object v9, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mTimeInMS:[I

    array-length v9, v9

    if-ge v2, v9, :cond_0

    .line 71
    iget-object v9, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    invoke-virtual {v9}, Lcom/asus/cm/CMCRegistryManager;->getPostponeTime()I

    move-result v9

    iget-object v10, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mTimeInMS:[I

    aget v10, v10, v2

    if-ne v9, v10, :cond_2

    .line 74
    :cond_0
    iget-object v9, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mTimeInMS:[I

    array-length v9, v9

    if-lt v2, v9, :cond_3

    .line 75
    iget-object v9, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9, v11}, Landroid/widget/Spinner;->setSelection(I)V

    .line 80
    :goto_1
    if-eqz v3, :cond_4

    .line 81
    invoke-virtual {p0, v12}, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, negatativeButtonMessage:Ljava/lang/String;
    iget-object v9, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v10, 0x7f060003

    invoke-virtual {p0, v10}, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, v9, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 86
    iget-object v9, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v5, v9, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 96
    :goto_2
    iget-object v9, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v9, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 97
    iget-object v9, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v9, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 101
    iget-object v9, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v6, v9, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 104
    iget-object v9, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-boolean v11, v9, Lcom/android/internal/app/AlertController$AlertParams;->mCancelable:Z

    .line 105
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 107
    iget-object v9, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v7, v9, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 109
    :cond_1
    return-void

    .line 70
    .end local v5           #negatativeButtonMessage:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_3
    iget-object v9, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v9, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 88
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v12}, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 92
    .restart local v5       #negatativeButtonMessage:Ljava/lang/String;
    iget-object v9, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v10, 0x7f060014

    invoke-virtual {p0, v10}, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, v9, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 93
    iget-object v9, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v5, v9, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    goto :goto_2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "pDialog"
    .parameter "pWhich"

    .prologue
    .line 125
    packed-switch p2, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 127
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mService:Lcom/asus/cm/IMmiCallback;

    invoke-interface {v1}, Lcom/asus/cm/IMmiCallback;->doInstall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 131
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 137
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 139
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mRegMgr:Lcom/asus/cm/CMCRegistryManager;

    iget-object v2, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mTimeInMS:[I

    iget-object v3, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/asus/cm/CMCRegistryManager;->setPostponeTime(I)V

    .line 141
    :try_start_1
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mService:Lcom/asus/cm/IMmiCallback;

    invoke-interface {v1}, Lcom/asus/cm/IMmiCallback;->doPostpone()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 142
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 143
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 125
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
    invoke-super {p0, p1}, Lcom/asus/cm/mmi/dialog/DMDialog;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;->mTimeItems:[Ljava/lang/String;

    .line 32
    return-void
.end method
