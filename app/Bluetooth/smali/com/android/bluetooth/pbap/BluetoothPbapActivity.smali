.class public Lcom/android/bluetooth/pbap/BluetoothPbapActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothPbapActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private mAlwaysAllowed:Landroid/widget/CheckBox;

.field private mAlwaysAllowedValue:Z

.field private mCurrentDialog:I

.field private mKeyView:Landroid/widget/EditText;

.field private mOkButton:Landroid/widget/Button;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSessionKey:Ljava/lang/String;

.field private mTimeout:Z

.field private final mTimeoutHandler:Landroid/os/Handler;

.field private mView:Landroid/view/View;

.field private messageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mSessionKey:Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeout:Z

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mAlwaysAllowedValue:Z

    .line 102
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity$1;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 335
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity$3;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity$3;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/pbap/BluetoothPbapActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->onTimeout()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/bluetooth/pbap/BluetoothPbapActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mAlwaysAllowedValue:Z

    return p1
.end method

.method private createDisplayText(I)Ljava/lang/String;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 164
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, mRemoteName:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 174
    const/4 v3, 0x0

    :goto_0
    return-object v3

    .line 167
    :pswitch_0
    const v3, 0x7f04005f

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v2, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, mMessage1:Ljava/lang/String;
    move-object v3, v0

    .line 169
    goto :goto_0

    .line 171
    .end local v0           #mMessage1:Ljava/lang/String;
    :pswitch_1
    const v3, 0x7f040061

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, mMessage2:Ljava/lang/String;
    move-object v3, v1

    .line 172
    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createView(I)Landroid/view/View;
    .locals 5
    .parameter "id"

    .prologue
    const/high16 v4, 0x7f06

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    packed-switch p1, :pswitch_data_0

    move-object v0, v2

    .line 207
    :goto_0
    return-object v0

    .line 181
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v1, 0x7f03

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mView:Landroid/view/View;

    .line 182
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->messageView:Landroid/widget/TextView;

    .line 183
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->messageView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->createDisplayText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mView:Landroid/view/View;

    const v1, 0x7f060001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mAlwaysAllowed:Landroid/widget/CheckBox;

    .line 185
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mAlwaysAllowed:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mAlwaysAllowed:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/bluetooth/pbap/BluetoothPbapActivity$2;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity$2;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 195
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mView:Landroid/view/View;

    goto :goto_0

    .line 197
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030001

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mView:Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->messageView:Landroid/widget/TextView;

    .line 199
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->messageView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->createDisplayText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mView:Landroid/view/View;

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mKeyView:Landroid/widget/EditText;

    .line 201
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 202
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mKeyView:Landroid/widget/EditText;

    new-array v1, v3, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 205
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mView:Landroid/view/View;

    goto/16 :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onNegative()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 227
    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mCurrentDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 228
    const-string v0, "com.android.bluetooth.pbap.accessdisallowed"

    invoke-direct {p0, v0, v2, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->finish()V

    .line 234
    return-void

    .line 229
    :cond_1
    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mCurrentDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 230
    const-string v0, "com.android.bluetooth.pbap.authcancelled"

    invoke-direct {p0, v0, v2, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method private onPositive()V
    .locals 3

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeout:Z

    if-nez v0, :cond_0

    .line 213
    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mCurrentDialog:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 214
    const-string v0, "com.android.bluetooth.pbap.accessallowed"

    const-string v1, "com.android.bluetooth.pbap.alwaysallowed"

    iget-boolean v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mAlwaysAllowedValue:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 222
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeout:Z

    .line 223
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->finish()V

    .line 224
    return-void

    .line 216
    :cond_1
    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mCurrentDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 217
    const-string v0, "com.android.bluetooth.pbap.authresponse"

    const-string v1, "com.android.bluetooth.pbap.sessionkey"

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mSessionKey:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method private onTimeout()V
    .locals 8

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 276
    iput-boolean v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeout:Z

    .line 277
    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mCurrentDialog:I

    if-ne v0, v4, :cond_1

    .line 278
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->messageView:Landroid/widget/TextView;

    const v1, 0x7f040063

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v7}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mAlwaysAllowed:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 282
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mAlwaysAllowed:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->clearFocus()V

    .line 293
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 295
    return-void

    .line 283
    :cond_1
    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mCurrentDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->messageView:Landroid/widget/TextView;

    const v1, 0x7f040064

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 288
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 289
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 290
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, v7}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    const-string v1, "com.android.bluetooth"

    const-class v2, Lcom/android/bluetooth/pbap/BluetoothPbapReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    if-eqz p2, :cond_0

    .line 242
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 245
    return-void
.end method

.method private sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 249
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    const-string v1, "com.android.bluetooth"

    const-class v2, Lcom/android/bluetooth/pbap/BluetoothPbapReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    if-eqz p2, :cond_0

    .line 253
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 255
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 256
    return-void
.end method

.method private showPbapDialog(I)V
    .locals 3
    .parameter "id"

    .prologue
    const v1, 0x108009b

    const/4 v2, -0x1

    .line 133
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 134
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    packed-switch p1, :pswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 136
    :pswitch_0
    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 137
    const v1, 0x7f040060

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 138
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->createView(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 139
    const v1, 0x1040013

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 140
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 141
    const v1, 0x1040009

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 142
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 143
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mOkButton:Landroid/widget/Button;

    .line 144
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->setupAlert()V

    goto :goto_0

    .line 147
    :pswitch_1
    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 148
    const v1, 0x7f040062

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 149
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->createView(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 150
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 151
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 152
    const/high16 v1, 0x104

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 153
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 154
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->setupAlert()V

    .line 155
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mOkButton:Landroid/widget/Button;

    .line 156
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mOkButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 134
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 330
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mOkButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 333
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 324
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 259
    packed-switch p2, :pswitch_data_0

    .line 273
    :goto_0
    return-void

    .line 261
    :pswitch_0
    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mCurrentDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mKeyView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mSessionKey:Ljava/lang/String;

    .line 264
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->onPositive()V

    goto :goto_0

    .line 268
    :pswitch_1
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->onNegative()V

    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 114
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 116
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.bluetooth.pbap.accessrequest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    invoke-direct {p0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->showPbapDialog(I)V

    .line 119
    iput v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mCurrentDialog:I

    .line 128
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.bluetooth.pbap.userconfirmtimeout"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    return-void

    .line 120
    :cond_0
    const-string v2, "com.android.bluetooth.pbap.authchall"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    invoke-direct {p0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->showPbapDialog(I)V

    .line 122
    iput v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mCurrentDialog:I

    goto :goto_0

    .line 124
    :cond_1
    const-string v2, "BluetoothPbapActivity"

    const-string v3, "Error: this activity may be started only with intent PBAP_ACCESS_REQUEST or PBAP_AUTH_CHALL "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 315
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 316
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 317
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 320
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 299
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 300
    const-string v0, "user_timeout"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeout:Z

    .line 302
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeout:Z

    if-eqz v0, :cond_0

    .line 303
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->onTimeout()V

    .line 305
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 309
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 310
    const-string v0, "user_timeout"

    iget-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;->mTimeout:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 311
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 327
    return-void
.end method
