.class public Lcom/android/vending/billing/InAppBuyPageActivity;
.super Lcom/android/vending/billing/BaseBuyPageActivity;
.source "InAppBuyPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/billing/InAppBuyPageActivity$4;,
        Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;
    }
.end annotation


# instance fields
.field private mDeveloperPayload:Ljava/lang/String;

.field private mDisplayingErrorDialog:Z

.field private mErrorDialogAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

.field private mHelpUri:Landroid/net/Uri;

.field private mItemInfoView:Landroid/widget/TextView;

.field private volatile mNotificationDeadline:J

.field private mNotificationReceiver:Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

.field private mRequestId:J

.field private mResponseCode:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

.field private volatile mSeenNotificationIds:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;-><init>()V

    .line 78
    sget-object v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    iput-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mResponseCode:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/billing/InAppBuyPageActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mSeenNotificationIds:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/vending/billing/InAppBuyPageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mSeenNotificationIds:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/vending/billing/InAppBuyPageActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationDeadline:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/vending/billing/InAppBuyPageActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mHelpUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/vending/billing/InAppBuyPageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/vending/billing/InAppBuyPageActivity;->dismissBuyPage()V

    return-void
.end method

.method private dismissBuyPage()V
    .locals 3

    .prologue
    .line 486
    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mSeenNotificationIds:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 487
    const v1, 0x7f070106

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 489
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 493
    .end local v0           #toast:Landroid/widget/Toast;
    :goto_0
    invoke-virtual {p0}, Lcom/android/vending/billing/InAppBuyPageActivity;->finish()V

    .line 494
    return-void

    .line 491
    :cond_0
    sget-object v1, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_USER_CANCELED:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    iput-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mResponseCode:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    goto :goto_0
.end method

