.class public Lcom/layar/PaymentProviderChooserActivity;
.super Landroid/app/Activity;
.source "PaymentProviderChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/layar/data/user/PaymentsManager$PaymentProvidersHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;
    }
.end annotation


# static fields
.field public static final LAYER_ID:Ljava/lang/String; = "layerId"

.field public static final LAYER_PUBLISHER:Ljava/lang/String; = "layerPublisher"

.field public static final LAYER_TITLE:Ljava/lang/String; = "layerTitle"

.field public static final RESULT_LAUNCH:I = 0xfaa

.field private static final SUBACTIVITY_LOGIN_BEFORE_PAYING:I = 0x1

.field private static final SUBACTIVITY_LOGIN_BEFORE_PROVIDERS_LIST:I = 0x2

.field private static final SUBACTIVITY_PERFORM_PAYMENT:I = 0x4

.field private static final SUBACTIVITY_VERIFICATION_PROMT:I = 0x3

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private dialogProgress:Landroid/app/ProgressDialog;

.field private helper:Lcom/layar/ActivityHelper;

.field private layerId:Ljava/lang/String;

.field private layerName:Ljava/lang/String;

.field private layerPublisher:Ljava/lang/String;

.field private provider:Ljava/lang/String;

.field private providerButtons:Landroid/widget/LinearLayout;

.field private viewMessage:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/layar/PaymentProviderChooserActivity;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/PaymentProviderChooserActivity;->TAG:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 65
    new-instance v0, Lcom/layar/ActivityHelper;

    invoke-direct {v0, p0}, Lcom/layar/ActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/layar/PaymentProviderChooserActivity;->helper:Lcom/layar/ActivityHelper;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/layar/PaymentProviderChooserActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity;->layerId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/layar/PaymentProviderChooserActivity;Ljava/lang/String;)Lcom/layar/data/user/UserManager$LoginHandler;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/layar/PaymentProviderChooserActivity;->loginHandler(Ljava/lang/String;)Lcom/layar/data/user/UserManager$LoginHandler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/layar/PaymentProviderChooserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/layar/PaymentProviderChooserActivity;->cancel()V

    return-void
.end method

