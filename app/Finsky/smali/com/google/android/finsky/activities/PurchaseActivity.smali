.class public Lcom/google/android/finsky/activities/PurchaseActivity;
.super Landroid/app/Activity;
.source "PurchaseActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;
.implements Lcom/android/volley/Response$Listener;
.implements Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/activities/PurchaseActivity$12;,
        Lcom/google/android/finsky/activities/PurchaseActivity$HeightAnimator;,
        Lcom/google/android/finsky/activities/PurchaseActivity$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;",
        ">;",
        "Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$Listener",
        "<",
        "Landroid/net/Uri;",
        ">;",
        "Lcom/android/volley/Response$ErrorListener;"
    }
.end annotation


# static fields
.field public static MAX_WEB_VIEW_HEIGHT:I


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBackend:I

.field private mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

.field private mButtonGroup:Landroid/view/ViewGroup;

.field private mCheckoutServiceId:Ljava/lang/String;

.field private mCurrentAccountName:Ljava/lang/String;

.field private mCurrentState:Lcom/google/android/finsky/activities/PurchaseActivity$State;

.field private mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private mDocument:Lcom/google/android/finsky/api/model/Document;

.field private mFopLoadingIndicator:Landroid/widget/ProgressBar;

.field private mFormsOfPaymentSpinner:Landroid/widget/Spinner;

.field private mFreeItemDetails:Landroid/widget/TextView;

.field private mHadValidFop:Z

.field private mOfferType:I

.field private mPaidItemDetails:Landroid/view/ViewGroup;

.field private mPermissionsView:Landroid/view/ViewGroup;

.field private mPriceSpinner:Landroid/widget/TextView;

.field private mPurchaseSummaryView:Landroid/view/ViewGroup;

.field private mRootView:Landroid/view/ViewGroup;

.field private mSelectedCart:Ljava/lang/String;

.field private mSelectedInstrumentId:Ljava/lang/String;

.field private mShouldSendAuthToken:Z

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewHolder:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 242
    sget-object v0, Lcom/google/android/finsky/activities/PurchaseActivity$State;->PURCHASE_SUMMARY:Lcom/google/android/finsky/activities/PurchaseActivity$State;

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mCurrentState:Lcom/google/android/finsky/activities/PurchaseActivity$State;

    .line 270
    iput-boolean v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mShouldSendAuthToken:Z

    .line 278
    iput-boolean v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mHadValidFop:Z

    .line 514
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/PurchaseActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->finishWithSuccess()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/PurchaseActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mFormsOfPaymentSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/activities/PurchaseActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mPurchaseSummaryView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/finsky/activities/PurchaseActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mWebViewHolder:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/finsky/activities/PurchaseActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->resetWebView()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/finsky/activities/PurchaseActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mPriceSpinner:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/finsky/activities/PurchaseActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseActivity;->setupWebView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/finsky/activities/PurchaseActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->getRefundPolicyUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/finsky/activities/PurchaseActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->finishWithError()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/finsky/activities/PurchaseActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseActivity;->handleDfeUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/google/android/finsky/activities/PurchaseActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mSelectedCart:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/google/android/finsky/activities/PurchaseActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mShouldSendAuthToken:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/finsky/activities/PurchaseActivity;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/PurchaseActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mOfferType:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/activities/PurchaseActivity;)Lcom/google/android/finsky/api/DfeApi;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/activities/PurchaseActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseActivity;->finishWithError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/finsky/activities/PurchaseActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private destroyWebView()V
    .locals 1

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 1324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mWebView:Landroid/webkit/WebView;

    .line 1326
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->removeCookies()V

    .line 1328
    :cond_0
    return-void
.end method

.method private finishWithError()V
    .locals 1

    .prologue
    .line 1276
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->finishWithError(Ljava/lang/String;)V

    .line 1277
    return-void
.end method

