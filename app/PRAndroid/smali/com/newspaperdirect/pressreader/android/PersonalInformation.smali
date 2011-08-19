.class public Lcom/newspaperdirect/pressreader/android/PersonalInformation;
.super Landroid/app/Activity;
.source "PersonalInformation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private bindValidate(Landroid/view/View;Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;)Z
    .locals 7
    .parameter "view"
    .parameter "model"

    .prologue
    const v6, 0x7f0c006d

    const v5, 0x7f0c006b

    const v4, 0x7f0c006a

    const v3, 0x7f0c006c

    const/4 v2, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 123
    .end local p0
    :goto_0
    return v1

    .line 79
    .restart local p0
    :cond_0
    invoke-virtual {p0, v4}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, result:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    const v1, 0x7f09003b

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->showAlertDialog(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, v4}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move v1, v2

    .line 83
    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p2, v0}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->setEMail(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 87
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    const v1, 0x7f09003c

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->showAlertDialog(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move v1, v2

    .line 91
    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p2, v0}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->setPassword(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0, v3}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 95
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    const v1, 0x7f09003d

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->showAlertDialog(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, v3}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move v1, v2

    .line 99
    goto :goto_0

    .line 101
    :cond_3
    invoke-virtual {p2}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 102
    const v1, 0x7f09003e

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->showAlertDialog(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0, v3}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move v1, v2

    .line 104
    goto/16 :goto_0

    .line 106
    :cond_4
    invoke-virtual {p0, v6}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 108
    const v1, 0x7f09003f

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->showAlertDialog(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, v6}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move v1, v2

    .line 110
    goto/16 :goto_0

    .line 112
    :cond_5
    invoke-virtual {p2, v0}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->setFirstName(Ljava/lang/String;)V

    .line 113
    const v1, 0x7f0c006e

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 115
    const v1, 0x7f090040

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->showAlertDialog(Ljava/lang/String;)V

    .line 116
    const v1, 0x7f0c006e

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move v1, v2

    .line 117
    goto/16 :goto_0

    .line 119
    :cond_6
    invoke-virtual {p2, v0}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->setLastName(Ljava/lang/String;)V

    .line 120
    const v1, 0x7f0c006f

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->setPromoCode(Ljava/lang/String;)V

    .line 121
    const v1, 0x7f0c0070

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->setPhone(Ljava/lang/String;)V

    .line 122
    const v1, 0x7f0c0071

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->setCompany(Ljava/lang/String;)V

    .line 123
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method private getPersonalInfo()Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;

    invoke-direct {v0}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;-><init>()V

    .line 45
    .local v0, pi:Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;
    const v1, 0x7f0c006a

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 46
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->setEMail(Ljava/lang/String;)V

    .line 47
    const v1, 0x7f0c006b

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 48
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->setPassword(Ljava/lang/String;)V

    .line 49
    const v1, 0x7f0c006d

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 50
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->setFirstName(Ljava/lang/String;)V

    .line 51
    const v1, 0x7f0c006e

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 52
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->setLastName(Ljava/lang/String;)V

    .line 53
    const v1, 0x7f0c006f

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 54
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->setPromoCode(Ljava/lang/String;)V

    .line 56
    return-object v0
.end method

.method private initPresenter(Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;)V
    .locals 2
    .parameter "pi"

    .prologue
    .line 29
    if-nez p1, :cond_0

    .line 40
    .end local p0
    :goto_0
    return-void

    .line 31
    .restart local p0
    :cond_0
    const v0, 0x7f0c006a

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->getEMail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->getEMail()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 32
    const v0, 0x7f0c006d

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->getFirstName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->getFirstName()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 33
    const v0, 0x7f0c006e

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->getLastName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->getLastName()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 34
    const v0, 0x7f0c006f

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->getPromoCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->getPromoCode()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 35
    const v0, 0x7f0c0070

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->getPhone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->getPhone()Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 36
    const v0, 0x7f0c0071

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->getCompany()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->getCompany()Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 38
    const v0, 0x7f0c0072

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_0

    .line 31
    .restart local p0
    :cond_1
    const-string v1, ""

    goto/16 :goto_1

    .line 32
    :cond_2
    const-string v1, ""

    goto :goto_2

    .line 33
    :cond_3
    const-string v1, ""

    goto :goto_3

    .line 34
    :cond_4
    const-string v1, ""

    goto :goto_4

    .line 35
    :cond_5
    const-string v1, ""

    goto :goto_5

    .line 36
    :cond_6
    const-string v1, ""

    goto :goto_6
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 127
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 128
    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 130
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 131
    const v1, 0x7f09005e

    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    new-instance v2, Lcom/newspaperdirect/pressreader/android/PersonalInformation$1;

    invoke-direct {v2, p0}, Lcom/newspaperdirect/pressreader/android/PersonalInformation$1;-><init>(Lcom/newspaperdirect/pressreader/android/PersonalInformation;)V

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 138
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->setContentView(I)V

    .line 22
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/AppInitHelper;->init(Landroid/app/Activity;)V

    .line 23
    const v0, 0x7f0900b0

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->setTitle(Ljava/lang/CharSequence;)V

    .line 25
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;

    invoke-direct {v0}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;-><init>()V

    invoke-direct {p0, v0}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->initPresenter(Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;)V

    .line 26
    return-void
.end method

.method public onNextClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->getPersonalInfo()Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;

    move-result-object v2

    .line 61
    .local v2, pi:Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;
    invoke-direct {p0, p1, v2}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->bindValidate(Landroid/view/View;Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, extra:Landroid/os/Bundle;
    const-string v3, "product-id"

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "product-id"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v3, "user-name"

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->getEMail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v3, "first-name"

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v3, "last-name"

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->getLastName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v3, "user-password"

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v3, "promocode"

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->getPromoCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v3, "phone-number"

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->getPhone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v3, "company-name"

    invoke-virtual {v2}, Lcom/newspaperdirect/pressreader/android/core/PersonalInfo;->getCompany()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/newspaperdirect/pressreader/android/Payment;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v1, next:Landroid/content/Intent;
    const-string v3, "reg-info"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/PersonalInformation;->startActivity(Landroid/content/Intent;)V

    .line 75
    .end local v0           #extra:Landroid/os/Bundle;
    .end local v1           #next:Landroid/content/Intent;
    :cond_0
    return-void
.end method
