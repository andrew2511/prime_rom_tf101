.class public Lcom/asus/reader/DrmDialogUtil;
.super Ljava/lang/Object;
.source "DrmDialogUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static showDrmInformationDialog(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)Landroid/app/Dialog;
    .locals 9
    .parameter "adobeId"
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 140
    move-object v1, p1

    .line 142
    .local v1, c:Landroid/content/Context;
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 143
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f03001d

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 148
    .local v2, dialog:Landroid/view/View;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x2

    invoke-direct {v7, p1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v8, 0x7f070052

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 152
    .local v0, alertDialog:Landroid/app/AlertDialog;
    const v7, 0x7f0b006a

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 153
    .local v6, mVerifiedAdobeIdText:Landroid/widget/TextView;
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    const v7, 0x7f0b005b

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 155
    .local v4, mConfirmButton:Landroid/widget/Button;
    new-instance v7, Lcom/asus/reader/DrmDialogUtil$4;

    invoke-direct {v7, v0}, Lcom/asus/reader/DrmDialogUtil$4;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const v7, 0x7f0b006b

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 161
    .local v5, mDeactivateButton:Landroid/widget/Button;
    new-instance v7, Lcom/asus/reader/DrmDialogUtil$5;

    invoke-direct {v7, v1}, Lcom/asus/reader/DrmDialogUtil$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 176
    return-object v0
.end method

.method private static showDrmLoginDialog(Landroid/content/Context;Landroid/os/Handler;Z)Landroid/app/Dialog;
    .locals 13
    .parameter "context"
    .parameter "handler"
    .parameter "isAnonymous"

    .prologue
    const/4 v12, 0x1

    .line 53
    move-object v2, p0

    .line 54
    .local v2, c:Landroid/content/Context;
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 55
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f03001e

    const/4 v5, 0x0

    invoke-virtual {v9, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 59
    .local v8, dialog:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x2

    invoke-direct {v0, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v5, 0x7f070044

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 62
    .local v4, alertDialog:Landroid/app/AlertDialog;
    const v0, 0x7f0b005c

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 63
    .local v1, mAdobeIdEditText:Landroid/widget/EditText;
    const v0, 0x7f0b005d

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 64
    .local v3, mPasswordEditText:Landroid/widget/EditText;
    const v0, 0x7f0b006d

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 65
    .local v10, mAnonymousDescMessage:Landroid/widget/TextView;
    if-ne p2, v12, :cond_0

    .line 66
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    :cond_0
    const v0, 0x7f0b005f

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 68
    .local v11, submitButton:Landroid/widget/Button;
    new-instance v0, Lcom/asus/reader/DrmDialogUtil$1;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/asus/reader/DrmDialogUtil$1;-><init>(Landroid/widget/EditText;Landroid/content/Context;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/os/Handler;)V

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v0, 0x7f0b0060

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 119
    .local v6, cancelButton:Landroid/widget/Button;
    new-instance v0, Lcom/asus/reader/DrmDialogUtil$2;

    invoke-direct {v0, v4}, Lcom/asus/reader/DrmDialogUtil$2;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v0, 0x7f0b006e

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 125
    .local v7, createAccountButton:Landroid/widget/Button;
    new-instance v0, Lcom/asus/reader/DrmDialogUtil$3;

    invoke-direct {v0, v2}, Lcom/asus/reader/DrmDialogUtil$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    invoke-virtual {v4, v8}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 136
    return-object v4
.end method

.method public static showDrmProcessResult(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3
    .parameter "context"
    .parameter "resultMsg"

    .prologue
    .line 180
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 181
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070085

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 182
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 183
    const v1, 0x7f070020

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 184
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public static showDrmSettingDialog(Landroid/content/Context;Landroid/os/Handler;)Landroid/app/Dialog;
    .locals 5
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 25
    invoke-static {}, Lcom/asus/reader/book/DrmProcessor;->getActivationStatusNative()I

    move-result v1

    .line 26
    .local v1, activationStatus:I
    const-string v2, "reader drm dialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activation status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    packed-switch v1, :pswitch_data_0

    .line 46
    const-string v2, "DRM Dialog"

    const-string v3, "get activation status fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_0
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 29
    :pswitch_0
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lcom/asus/reader/DrmDialogUtil;->showDrmLoginDialog(Landroid/content/Context;Landroid/os/Handler;Z)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_1

    .line 32
    :pswitch_1
    const/4 v2, 0x1

    invoke-static {p0, p1, v2}, Lcom/asus/reader/DrmDialogUtil;->showDrmLoginDialog(Landroid/content/Context;Landroid/os/Handler;Z)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_1

    .line 38
    :pswitch_2
    invoke-static {}, Lcom/asus/reader/book/DrmProcessor;->getActivationUserNameNative()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, activatedAdobeId:Ljava/lang/String;
    invoke-static {v0, p0, p1}, Lcom/asus/reader/DrmDialogUtil;->showDrmInformationDialog(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)Landroid/app/Dialog;

    move-result-object v2

    goto :goto_1

    .line 43
    .end local v0           #activatedAdobeId:Ljava/lang/String;
    :pswitch_3
    const-string v2, "DRM Dialog"

    const-string v3, "get activation status fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