.method private displayErrorDialog(IILjava/lang/String;)V
    .locals 6
    .parameter "titleId"
    .parameter "messageId"
    .parameter "helpUrl"

    .prologue
    .line 430
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mDisplayingErrorDialog:Z

    .line 431
    const/4 v5, 0x0

    .line 432
    .local v5, helpButtonText:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 433
    invoke-static {p3}, Lcom/android/vending/util/Util;->replaceLanguageAndRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 434
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mHelpUri:Landroid/net/Uri;

    .line 435
    const v0, 0x7f07009a

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/InAppBuyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 437
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/vending/billing/InAppBuyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, title:Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/android/vending/billing/InAppBuyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 439
    .local v3, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mErrorDialogAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/InAppBuyPageActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/vending/AlertUtil;->displayTitleMessageDialog(Lcom/android/vending/BaseActivity;Lcom/android/vending/AlertUtil$MutableDialogAccessor;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 441
    return-void
.end method


# virtual methods
.method protected addAppIconRequest(Lcom/android/vending/billing/PurchasePostAction;)Z
    .locals 1
    .parameter "purchasePostAction"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mAssetId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/vending/billing/PurchasePostAction;->queueIconRequest(Ljava/lang/String;)V

    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method protected addAssetRequest(Lcom/android/vending/billing/PurchasePostAction;)Z
    .locals 1
    .parameter "purchasePostAction"

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method protected addPurchaseProductRequest(Lcom/android/vending/billing/PurchasePostAction;)Z
    .locals 4
    .parameter "purchasePostAction"

    .prologue
    .line 296
    new-instance v0, Lcom/android/vending/model/PurchaseProductRequest;

    invoke-direct {v0}, Lcom/android/vending/model/PurchaseProductRequest;-><init>()V

    .line 297
    .local v0, request:Lcom/android/vending/model/PurchaseProductRequest;
    sget-object v1, Lcom/android/vending/model/PurchaseInfo$ProductType;->MARKET_IN_APP_PRODUCT:Lcom/android/vending/model/PurchaseInfo$ProductType;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/PurchaseProductRequest;->setProductType(Lcom/android/vending/model/PurchaseInfo$ProductType;)V

    .line 298
    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mAssetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/PurchaseProductRequest;->setProductId(Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mVersionCode:I

    iget-object v3, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/vending/billing/InAppBuyPageActivity;->computeSignatureHash(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/vending/model/PurchaseProductRequest;->setPackageParams(Ljava/lang/String;I[B)V

    .line 300
    invoke-virtual {p1, v0}, Lcom/android/vending/billing/PurchasePostAction;->queuePurchaseProductRequest(Lcom/android/vending/model/PurchaseProductRequest;)V

    .line 301
    const/4 v1, 0x1

    return v1
.end method

.method protected createView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "icicle"

    .prologue
    .line 249
    const v1, 0x7f040042

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/InAppBuyPageActivity;->setContentView(I)V

    .line 251
    const v1, 0x7f080075

    invoke-virtual {p0, v1}, Lcom/android/vending/billing/InAppBuyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 252
    .local v0, rootView:Landroid/view/View;
    invoke-virtual {p0, v0, v0}, Lcom/android/vending/billing/InAppBuyPageActivity;->setupWidgets(Landroid/view/View;Landroid/view/View;)V

    .line 253
    return-object v0
.end method

.method public displayWaitingUiForPurchaseOrderAction()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mRootView:Landroid/view/View;

    const v1, 0x7f080076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mRootView:Landroid/view/View;

    const v1, 0x7f0800df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mRootView:Landroid/view/View;

    const v1, 0x7f0800e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    const v0, 0x7f070106

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    .line 509
    return-void
.end method

.method protected finishOnOrderSuccess()Z
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x0

    return v0
.end method

.method protected getAccountNameView(Landroid/view/View;Landroid/view/View;)Landroid/widget/TextView;
    .locals 1
    .parameter "rootView"
    .parameter "titleBarView"

    .prologue
    .line 457
    const v0, 0x7f080062

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method protected getDefaultRefundPolicy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    const-string v0, ""

    return-object v0
.end method

.method protected hideWaitingUi()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 467
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/InAppBuyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 468
    const v0, 0x7f08007e

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/InAppBuyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 469
    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/InAppBuyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 470
    return-void
.end method

.method public hideWaitingUiForPurchaseOrderAction()V
    .locals 0

    .prologue
    .line 514
    return-void
.end method

.method protected initClass(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/vending/billing/InAppBuyPageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 178
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "request_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mRequestId:J

    .line 179
    const-string v1, "developer_payload"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mDeveloperPayload:Ljava/lang/String;

    .line 181
    new-instance v1, Lcom/android/vending/billing/InAppBuyPageActivity$1;

    invoke-direct {v1, p0}, Lcom/android/vending/billing/InAppBuyPageActivity$1;-><init>(Lcom/android/vending/billing/InAppBuyPageActivity;)V

    new-instance v2, Lcom/android/vending/billing/InAppBuyPageActivity$2;

    invoke-direct {v2, p0}, Lcom/android/vending/billing/InAppBuyPageActivity$2;-><init>(Lcom/android/vending/billing/InAppBuyPageActivity;)V

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/android/vending/AlertUtil;->registerMutableDialogAccessor(Lcom/android/vending/BaseActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mErrorDialogAccessor:Lcom/android/vending/AlertUtil$MutableDialogAccessor;

    .line 195
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->onDestroy()V

    .line 217
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationReceiver:Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationReceiver:Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    invoke-virtual {v0}, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->onDestroy()V

    .line 220
    :cond_0
    return-void
.end method

.method protected onDisplayErrorUi(Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;)V
    .locals 1
    .parameter "errorType"

    .prologue
    .line 412
    sget-object v0, Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;->NETWORK_ERROR:Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;

    if-ne p1, v0, :cond_0

    .line 413
    sget-object v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    iput-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mResponseCode:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    .line 417
    :goto_0
    invoke-super {p0, p1}, Lcom/android/vending/billing/BaseBuyPageActivity;->onDisplayErrorUi(Lcom/android/vending/BaseActivity$BaseAction$RequestErrorType;)V

    .line 418
    return-void

    .line 415
    :cond_0
    sget-object v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    iput-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mResponseCode:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    goto :goto_0
.end method

.method public onImageLoaded(Lcom/android/vending/model/GetImageResponse;Lcom/android/vending/model/Asset$AppImageUsage;)V
    .locals 1
    .parameter "response"
    .parameter "usage"

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mDisplayingErrorDialog:Z

    if-eqz v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 335
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/vending/billing/BaseBuyPageActivity;->onImageLoaded(Lcom/android/vending/model/GetImageResponse;Lcom/android/vending/model/Asset$AppImageUsage;)V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 477
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 478
    invoke-direct {p0}, Lcom/android/vending/billing/InAppBuyPageActivity;->dismissBuyPage()V

    move v0, v1

    .line 481
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->onPause()V

    .line 208
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationReceiver:Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationReceiver:Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    invoke-virtual {v0}, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->onPause()V

    .line 210
    invoke-virtual {p0}, Lcom/android/vending/billing/InAppBuyPageActivity;->finish()V

    .line 212
    :cond_0
    return-void
.end method

.method public onPostResponse(Lcom/android/vending/model/PurchasePostResponse;)V
    .locals 4
    .parameter "postResponse"

    .prologue
    const/4 v3, 0x0

    .line 366
    iget-boolean v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 403
    :goto_0
    return-void

    .line 369
    :cond_0
    invoke-virtual {p1}, Lcom/android/vending/model/PurchasePostResponse;->getPurchaseResult()Lcom/android/vending/model/PurchaseResult$ResultCode;

    move-result-object v0

    .line 370
    .local v0, purchaseResult:Lcom/android/vending/model/PurchaseResult$ResultCode;
    sget-object v1, Lcom/android/vending/billing/InAppBuyPageActivity$4;->$SwitchMap$com$android$vending$model$PurchaseResult$ResultCode:[I

    invoke-virtual {v0}, Lcom/android/vending/model/PurchaseResult$ResultCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 402
    invoke-super {p0, p1}, Lcom/android/vending/billing/BaseBuyPageActivity;->onPostResponse(Lcom/android/vending/model/PurchasePostResponse;)V

    goto :goto_0

    .line 372
    :pswitch_0
    sget-object v1, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    iput-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mResponseCode:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    .line 373
    const v1, 0x7f07003f

    const v2, 0x7f070040

    invoke-direct {p0, v1, v2, v3}, Lcom/android/vending/billing/InAppBuyPageActivity;->displayErrorDialog(IILjava/lang/String;)V

    goto :goto_0

    .line 380
    :pswitch_1
    sget-object v1, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    iput-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mResponseCode:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    .line 381
    const v1, 0x7f070041

    const v2, 0x7f070042

    invoke-direct {p0, v1, v2, v3}, Lcom/android/vending/billing/InAppBuyPageActivity;->displayErrorDialog(IILjava/lang/String;)V

    goto :goto_0

    .line 391
    :pswitch_2
    sget-object v1, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    iput-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mResponseCode:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    .line 396
    const v1, 0x7f070043

    const v2, 0x7f070044

    const-string v3, "http://www.google.com/support/androidmarket/bin/answer.py?answer=1084187&hl=%lang%&dl=%region%"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/vending/billing/InAppBuyPageActivity;->displayErrorDialog(IILjava/lang/String;)V

    goto :goto_0

    .line 370
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPurchaseProductResponse(Lcom/android/vending/model/PurchaseProductResponse;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 344
    iget-boolean v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mDisplayingErrorDialog:Z

    if-eqz v2, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    invoke-super {p0, p1}, Lcom/android/vending/billing/BaseBuyPageActivity;->onPurchaseProductResponse(Lcom/android/vending/model/PurchaseProductResponse;)V

    .line 351
    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseProductResponse;->getItemTitle()Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseProductResponse;->getItemDescription()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, description:Ljava/lang/String;
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 354
    iget-object v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mItemInfoView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</b> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 356
    :cond_2
    if-eqz v1, :cond_3

    .line 357
    iget-object v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mItemInfoView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</b>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 359
    :cond_3
    if-eqz v0, :cond_0

    .line 360
    iget-object v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mItemInfoView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 267
    invoke-super {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->onRestart()V

    .line 268
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 233
    if-eqz p1, :cond_0

    .line 234
    const-string v1, "SEEN_NOTIFICATION_IDS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, ids:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 237
    new-instance v1, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    invoke-direct {v1, p0, v0}, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;-><init>(Lcom/android/vending/billing/InAppBuyPageActivity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationReceiver:Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    .line 238
    const-string v1, "NOTIFICATION_DEADLINE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationDeadline:J

    .line 239
    invoke-virtual {p0}, Lcom/android/vending/billing/InAppBuyPageActivity;->displayWaitingUiForPurchaseOrderAction()V

    .line 244
    .end local v0           #ids:Ljava/lang/String;
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-super {p0, p1}, Lcom/android/vending/billing/BaseBuyPageActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->onResume()V

    .line 200
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationReceiver:Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationReceiver:Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    invoke-virtual {v0}, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->onResume()V

    .line 203
    :cond_0
    return-void
.end method

.method protected onRetryPanelCanceled()V
    .locals 0

    .prologue
    .line 407
    invoke-super {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->onRetryPanelCanceled()V

    .line 408
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mCurrentState:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    if-eqz v0, :cond_0

    .line 225
    invoke-super {p0, p1}, Lcom/android/vending/billing/BaseBuyPageActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 227
    :cond_0
    const-string v0, "SEEN_NOTIFICATION_IDS"

    iget-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mSeenNotificationIds:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v0, "NOTIFICATION_DEADLINE"

    iget-wide v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationDeadline:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 229
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 258
    invoke-super {p0}, Lcom/android/vending/billing/BaseBuyPageActivity;->onStop()V

    .line 259
    invoke-virtual {p0}, Lcom/android/vending/billing/InAppBuyPageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mPackageName:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mRequestId:J

    iget-object v3, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mResponseCode:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/vending/billing/MarketBillingService;->sendResponseCode(Landroid/content/Context;Ljava/lang/String;JLcom/android/vending/billing/MarketBillingService$ResponseCode;)Z

    .line 263
    :cond_0
    return-void
.end method

.method protected purchaseAsset(Ljava/lang/String;Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;Ljava/lang/String;)V
    .locals 4
    .parameter "instrumentId"
    .parameter "instrumentType"
    .parameter "carrierBillingPassword"

    .prologue
    .line 521
    new-instance v2, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    invoke-direct {v2, p0}, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;-><init>(Lcom/android/vending/billing/InAppBuyPageActivity;)V

    iput-object v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationReceiver:Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    .line 522
    sget-object v2, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_MAX_IAB_PURCHASE_WAIT_MS:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v2}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 523
    .local v0, purchaseWaitDeadline:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationDeadline:J

    .line 524
    iget-object v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationReceiver:Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    invoke-virtual {v2}, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->registerReceiver()V

    .line 527
    invoke-super {p0, p1, p2, p3}, Lcom/android/vending/billing/BaseBuyPageActivity;->purchaseAsset(Ljava/lang/String;Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;Ljava/lang/String;)V

    .line 532
    iget-object v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationReceiver:Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    invoke-virtual {v2}, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->onResume()V

    .line 533
    iget-object v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mNotificationReceiver:Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;

    invoke-virtual {v2, v0, v1}, Lcom/android/vending/billing/InAppBuyPageActivity$NotificationReceiver;->postCloseActivity(J)V

    .line 534
    return-void
.end method

.method protected setPurchasePostProductType(Lcom/android/vending/model/PurchasePostRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 306
    sget-object v0, Lcom/android/vending/model/PurchaseInfo$ProductType;->MARKET_IN_APP_PRODUCT:Lcom/android/vending/model/PurchaseInfo$ProductType;

    invoke-virtual {p1, v0}, Lcom/android/vending/model/PurchasePostRequest;->setProductType(Lcom/android/vending/model/PurchaseInfo$ProductType;)V

    .line 307
    return-void
.end method

.method protected setSignatureHash(Lcom/android/vending/model/PurchaseOrderRequest;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mVersionCode:I

    iget-object v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/InAppBuyPageActivity;->computeSignatureHash(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/vending/model/PurchaseOrderRequest;->setPackageParams(Ljava/lang/String;I[B)V

    .line 325
    return-void
.end method

.method protected setSignatureHash(Lcom/android/vending/model/PurchasePostRequest;)V
    .locals 3
    .parameter "request"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mPackageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mVersionCode:I

    iget-object v2, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/vending/billing/InAppBuyPageActivity;->computeSignatureHash(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/vending/model/PurchasePostRequest;->setPackageParams(Ljava/lang/String;I[B)V

    .line 320
    return-void
.end method

.method protected setupWidgets(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "rootView"
    .parameter "titleBarView"

    .prologue
    .line 445
    invoke-super {p0, p1, p2}, Lcom/android/vending/billing/BaseBuyPageActivity;->setupWidgets(Landroid/view/View;Landroid/view/View;)V

    .line 446
    const v1, 0x7f0800e8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mItemInfoView:Landroid/widget/TextView;

    .line 448
    const v1, 0x7f080054

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 449
    .local v0, cancel:Landroid/widget/Button;
    new-instance v1, Lcom/android/vending/billing/InAppBuyPageActivity$3;

    invoke-direct {v1, p0}, Lcom/android/vending/billing/InAppBuyPageActivity$3;-><init>(Lcom/android/vending/billing/InAppBuyPageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    return-void
.end method

.method protected showWaitingUi()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 461
    const v0, 0x7f0800eb

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/InAppBuyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 462
    const v0, 0x7f08007e

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/InAppBuyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 463
    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Lcom/android/vending/billing/InAppBuyPageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 464
    return-void
.end method

.method protected updatePurchaseOrderForProductType(Lcom/android/vending/model/PurchaseOrderRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 311
    sget-object v0, Lcom/android/vending/model/PurchaseInfo$ProductType;->MARKET_IN_APP_PRODUCT:Lcom/android/vending/model/PurchaseInfo$ProductType;

    invoke-virtual {p1, v0}, Lcom/android/vending/model/PurchaseOrderRequest;->setProductType(Lcom/android/vending/model/PurchaseInfo$ProductType;)V

    .line 312
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mDeveloperPayload:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/vending/billing/InAppBuyPageActivity;->mDeveloperPayload:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/vending/model/PurchaseOrderRequest;->setDeveloperPayload(Ljava/lang/String;)V

    .line 315
    :cond_0
    return-void
.end method

.method public updateStateDependentUi(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 0
    .parameter "assetId"
    .parameter "newState"

    .prologue
    .line 474
    return-void
.end method
