.class public Lcom/splashtop/remote/dialog/BundleAlertDialog;
.super Landroid/app/AlertDialog;
.source "BundleAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private cbSave:Landroid/widget/CheckBox;

.field private id:I

.field private mBundle:Landroid/os/Bundle;

.field private macBean:Lcom/splashtop/remote/bean/MacBean;

.field private textEntryView:Landroid/widget/EditText;

.field private textPromptPWD:Landroid/widget/EditText;

.field private textServerIP:Landroid/widget/TextView;

.field private textServerName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "context"
    .parameter "activity"
    .parameter "id"
    .parameter "bundle"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 41
    iput p3, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->id:I

    .line 42
    iput-object p4, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->mBundle:Landroid/os/Bundle;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/splashtop/remote/dialog/BundleAlertDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->textEntryView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/splashtop/remote/dialog/BundleAlertDialog;)Lcom/splashtop/remote/bean/MacBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->macBean:Lcom/splashtop/remote/bean/MacBean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/splashtop/remote/dialog/BundleAlertDialog;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->cbSave:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/splashtop/remote/dialog/BundleAlertDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->textPromptPWD:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 168
    iget v0, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->id:I

    sparse-switch v0, :sswitch_data_0

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 170
    :sswitch_0
    if-ne p2, v2, :cond_1

    .line 171
    iget-object v0, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->macBean:Lcom/splashtop/remote/bean/MacBean;

    iget-object v1, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->textEntryView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/bean/MacBean;->setMacPwd(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 173
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/splashtop/remote/MainActivity;

    iget-object v1, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->cbSave:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/MainActivity;->setSaveIntoDB(Z)V

    .line 174
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/splashtop/remote/MainActivity;

    iget-object v1, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->macBean:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v0, v1, v3}, Lcom/splashtop/remote/MainActivity;->connectToServer(Lcom/splashtop/remote/bean/MacBean;Z)V

    goto :goto_0

    .line 175
    :cond_1
    if-ne p2, v1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->id:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_0

    .line 180
    :sswitch_1
    if-ne p2, v2, :cond_2

    .line 181
    iget-object v0, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->macBean:Lcom/splashtop/remote/bean/MacBean;

    iget-object v1, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->textPromptPWD:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/bean/MacBean;->setMacPwd(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 183
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/splashtop/remote/MainActivity;

    iget-object v1, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->macBean:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v0, v1, v3}, Lcom/splashtop/remote/MainActivity;->connectToServer(Lcom/splashtop/remote/bean/MacBean;Z)V

    goto :goto_0

    .line 184
    :cond_2
    if-ne p2, v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->id:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_0

    .line 168
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x0

    const v11, 0x7f07000b

    const/4 v10, -0x1

    const/4 v9, -0x2

    .line 47
    iget-object v6, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->mBundle:Landroid/os/Bundle;

    const-string v7, "macbean"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/splashtop/remote/bean/MacBean;

    iput-object v6, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->macBean:Lcom/splashtop/remote/bean/MacBean;

    .line 48
    iget v6, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->id:I

    sparse-switch v6, :sswitch_data_0

    .line 163
    :goto_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 164
    return-void

    .line 50
    :sswitch_0
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030013

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 51
    .local v3, pwdlayout:Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->setView(Landroid/view/View;)V

    .line 52
    const v6, 0x7f090033

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->textEntryView:Landroid/widget/EditText;

    .line 53
    const v6, 0x7f090034

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->cbSave:Landroid/widget/CheckBox;

    .line 54
    iget-object v6, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->textEntryView:Landroid/widget/EditText;

    new-instance v7, Lcom/splashtop/remote/dialog/BundleAlertDialog$1;

    invoke-direct {v7, p0}, Lcom/splashtop/remote/dialog/BundleAlertDialog$1;-><init>(Lcom/splashtop/remote/dialog/BundleAlertDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 81
    iget-object v6, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->textEntryView:Landroid/widget/EditText;

    new-instance v7, Lcom/splashtop/remote/dialog/BundleAlertDialog$2;

    invoke-direct {v7, p0}, Lcom/splashtop/remote/dialog/BundleAlertDialog$2;-><init>(Lcom/splashtop/remote/dialog/BundleAlertDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 95
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x7f07

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->macBean:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v7}, Lcom/splashtop/remote/bean/MacBean;->getMacAddr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, title:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f07000a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v10, v6, p0}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v9, v6, p0}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 101
    .end local v3           #pwdlayout:Landroid/view/View;
    .end local v5           #title:Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03000c

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 102
    .local v2, promptlayout:Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->setView(Landroid/view/View;)V

    .line 103
    const v6, 0x7f090022

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->textPromptPWD:Landroid/widget/EditText;

    .line 104
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 105
    .local v4, settings:Landroid/content/SharedPreferences;
    const-string v6, "INT_HANDLING_PWD"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 106
    .local v0, bForceInputPWD:Z
    if-nez v0, :cond_0

    .line 107
    iget-object v6, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->textPromptPWD:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->macBean:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v7}, Lcom/splashtop/remote/bean/MacBean;->getMacPwd()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v6, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->textPromptPWD:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 109
    .local v1, etable:Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-static {v1, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 111
    .end local v1           #etable:Landroid/text/Editable;
    :cond_0
    const v6, 0x7f090020

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->textServerName:Landroid/widget/TextView;

    .line 112
    iget-object v6, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->textServerName:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->macBean:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v7}, Lcom/splashtop/remote/bean/MacBean;->getMacName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const v6, 0x7f090021

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->textServerIP:Landroid/widget/TextView;

    .line 114
    iget-object v6, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->textServerIP:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->macBean:Lcom/splashtop/remote/bean/MacBean;

    invoke-virtual {v7}, Lcom/splashtop/remote/bean/MacBean;->getMacIP()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v6, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->textPromptPWD:Landroid/widget/EditText;

    new-instance v7, Lcom/splashtop/remote/dialog/BundleAlertDialog$3;

    invoke-direct {v7, p0}, Lcom/splashtop/remote/dialog/BundleAlertDialog$3;-><init>(Lcom/splashtop/remote/dialog/BundleAlertDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 142
    iget-object v6, p0, Lcom/splashtop/remote/dialog/BundleAlertDialog;->textPromptPWD:Landroid/widget/EditText;

    new-instance v7, Lcom/splashtop/remote/dialog/BundleAlertDialog$4;

    invoke-direct {v7, p0}, Lcom/splashtop/remote/dialog/BundleAlertDialog$4;-><init>(Lcom/splashtop/remote/dialog/BundleAlertDialog;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 157
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f07005d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v10, v6, p0}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 158
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v9, v6, p0}, Lcom/splashtop/remote/dialog/BundleAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 48
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method
