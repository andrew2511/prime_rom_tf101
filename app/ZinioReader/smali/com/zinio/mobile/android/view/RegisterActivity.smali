.class public final Lcom/zinio/mobile/android/view/RegisterActivity;
.super Lcom/zinio/mobile/android/view/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

.field private b:Z

.field private c:Lcom/zinio/mobile/android/view/dialogs/e;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/CheckBox;

.field private j:Landroid/widget/CheckBox;

.field private k:Landroid/widget/Button;

.field private l:Landroid/widget/Button;

.field private n:Landroid/os/Handler;

.field private o:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/BaseActivity;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->b:Z

    .line 53
    iput-object v1, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->c:Lcom/zinio/mobile/android/view/dialogs/e;

    .line 55
    iput-object v1, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->d:Landroid/widget/EditText;

    .line 56
    iput-object v1, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->e:Landroid/widget/EditText;

    .line 57
    iput-object v1, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->f:Landroid/widget/EditText;

    .line 58
    iput-object v1, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->g:Landroid/widget/EditText;

    .line 59
    iput-object v1, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->h:Landroid/widget/EditText;

    .line 60
    iput-object v1, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->i:Landroid/widget/CheckBox;

    .line 61
    iput-object v1, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->j:Landroid/widget/CheckBox;

    .line 62
    iput-object v1, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->k:Landroid/widget/Button;

    .line 63
    iput-object v1, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->l:Landroid/widget/Button;

    .line 65
    new-instance v0, Lcom/zinio/mobile/android/view/p;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/p;-><init>(Lcom/zinio/mobile/android/view/RegisterActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->n:Landroid/os/Handler;

    .line 126
    new-instance v0, Lcom/zinio/mobile/android/view/o;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/o;-><init>(Lcom/zinio/mobile/android/view/RegisterActivity;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->o:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/RegisterActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/zinio/mobile/android/view/RegisterActivity;)Lcom/zinio/mobile/android/view/dialogs/e;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->c:Lcom/zinio/mobile/android/view/dialogs/e;

    return-object v0
.end method

.method static synthetic c(Lcom/zinio/mobile/android/view/RegisterActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->i:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic d(Lcom/zinio/mobile/android/view/RegisterActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->j:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method final b()V
    .locals 9

    .prologue
    const/16 v8, 0x50

    .line 243
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 244
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 245
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 246
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 247
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    iget-object v1, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->i:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    .line 249
    iget-object v1, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->j:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    .line 252
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->c:Lcom/zinio/mobile/android/view/dialogs/e;

    const v1, 0x7f080059

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 255
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 323
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v8, :cond_1

    .line 260
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->c:Lcom/zinio/mobile/android/view/dialogs/e;

    const v1, 0x7f08005a

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 262
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 267
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->c:Lcom/zinio/mobile/android/view/dialogs/e;

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 269
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 273
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v8, :cond_3

    .line 274
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->c:Lcom/zinio/mobile/android/view/dialogs/e;

    const v1, 0x7f08005d

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 276
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 280
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 281
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->c:Lcom/zinio/mobile/android/view/dialogs/e;

    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 283
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 287
    :cond_4
    invoke-static {v4}, Lcom/zinio/mobile/android/util/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 288
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->c:Lcom/zinio/mobile/android/view/dialogs/e;

    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 290
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 294
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v8, 0x5

    if-lt v1, v8, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v8, 0x14

    if-le v1, v8, :cond_7

    .line 295
    :cond_6
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->c:Lcom/zinio/mobile/android/view/dialogs/e;

    const v1, 0x7f08004e

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 297
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 301
    :cond_7
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 302
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->c:Lcom/zinio/mobile/android/view/dialogs/e;

    const v1, 0x7f08004d

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    .line 304
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 308
    :cond_8
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/RegisterActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_a

    .line 312
    :cond_9
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->c:Lcom/zinio/mobile/android/view/dialogs/e;

    const v1, 0x7f08004c

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/dialogs/e;->a(I)Lcom/zinio/mobile/android/view/dialogs/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/m;->a(Lcom/zinio/mobile/android/view/cf;)V

    goto/16 :goto_0

    .line 319
    :cond_a
    invoke-static {}, Lcom/zinio/mobile/android/c/e;->e()Lcom/zinio/mobile/android/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->n:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v7}, Lcom/zinio/mobile/android/c/e;->b(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/Thread;

    .line 322
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/RegisterActivity;->showDialog(I)V

    goto/16 :goto_0
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0c0076

    const v4, 0x7f0c0074

    const/16 v3, 0x400

    const/4 v2, 0x7

    .line 155
    invoke-super {p0, p1}, Lcom/zinio/mobile/android/view/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    invoke-virtual {p0, v2}, Lcom/zinio/mobile/android/view/RegisterActivity;->requestWindowFeature(I)Z

    .line 157
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/RegisterActivity;->setContentView(I)V

    .line 159
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/RegisterActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 161
    const v1, 0x7f030020

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 162
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 165
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 166
    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 168
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/e;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/view/dialogs/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->c:Lcom/zinio/mobile/android/view/dialogs/e;

    .line 170
    const v0, 0x7f0c006d

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->d:Landroid/widget/EditText;

    .line 171
    const v0, 0x7f0c006e

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->e:Landroid/widget/EditText;

    .line 172
    const v0, 0x7f0c006f

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->f:Landroid/widget/EditText;

    .line 173
    const v0, 0x7f0c0070

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->g:Landroid/widget/EditText;

    .line 174
    const v0, 0x7f0c0071

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->h:Landroid/widget/EditText;

    .line 175
    invoke-virtual {p0, v4}, Lcom/zinio/mobile/android/view/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->i:Landroid/widget/CheckBox;

    .line 176
    invoke-virtual {p0, v5}, Lcom/zinio/mobile/android/view/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->j:Landroid/widget/CheckBox;

    .line 177
    const v0, 0x7f0c0072

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->k:Landroid/widget/Button;

    .line 178
    const v0, 0x7f0c0077

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->l:Landroid/widget/Button;

    .line 180
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->k:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->l:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const v0, 0x7f0c0073

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    invoke-virtual {p0, v4}, Lcom/zinio/mobile/android/view/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    const v0, 0x7f0c0075

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    invoke-virtual {p0, v5}, Lcom/zinio/mobile/android/view/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v0, 0x7f0c0057

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setVisibility(I)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->n:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0058

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    return-void
.end method

.method protected final onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 219
    invoke-static {p0}, Lcom/zinio/mobile/android/view/dialogs/e;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 226
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 227
    sget-object v0, Lcom/zinio/mobile/android/a;->c:Landroid/content/Intent;

    .line 228
    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 229
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/RegisterActivity;->finish()V

    .line 231
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->d()V

    .line 235
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/zinio/mobile/android/view/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected final onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 193
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onResume()V

    .line 197
    const v0, 0x7f0c006c

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setBackgroundResource(I)V

    .line 201
    invoke-static {}, Lcom/zinio/mobile/android/App;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Grid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c003f

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const v1, 0x7f040002

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 202
    :cond_0
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->b:Z

    if-eqz v0, :cond_1

    .line 203
    iput-boolean v3, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->b:Z

    .line 204
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->b()V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/RegisterActivity;->a:Lcom/zinio/mobile/android/view/BottomToolbarActivity;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/BottomToolbarActivity;->c()V

    goto :goto_0
.end method

.method protected final onStop()V
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Lcom/zinio/mobile/android/view/BaseActivity;->onStop()V

    .line 213
    const v0, 0x7f0c006c

    invoke-virtual {p0, v0}, Lcom/zinio/mobile/android/view/RegisterActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ScrollView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    return-void
.end method
