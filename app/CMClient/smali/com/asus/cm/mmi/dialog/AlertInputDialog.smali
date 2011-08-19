.class public Lcom/asus/cm/mmi/dialog/AlertInputDialog;
.super Lcom/asus/cm/mmi/dialog/DMDialog;
.source "AlertInputDialog.java"


# static fields
.field private static final DEBUG:Z = true


# instance fields
.field private INPUT_PASSWD_FIELD_DEFAULT_INPUT_TYPE:I

.field private INPUT_PLAIN_FIELD_DEFAULT_INPUT_TYPE:I

.field private mDefaultTransforMethod:Landroid/text/method/TransformationMethod;

.field private mInputIPField:[Landroid/widget/EditText;

.field private mInputIPTableLayout:Landroid/widget/TableLayout;

.field private mMaskedInputField:Landroid/widget/EditText;

.field private mMaskedLabel:Landroid/widget/TextView;

.field private mPlainInputField:Landroid/widget/EditText;

.field private mPlainLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/asus/cm/mmi/dialog/DMDialog;-><init>()V

    return-void
.end method

.method private clearEditTextState(Landroid/widget/EditText;Z)V
    .locals 1
    .parameter "pEditText"
    .parameter "pIsPasswd"

    .prologue
    .line 222
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 223
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 225
    if-eqz p2, :cond_0

    .line 226
    iget v0, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->INPUT_PASSWD_FIELD_DEFAULT_INPUT_TYPE:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 227
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mDefaultTransforMethod:Landroid/text/method/TransformationMethod;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    iget v0, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->INPUT_PLAIN_FIELD_DEFAULT_INPUT_TYPE:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method private echoMaskedUISetup(Landroid/widget/LinearLayout;)V
    .locals 2
    .parameter "pLayout"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mMaskedInputField:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->clearEditTextState(Landroid/widget/EditText;Z)V

    .line 211
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mMaskedLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mMaskedInputField:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    sget-object v0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v0, v0, Lcom/asus/cm/UIAlertParaDescriptor;->mDefaultInput:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mMaskedInputField:Landroid/widget/EditText;

    sget-object v1, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v1, v1, Lcom/asus/cm/UIAlertParaDescriptor;->mDefaultInput:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 218
    :cond_0
    return-void
.end method

.method private echoPlainUISetup(Landroid/widget/LinearLayout;)V
    .locals 2
    .parameter "pLayout"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mPlainInputField:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->clearEditTextState(Landroid/widget/EditText;Z)V

    .line 199
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mPlainLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mPlainInputField:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    sget-object v0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v0, v0, Lcom/asus/cm/UIAlertParaDescriptor;->mDefaultInput:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mPlainInputField:Landroid/widget/EditText;

    sget-object v1, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v1, v1, Lcom/asus/cm/UIAlertParaDescriptor;->mDefaultInput:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :cond_0
    return-void
.end method

.method private rootLayoutSetting(Landroid/widget/LinearLayout;)V
    .locals 13
    .parameter "pRootLayout"

    .prologue
    const v12, 0x7f060029

    const/16 v11, 0x3002

    const/16 v10, 0x14

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 95
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 97
    const-string v6, "ALPHANUMERIC"

    sget-object v7, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v7, v7, Lcom/asus/cm/UIAlertParaDescriptor;->mInputType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "UNDEFINED"

    sget-object v7, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v7, v7, Lcom/asus/cm/UIAlertParaDescriptor;->mInputType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 99
    :cond_0
    const-string v6, "PLAIN"

    sget-object v7, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v7, v7, Lcom/asus/cm/UIAlertParaDescriptor;->mEchoType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "UNDEFINED"

    sget-object v7, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v7, v7, Lcom/asus/cm/UIAlertParaDescriptor;->mEchoType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 100
    :cond_1
    invoke-direct {p0, p1}, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->echoPlainUISetup(Landroid/widget/LinearLayout;)V

    .line 101
    iget-object v6, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mPlainInputField:Landroid/widget/EditText;

    const v7, 0x7f060028

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(I)V

    .line 194
    :cond_2
    :goto_0
    return-void

    .line 103
    :cond_3
    invoke-direct {p0, p1}, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->echoMaskedUISetup(Landroid/widget/LinearLayout;)V

    goto :goto_0

    .line 106
    :cond_4
    const-string v6, "NUMERIC"

    sget-object v7, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v7, v7, Lcom/asus/cm/UIAlertParaDescriptor;->mInputType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 108
    const-string v6, "PLAIN"

    sget-object v7, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v7, v7, Lcom/asus/cm/UIAlertParaDescriptor;->mEchoType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "UNDEFINED"

    sget-object v7, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v7, v7, Lcom/asus/cm/UIAlertParaDescriptor;->mEchoType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 109
    :cond_5
    invoke-direct {p0, p1}, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->echoPlainUISetup(Landroid/widget/LinearLayout;)V

    .line 111
    iget-object v6, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mPlainInputField:Landroid/widget/EditText;

    invoke-virtual {v6, v12}, Landroid/widget/EditText;->setHint(I)V

    .line 112
    iget-object v6, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mPlainInputField:Landroid/widget/EditText;

    invoke-virtual {v6, v11}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 115
    :cond_6
    invoke-direct {p0, p1}, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->echoMaskedUISetup(Landroid/widget/LinearLayout;)V

    .line 117
    iget-object v6, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mMaskedInputField:Landroid/widget/EditText;

    invoke-virtual {v6, v12}, Landroid/widget/EditText;->setHint(I)V

    .line 118
    iget-object v6, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mMaskedInputField:Landroid/widget/EditText;

    invoke-virtual {v6, v11}, Landroid/widget/EditText;->setInputType(I)V

    .line 120
    iget-object v6, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mMaskedInputField:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 124
    :cond_7
    const-string v6, "PHONE"

    sget-object v7, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v7, v7, Lcom/asus/cm/UIAlertParaDescriptor;->mInputType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 126
    const-string v6, "PLAIN"

    sget-object v7, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v7, v7, Lcom/asus/cm/UIAlertParaDescriptor;->mEchoType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "UNDEFINED"

    sget-object v7, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v7, v7, Lcom/asus/cm/UIAlertParaDescriptor;->mEchoType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 127
    :cond_8
    invoke-direct {p0, p1}, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->echoPlainUISetup(Landroid/widget/LinearLayout;)V

    .line 129
    iget-object v6, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mPlainInputField:Landroid/widget/EditText;

    const v7, 0x7f06002a

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(I)V

    .line 130
    iget-object v6, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mPlainInputField:Landroid/widget/EditText;

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_0

    .line 132
    :cond_9
    invoke-direct {p0, p1}, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->echoMaskedUISetup(Landroid/widget/LinearLayout;)V

    .line 134
    iget-object v6, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mMaskedInputField:Landroid/widget/EditText;

    const v7, 0x7f06002a

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(I)V

    .line 135
    iget-object v6, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mMaskedInputField:Landroid/widget/EditText;

    invoke-virtual {v6, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 136
    iget-object v6, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mMaskedInputField:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto/16 :goto_0

    .line 140
    :cond_a
    const-string v6, "IP_ADDRESS"

    sget-object v7, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v7, v7, Lcom/asus/cm/UIAlertParaDescriptor;->mInputType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 142
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mInputIPField:[Landroid/widget/EditText;

    .local v0, arr$:[Landroid/widget/EditText;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_b

    aget-object v1, v0, v2

    .line 143
    .local v1, edit:Landroid/widget/EditText;
    invoke-direct {p0, v1, v8}, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->clearEditTextState(Landroid/widget/EditText;Z)V

    .line 144
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/text/InputFilter;

    new-instance v7, Lcom/asus/cm/mmi/dialog/AlertInputDialog$1;

    invoke-direct {v7, p0, v9}, Lcom/asus/cm/mmi/dialog/AlertInputDialog$1;-><init>(Lcom/asus/cm/mmi/dialog/AlertInputDialog;I)V

    aput-object v7, v6, v8

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 177
    const/16 v6, 0x32

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setWidth(I)V

    .line 178
    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 181
    .end local v1           #edit:Landroid/widget/EditText;
    :cond_b
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 184
    .local v5, linPara:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, v10, v8, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 186
    new-instance v3, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 187
    .local v3, inputIPLabel:Landroid/widget/TextView;
    const-string v6, "Input a IP address"

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 190
    invoke-virtual {p1, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    const/4 v6, 0x5

    invoke-virtual {v5, v10, v6, v10, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 192
    iget-object v6, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mInputIPTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {p1, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method


# virtual methods
.method customSetupDialog()V
    .locals 4

    .prologue
    .line 78
    iget-object v2, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 79
    iget-object v2, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v3, 0x1040009

    invoke-virtual {p0, v3}, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 82
    iget-object v2, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    sget-object v3, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v3, v3, Lcom/asus/cm/UIAlertParaDescriptor;->mDialogContent:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 84
    iget-object v2, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 85
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030005

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 87
    .local v1, rootLayout:Landroid/widget/LinearLayout;
    invoke-direct {p0, v1}, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->rootLayoutSetting(Landroid/widget/LinearLayout;)V

    .line 90
    iget-object v2, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object v1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 91
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "pDialog"
    .parameter "pWhich"

    .prologue
    const/4 v8, 0x1

    .line 234
    packed-switch p2, :pswitch_data_0

    .line 300
    :goto_0
    return-void

    .line 236
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 237
    sget-object v6, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mTimer:Lcom/asus/cm/util/UIAlertDialogTimer;

    invoke-virtual {v6}, Lcom/asus/cm/util/UIAlertDialogTimer;->cancelTimer()V

    .line 240
    :try_start_0
    const-string v6, "PLAIN"

    sget-object v7, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v7, v7, Lcom/asus/cm/UIAlertParaDescriptor;->mEchoType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "UNDEFINED"

    sget-object v7, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v7, v7, Lcom/asus/cm/UIAlertParaDescriptor;->mEchoType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 242
    :cond_0
    const-string v6, "IP_ADDRESS"

    sget-object v7, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v7, v7, Lcom/asus/cm/UIAlertParaDescriptor;->mInputType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 243
    const-string v4, ""

    .line 245
    .local v4, inputRslt:Ljava/lang/String;
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mInputIPField:[Landroid/widget/EditText;

    .local v0, arr$:[Landroid/widget/EditText;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v1, v0, v3

    .line 246
    .local v1, edit:Landroid/widget/EditText;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 245
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 249
    .end local v1           #edit:Landroid/widget/EditText;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 251
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "input result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 253
    iget-object v6, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mService:Lcom/asus/cm/IMmiCallback;

    sget-object v7, Lcom/asus/cm/CMService$UIAlertResult;->INPUT:Lcom/asus/cm/CMService$UIAlertResult;

    invoke-virtual {v7}, Lcom/asus/cm/CMService$UIAlertResult;->ordinal()I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-interface {v6, v7, v8, v9, v4}, Lcom/asus/cm/IMmiCallback;->notifyUIAlertDialogResult(IIZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/asus/cm/exception/UnsupportdTypeException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 280
    .end local v0           #arr$:[Landroid/widget/EditText;
    .end local v3           #i$:I
    .end local v4           #inputRslt:Ljava/lang/String;
    .end local v5           #len$:I
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 281
    .local v2, ex:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 256
    .end local v2           #ex:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mPlainInputField:Landroid/widget/EditText;

    if-eqz v6, :cond_3

    .line 257
    iget-object v6, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mPlainInputField:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 259
    iget-object v6, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mService:Lcom/asus/cm/IMmiCallback;

    sget-object v7, Lcom/asus/cm/CMService$UIAlertResult;->INPUT:Lcom/asus/cm/CMService$UIAlertResult;

    invoke-virtual {v7}, Lcom/asus/cm/CMService$UIAlertResult;->ordinal()I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mPlainInputField:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/asus/cm/IMmiCallback;->notifyUIAlertDialogResult(IIZLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/asus/cm/exception/UnsupportdTypeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 282
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 283
    .local v2, ex:Lcom/asus/cm/exception/UnsupportdTypeException;
    invoke-virtual {v2}, Lcom/asus/cm/exception/UnsupportdTypeException;->printStackTrace()V

    goto/16 :goto_0

    .line 262
    .end local v2           #ex:Lcom/asus/cm/exception/UnsupportdTypeException;
    :cond_3
    :try_start_2
    const-string v6, "mDialog.findViewById(plain_input_field) return null"

    invoke-static {p0, v6}, Lcom/asus/cm/util/CMLog;->logHighlightE(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 266
    :cond_4
    const-string v6, "MASKED"

    sget-object v7, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mUAPd:Lcom/asus/cm/UIAlertParaDescriptor;

    iget-object v7, v7, Lcom/asus/cm/UIAlertParaDescriptor;->mEchoType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 267
    iget-object v6, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mMaskedInputField:Landroid/widget/EditText;

    if-eqz v6, :cond_5

    .line 268
    iget-object v6, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mMaskedInputField:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 270
    iget-object v6, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mService:Lcom/asus/cm/IMmiCallback;

    sget-object v7, Lcom/asus/cm/CMService$UIAlertResult;->INPUT:Lcom/asus/cm/CMService$UIAlertResult;

    invoke-virtual {v7}, Lcom/asus/cm/CMService$UIAlertResult;->ordinal()I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mMaskedInputField:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/asus/cm/IMmiCallback;->notifyUIAlertDialogResult(IIZLjava/lang/String;)V

    goto/16 :goto_0

    .line 273
    :cond_5
    const-string v6, "mDialog.findViewById(password_input_field) return null"

    invoke-static {p0, v6}, Lcom/asus/cm/util/CMLog;->logHighlightE(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 277
    :cond_6
    new-instance v6, Lcom/asus/cm/exception/UnsupportdTypeException;

    const-string v7, "Some echoType of \"Input UI_Alert Command\" not be proccessed."

    invoke-direct {v6, v7}, Lcom/asus/cm/exception/UnsupportdTypeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/asus/cm/exception/UnsupportdTypeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 289
    :pswitch_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 290
    sget-object v6, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mTimer:Lcom/asus/cm/util/UIAlertDialogTimer;

    invoke-virtual {v6}, Lcom/asus/cm/util/UIAlertDialogTimer;->cancelTimer()V

    .line 293
    :try_start_3
    iget-object v6, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mService:Lcom/asus/cm/IMmiCallback;

    sget-object v7, Lcom/asus/cm/CMService$UIAlertResult;->CANCEL:Lcom/asus/cm/CMService$UIAlertResult;

    invoke-virtual {v7}, Lcom/asus/cm/CMService$UIAlertResult;->ordinal()I

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/asus/cm/IMmiCallback;->notifyUIAlertDialogResult(IIZLjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 294
    :catch_2
    move-exception v6

    move-object v2, v6

    .line 295
    .local v2, ex:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 234
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 51
    .local v0, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030003

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 53
    .local v1, temp:Landroid/widget/LinearLayout;
    const v2, 0x7f0b001c

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mMaskedLabel:Landroid/widget/TextView;

    .line 54
    const v2, 0x7f0b001d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mMaskedInputField:Landroid/widget/EditText;

    .line 55
    iget-object v2, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mMaskedInputField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getInputType()I

    move-result v2

    iput v2, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->INPUT_PASSWD_FIELD_DEFAULT_INPUT_TYPE:I

    .line 56
    iget-object v2, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mMaskedInputField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mDefaultTransforMethod:Landroid/text/method/TransformationMethod;

    .line 57
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 59
    const v2, 0x7f030004

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .end local v1           #temp:Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 60
    .restart local v1       #temp:Landroid/widget/LinearLayout;
    const v2, 0x7f0b001e

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mPlainLabel:Landroid/widget/TextView;

    .line 61
    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mPlainInputField:Landroid/widget/EditText;

    .line 62
    iget-object v2, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mPlainInputField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getInputType()I

    move-result v2

    iput v2, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->INPUT_PLAIN_FIELD_DEFAULT_INPUT_TYPE:I

    .line 63
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 65
    const v2, 0x7f030006

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    iput-object v2, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mInputIPTableLayout:Landroid/widget/TableLayout;

    .line 66
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/widget/EditText;

    iput-object v2, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mInputIPField:[Landroid/widget/EditText;

    .line 67
    iget-object v3, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mInputIPField:[Landroid/widget/EditText;

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mInputIPTableLayout:Landroid/widget/TableLayout;

    const v5, 0x7f0b0022

    invoke-virtual {v2, v5}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    aput-object v2, v3, v4

    .line 68
    iget-object v3, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mInputIPField:[Landroid/widget/EditText;

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mInputIPTableLayout:Landroid/widget/TableLayout;

    const v5, 0x7f0b0024

    invoke-virtual {v2, v5}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    aput-object v2, v3, v4

    .line 69
    iget-object v3, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mInputIPField:[Landroid/widget/EditText;

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mInputIPTableLayout:Landroid/widget/TableLayout;

    const v5, 0x7f0b0026

    invoke-virtual {v2, v5}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    aput-object v2, v3, v4

    .line 70
    iget-object v3, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mInputIPField:[Landroid/widget/EditText;

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/asus/cm/mmi/dialog/AlertInputDialog;->mInputIPTableLayout:Landroid/widget/TableLayout;

    const v5, 0x7f0b0028

    invoke-virtual {v2, v5}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    aput-object v2, v3, v4

    .line 72
    invoke-super {p0, p1}, Lcom/asus/cm/mmi/dialog/DMDialog;->onCreate(Landroid/os/Bundle;)V

    .line 73
    return-void
.end method
