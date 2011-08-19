.class public Lcom/zinio/mobile/android/view/ChangePasswordActivity;
.super Lcom/zinio/mobile/android/view/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/CheckBox;

.field private f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

.field private g:Landroid/view/View$OnClickListener;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/BaseActivity;-><init>()V

    .line 51
    new-instance v0, Lcom/zinio/mobile/android/view/i;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/i;-><init>(Lcom/zinio/mobile/android/view/ChangePasswordActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->g:Landroid/view/View$OnClickListener;

    .line 148
    new-instance v0, Lcom/zinio/mobile/android/view/h;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/h;-><init>(Lcom/zinio/mobile/android/view/ChangePasswordActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/ChangePasswordActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->e:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic b(Lcom/zinio/mobile/android/view/ChangePasswordActivity;)Lcom/zinio/mobile/android/view/BottomToolbarActivity;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    return-object v0
.end method

.method static synthetic c(Lcom/zinio/mobile/android/view/ChangePasswordActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->a:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->a:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 208
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->b:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 211
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->c:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 225
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->a:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 218
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->b:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 221
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->c:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 231
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 235
    new-instance v4, Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {v4, p0}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    .line 237
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 238
    iget-object v5, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v0, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 241
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    :cond_0
    const v0, 0x7f08004c

    invoke-virtual {v4, v0}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 307
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 266
    const v0, 0x7f08005f

    invoke-virtual {v4, v0}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 268
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 272
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x5

    if-lt v0, v5, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0x14

    if-le v0, v5, :cond_4

    .line 273
    :cond_3
    const v0, 0x7f08004e

    invoke-virtual {v4, v0}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 275
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 279
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 280
    const v0, 0x7f08004d

    invoke-virtual {v4, v0}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 283
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 287
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 288
    const v0, 0x7f08008d

    invoke-virtual {v4, v0}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 290
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 294
    :cond_6
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 295
    const v0, 0x7f080052

    invoke-virtual {v4, v0}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 298
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 303
    :cond_7
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    iget-object v3, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->h:Landroid/os/Handler;

    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zinio/mobile/android/c/e;->g()Lcom/zinio/mobile/android/c/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zinio/mobile/android/c/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/zinio/mobile/android/c/e;->b(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Thread;

    .line 306
    invoke-virtual {p0, v6}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->showDialog(I)V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 331
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 335
    const v0, 0x7f0c000e

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ScrollView;

    const v0, 0x7f020001

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setBackgroundResource(I)V

    .line 337
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x7

    .line 87
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->requestWindowFeature(I)Z

    .line 89
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->setContentView(I)V

    .line 91
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 93
    const v1, 0x7f030020

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 97
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 100
    const/high16 v0, 0x7f0c

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setVisibility(I)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->h:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0001

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0003

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v0, 0x7f0c000f

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->a:Landroid/widget/EditText;

    .line 103
    const v0, 0x7f0c0010

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->b:Landroid/widget/EditText;

    .line 104
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->c:Landroid/widget/EditText;

    .line 105
    const v0, 0x7f0c0014

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->d:Landroid/widget/Button;

    .line 106
    const v0, 0x7f0c0013

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->e:Landroid/widget/CheckBox;

    .line 108
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->e:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v0, 0x7f0c0012

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 197
    invoke-static {p0}, Lcom/zinio/mobile/android/view/dialogs/e;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 350
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 351
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 352
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 353
    iget-object v1, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 354
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->d()V

    .line 357
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zinio/mobile/android/view/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 311
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onResume()V

    .line 314
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->c()V

    .line 316
    const v0, 0x7f0c000e

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    const v0, 0x7f020001

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 319
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 129
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onStart()V

    .line 131
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    :cond_0
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    .line 137
    const v1, 0x7f08004b

    const v2, 0x7f08004c

    new-instance v3, Lcom/zinio/mobile/android/view/j;

    invoke-direct {v3, p0}, Lcom/zinio/mobile/android/view/j;-><init>(Lcom/zinio/mobile/android/view/ChangePasswordActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/zinio/mobile/android/view/dialogs/e;->a(IILandroid/content/DialogInterface$OnClickListener;)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 146
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 323
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onStop()V

    .line 324
    const v0, 0x7f0c000e

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 326
    iget-object v0, p0, Lcom/zinio/mobile/android/view/ChangePasswordActivity;->f:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a()V

    .line 327
    return-void
.end method