.method private finishWithError(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 1302
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/PurchaseActivity;->sendError(Ljava/lang/String;)V

    .line 1303
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->finish()V

    .line 1304
    return-void
.end method

.method private finishWithSuccess()V
    .locals 3

    .prologue
    .line 1256
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->destroyWebView()V

    .line 1258
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1260
    const-string v1, "doc"

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1262
    const-string v1, "offerType"

    iget v2, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mOfferType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1264
    const-string v1, "cart"

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mSelectedCart:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1265
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 1267
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->finish()V

    .line 1268
    return-void
.end method

.method private getRefundPolicyUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 878
    iget v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mBackend:I

    packed-switch v0, :pswitch_data_0

    .line 888
    :pswitch_0
    sget-object v0, Lcom/google/android/finsky/config/G;->appsRefundPolicyUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    :goto_0
    return-object v0

    .line 882
    .restart local p0
    :pswitch_1
    sget-object v0, Lcom/google/android/finsky/config/G;->booksRefundPolicyUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0

    .line 884
    .restart local p0
    :pswitch_2
    sget-object v0, Lcom/google/android/finsky/config/G;->moviesRefundPolicyUrl:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0

    .line 878
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getTermsForOfferType(I)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;
    .locals 4
    .parameter "offerType"

    .prologue
    .line 976
    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getMovieRentalTerms()Ljava/util/List;

    move-result-object v2

    .line 977
    .local v2, videoRentalTermsList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;

    .line 978
    .local v1, term:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->getOfferType()I

    move-result v3

    if-ne p1, v3, :cond_0

    move-object v3, v1

    .line 982
    .end local v1           #term:Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private handleDfeUrl(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1166
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 1168
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1169
    const-string v1, "status"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1170
    const-string v2, "instrumentId"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1172
    const-string v2, "Status code result from Google Checkout flow: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1175
    if-eqz v0, :cond_0

    .line 1176
    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mSelectedInstrumentId:Ljava/lang/String;

    .line 1181
    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "SUCCESS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "REAUTH_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1184
    :cond_1
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "Redirect and start purchase flow again"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1188
    :cond_2
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->startPurchasePaidItem()V

    .line 1216
    :goto_0
    return-void

    .line 1189
    :cond_3
    const-string v0, "ABORTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1190
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_4

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Purchase process aborted from WebView - had valid fop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mHadValidFop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1197
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mHadValidFop:Z

    if-eqz v0, :cond_5

    .line 1198
    sget-object v0, Lcom/google/android/finsky/activities/PurchaseActivity$State;->PURCHASE_SUMMARY:Lcom/google/android/finsky/activities/PurchaseActivity$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->switchState(Lcom/google/android/finsky/activities/PurchaseActivity$State;)V

    .line 1201
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mFormsOfPaymentSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 1206
    :cond_5
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->finishWithError()V

    goto :goto_0

    .line 1208
    :cond_6
    const-string v0, "MISSING_URL_PARAMETERS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1211
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Google Checkout reports missing URL parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1213
    :cond_7
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "Unknown status from Google Checkout: %s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1214
    :cond_8
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->finishWithError()V

    goto :goto_0
.end method

.method private removeCookies()V
    .locals 1

    .prologue
    .line 1335
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 1336
    return-void
.end method

.method private resetWebView()V
    .locals 1

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 1314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mWebView:Landroid/webkit/WebView;

    .line 1316
    :cond_0
    return-void
.end method

.method private retrieveAuthTokenAndMakePurchase()V
    .locals 4

    .prologue
    .line 423
    new-instance v0, Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/DfeApi;->getApiContext()Lcom/google/android/finsky/api/DfeApiContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/api/DfeApiContext;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mCheckoutServiceId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 427
    .local v0, googleCheckoutAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;
    new-instance v1, Lcom/google/android/finsky/activities/PurchaseActivity$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/PurchaseActivity$3;-><init>(Lcom/google/android/finsky/activities/PurchaseActivity;)V

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAuthTokenAsync(Lcom/android/volley/toolbox/AndroidAuthenticator$AuthTokenListener;Landroid/os/Handler;Z)V

    .line 444
    return-void
.end method

.method private sendError(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 1286
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->destroyWebView()V

    .line 1288
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1290
    const-string v1, "doc"

    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1292
    const-string v1, "error"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1294
    const-string v1, "offerType"

    iget v2, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mOfferType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1295
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 1296
    return-void
.end method

.method private setupActionButtons(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter

    .prologue
    .line 993
    const v0, 0x7f0900a9

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 994
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 997
    const v0, 0x7f0900a8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 998
    new-instance v1, Lcom/google/android/finsky/activities/PurchaseActivity$10;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/PurchaseActivity$10;-><init>(Lcom/google/android/finsky/activities/PurchaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1004
    return-void
.end method

.method private setupFormsOfPaymentDropdown(Ljava/util/List;Ljava/lang/String;)V
    .locals 19
    .parameter
    .parameter "addCreditCardUrl"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 765
    .local p1, paymentOptions:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;>;"
    if-nez p1, :cond_0

    .line 833
    .end local p1           #paymentOptions:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;>;"
    :goto_0
    return-void

    .line 770
    .restart local p1       #paymentOptions:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;>;"
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 771
    .local v7, formsOfPaymentList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/model/FormOfPayment;>;"
    const v15, 0x7f0b007d

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/PurchaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 772
    .local v14, template:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;

    .line 773
    .local v10, option:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v10}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getFormOfPayment()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 774
    .local v11, optionName:Ljava/lang/String;
    new-instance v15, Lcom/google/android/finsky/model/FormOfPayment;

    invoke-virtual {v10}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getInstrumentId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v10}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->hasAdjustedCart()Z

    move-result v17

    invoke-virtual {v10}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;->getAdjustedCart()Ljava/lang/String;

    move-result-object v18

    move-object v0, v15

    move-object v1, v11

    move-object/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/model/FormOfPayment;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 778
    .end local v10           #option:Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;
    .end local v11           #optionName:Ljava/lang/String;
    :cond_1
    new-instance v5, Lcom/google/android/finsky/model/FormOfPayment;

    const v15, 0x7f0b007b

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/PurchaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v0, v5

    move-object v1, v15

    move-object/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/model/FormOfPayment;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 783
    .local v5, addCreditCard:Lcom/google/android/finsky/model/FormOfPayment;
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    new-instance v13, Lcom/google/android/finsky/adapters/PaymentListAdapter;

    const v15, 0x7f04003b

    move-object v0, v13

    move-object/from16 v1, p0

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/adapters/PaymentListAdapter;-><init>(Landroid/content/Context;I)V

    .line 789
    .local v13, spinnerAdapter:Lcom/google/android/finsky/adapters/PaymentListAdapter;
    const v15, 0x7f04003a

    invoke-virtual {v13, v15}, Lcom/google/android/finsky/adapters/PaymentListAdapter;->setDropDownViewResource(I)V

    .line 790
    invoke-virtual {v13, v7}, Lcom/google/android/finsky/adapters/PaymentListAdapter;->addAll(Ljava/util/Collection;)V

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/PurchaseActivity;->mFormsOfPaymentSpinner:Landroid/widget/Spinner;

    move-object v15, v0

    invoke-virtual {v15, v13}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/PurchaseActivity;->mFormsOfPaymentSpinner:Landroid/widget/Spinner;

    move-object v15, v0

    new-instance v16, Lcom/google/android/finsky/activities/PurchaseActivity$7;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/finsky/activities/PurchaseActivity$7;-><init>(Lcom/google/android/finsky/activities/PurchaseActivity;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/PurchaseActivity;->mFormsOfPaymentSpinner:Landroid/widget/Spinner;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/model/FormOfPayment;

    .line 815
    .local v6, firstFop:Lcom/google/android/finsky/model/FormOfPayment;
    invoke-virtual {v6}, Lcom/google/android/finsky/model/FormOfPayment;->hasCart()Z

    move-result v15

    if-nez v15, :cond_2

    .line 816
    const v15, 0x7f0900a9

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setEnabled(Z)V

    .line 821
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/PurchaseActivity;->mSelectedInstrumentId:Ljava/lang/String;

    move-object v15, v0

    if-eqz v15, :cond_4

    .line 822
    const/4 v12, 0x0

    .line 823
    .local v12, position:I
    const/4 v8, 0x0

    .end local p1           #paymentOptions:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo$CheckoutOption;>;"
    .local v8, i:I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    if-ge v8, v15, :cond_3

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/PurchaseActivity;->mSelectedInstrumentId:Ljava/lang/String;

    move-object v15, v0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/finsky/model/FormOfPayment;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/model/FormOfPayment;->getInstrumentId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 825
    move v12, v8

    .line 829
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/activities/PurchaseActivity;->mFormsOfPaymentSpinner:Landroid/widget/Spinner;

    move-object v15, v0

    invoke-virtual {v15, v12}, Landroid/widget/Spinner;->setSelection(I)V

    .line 832
    .end local v8           #i:I
    .end local v12           #position:I
    :cond_4
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/finsky/activities/PurchaseActivity;->mHadValidFop:Z

    goto/16 :goto_0

    .line 823
    .restart local v8       #i:I
    .restart local v12       #position:I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method private setupHelpDropdown()V
    .locals 5

    .prologue
    .line 840
    const v2, 0x7f090096

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 841
    .local v0, helpMenuButton:Landroid/view/View;
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-direct {v1, p0, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 842
    .local v1, helpPopup:Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f0e0001

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 843
    new-instance v2, Lcom/google/android/finsky/activities/PurchaseActivity$8;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/PurchaseActivity$8;-><init>(Lcom/google/android/finsky/activities/PurchaseActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 865
    new-instance v2, Lcom/google/android/finsky/activities/PurchaseActivity$9;

    invoke-direct {v2, p0, v1}, Lcom/google/android/finsky/activities/PurchaseActivity$9;-><init>(Lcom/google/android/finsky/activities/PurchaseActivity;Landroid/widget/PopupMenu;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 871
    return-void
.end method

.method private setupItemSummary()V
    .locals 5

    .prologue
    .line 699
    const v2, 0x7f09008e

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    const v2, 0x7f09008f

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getCreator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 703
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getBestThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, thumbnailUrl:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 705
    const v2, 0x7f09008d

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 706
    .local v1, thumbnailView:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    new-instance v3, Lcom/google/android/finsky/layout/ThumbnailListener;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Lcom/google/android/finsky/layout/ThumbnailListener;-><init>(Landroid/widget/ImageView;Z)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/finsky/utils/BitmapLoader;->getOrBindImmediately(Ljava/lang/String;Landroid/widget/ImageView;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .line 709
    .end local v1           #thumbnailView:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private setupMovieRentalTermsView()V
    .locals 5

    .prologue
    .line 948
    iget v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mOfferType:I

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->getTermsForOfferType(I)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;

    move-result-object v0

    .line 949
    if-nez v0, :cond_0

    .line 968
    :goto_0
    return-void

    .line 953
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->getRentalHeader()Ljava/lang/String;

    move-result-object v1

    .line 954
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoRentalTerm;->getTermList()Ljava/util/List;

    move-result-object v2

    .line 956
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f04003e

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/RentalTermsLayout;

    .line 958
    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/layout/RentalTermsLayout;->bindInfo(Ljava/lang/String;Ljava/util/List;)V

    .line 961
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mPermissionsView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 966
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mPermissionsView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private setupPermissionsView()V
    .locals 5

    .prologue
    .line 912
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAppPermissionsList()Ljava/util/List;

    move-result-object v0

    .line 913
    if-nez v0, :cond_0

    .line 941
    :goto_0
    return-void

    .line 919
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 920
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 921
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 923
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    .line 924
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 925
    :catch_0
    move-exception v0

    goto :goto_1

    .line 929
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040031

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/AppSecurityPermissions;

    .line 931
    invoke-virtual {v0, v2}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->bindInfo(Ljava/util/List;)V

    .line 934
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mPermissionsView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 939
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mPermissionsView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private setupPriceSummary(Ljava/lang/String;Ljava/util/List;)V
    .locals 8
    .parameter "total"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$LineItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, subItems:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Buy$LineItem;>;"
    const/4 v6, -0x2

    const/4 v7, 0x0

    .line 717
    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mPriceSpinner:Landroid/widget/TextView;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 723
    :cond_0
    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mPriceSpinner:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 753
    :goto_0
    return-void

    .line 728
    :cond_1
    new-instance v3, Landroid/widget/PopupWindow;

    const v5, 0x10102ff

    invoke-direct {v3, p0, v7, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 730
    .local v3, pricePopup:Landroid/widget/PopupWindow;
    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 731
    invoke-virtual {v3, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 732
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 734
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040033

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 737
    .local v4, tablePopupContents:Landroid/view/ViewGroup;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    .line 738
    .local v1, item:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040032

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    .line 740
    .local v2, lineItem:Landroid/widget/TableRow;
    const v5, 0x7f090081

    invoke-virtual {v2, v5}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 741
    const v5, 0x7f090037

    invoke-virtual {v2, v5}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getPrice()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 743
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 746
    .end local v1           #item:Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    .end local v2           #lineItem:Landroid/widget/TableRow;
    :cond_2
    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 747
    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mPriceSpinner:Landroid/widget/TextView;

    new-instance v6, Lcom/google/android/finsky/activities/PurchaseActivity$6;

    invoke-direct {v6, p0, v3}, Lcom/google/android/finsky/activities/PurchaseActivity$6;-><init>(Lcom/google/android/finsky/activities/PurchaseActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private setupPurchaseDetailsView()V
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 905
    :goto_0
    return-void

    .line 899
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->setupPermissionsView()V

    goto :goto_0

    .line 902
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->setupMovieRentalTermsView()V

    goto :goto_0

    .line 897
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setupTitle()V
    .locals 7

    .prologue
    .line 662
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 663
    .local v4, titleView:Landroid/view/ViewGroup;
    const v5, 0x7f090020

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 664
    .local v3, title:Landroid/widget/TextView;
    const v5, 0x7f09009a

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 665
    .local v0, accountName:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mCurrentAccountName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mCurrentState:Lcom/google/android/finsky/activities/PurchaseActivity$State;

    sget-object v6, Lcom/google/android/finsky/activities/PurchaseActivity$State;->WEBVIEW:Lcom/google/android/finsky/activities/PurchaseActivity$State;

    if-ne v5, v6, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0083

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    :goto_0
    return-void

    .line 672
    :cond_0
    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v5}, Lcom/google/android/finsky/api/model/Document;->needsCheckoutFlow()Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mOfferType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    :cond_1
    const/4 v5, 0x1

    move v1, v5

    .line 674
    .local v1, isFree:Z
    :goto_1
    iget v5, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mBackend:I

    packed-switch v5, :pswitch_data_0

    .line 687
    :pswitch_0
    if-eqz v1, :cond_4

    const v5, 0x7f0b007f

    move v2, v5

    .line 691
    .local v2, resourceId:I
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 672
    .end local v1           #isFree:Z
    .end local v2           #resourceId:I
    :cond_2
    const/4 v5, 0x0

    move v1, v5

    goto :goto_1

    .line 676
    .restart local v1       #isFree:Z
    :pswitch_1
    if-eqz v1, :cond_3

    const v5, 0x7f0b0081

    move v2, v5

    .line 678
    .restart local v2       #resourceId:I
    :goto_3
    goto :goto_2

    .line 676
    .end local v2           #resourceId:I
    :cond_3
    const v5, 0x7f0b0080

    move v2, v5

    goto :goto_3

    .line 681
    :pswitch_2
    const v2, 0x7f0b0082

    .line 682
    .restart local v2       #resourceId:I
    goto :goto_2

    .line 687
    .end local v2           #resourceId:I
    :cond_4
    const v5, 0x7f0b007e

    move v2, v5

    goto :goto_2

    .line 674
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setupWebView(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1077
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1078
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->finishWithError()V

    .line 1080
    :cond_1
    sget-object v0, Lcom/google/android/finsky/activities/PurchaseActivity$State;->WEBVIEW:Lcom/google/android/finsky/activities/PurchaseActivity$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->switchState(Lcom/google/android/finsky/activities/PurchaseActivity$State;)V

    .line 1081
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/analytics/Analytics$Event;->PURCHASE_WEBVIEW:Lcom/google/android/finsky/analytics/Analytics$Event;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/finsky/analytics/Analytics;->reportEvent(Lcom/google/android/finsky/analytics/Analytics$Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    const v0, 0x7f09008a

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mWebView:Landroid/webkit/WebView;

    .line 1085
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->removeCookies()V

    .line 1087
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 1088
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 1089
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 1090
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 1091
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 1092
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 1093
    sget-object v0, Lcom/google/android/finsky/config/G;->webViewUserAgent:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1094
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1095
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 1097
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 1099
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/android/finsky/activities/PurchaseActivity$11;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/PurchaseActivity$11;-><init>(Lcom/google/android/finsky/activities/PurchaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1160
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getRequestQueue()Lcom/android/volley/RequestQueue;

    move-result-object v1

    .line 1161
    new-instance v0, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mCurrentAccountName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mCheckoutServiceId:Ljava/lang/String;

    move-object v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/remoting/network/BrowserAuthRequest;-><init>(Lcom/android/volley/RequestQueue;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/network/BrowserAuthRequest$Listener;)V

    .line 1162
    return-void
.end method

.method private startPurchaseFreeItem()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mFreeItemDetails:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getFormattedPrice()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mFreeItemDetails:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    new-instance v0, Lcom/google/android/finsky/activities/PurchaseActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/PurchaseActivity$1;-><init>(Lcom/google/android/finsky/activities/PurchaseActivity;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->setupActionButtons(Landroid/view/View$OnClickListener;)V

    .line 371
    return-void
.end method

.method private startPurchasePaidItem()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 380
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApi;->getApiContext()Lcom/google/android/finsky/api/DfeApiContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApiContext;->invalidateAuthToken()V

    .line 386
    iget-boolean v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mShouldSendAuthToken:Z

    if-eqz v0, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->retrieveAuthTokenAndMakePurchase()V

    .line 396
    :goto_0
    new-instance v0, Lcom/google/android/finsky/activities/PurchaseActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/activities/PurchaseActivity$2;-><init>(Lcom/google/android/finsky/activities/PurchaseActivity;)V

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->setupActionButtons(Landroid/view/View$OnClickListener;)V

    .line 412
    sget-object v0, Lcom/google/android/finsky/activities/PurchaseActivity$State;->PURCHASE_FOP_LOADING:Lcom/google/android/finsky/activities/PurchaseActivity$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->switchState(Lcom/google/android/finsky/activities/PurchaseActivity$State;)V

    .line 413
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mOfferType:I

    move-object v4, p0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi;->makePurchase(Ljava/lang/String;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 391
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/analytics/Analytics$Event;->PURCHASE_STARTED:Lcom/google/android/finsky/analytics/Analytics$Event;

    invoke-interface {v0, v1, v3}, Lcom/google/android/finsky/analytics/Analytics;->reportVirtualPageView(Lcom/google/android/finsky/analytics/Analytics$Event;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private switchState(Lcom/google/android/finsky/activities/PurchaseActivity$State;)V
    .locals 5
    .parameter "newState"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 450
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mCurrentState:Lcom/google/android/finsky/activities/PurchaseActivity$State;

    if-ne v1, p1, :cond_0

    .line 509
    :goto_0
    return-void

    .line 453
    :cond_0
    sget-object v1, Lcom/google/android/finsky/activities/PurchaseActivity$12;->$SwitchMap$com$google$android$finsky$activities$PurchaseActivity$State:[I

    invoke-virtual {p1}, Lcom/google/android/finsky/activities/PurchaseActivity$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 504
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid state in purchase dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/finsky/activities/PurchaseActivity$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 459
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mCurrentState:Lcom/google/android/finsky/activities/PurchaseActivity$State;

    sget-object v2, Lcom/google/android/finsky/activities/PurchaseActivity$State;->WEBVIEW:Lcom/google/android/finsky/activities/PurchaseActivity$State;

    if-ne v1, v2, :cond_1

    .line 460
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->transitionToPurchaseLoadingState()V

    .line 469
    :goto_1
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mPaidItemDetails:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 470
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mFopLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 471
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mPriceSpinner:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mFormsOfPaymentSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 473
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mButtonGroup:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 507
    :goto_2
    iput-object p1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mCurrentState:Lcom/google/android/finsky/activities/PurchaseActivity$State;

    .line 508
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->setupTitle()V

    goto :goto_0

    .line 467
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mPurchaseSummaryView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 476
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mCurrentState:Lcom/google/android/finsky/activities/PurchaseActivity$State;

    sget-object v2, Lcom/google/android/finsky/activities/PurchaseActivity$State;->WEBVIEW:Lcom/google/android/finsky/activities/PurchaseActivity$State;

    if-ne v1, v2, :cond_2

    .line 477
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->transitionToPurchaseLoadingState()V

    .line 479
    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mPaidItemDetails:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 480
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mPurchaseSummaryView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 481
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mFopLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 482
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mPriceSpinner:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mFormsOfPaymentSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 484
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mButtonGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 489
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mRootView:Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 496
    :pswitch_2
    sget v1, Lcom/google/android/finsky/activities/PurchaseActivity;->MAX_WEB_VIEW_HEIGHT:I

    if-nez v1, :cond_3

    .line 497
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 498
    .local v0, screenHeight:I
    const-wide/high16 v1, 0x3fe8

    int-to-double v3, v0

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    sput v1, Lcom/google/android/finsky/activities/PurchaseActivity;->MAX_WEB_VIEW_HEIGHT:I

    .line 501
    .end local v0           #screenHeight:I
    :cond_3
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->transitionToWebViewState()V

    goto :goto_2

    .line 453
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private transitionToPurchaseLoadingState()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xfa

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 608
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mPurchaseSummaryView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 609
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mPurchaseSummaryView:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 612
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mWebViewHolder:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 616
    new-array v2, v6, [I

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    aput v3, v2, v5

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mPurchaseSummaryView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    aput v3, v2, v7

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 618
    .local v0, heightAnimator:Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/google/android/finsky/activities/PurchaseActivity$HeightAnimator;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mRootView:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/finsky/activities/PurchaseActivity$HeightAnimator;-><init>(Landroid/view/View;Lcom/google/android/finsky/activities/PurchaseActivity$1;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 619
    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 622
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mPurchaseSummaryView:Landroid/view/ViewGroup;

    const-string v3, "alpha"

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 626
    .local v1, purchaseSummaryFadeAnimator:Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 627
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v6, [Landroid/animation/Animator;

    aput-object v0, v3, v5

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 628
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/google/android/finsky/activities/PurchaseActivity$5;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/PurchaseActivity$5;-><init>(Lcom/google/android/finsky/activities/PurchaseActivity;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 655
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 656
    return-void

    .line 622
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private transitionToWebViewState()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xfa

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 545
    new-array v2, v5, [I

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    aput v3, v2, v6

    sget v3, Lcom/google/android/finsky/activities/PurchaseActivity;->MAX_WEB_VIEW_HEIGHT:I

    aput v3, v2, v7

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 547
    .local v0, heightAnimator:Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/google/android/finsky/activities/PurchaseActivity$HeightAnimator;

    iget-object v3, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mRootView:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/android/finsky/activities/PurchaseActivity$HeightAnimator;-><init>(Landroid/view/View;Lcom/google/android/finsky/activities/PurchaseActivity$1;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 548
    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 551
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mPurchaseSummaryView:Landroid/view/ViewGroup;

    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 555
    .local v1, purchaseSummaryFadeAnimator:Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 556
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v3, v5, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 557
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/google/android/finsky/activities/PurchaseActivity$4;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/PurchaseActivity$4;-><init>(Lcom/google/android/finsky/activities/PurchaseActivity;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 595
    iget-object v2, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 597
    return-void

    .line 551
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 1239
    return-object p0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1247
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->finishWithError()V

    .line 1248
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x7

    .line 295
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 298
    invoke-static {}, Lcom/google/android/finsky/api/AccountHandler;->getCurrentAccount()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mCurrentAccountName:Ljava/lang/String;

    .line 301
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mCurrentAccountName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/api/AccountHandler;->hasAccount(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->finishWithError()V

    .line 305
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 306
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getBitmapLoader()Lcom/google/android/finsky/utils/BitmapLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mBitmapLoader:Lcom/google/android/finsky/utils/BitmapLoader;

    .line 309
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 310
    .local v0, i:Landroid/content/Intent;
    const-string v1, "doc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/api/model/Document;

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    .line 311
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mBackend:I

    .line 314
    const-string v1, "offerType"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mOfferType:I

    .line 317
    invoke-virtual {p0, v3}, Lcom/google/android/finsky/activities/PurchaseActivity;->requestWindowFeature(I)Z

    .line 318
    const v1, 0x7f040039

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/PurchaseActivity;->setContentView(I)V

    .line 319
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f04003d

    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 322
    const v1, 0x7f090088

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mRootView:Landroid/view/ViewGroup;

    .line 323
    const v1, 0x7f09008b

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mPurchaseSummaryView:Landroid/view/ViewGroup;

    .line 324
    const v1, 0x7f090097

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mPermissionsView:Landroid/view/ViewGroup;

    .line 325
    const v1, 0x7f090089

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mWebViewHolder:Landroid/view/ViewGroup;

    .line 327
    const v1, 0x7f090093

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mFopLoadingIndicator:Landroid/widget/ProgressBar;

    .line 328
    const v1, 0x7f090094

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mFormsOfPaymentSpinner:Landroid/widget/Spinner;

    .line 329
    const v1, 0x7f090095

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mPriceSpinner:Landroid/widget/TextView;

    .line 330
    const v1, 0x7f090098

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mButtonGroup:Landroid/view/ViewGroup;

    .line 332
    const v1, 0x7f090090

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mFreeItemDetails:Landroid/widget/TextView;

    .line 333
    const v1, 0x7f090091

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/activities/PurchaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mPaidItemDetails:Landroid/view/ViewGroup;

    .line 336
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->setupItemSummary()V

    .line 337
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->setupPurchaseDetailsView()V

    .line 338
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->setupTitle()V

    .line 343
    iget-object v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mDocument:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->needsCheckoutFlow()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mOfferType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 344
    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->startPurchaseFreeItem()V

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_2
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->startPurchasePaidItem()V

    goto :goto_0
.end method

.method public onErrorResponse(Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1066
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Error: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1067
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/finsky/activities/PurchaseActivity;->finishWithError(Ljava/lang/String;)V

    .line 1068
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1340
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1342
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1346
    :cond_0
    return-void
.end method

.method public onResponse(Landroid/net/Uri;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "error"
    .parameter "message"

    .prologue
    .line 1226
    if-eqz p1, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1231
    :goto_0
    return-void

    .line 1230
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->finishWithError()V

    goto :goto_0
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1016
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutServiceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mCheckoutServiceId:Ljava/lang/String;

    .line 1018
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasContinueViaUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1019
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Continue URL: %s"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getContinueViaUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1022
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getContinueViaUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->setupWebView(Ljava/lang/String;)V

    .line 1057
    :goto_0
    return-void

    .line 1023
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->hasCheckoutInfo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1027
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutInfo()Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;

    move-result-object v0

    .line 1030
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getItem()Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getPrice()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v1

    .line 1031
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getSubItemList()Ljava/util/List;

    move-result-object v2

    .line 1032
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedAmount()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/google/android/finsky/activities/PurchaseActivity;->setupPriceSummary(Ljava/lang/String;Ljava/util/List;)V

    .line 1035
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getCheckoutOptionList()Ljava/util/List;

    move-result-object v1

    .line 1036
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse$CheckoutInfo;->getAddInstrumentUrl()Ljava/lang/String;

    move-result-object v0

    .line 1037
    invoke-direct {p0, v1, v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->setupFormsOfPaymentDropdown(Ljava/util/List;Ljava/lang/String;)V

    .line 1040
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->setupHelpDropdown()V

    .line 1043
    sget-object v0, Lcom/google/android/finsky/activities/PurchaseActivity$State;->PURCHASE_SUMMARY:Lcom/google/android/finsky/activities/PurchaseActivity$State;

    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->switchState(Lcom/google/android/finsky/activities/PurchaseActivity$State;)V

    .line 1044
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    sget-object v1, Lcom/google/android/finsky/analytics/Analytics$Event;->PURCHASE_COMPLETE:Lcom/google/android/finsky/analytics/Analytics$Event;

    invoke-interface {v0, v1, v4}, Lcom/google/android/finsky/analytics/Analytics;->reportVirtualPageView(Lcom/google/android/finsky/analytics/Analytics$Event;Ljava/lang/String;)V

    goto :goto_0

    .line 1046
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;->getCheckoutTokenRequired()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1047
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "Checkout auth token required"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1050
    :cond_3
    iput-boolean v2, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mShouldSendAuthToken:Z

    .line 1051
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->startPurchasePaidItem()V

    goto :goto_0

    .line 1053
    :cond_4
    const-string v0, "Unknown BuyResponse - purchase could not be completed"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1054
    sget-object v0, Lcom/android/volley/Response$ErrorCode;->SERVER:Lcom/android/volley/Response$ErrorCode;

    invoke-static {p0, v0, v4}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1055
    invoke-direct {p0, v0}, Lcom/google/android/finsky/activities/PurchaseActivity;->finishWithError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/PurchaseActivity;->onResponse(Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 89
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/finsky/activities/PurchaseActivity;->onResponse(Landroid/net/Uri;Lcom/android/volley/Response$ErrorCode;Ljava/lang/String;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    .line 1352
    iget-object v5, p0, Lcom/google/android/finsky/activities/PurchaseActivity;->mCurrentState:Lcom/google/android/finsky/activities/PurchaseActivity$State;

    sget-object v6, Lcom/google/android/finsky/activities/PurchaseActivity$State;->WEBVIEW:Lcom/google/android/finsky/activities/PurchaseActivity$State;

    if-ne v5, v6, :cond_0

    .line 1353
    const/4 v5, 0x0

    .line 1366
    :goto_0
    return v5

    .line 1356
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1357
    .local v0, decor:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 1358
    .local v2, width:I
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1359
    .local v1, height:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1360
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1362
    .local v4, y:F
    cmpg-float v5, v3, v7

    if-ltz v5, :cond_1

    int-to-float v5, v2

    cmpl-float v5, v3, v5

    if-gtz v5, :cond_1

    cmpg-float v5, v4, v7

    if-ltz v5, :cond_1

    int-to-float v5, v1

    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    .line 1363
    :cond_1
    invoke-direct {p0}, Lcom/google/android/finsky/activities/PurchaseActivity;->finishWithError()V

    .line 1364
    const/4 v5, 0x1

    goto :goto_0

    .line 1366
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_0
.end method
