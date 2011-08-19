.class public Lcom/newspaperdirect/pressreader/android/Payment;
.super Landroid/app/Activity;
.source "Payment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;
    }
.end annotation


# static fields
.field private static final DLG_PROGRESS:I = 0x1


# instance fields
.field private currentYear:I

.field private taskRegister:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/Payment;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/Payment;->register(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/Payment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 278
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/Payment;->showAlertDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/Payment;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/Payment;->finished()V

    return-void
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/Payment;)Landroid/os/AsyncTask;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Payment;->taskRegister:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/Payment;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/Payment;->hideProgressDialog()V

    return-void
.end method

.method private bindValidate(Landroid/view/View;Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;)Z
    .locals 8
    .parameter "view"
    .parameter "model"

    .prologue
    const v7, 0x7f0c0063

    const v6, 0x7f0c0062

    const v5, 0x7f0c005f

    const v4, 0x7f0c005e

    const/4 v3, 0x0

    .line 235
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/Payment;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 275
    .end local p0
    :goto_0
    return v2

    .line 236
    .restart local p0
    :cond_0
    invoke-virtual {p0, v4}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, result:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    const v2, 0x7f090036

    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/Payment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/newspaperdirect/pressreader/android/Payment;->showAlertDialog(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0, v4}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move v2, v3

    .line 240
    goto :goto_0

    .line 242
    :cond_1
    iput-object v1, p2, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->CreditNumber:Ljava/lang/String;

    .line 243
    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 245
    const v2, 0x7f090037

    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/Payment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/newspaperdirect/pressreader/android/Payment;->showAlertDialog(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move v2, v3

    .line 247
    goto :goto_0

    .line 249
    :cond_2
    iput-object v1, p2, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->CreditCvv:Ljava/lang/String;

    .line 250
    invoke-virtual {p0, v6}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 252
    const v2, 0x7f090038

    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/Payment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/newspaperdirect/pressreader/android/Payment;->showAlertDialog(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0, v6}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move v2, v3

    .line 254
    goto :goto_0

    .line 256
    :cond_3
    iput-object v1, p2, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->Holder:Ljava/lang/String;

    .line 257
    invoke-virtual {p0, v7}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 258
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 260
    const v2, 0x7f090039

    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/Payment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/newspaperdirect/pressreader/android/Payment;->showAlertDialog(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0, v7}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move v2, v3

    .line 262
    goto/16 :goto_0

    .line 264
    :cond_4
    iput-object v1, p2, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->StreetAddress:Ljava/lang/String;

    .line 266
    const v2, 0x7f0c0066

    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 267
    .local v0, country:Landroid/widget/Spinner;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/Payment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->Country:Ljava/lang/String;

    .line 268
    const v2, 0x7f0c005d

    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p2, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->CreditType:Ljava/lang/String;

    .line 269
    const v2, 0x7f0c0060

    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p2, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->ExpiryYear:I

    .line 270
    const v2, 0x7f0c0061

    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p2, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->ExpiryMonth:I

    .line 271
    const v2, 0x7f0c0064

    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->City:Ljava/lang/String;

    .line 272
    const v2, 0x7f0c0065

    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->State:Ljava/lang/String;

    .line 273
    const v2, 0x7f0c0067

    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->Zip:Ljava/lang/String;

    .line 275
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method private dataBind(Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;)V
    .locals 8
    .parameter "paymentInfo"

    .prologue
    .line 84
    const v5, 0x7f0c005e

    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p1, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->CreditNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v5, 0x7f0c005f

    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p1, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->CreditCvv:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v5, 0x7f0c0062

    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p1, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->Holder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const v5, 0x7f0c0063

    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p1, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->StreetAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const v5, 0x7f0c0064

    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p1, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->City:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const v5, 0x7f0c0065

    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p1, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->State:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const v5, 0x7f0c0067

    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iget-object v6, p1, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->Zip:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v5, 0x7f0c0060

    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iget v6, p1, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->ExpiryYear:I

    iget v7, p0, Lcom/newspaperdirect/pressreader/android/Payment;->currentYear:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 94
    const v5, 0x7f0c0061

    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iget v6, p1, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->ExpiryMonth:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 96
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/Payment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, types:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v4

    if-lt v1, v5, :cond_1

    .line 103
    :goto_1
    iget-object v2, p1, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->Country:Ljava/lang/String;

    .line 104
    .local v2, iso:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 105
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/Payment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 106
    .local v3, tele:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 108
    .end local v3           #tele:Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/Payment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, country:[Ljava/lang/String;
    const/4 v1, 0x0

    :goto_2
    array-length v5, v0

    if-lt v1, v5, :cond_3

    .line 115
    .end local p0
    :goto_3
    return-void

    .line 98
    .end local v0           #country:[Ljava/lang/String;
    .end local v2           #iso:Ljava/lang/String;
    .restart local p0
    :cond_1
    aget-object v5, v4, v1

    iget-object v6, p1, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->CreditType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 99
    const v5, 0x7f0c005d

    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    invoke-virtual {v5, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 97
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .restart local v0       #country:[Ljava/lang/String;
    .restart local v2       #iso:Ljava/lang/String;
    :cond_3
    aget-object v5, v0, v1

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 111
    const v5, 0x7f0c0066

    invoke-virtual {p0, v5}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/Spinner;

    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_3

    .line 109
    .restart local p0
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private finished()V
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lcom/newspaperdirect/pressreader/android/Payment$3;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/Payment$3;-><init>(Lcom/newspaperdirect/pressreader/android/Payment;)V

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/Payment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 214
    return-void
.end method

.method private hideProgressDialog()V
    .locals 2

    .prologue
    .line 299
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/newspaperdirect/pressreader/android/Payment;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private register(Landroid/os/Bundle;)V
    .locals 4
    .parameter "extra"

    .prologue
    const/4 v2, 0x1

    .line 148
    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/Payment;->showDialog(I)V

    .line 149
    const-string v0, "device-username"

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->getDeviceUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "carrier-id"

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v0, Lcom/newspaperdirect/pressreader/android/Payment$2;

    invoke-direct {v0, p0, p1}, Lcom/newspaperdirect/pressreader/android/Payment$2;-><init>(Lcom/newspaperdirect/pressreader/android/Payment;Landroid/os/Bundle;)V

    new-array v1, v2, [Ljava/lang/Void;

    const/4 v2, 0x0

    .line 203
    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/Payment$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    .line 151
    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/Payment;->taskRegister:Landroid/os/AsyncTask;

    .line 204
    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/Payment;->hideProgressDialog()V

    .line 280
    new-instance v0, Lcom/newspaperdirect/pressreader/android/Payment$5;

    invoke-direct {v0, p0, p1}, Lcom/newspaperdirect/pressreader/android/Payment$5;-><init>(Lcom/newspaperdirect/pressreader/android/Payment;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/Payment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 295
    return-void
.end method

.method private tryRegister(Landroid/os/Bundle;)V
    .locals 2
    .parameter "extra"

    .prologue
    .line 139
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcom/newspaperdirect/pressreader/android/Payment$1;

    invoke-direct {v1, p0, p1}, Lcom/newspaperdirect/pressreader/android/Payment$1;-><init>(Lcom/newspaperdirect/pressreader/android/Payment;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/NetworkConnectionChecker;->setPositiveResult(Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;)Lcom/newspaperdirect/pressreader/android/core/BaseChecker;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->check()V

    .line 145
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 118
    new-instance v1, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;-><init>(Lcom/newspaperdirect/pressreader/android/Payment;Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;)V

    .line 119
    .local v1, model:Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;
    invoke-direct {p0, p1, v1}, Lcom/newspaperdirect/pressreader/android/Payment;->bindValidate(Landroid/view/View;Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/Payment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "reg-info"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 121
    .local v0, extra:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 122
    const-string v2, "creditcard-type"

    iget-object v3, v1, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->CreditType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v2, "creditcard-number"

    iget-object v3, v1, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->CreditNumber:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v2, "cvv"

    iget-object v3, v1, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->CreditCvv:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v2, "expiry-year"

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, v1, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->ExpiryYear:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v2, "expiry-month"

    const-string v3, "%d"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, v1, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->ExpiryMonth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v2, "cardholder-name"

    iget-object v3, v1, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->Holder:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v2, "street-address"

    iget-object v3, v1, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->StreetAddress:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v2, "city"

    iget-object v3, v1, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->City:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v2, "state"

    iget-object v3, v1, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->State:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v2, "country"

    iget-object v3, v1, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->Country:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v2, "zip-code"

    iget-object v3, v1, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;->Zip:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-direct {p0, v0}, Lcom/newspaperdirect/pressreader/android/Payment;->tryRegister(Landroid/os/Bundle;)V

    .line 136
    .end local v0           #extra:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v14, 0x7f0900c1

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/Payment;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/Payment;->setTitle(Ljava/lang/CharSequence;)V

    .line 48
    const v14, 0x7f030019

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/Payment;->setContentView(I)V

    .line 50
    invoke-static/range {p0 .. p0}, Lcom/newspaperdirect/pressreader/android/core/AppInitHelper;->init(Landroid/app/Activity;)V

    .line 52
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v13, years:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/Calendar;->get(I)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/newspaperdirect/pressreader/android/Payment;->currentYear:I

    .line 54
    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/Payment;->currentYear:I

    move v6, v0

    .local v6, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/newspaperdirect/pressreader/android/Payment;->currentYear:I

    move v14, v0

    add-int/lit8 v14, v14, 0x1e

    if-lt v6, v14, :cond_0

    .line 58
    new-instance v5, Ljava/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 59
    .local v5, dfs:Ljava/text/DateFormatSymbols;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v10, months:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 61
    invoke-virtual {v5}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v14

    array-length v15, v14

    const/16 v16, 0x0

    move v7, v6

    .end local v6           #i:I
    .local v7, i:I
    :goto_1
    move/from16 v0, v16

    move v1, v15

    if-lt v0, v1, :cond_1

    .line 66
    const v14, 0x7f0c0060

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Spinner;

    .line 67
    .local v11, s:Landroid/widget/Spinner;
    new-instance v8, Landroid/widget/ArrayAdapter;

    .line 68
    const v14, 0x1090008

    .line 67
    move-object v0, v8

    move-object/from16 v1, p0

    move v2, v14

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 69
    .local v8, intAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    const v14, 0x1090009

    invoke-virtual {v8, v14}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 70
    invoke-virtual {v11, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 72
    const v14, 0x7f0c0061

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11           #s:Landroid/widget/Spinner;
    check-cast v11, Landroid/widget/Spinner;

    .line 73
    .restart local v11       #s:Landroid/widget/Spinner;
    new-instance v12, Landroid/widget/ArrayAdapter;

    const v14, 0x1090008

    move-object v0, v12

    move-object/from16 v1, p0

    move v2, v14

    move-object v3, v10

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 74
    .local v12, stringAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v14, 0x1090009

    invoke-virtual {v12, v14}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 75
    invoke-virtual {v11, v12}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 77
    const v14, 0x7f0c0068

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/Payment;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 78
    .local v4, btn:Landroid/widget/Button;
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    new-instance v14, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;

    const/4 v15, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;-><init>(Lcom/newspaperdirect/pressreader/android/Payment;Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;)V

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/newspaperdirect/pressreader/android/Payment;->dataBind(Lcom/newspaperdirect/pressreader/android/Payment$PaymentInfo;)V

    .line 81
    return-void

    .line 55
    .end local v4           #btn:Landroid/widget/Button;
    .end local v5           #dfs:Ljava/text/DateFormatSymbols;
    .end local v7           #i:I
    .end local v8           #intAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    .end local v10           #months:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #s:Landroid/widget/Spinner;
    .end local v12           #stringAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v6       #i:I
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 61
    .end local v6           #i:I
    .restart local v5       #dfs:Ljava/text/DateFormatSymbols;
    .restart local v7       #i:I
    .restart local v10       #months:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    aget-object v9, v14, v16

    .line 62
    .local v9, month:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    move v6, v7

    .line 61
    .end local v7           #i:I
    .restart local v6       #i:I
    :goto_2
    add-int/lit8 v16, v16, 0x1

    move v7, v6

    .end local v6           #i:I
    .restart local v7       #i:I
    goto/16 :goto_1

    .line 63
    :cond_2
    const-string v17, "%02d - %s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    add-int/lit8 v6, v7, 0x1

    .end local v7           #i:I
    .restart local v6       #i:I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v9, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 218
    packed-switch p1, :pswitch_data_0

    .line 231
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 220
    :pswitch_0
    const-string v1, ""

    const v2, 0x7f09000b

    invoke-virtual {p0, v2}, Lcom/newspaperdirect/pressreader/android/Payment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 221
    .local v0, p:Landroid/app/Dialog;
    new-instance v1, Lcom/newspaperdirect/pressreader/android/Payment$4;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/Payment$4;-><init>(Lcom/newspaperdirect/pressreader/android/Payment;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 228
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    move-object v1, v0

    .line 229
    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