.method static synthetic access$3(Lcom/layar/PaymentProviderChooserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/layar/PaymentProviderChooserActivity;->retrievePaymentProviders()V

    return-void
.end method

.method static synthetic access$4(Lcom/layar/PaymentProviderChooserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/layar/PaymentProviderChooserActivity;->verificationPromt()V

    return-void
.end method

.method static synthetic access$5(Lcom/layar/PaymentProviderChooserActivity;)Lcom/layar/ActivityHelper;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity;->helper:Lcom/layar/ActivityHelper;

    return-object v0
.end method

.method static synthetic access$6(Lcom/layar/PaymentProviderChooserActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/layar/PaymentProviderChooserActivity;->retryInitiatePayment(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/layar/PaymentProviderChooserActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/layar/PaymentProviderChooserActivity;->manualLoginAndInitiatePayment(Ljava/lang/String;)V

    return-void
.end method

.method private cancel()V
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/layar/PaymentProviderChooserActivity;->setResult(I)V

    .line 318
    invoke-virtual {p0}, Lcom/layar/PaymentProviderChooserActivity;->finish()V

    .line 319
    return-void
.end method

.method private createProviderButton(Lcom/layar/data/user/PaymentProvider;)Landroid/view/View;
    .locals 5
    .parameter "provider"

    .prologue
    const/4 v3, -0x2

    const/high16 v4, 0x4000

    .line 347
    new-instance v2, Lcom/layar/ui/ImageStatesButton;

    invoke-direct {v2, p0}, Lcom/layar/ui/ImageStatesButton;-><init>(Landroid/content/Context;)V

    .line 348
    .local v2, viewResult:Lcom/layar/ui/ImageStatesButton;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 350
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    sget v3, Lcom/layar/App;->DENSITY:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 351
    sget v3, Lcom/layar/App;->DENSITY:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 353
    invoke-virtual {v2, v1}, Lcom/layar/ui/ImageStatesButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/layar/ui/ImageStatesButton;->setBackgroundResource(I)V

    .line 355
    iget-object v3, p1, Lcom/layar/data/user/PaymentProvider;->icon:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 356
    .local v0, icon:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 357
    iget-object v3, p1, Lcom/layar/data/user/PaymentProvider;->id:Ljava/lang/String;

    invoke-static {v3}, Lcom/layar/data/ImageCache;->readPaymentIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_0

    .line 359
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p1, Lcom/layar/data/user/PaymentProvider;->icon:Ljava/lang/ref/SoftReference;

    .line 361
    :cond_0
    invoke-virtual {v2, v0}, Lcom/layar/ui/ImageStatesButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 362
    invoke-virtual {v2, p1}, Lcom/layar/ui/ImageStatesButton;->setTag(Ljava/lang/Object;)V

    .line 363
    invoke-virtual {v2, p0}, Lcom/layar/ui/ImageStatesButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    return-object v2
.end method

.method private initViews(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/data/user/PaymentProvider;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/user/PaymentProvider;>;"
    const/4 v7, 0x1

    .line 323
    iget-object v5, p0, Lcom/layar/PaymentProviderChooserActivity;->providerButtons:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 324
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 325
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_2

    .line 333
    const/4 v2, 0x0

    .line 334
    .local v2, message:Ljava/lang/String;
    if-ne v0, v7, :cond_3

    .line 335
    const v5, 0x7f090180

    invoke-virtual {p0, v5}, Lcom/layar/PaymentProviderChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 339
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 340
    const-string v5, "%layername%"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<b>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/layar/PaymentProviderChooserActivity;->layerName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</b>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 341
    const-string v6, "%publisher%"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "<b>"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/layar/PaymentProviderChooserActivity;->layerPublisher:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</b>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 342
    iget-object v5, p0, Lcom/layar/PaymentProviderChooserActivity;->viewMessage:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    :cond_1
    return-void

    .line 326
    .end local v2           #message:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/layar/data/user/PaymentProvider;

    .line 327
    .local v4, paymentProvider:Lcom/layar/data/user/PaymentProvider;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 328
    const/4 v5, -0x1

    const/4 v6, -0x2

    .line 327
    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 329
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/layar/PaymentProviderChooserActivity;->providerButtons:Landroid/widget/LinearLayout;

    invoke-direct {p0, v4}, Lcom/layar/PaymentProviderChooserActivity;->createProviderButton(Lcom/layar/data/user/PaymentProvider;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #paymentProvider:Lcom/layar/data/user/PaymentProvider;
    .restart local v2       #message:Ljava/lang/String;
    :cond_3
    if-le v0, v7, :cond_0

    .line 337
    const v5, 0x7f090181

    invoke-virtual {p0, v5}, Lcom/layar/PaymentProviderChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private loginAndCheckAccountVerified()V
    .locals 2

    .prologue
    .line 120
    invoke-static {}, Lcom/layar/App;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v0

    new-instance v1, Lcom/layar/PaymentProviderChooserActivity$2;

    invoke-direct {v1, p0}, Lcom/layar/PaymentProviderChooserActivity$2;-><init>(Lcom/layar/PaymentProviderChooserActivity;)V

    invoke-virtual {v0, v1}, Lcom/layar/data/user/UserManager;->login(Lcom/layar/data/user/UserManager$LoginHandler;)V

    .line 136
    return-void
.end method

.method private loginAndGetProviders()V
    .locals 2

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/layar/PaymentProviderChooserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-static {}, Lcom/layar/App;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v0

    new-instance v1, Lcom/layar/PaymentProviderChooserActivity$4;

    invoke-direct {v1, p0}, Lcom/layar/PaymentProviderChooserActivity$4;-><init>(Lcom/layar/PaymentProviderChooserActivity;)V

    invoke-virtual {v0, v1}, Lcom/layar/data/user/UserManager;->login(Lcom/layar/data/user/UserManager$LoginHandler;)V

    goto :goto_0
.end method

.method private loginHandler(Ljava/lang/String;)Lcom/layar/data/user/UserManager$LoginHandler;
    .locals 1
    .parameter "provider"

    .prologue
    .line 186
    new-instance v0, Lcom/layar/PaymentProviderChooserActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/layar/PaymentProviderChooserActivity$5;-><init>(Lcom/layar/PaymentProviderChooserActivity;Ljava/lang/String;)V

    return-object v0
.end method

.method private loginPrompt()V
    .locals 3

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/layar/PaymentProviderChooserActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    :goto_0
    return-void

    .line 155
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 156
    const-class v1, Lcom/layar/UserWelcomeActivity;

    .line 155
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v0, userIntent:Landroid/content/Intent;
    const-string v1, "headerTextId"

    .line 158
    const v2, 0x7f090161

    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/layar/PaymentProviderChooserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private manualLoginAndInitiatePayment(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/layar/PaymentProviderChooserActivity;->provider:Ljava/lang/String;

    .line 259
    invoke-direct {p0}, Lcom/layar/PaymentProviderChooserActivity;->loginPrompt()V

    .line 260
    return-void
.end method

.method private retrievePaymentProviders()V
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/layar/PaymentProviderChooserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    :goto_0
    return-void

    .line 141
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/layar/PaymentProviderChooserActivity;->dialogProgress:Landroid/app/ProgressDialog;

    .line 142
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity;->dialogProgress:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/layar/PaymentProviderChooserActivity$3;

    invoke-direct {v1, p0}, Lcom/layar/PaymentProviderChooserActivity$3;-><init>(Lcom/layar/PaymentProviderChooserActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 148
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity;->dialogProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 149
    invoke-static {}, Lcom/layar/App;->getPaymentManager()Lcom/layar/data/user/PaymentsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/layar/data/user/PaymentsManager;->getPaymentProvider(Lcom/layar/data/user/PaymentsManager$PaymentProvidersHandler;)V

    goto :goto_0
.end method

.method private retryInitiatePayment(Ljava/lang/String;)V
    .locals 3
    .parameter "provider"

    .prologue
    .line 229
    invoke-static {}, Lcom/layar/App;->getPaymentManager()Lcom/layar/data/user/PaymentsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/layar/PaymentProviderChooserActivity;->layerId:Ljava/lang/String;

    .line 230
    new-instance v2, Lcom/layar/PaymentProviderChooserActivity$6;

    invoke-direct {v2, p0}, Lcom/layar/PaymentProviderChooserActivity$6;-><init>(Lcom/layar/PaymentProviderChooserActivity;)V

    .line 229
    invoke-virtual {v0, p1, v1, v2}, Lcom/layar/data/user/PaymentsManager;->initiate(Ljava/lang/String;Ljava/lang/String;Lcom/layar/data/user/PaymentsManager$InitiatePaymentHandler;)V

    .line 255
    return-void
.end method

.method private verificationPromt()V
    .locals 2

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/layar/PaymentProviderChooserActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 266
    const-class v1, Lcom/layar/UserVerificationPromptActivity;

    .line 265
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    .local v0, verifyIntent:Landroid/content/Intent;
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/layar/PaymentProviderChooserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public handleResponse(Lcom/layar/data/user/PaymentProvidersResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 439
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity;->dialogProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 440
    iput-object v3, p0, Lcom/layar/PaymentProviderChooserActivity;->dialogProgress:Landroid/app/ProgressDialog;

    .line 442
    invoke-virtual {p1}, Lcom/layar/data/user/PaymentProvidersResponse;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p1, Lcom/layar/data/user/PaymentProvidersResponse;->paymentProviders:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/layar/PaymentProviderChooserActivity;->initViews(Ljava/util/ArrayList;)V

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    const/16 v0, 0x2e

    invoke-virtual {p1}, Lcom/layar/data/user/PaymentProvidersResponse;->getResponseCode()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 448
    invoke-direct {p0}, Lcom/layar/PaymentProviderChooserActivity;->loginPrompt()V

    goto :goto_0

    .line 449
    :cond_2
    const/16 v0, 0x2d

    invoke-virtual {p1}, Lcom/layar/data/user/PaymentProvidersResponse;->getResponseCode()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 450
    invoke-static {}, Lcom/layar/App;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/layar/data/user/UserManager;->setToken(Ljava/lang/String;)V

    .line 451
    invoke-direct {p0}, Lcom/layar/PaymentProviderChooserActivity;->loginAndGetProviders()V

    goto :goto_0

    .line 452
    :cond_3
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v0, p1, v2}, Lcom/layar/ActivityHelper;->handleResponse(Lcom/layar/data/Response;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    const v0, 0x7f090176

    .line 455
    invoke-static {p0, v0, v2}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Lcom/layar/ui/SmartToast;->show()V

    .line 458
    sget-object v0, Lcom/layar/PaymentProviderChooserActivity;->TAG:Ljava/lang/String;

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get payment providers request failed, error response: ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p1}, Lcom/layar/data/user/PaymentProvidersResponse;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 459
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 458
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 272
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 273
    if-ne p1, v5, :cond_1

    .line 274
    iget-object v3, p0, Lcom/layar/PaymentProviderChooserActivity;->provider:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/layar/PaymentProviderChooserActivity;->retryInitiatePayment(Ljava/lang/String;)V

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_5

    .line 276
    invoke-static {}, Lcom/layar/App;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v2

    .line 277
    .local v2, userManager:Lcom/layar/data/user/UserManager;
    invoke-virtual {v2}, Lcom/layar/data/user/UserManager;->isLoggedIn()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lcom/layar/data/user/UserManager;->getLoggedInUser()Lcom/layar/data/user/User;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 278
    invoke-virtual {v2}, Lcom/layar/data/user/UserManager;->isAccountVerified()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 279
    invoke-virtual {p0}, Lcom/layar/PaymentProviderChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/layar/data/layer/LayerDB20;->getInstance(Landroid/content/Context;)Lcom/layar/data/layer/LayerDB20;

    move-result-object v1

    .line 280
    .local v1, layerDb:Lcom/layar/data/layer/LayerDB20;
    iget-object v3, p0, Lcom/layar/PaymentProviderChooserActivity;->layerId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/layar/data/layer/LayerDB20;->getLayer(Ljava/lang/String;)Lcom/layar/data/layer/Layer20;

    move-result-object v0

    .line 281
    .local v0, layer:Lcom/layar/data/layer/Layer20;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    iget-boolean v3, v3, Lcom/layar/data/layer/Layer20$Premium;->purchased:Z

    if-eqz v3, :cond_2

    .line 282
    invoke-virtual {p0}, Lcom/layar/PaymentProviderChooserActivity;->finish()V

    goto :goto_0

    .line 284
    :cond_2
    invoke-direct {p0}, Lcom/layar/PaymentProviderChooserActivity;->retrievePaymentProviders()V

    goto :goto_0

    .line 286
    .end local v0           #layer:Lcom/layar/data/layer/Layer20;
    .end local v1           #layerDb:Lcom/layar/data/layer/LayerDB20;
    :cond_3
    invoke-direct {p0}, Lcom/layar/PaymentProviderChooserActivity;->verificationPromt()V

    goto :goto_0

    .line 288
    :cond_4
    invoke-direct {p0}, Lcom/layar/PaymentProviderChooserActivity;->cancel()V

    goto :goto_0

    .line 291
    .end local v2           #userManager:Lcom/layar/data/user/UserManager;
    :cond_5
    const/4 v3, 0x3

    if-ne p1, v3, :cond_7

    .line 292
    if-nez p2, :cond_6

    .line 293
    invoke-direct {p0}, Lcom/layar/PaymentProviderChooserActivity;->cancel()V

    goto :goto_0

    .line 296
    :cond_6
    invoke-direct {p0}, Lcom/layar/PaymentProviderChooserActivity;->retrievePaymentProviders()V

    goto :goto_0

    .line 298
    :cond_7
    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    .line 299
    if-ne p2, v4, :cond_9

    .line 300
    invoke-virtual {p0, v4}, Lcom/layar/PaymentProviderChooserActivity;->setResult(I)V

    .line 301
    invoke-virtual {p0}, Lcom/layar/PaymentProviderChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/layar/data/layer/LayerDB20;->getInstance(Landroid/content/Context;)Lcom/layar/data/layer/LayerDB20;

    move-result-object v1

    .line 302
    .restart local v1       #layerDb:Lcom/layar/data/layer/LayerDB20;
    iget-object v3, p0, Lcom/layar/PaymentProviderChooserActivity;->layerId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/layar/data/layer/LayerDB20;->getLayer(Ljava/lang/String;)Lcom/layar/data/layer/Layer20;

    move-result-object v0

    .line 303
    .restart local v0       #layer:Lcom/layar/data/layer/Layer20;
    if-eqz v0, :cond_8

    iget-object v3, v0, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    if-eqz v3, :cond_8

    .line 304
    iget-object v3, v0, Lcom/layar/data/layer/Layer20;->premium:Lcom/layar/data/layer/Layer20$Premium;

    iput-boolean v5, v3, Lcom/layar/data/layer/Layer20$Premium;->purchased:Z

    .line 305
    invoke-virtual {v1, v0}, Lcom/layar/data/layer/LayerDB20;->addLayer(Lcom/layar/data/layer/Layer20;)V

    .line 307
    :cond_8
    invoke-virtual {p0}, Lcom/layar/PaymentProviderChooserActivity;->finish()V

    goto :goto_0

    .line 309
    .end local v0           #layer:Lcom/layar/data/layer/Layer20;
    .end local v1           #layerDb:Lcom/layar/data/layer/LayerDB20;
    :cond_9
    if-ne p2, v5, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/layar/PaymentProviderChooserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 311
    const v4, 0x7f09017a

    .line 310
    invoke-static {v3, v4, v5}, Lcom/layar/ui/SmartToast;->makeText(Landroid/content/Context;II)Lcom/layar/ui/SmartToast;

    move-result-object v3

    .line 311
    invoke-virtual {v3}, Lcom/layar/ui/SmartToast;->show()V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/layar/data/user/PaymentProvider;

    .line 182
    .local v0, provider:Lcom/layar/data/user/PaymentProvider;
    new-instance v1, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;

    invoke-direct {v1, p0, p0, v0}, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;-><init>(Lcom/layar/PaymentProviderChooserActivity;Landroid/content/Context;Lcom/layar/data/user/PaymentProvider;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/layar/PaymentProviderChooserActivity$InitiatePaymentTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 183
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v3, 0x7f03003b

    invoke-virtual {p0, v3}, Lcom/layar/PaymentProviderChooserActivity;->setContentView(I)V

    .line 83
    const v3, 0x7f070098

    invoke-virtual {p0, v3}, Lcom/layar/PaymentProviderChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/layar/PaymentProviderChooserActivity;->providerButtons:Landroid/widget/LinearLayout;

    .line 84
    const v3, 0x7f07001f

    invoke-virtual {p0, v3}, Lcom/layar/PaymentProviderChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/layar/PaymentProviderChooserActivity;->viewMessage:Landroid/widget/TextView;

    .line 86
    const v3, 0x7f070042

    invoke-virtual {p0, v3}, Lcom/layar/PaymentProviderChooserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 87
    .local v0, cancelButton:Landroid/widget/Button;
    new-instance v3, Lcom/layar/PaymentProviderChooserActivity$1;

    invoke-direct {v3, p0}, Lcom/layar/PaymentProviderChooserActivity$1;-><init>(Lcom/layar/PaymentProviderChooserActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-virtual {p0}, Lcom/layar/PaymentProviderChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 94
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "layerId"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/layar/PaymentProviderChooserActivity;->layerId:Ljava/lang/String;

    .line 95
    const-string v3, "layerTitle"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/layar/PaymentProviderChooserActivity;->layerName:Ljava/lang/String;

    .line 96
    const-string v3, "layerPublisher"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/layar/PaymentProviderChooserActivity;->layerPublisher:Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/layar/App;->getUserManager()Lcom/layar/data/user/UserManager;

    move-result-object v2

    .line 99
    .local v2, userManager:Lcom/layar/data/user/UserManager;
    invoke-virtual {v2}, Lcom/layar/data/user/UserManager;->isLoggedIn()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/layar/data/user/UserManager;->getLoggedInUser()Lcom/layar/data/user/User;

    move-result-object v3

    if-nez v3, :cond_1

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/layar/PaymentProviderChooserActivity;->loginPrompt()V

    .line 108
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {v2}, Lcom/layar/data/user/UserManager;->isAccountVerified()Z

    move-result v3

    if-nez v3, :cond_2

    .line 104
    invoke-direct {p0}, Lcom/layar/PaymentProviderChooserActivity;->loginAndCheckAccountVerified()V

    goto :goto_0

    .line 106
    :cond_2
    invoke-direct {p0}, Lcom/layar/PaymentProviderChooserActivity;->retrievePaymentProviders()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 113
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity;->dialogProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/layar/PaymentProviderChooserActivity;->dialogProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/PaymentProviderChooserActivity;->dialogProgress:Landroid/app/ProgressDialog;

    .line 117
    :cond_0
    return-void
.end method
