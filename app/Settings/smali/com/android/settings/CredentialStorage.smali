.class public Lcom/android/settings/CredentialStorage;
.super Landroid/app/Activity;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mButton:Landroid/widget/Button;

.field private mConfirmPassword:Landroid/widget/TextView;

.field private mError:Landroid/widget/TextView;

.field private mKeyStore:Landroid/security/KeyStore;

.field private mNewPassword:Landroid/widget/TextView;

.field private mOldPassword:Landroid/widget/TextView;

.field private mSubmit:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CredentialStorage;->mSubmit:Z

    return-void
.end method

.method private install()V
    .locals 7

    .prologue
    .line 84
    iget-object v4, p0, Lcom/android/settings/CredentialStorage;->mBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/CredentialStorage;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 86
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/CredentialStorage;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 87
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/CredentialStorage;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 88
    .local v3, value:[B
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    const-string v5, "UTF-8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/security/KeyStore;->put([B[B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 89
    const-string v4, "CredentialStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to install "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #value:[B
    :cond_1
    :goto_0
    return-void

    .line 93
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/CredentialStorage;->setResult(I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    .end local v1           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 96
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private showPasswordDialog(Z)V
    .locals 5
    .parameter "firstTime"

    .prologue
    const/4 v4, 0x0

    .line 114
    const v2, 0x7f040011

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 116
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0f0024

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f08050b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 117
    if-nez p1, :cond_0

    .line 118
    const v2, 0x7f0f0026

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 119
    const v2, 0x7f0f0027

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/CredentialStorage;->mOldPassword:Landroid/widget/TextView;

    .line 120
    iget-object v2, p0, Lcom/android/settings/CredentialStorage;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v2, p0, Lcom/android/settings/CredentialStorage;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    :cond_0
    const v2, 0x7f0f0028

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 124
    const v2, 0x7f0f0029

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/CredentialStorage;->mNewPassword:Landroid/widget/TextView;

    .line 125
    iget-object v2, p0, Lcom/android/settings/CredentialStorage;->mNewPassword:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 126
    const v2, 0x7f0f002a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/CredentialStorage;->mConfirmPassword:Landroid/widget/TextView;

    .line 127
    iget-object v2, p0, Lcom/android/settings/CredentialStorage;->mConfirmPassword:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    const v2, 0x7f0f0025

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/CredentialStorage;->mError:Landroid/widget/TextView;

    .line 130
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080505

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 136
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 137
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 138
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/CredentialStorage;->mButton:Landroid/widget/Button;

    .line 139
    iget-object v2, p0, Lcom/android/settings/CredentialStorage;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 140
    return-void
.end method

.method private showResetDialog()V
    .locals 3

    .prologue
    .line 102
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08050f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 109
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 110
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 111
    return-void
.end method

.method private showUnlockDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 143
    const v2, 0x7f040011

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 145
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0f0024

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f08050a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 146
    const v2, 0x7f0f0027

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/CredentialStorage;->mOldPassword:Landroid/widget/TextView;

    .line 147
    iget-object v2, p0, Lcom/android/settings/CredentialStorage;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v2, p0, Lcom/android/settings/CredentialStorage;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    const v2, 0x7f0f0025

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/CredentialStorage;->mError:Landroid/widget/TextView;

    .line 151
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080509

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 157
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 158
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 159
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/CredentialStorage;->mButton:Landroid/widget/Button;

    .line 160
    iget-object v2, p0, Lcom/android/settings/CredentialStorage;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 161
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "editable"

    .prologue
    const/16 v1, 0x8

    .line 164
    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mOldPassword:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mNewPassword:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mNewPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mConfirmPassword:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mConfirmPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt v0, v1, :cond_3

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 174
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v1, 0x0

    .line 180
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/CredentialStorage;->mSubmit:Z

    .line 181
    const/4 v0, -0x3

    if-ne p2, v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->reset()Z

    .line 183
    const v0, 0x7f080515

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 185
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 180
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 60
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3}, Landroid/security/KeyStore;->test()I

    move-result v2

    .line 63
    .local v2, state:I
    const-string v3, "com.android.credentials.RESET"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->showResetDialog()V

    .line 81
    :goto_0
    return-void

    .line 65
    :cond_0
    const-string v3, "com.android.credentials.SET_PASSWORD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 66
    if-ne v2, v6, :cond_1

    move v3, v5

    :goto_1
    invoke-direct {p0, v3}, Lcom/android/settings/CredentialStorage;->showPasswordDialog(Z)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 68
    :cond_2
    const-string v3, "com.android.credentials.INSTALL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "com.android.certinstaller"

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 70
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/CredentialStorage;->mBundle:Landroid/os/Bundle;

    .line 72
    :cond_3
    if-ne v2, v6, :cond_4

    .line 73
    invoke-direct {p0, v5}, Lcom/android/settings/CredentialStorage;->showPasswordDialog(Z)V

    goto :goto_0

    .line 74
    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 75
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->showUnlockDialog()V

    goto :goto_0

    .line 77
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->install()V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 10
    .parameter "dialog"

    .prologue
    const/16 v9, 0xa

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 188
    iget-boolean v4, p0, Lcom/android/settings/CredentialStorage;->mSubmit:Z

    if-eqz v4, :cond_0

    .line 189
    iput-boolean v8, p0, Lcom/android/settings/CredentialStorage;->mSubmit:Z

    .line 190
    iget-object v4, p0, Lcom/android/settings/CredentialStorage;->mError:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v4, p0, Lcom/android/settings/CredentialStorage;->mNewPassword:Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 193
    iget-object v4, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    iget-object v5, p0, Lcom/android/settings/CredentialStorage;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    .line 209
    :goto_0
    iget-object v4, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v4}, Landroid/security/KeyStore;->getLastError()I

    move-result v2

    .line 210
    .local v2, error:I
    if-ne v2, v6, :cond_4

    .line 211
    const v4, 0x7f080516

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 212
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->install()V

    .line 228
    .end local v2           #error:I
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    .line 229
    .end local p1
    :goto_2
    return-void

    .line 195
    .restart local p1
    :cond_1
    iget-object v4, p0, Lcom/android/settings/CredentialStorage;->mNewPassword:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, newPassword:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/CredentialStorage;->mConfirmPassword:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, confirmPassword:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 199
    iget-object v4, p0, Lcom/android/settings/CredentialStorage;->mError:Landroid/widget/TextView;

    const v5, 0x7f080510

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 200
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    .line 202
    .restart local p1
    :cond_2
    iget-object v4, p0, Lcom/android/settings/CredentialStorage;->mOldPassword:Landroid/widget/TextView;

    if-nez v4, :cond_3

    .line 203
    iget-object v4, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v4, v3}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    goto :goto_0

    .line 205
    :cond_3
    iget-object v4, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    iget-object v5, p0, Lcom/android/settings/CredentialStorage;->mOldPassword:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/security/KeyStore;->password(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 213
    .end local v0           #confirmPassword:Ljava/lang/String;
    .end local v3           #newPassword:Ljava/lang/String;
    .restart local v2       #error:I
    :cond_4
    if-ne v2, v7, :cond_5

    .line 214
    const v4, 0x7f080515

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 215
    :cond_5
    if-lt v2, v9, :cond_0

    .line 216
    sub-int v4, v2, v9

    add-int/lit8 v1, v4, 0x1

    .line 217
    .local v1, count:I
    if-le v1, v7, :cond_6

    .line 218
    iget-object v4, p0, Lcom/android/settings/CredentialStorage;->mError:Landroid/widget/TextView;

    const v5, 0x7f080512

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 224
    :goto_3
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_2

    .line 219
    .restart local p1
    :cond_6
    if-ne v1, v6, :cond_7

    .line 220
    iget-object v4, p0, Lcom/android/settings/CredentialStorage;->mError:Landroid/widget/TextView;

    const v5, 0x7f080513

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 222
    :cond_7
    iget-object v4, p0, Lcom/android/settings/CredentialStorage;->mError:Landroid/widget/TextView;

    const v5, 0x7f080514

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/CredentialStorage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 177
    return-void
.end method
