.class public Lcom/amazon/kcp/feedback/FeedbackActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "FeedbackActivity.java"


# static fields
.field private static final APP_TYPE:Ljava/lang/String; = "KindleForAndroid"

.field private static final CLEAR_DYNAMIC_CONFIG_ID:Ljava/lang/String; = "31415926"

.field private static final FEEDBACK_URL:Ljava/lang/String; = "https://www.amazon.com/gp/kindle/android/feedback.html"

.field private static final NUM_RETRIES:I = 0x1

.field private static final SPINNER_DIALOG_ID:I


# instance fields
.field private executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

.field private feedbackText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    .line 71
    new-instance v0, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-direct {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/feedback/FeedbackActivity;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/feedback/FeedbackActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/amazon/kcp/feedback/FeedbackActivity;->handleSecretDebugStuff(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/feedback/FeedbackActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/feedback/FeedbackActivity;->feedbackText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/feedback/FeedbackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/amazon/kcp/feedback/FeedbackActivity;->onRequestCompleted()V

    return-void
.end method

.method private addTextListener(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 107
    move-object v0, p1

    .line 108
    .local v0, optionsMenu:Landroid/view/Menu;
    iget-object v1, p0, Lcom/amazon/kcp/feedback/FeedbackActivity;->feedbackText:Landroid/widget/EditText;

    new-instance v2, Lcom/amazon/kcp/feedback/FeedbackActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kcp/feedback/FeedbackActivity$1;-><init>(Lcom/amazon/kcp/feedback/FeedbackActivity;Landroid/view/Menu;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 145
    return-void
.end method

.method private handleSecretDebugStuff(Ljava/lang/String;)Z
    .locals 3
    .parameter "command"

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 178
    const/4 v1, 0x0

    .line 192
    :goto_0
    return v1

    .line 181
    :cond_0
    const/4 v0, 0x0

    .line 184
    .local v0, success:Z
    const-string v1, "31415926"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    invoke-static {}, Lcom/amazon/kcp/application/DynamicConfigManager;->getInstance()Lcom/amazon/kcp/application/DynamicConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/DynamicConfigManager;->clearConfigUrls()V

    .line 188
    const/4 v0, 0x1

    .line 189
    const v1, 0x7f0b0156

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    move v1, v0

    .line 192
    goto :goto_0
.end method

.method private onRequestCompleted()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 387
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/feedback/FeedbackActivity;->dismissDialog(I)V

    .line 388
    iget-object v0, p0, Lcom/amazon/kcp/feedback/FeedbackActivity;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->hasError()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    const v0, 0x7f0b0021

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 395
    invoke-virtual {p0}, Lcom/amazon/kcp/feedback/FeedbackActivity;->finish()V

    .line 410
    :goto_0
    return-void

    .line 400
    :cond_0
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 401
    const v1, 0x7f0b0023

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/feedback/FeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 403
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/amazon/kcp/redding/AlertActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 404
    const-string v3, "alert_type"

    sget-object v4, Lcom/amazon/kcp/redding/AlertActivity$AlertType;->ANDROID_SETTINGS:Lcom/amazon/kcp/redding/AlertActivity$AlertType;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 405
    const-string v3, "alert_title"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    const-string v0, "alert_message"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string v0, "alert_settings_action"

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/feedback/FeedbackActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onSendClicked()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/amazon/kcp/feedback/FeedbackActivity;->feedbackText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->closeSoftKeyboard(Landroid/view/View;)V

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/feedback/FeedbackActivity;->showDialog(I)V

    .line 210
    invoke-direct {p0}, Lcom/amazon/kcp/feedback/FeedbackActivity;->sendFeedback()V

    .line 211
    return-void
.end method

.method private populateBetaData(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V
    .locals 4
    .parameter

    .prologue
    .line 368
    const/4 v0, 0x0

    .line 371
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kcp/feedback/FeedbackActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/feedback/FeedbackActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 373
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "isBETA"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 377
    :goto_0
    const-string v1, "beta"

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_1
    invoke-virtual {p1, v1, v0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->addFormPairPOSTData(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    return-void

    .line 377
    :cond_0
    const-string v0, "0"

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private populatePOSTData(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V
    .locals 4
    .parameter

    .prologue
    .line 263
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    .line 265
    const-string v1, "feedback"

    iget-object v2, p0, Lcom/amazon/kcp/feedback/FeedbackActivity;->feedbackText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->addFormPairPOSTData(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v1, "dsn"

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->addFormPairPOSTData(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v1, "deviceModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceModelId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->addFormPairPOSTData(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v1, "osVersion"

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->addFormPairPOSTData(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v1, "softwareVersion"

    invoke-virtual {p0}, Lcom/amazon/kcp/feedback/FeedbackActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getVersionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->addFormPairPOSTData(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v1, "appType"

    const-string v2, "KindleForAndroid"

    invoke-virtual {p1, v1, v2}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->addFormPairPOSTData(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v1, "locale"

    invoke-virtual {p0}, Lcom/amazon/kcp/feedback/FeedbackActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getLocaleManager()Lcom/amazon/kcp/application/ILocaleManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/ILocaleManager;->getLocaleCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->addFormPairPOSTData(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v1, "deviceTypeId"

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->addFormPairPOSTData(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v0, "email"

    invoke-virtual {p0}, Lcom/amazon/kcp/feedback/FeedbackActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/AuthenticationManager;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->addFormPairPOSTData(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :try_start_0
    const-string v0, "oemPreload"

    invoke-static {}, Lcom/amazon/kcp/application/AssociateInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IAssociateInformationProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAssociateInformationProvider;->isOEMPreload()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->addFormPairPOSTData(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/feedback/FeedbackActivity;->populateScreenData(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    .line 295
    invoke-direct {p0, p1}, Lcom/amazon/kcp/feedback/FeedbackActivity;->populateStorageData(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    .line 297
    invoke-direct {p0, p1}, Lcom/amazon/kcp/feedback/FeedbackActivity;->populateBetaData(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    .line 298
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private populateScreenData(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V
    .locals 18
    .parameter "request"

    .prologue
    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/feedback/FeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 308
    .local v3, conf:Landroid/content/res/Configuration;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 309
    .local v4, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/feedback/FeedbackActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v12

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 311
    iget v12, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v12, v12

    iget v14, v4, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v14, v14

    div-double v10, v12, v14

    .line 312
    .local v10, screenWidth:D
    iget v12, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v12, v12

    iget v14, v4, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-double v14, v14

    div-double v7, v12, v14

    .line 313
    .local v7, screenHeight:D
    mul-double v12, v10, v10

    mul-double v14, v7, v7

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 316
    .local v5, screenDiagonal:D
    iget v12, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v12, v12, 0xf

    packed-switch v12, :pswitch_data_0

    .line 331
    const-string v9, "UNDEFINED"

    .line 334
    .local v9, screenType:Ljava/lang/String;
    :goto_0
    const-string v12, "screenSizePixels"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " x "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    move-object v1, v12

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->addFormPairPOSTData(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v12, "screenSizeDiagonal"

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v14, "%1.2f\""

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    move-object v1, v12

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->addFormPairPOSTData(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v12, "screenType"

    move-object/from16 v0, p1

    move-object v1, v12

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->addFormPairPOSTData(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void

    .line 319
    .end local v9           #screenType:Ljava/lang/String;
    :pswitch_0
    const-string v9, "XLARGE"

    .line 320
    .restart local v9       #screenType:Ljava/lang/String;
    goto :goto_0

    .line 322
    .end local v9           #screenType:Ljava/lang/String;
    :pswitch_1
    const-string v9, "LARGE"

    .line 323
    .restart local v9       #screenType:Ljava/lang/String;
    goto :goto_0

    .line 325
    .end local v9           #screenType:Ljava/lang/String;
    :pswitch_2
    const-string v9, "NORMAL"

    .line 326
    .restart local v9       #screenType:Ljava/lang/String;
    goto :goto_0

    .line 328
    .end local v9           #screenType:Ljava/lang/String;
    :pswitch_3
    const-string v9, "SMALL"

    .line 329
    .restart local v9       #screenType:Ljava/lang/String;
    goto :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private populateStorageData(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V
    .locals 9
    .parameter "request"

    .prologue
    .line 347
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, state:Ljava/lang/String;
    move-object v2, v3

    .line 349
    .local v2, availSpaceStr:Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/amazon/kcp/feedback/FeedbackActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getFileSystem()Lcom/amazon/system/io/IFileConnectionFactory;

    move-result-object v4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/amazon/system/io/IFileConnectionFactory;->avaliableSizeForPath(Ljava/lang/String;)J

    move-result-wide v0

    .line 353
    .local v0, availSpace:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    .line 355
    const-string v4, "%1.2f MB"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    long-to-float v7, v0

    const/high16 v8, 0x4980

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 359
    .end local v0           #availSpace:J
    :cond_0
    const-string v4, "sdStorageSpace"

    invoke-virtual {p1, v4, v2}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->addFormPairPOSTData(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method private sendFeedback()V
    .locals 6

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/amazon/kcp/feedback/FeedbackActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getWebConnector()Lcom/amazon/foundation/internal/net/LightWebConnector;

    move-result-object v1

    const-string v2, "https://www.amazon.com/gp/kindle/android/feedback.html"

    new-instance v3, Lcom/amazon/foundation/internal/NullOutputStream;

    invoke-direct {v3}, Lcom/amazon/foundation/internal/NullOutputStream;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/amazon/kcp/internal/webservices/WebServiceRequest;->createRequest(Lcom/amazon/foundation/internal/net/LightWebConnector;Ljava/lang/String;Lcom/amazon/foundation/internal/IDataOutputStream;Lcom/amazon/foundation/IStatusTracker;I)Lcom/amazon/kcp/internal/webservices/WebServiceRequest;

    move-result-object v0

    .line 248
    .local v0, request:Lcom/amazon/kcp/internal/webservices/WebServiceRequest;
    invoke-direct {p0, v0}, Lcom/amazon/kcp/feedback/FeedbackActivity;->populatePOSTData(Lcom/amazon/kcp/internal/webservices/WebServiceRequest;)V

    .line 251
    iget-object v1, p0, Lcom/amazon/kcp/feedback/FeedbackActivity;->executor:Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;

    new-instance v2, Lcom/amazon/kcp/feedback/FeedbackActivity$2;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/feedback/FeedbackActivity$2;-><init>(Lcom/amazon/kcp/feedback/FeedbackActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/amazon/foundation/internal/CAsynchronousCallbackExecutor;->execute(Lcom/amazon/foundation/internal/IAsynchronousCallback;Lcom/amazon/foundation/ICallback;)V

    .line 259
    return-void
.end method


# virtual methods
.method public onCancelClicked(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/amazon/kcp/feedback/FeedbackActivity;->finish()V

    .line 220
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/feedback/FeedbackActivity;->setContentView(I)V

    .line 85
    const v0, 0x7f0c0065

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/feedback/FeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/amazon/kcp/feedback/FeedbackActivity;->feedbackText:Landroid/widget/EditText;

    .line 87
    sget-boolean v0, Lcom/amazon/kcp/application/ReddingApplication;->HAS_ACTION_BAR:Z

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazon/kcp/feedback/FeedbackActivity;->addTextListener(Landroid/view/Menu;)V

    .line 91
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 226
    packed-switch p1, :pswitch_data_0

    .line 235
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 229
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 230
    .local v0, progressDialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/amazon/kcp/feedback/FeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 231
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    move-object v1, v0

    .line 232
    goto :goto_0

    .line 226
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 96
    sget-boolean v0, Lcom/amazon/kcp/application/ReddingApplication;->HAS_ACTION_BAR:Z

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/amazon/kcp/feedback/FeedbackActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 99
    invoke-direct {p0, p1}, Lcom/amazon/kcp/feedback/FeedbackActivity;->addTextListener(Landroid/view/Menu;)V

    .line 100
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 151
    const/4 v0, 0x1

    .line 153
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 162
    const/4 v0, 0x0

    .line 165
    :goto_0
    return v0

    .line 156
    :sswitch_0
    invoke-direct {p0}, Lcom/amazon/kcp/feedback/FeedbackActivity;->onSendClicked()V

    goto :goto_0

    .line 159
    :sswitch_1
    invoke-virtual {p0}, Lcom/amazon/kcp/feedback/FeedbackActivity;->finish()V

    goto :goto_0

    .line 153
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0067 -> :sswitch_1
        0x7f0c00de -> :sswitch_0
    .end sparse-switch
.end method

.method public onSendClicked(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/amazon/kcp/feedback/FeedbackActivity;->onSendClicked()V

    .line 202
    return-void
.end method
