.class public final Lcom/android/settings/bluetooth/BluetoothNamePreference;
.super Landroid/preference/EditTextPreference;
.source "BluetoothNamePreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothNamePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference$1;-><init>(Lcom/android/settings/bluetooth/BluetoothNamePreference;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 66
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->setSummaryToName()V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothNamePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->setSummaryToName()V

    return-void
.end method

.method private setSummaryToName()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 128
    .local v0, d:Landroid/app/Dialog;
    instance-of v1, v0, Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 129
    check-cast v0, Landroid/app/AlertDialog;

    .end local v0           #d:Landroid/app/Dialog;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 131
    :cond_0
    return-void

    .line 129
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 136
    return-void
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Landroid/preference/EditTextPreference;->onClick()V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 120
    .local v0, et:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 141
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 93
    .local v0, et:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 111
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public resume()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 70
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 71
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v4, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 77
    .local v2, et:Landroid/widget/EditText;
    if-eqz v2, :cond_0

    .line 78
    new-array v4, v8, [Landroid/text/InputFilter;

    new-instance v5, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;

    const/16 v6, 0xf8

    invoke-direct {v5, v6}, Lcom/android/settings/bluetooth/Utf8ByteLengthFilter;-><init>(I)V

    aput-object v5, v4, v7

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 82
    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 84
    .local v1, d:Landroid/app/Dialog;
    instance-of v4, v1, Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 85
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #d:Landroid/app/Dialog;
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 86
    .local v0, b:Landroid/widget/Button;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-lez v4, :cond_1

    move v4, v8

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 89
    .end local v0           #b:Landroid/widget/Button;
    :cond_0
    return-void

    .restart local v0       #b:Landroid/widget/Button;
    :cond_1
    move v4, v7

    .line 86
    goto :goto_0
.end method
