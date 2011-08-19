.class public Lnet/yostore/aws/view/common/RegisterActivity;
.super Landroid/app/Activity;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RegisterDialog"


# instance fields
.field private apicfg:Lnet/yostore/aws/api/ApiConfig;

.field private ctx:Landroid/content/Context;

.field private eulaChk:Landroid/widget/CheckBox;

.field private loginTask:Lnet/yostore/aws/ansytask/LoginTask;

.field mPrefs:Landroid/content/SharedPreferences;

.field private pwd:Ljava/lang/String;

.field private registerTask:Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;

.field private saveBtn:Landroid/widget/Button;

.field private tvUEMAIL:Landroid/widget/EditText;

.field private tvUID:Landroid/widget/EditText;

.field private tvUPW:Landroid/widget/EditText;

.field private tvUPWconfirm:Landroid/widget/EditText;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUID:Landroid/widget/EditText;

    .line 56
    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUPW:Landroid/widget/EditText;

    .line 57
    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUPWconfirm:Landroid/widget/EditText;

    .line 58
    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUEMAIL:Landroid/widget/EditText;

    .line 60
    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->eulaChk:Landroid/widget/CheckBox;

    .line 61
    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->saveBtn:Landroid/widget/Button;

    .line 62
    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->uid:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->pwd:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lnet/yostore/aws/view/common/RegisterActivity;)Lnet/yostore/aws/api/ApiConfig;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    return-object v0
.end method

.method static synthetic access$2(Lnet/yostore/aws/view/common/RegisterActivity;)Lnet/yostore/aws/ansytask/LoginTask;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->loginTask:Lnet/yostore/aws/ansytask/LoginTask;

    return-object v0
.end method

.method static synthetic access$3(Lnet/yostore/aws/view/common/RegisterActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->saveBtn:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public backFunction(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 126
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->exitAp(Landroid/content/Context;)V

    .line 127
    return-void
.end method

.method public eulaClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 129
    const-string v2, "https://service.asuswebstorage.com/eula/"

    .line 130
    .local v2, urlStr:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 131
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 132
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 133
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    new-instance v0, Lnet/yostore/aws/api/ApiConfig;

    invoke-direct {v0}, Lnet/yostore/aws/api/ApiConfig;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->apicfg:Lnet/yostore/aws/api/ApiConfig;

    .line 78
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/RegisterActivity;->setContentView(I)V

    .line 79
    iput-object p0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->ctx:Landroid/content/Context;

    .line 82
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUID:Landroid/widget/EditText;

    .line 83
    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUPW:Landroid/widget/EditText;

    .line 84
    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUPWconfirm:Landroid/widget/EditText;

    .line 85
    const v0, 0x7f09002b

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUEMAIL:Landroid/widget/EditText;

    .line 86
    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->saveBtn:Landroid/widget/Button;

    .line 87
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->saveBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 89
    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->eulaChk:Landroid/widget/CheckBox;

    .line 90
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->eulaChk:Landroid/widget/CheckBox;

    new-instance v1, Lnet/yostore/aws/view/common/RegisterActivity$1;

    invoke-direct {v1, p0}, Lnet/yostore/aws/view/common/RegisterActivity$1;-><init>(Lnet/yostore/aws/view/common/RegisterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 96
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 138
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0600cb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f04000c

    .line 139
    new-instance v2, Lnet/yostore/aws/view/common/RegisterActivity$2;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/common/RegisterActivity$2;-><init>(Lnet/yostore/aws/view/common/RegisterActivity;)V

    .line 138
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 138
    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 112
    sparse-switch p1, :sswitch_data_0

    .line 121
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 114
    :sswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/RegisterActivity;->showDialog(I)V

    move v0, v1

    .line 115
    goto :goto_0

    .line 118
    :sswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/RegisterActivity;->backFunction(Landroid/view/View;)V

    move v0, v1

    .line 119
    goto :goto_0

    .line 112
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 50
    const-string v0, "RegisterDialog"

    const-string v1, "onPause: Cloud Info Saved to AWSPrefs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 106
    return-void
.end method

.method public regFunction(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 162
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUID:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[A-Za-z0-9._\\s-]{3,16}$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUID:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUID:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 164
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->ctx:Landroid/content/Context;

    const v1, 0x7f06003d

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/common/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 199
    :cond_1
    :goto_0
    return-void

    .line 165
    :cond_2
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUPW:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[A-Za-z0-9]{6,12}$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUPW:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUPW:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_4

    .line 167
    :cond_3
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->ctx:Landroid/content/Context;

    const v1, 0x7f06003e

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/common/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 168
    :cond_4
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUEMAIL:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[_a-z0-9-]+([.][_a-z0-9-]+)*@[a-z0-9-]+([.][a-z0-9-]+)*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 169
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->ctx:Landroid/content/Context;

    const v1, 0x7f060036

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/common/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 170
    :cond_5
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUPW:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    .line 171
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUPWconfirm:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUEMAIL:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 172
    :cond_6
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->ctx:Landroid/content/Context;

    const v1, 0x7f06003b

    invoke-virtual {p0, v1}, Lnet/yostore/aws/view/common/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 173
    :cond_7
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUPW:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUPWconfirm:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 175
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060038

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 176
    const v1, 0x7f06003f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060026

    new-instance v2, Lnet/yostore/aws/view/common/RegisterActivity$3;

    invoke-direct {v2, p0}, Lnet/yostore/aws/view/common/RegisterActivity$3;-><init>(Lnet/yostore/aws/view/common/RegisterActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 187
    :cond_8
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUID:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->uid:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUPW:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->pwd:Ljava/lang/String;

    .line 189
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->tvUEMAIL:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 191
    .local v6, email:Ljava/lang/String;
    new-instance v0, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity;->uid:Ljava/lang/String;

    iget-object v2, p0, Lnet/yostore/aws/view/common/RegisterActivity;->pwd:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, v6}, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;-><init>(Lnet/yostore/aws/view/common/RegisterActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->registerTask:Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;

    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity;->ctx:Landroid/content/Context;

    const-class v2, Lnet/yostore/aws/view/common/RegisterAfterActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v5

    .line 193
    .local v5, intent:Landroid/content/Intent;
    const/high16 v0, 0x400

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 194
    new-instance v0, Lnet/yostore/aws/ansytask/LoginTask;

    iget-object v1, p0, Lnet/yostore/aws/view/common/RegisterActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lnet/yostore/aws/view/common/RegisterActivity;->uid:Ljava/lang/String;

    iget-object v3, p0, Lnet/yostore/aws/view/common/RegisterActivity;->pwd:Ljava/lang/String;

    invoke-static {v3}, Lnet/yostore/utility/MD5;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v5}, Lnet/yostore/aws/ansytask/LoginTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;)V

    iput-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->loginTask:Lnet/yostore/aws/ansytask/LoginTask;

    .line 195
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->registerTask:Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->loginTask:Lnet/yostore/aws/ansytask/LoginTask;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lnet/yostore/aws/view/common/RegisterActivity;->registerTask:Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;

    new-array v1, v4, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lnet/yostore/aws/view/common/RegisterActivity$RegisterTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method
