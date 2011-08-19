.class public Lcom/amazon/kcp/welcome/WelcomeActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/welcome/WelcomeActivity$NonZeroLengthTextWatcher;
    }
.end annotation


# static fields
.field public static final CONDITIONS_URL_PATH:Ljava/lang/String; = "gp/kindle/android/redirect.html?redirect=Conditions1"

.field public static final CREATE_ACCOUNT_URL_PATH:Ljava/lang/String; = "gp/kindle/android/redirect.html?redirect=Create0"

.field public static final FORGOT_PASSWORD_URL_PATH:Ljava/lang/String; = "gp/kindle/android/redirect.html?redirect=Forgot0"

.field private static final LOGIN_DIALOG_ID:I = 0x0

.field private static final METRICS_SIGN_IN_TIMER:Ljava/lang/String; = "sign_in_timer"

.field private static final METRIC_TAG:Ljava/lang/String; = "WelcomeActivity"


# instance fields
.field private emailTextWatcher:Lcom/amazon/kcp/welcome/WelcomeActivity$NonZeroLengthTextWatcher;

.field private loginButton:Landroid/widget/Button;

.field private loginEmailEditText:Landroid/widget/EditText;

.field private loginFailure:Lcom/amazon/foundation/ICallback;

.field private loginPasswordEditText:Landroid/widget/EditText;

.field private loginSuccess:Lcom/amazon/foundation/ICallback;

.field private passwordTextWatcher:Lcom/amazon/kcp/welcome/WelcomeActivity$NonZeroLengthTextWatcher;

.field private registrationPage:Lcom/amazon/kcp/application/pages/internal/RegisterPage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    .line 69
    new-instance v0, Lcom/amazon/kcp/welcome/WelcomeActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/welcome/WelcomeActivity$1;-><init>(Lcom/amazon/kcp/welcome/WelcomeActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->loginSuccess:Lcom/amazon/foundation/ICallback;

    .line 79
    new-instance v0, Lcom/amazon/kcp/welcome/WelcomeActivity$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/welcome/WelcomeActivity$2;-><init>(Lcom/amazon/kcp/welcome/WelcomeActivity;)V

    iput-object v0, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->loginFailure:Lcom/amazon/foundation/ICallback;

    .line 312
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/welcome/WelcomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->onLoginSuccess()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/welcome/WelcomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->onLoginFailure()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/welcome/WelcomeActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->loginButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/welcome/WelcomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->tryLogin()V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kcp/welcome/WelcomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->showCreateAccountPage()V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kcp/welcome/WelcomeActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->updateLoginButtonEnabled()V

    return-void
.end method

.method private onLoginFailure()V
    .locals 4

    .prologue
    .line 291
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "sign_in_timer"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "WelcomeActivity"

    const-string v2, "SignInFailed"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    .line 293
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->serialize()V

    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->dismissDialog(I)V

    .line 295
    return-void
.end method

.method private onLoginSuccess()V
    .locals 5

    .prologue
    .line 247
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "WelcomeActivity"

    const-string v2, "SignInTimer"

    const-string v3, "sign_in_timer"

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 259
    const-string v1, "DeviceLocale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "WelcomeActivity"

    const-string v3, "ReportLocale"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->INFO:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;)V

    .line 264
    invoke-virtual {p0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getAuthenticationManager()Lcom/amazon/kcp/application/AuthenticationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->loginEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/AuthenticationManager;->setEmailAddress(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->library()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/ILibraryController;->showLibraryPage()Lcom/amazon/kcp/library/pages/ILibraryPage;

    .line 270
    invoke-virtual {p0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getWebStoreController()Lcom/amazon/kcp/store/IWebStoreController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/store/IWebStoreController;->updateStoreCookies()V

    .line 273
    invoke-static {p0}, Lcom/amazon/kcp/redding/CurrentlyReadingWidgetProvider;->asyncUpdateAllWidgets(Landroid/content/Context;)V

    .line 277
    new-instance v0, Lcom/amazon/kcp/welcome/WelcomeActivity$6;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/welcome/WelcomeActivity$6;-><init>(Lcom/amazon/kcp/welcome/WelcomeActivity;)V

    .line 286
    new-instance v1, Lcom/amazon/android/system/AndroidUtilities;

    invoke-direct {v1}, Lcom/amazon/android/system/AndroidUtilities;-><init>()V

    invoke-virtual {v1, v0}, Lcom/amazon/android/system/AndroidUtilities;->invokeLater(Ljava/lang/Runnable;)V

    .line 287
    return-void

    .line 254
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "WelcomeActivity"

    const-string v2, "DismissRegisteringDialogError"

    sget-object v3, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;)V

    goto :goto_0
.end method

.method private showCreateAccountPage()V
    .locals 2

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    const-string v1, "gp/kindle/android/redirect.html?redirect=Create0"

    invoke-static {v1}, Lcom/amazon/kcp/RedirectUrlAuthority;->getRedirectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->openUrl(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method private tryLogin()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 221
    iget-object v0, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->loginPasswordEditText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->closeSoftKeyboard(Landroid/view/View;)V

    .line 222
    invoke-virtual {p0, v4}, Lcom/amazon/kcp/welcome/WelcomeActivity;->showDialog(I)V

    .line 223
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "sign_in_timer"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->registrationPage:Lcom/amazon/kcp/application/pages/internal/RegisterPage;

    iget-object v1, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->loginEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->loginPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->registrationPage:Lcom/amazon/kcp/application/pages/internal/RegisterPage;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/pages/internal/RegisterPage;->getStatusTracker()Lcom/amazon/foundation/IStatusTracker;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/kcp/application/pages/internal/RegisterPage;->register(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/foundation/IStatusTracker;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 231
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "exception"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 233
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "WelcomeActivity"

    const-string v3, "RegistrationException"

    sget-object v4, Lcom/amazon/kcp/application/metrics/MetricType;->ERROR:Lcom/amazon/kcp/application/metrics/MetricType;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/application/metrics/MetricType;Ljava/util/Map;)V

    .line 234
    invoke-virtual {p0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    const-string v1, "Server Error"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-direct {p0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->onLoginFailure()V

    goto :goto_0
.end method

.method private updateLoginButtonEnabled()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->loginButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->emailTextWatcher:Lcom/amazon/kcp/welcome/WelcomeActivity$NonZeroLengthTextWatcher;

    invoke-virtual {v1}, Lcom/amazon/kcp/welcome/WelcomeActivity$NonZeroLengthTextWatcher;->isWatchedNonZeroLength()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->passwordTextWatcher:Lcom/amazon/kcp/welcome/WelcomeActivity$NonZeroLengthTextWatcher;

    invoke-virtual {v1}, Lcom/amazon/kcp/welcome/WelcomeActivity$NonZeroLengthTextWatcher;->isWatchedNonZeroLength()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 305
    return-void

    .line 303
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClickHandler(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 211
    :goto_0
    return-void

    .line 177
    :sswitch_0
    invoke-direct {p0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->tryLogin()V

    goto :goto_0

    .line 180
    :sswitch_1
    invoke-virtual {p0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    const-string v1, "gp/kindle/android/redirect.html?redirect=Forgot0"

    invoke-static {v1}, Lcom/amazon/kcp/RedirectUrlAuthority;->getRedirectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :sswitch_2
    invoke-virtual {p0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    const-string v1, "gp/kindle/android/redirect.html?redirect=Conditions1"

    invoke-static {v1}, Lcom/amazon/kcp/RedirectUrlAuthority;->getRedirectUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :sswitch_3
    invoke-direct {p0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->showCreateAccountPage()V

    goto :goto_0

    .line 190
    :sswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 191
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 192
    const v1, 0x7f0b0075

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/welcome/WelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 193
    const v1, 0x7f0b000e

    new-instance v2, Lcom/amazon/kcp/welcome/WelcomeActivity$4;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/welcome/WelcomeActivity$4;-><init>(Lcom/amazon/kcp/welcome/WelcomeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 202
    const v1, 0x7f0b000f

    new-instance v2, Lcom/amazon/kcp/welcome/WelcomeActivity$5;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/welcome/WelcomeActivity$5;-><init>(Lcom/amazon/kcp/welcome/WelcomeActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 210
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 174
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0046 -> :sswitch_1
        0x7f0c0047 -> :sswitch_4
        0x7f0c0048 -> :sswitch_3
        0x7f0c008e -> :sswitch_2
        0x7f0c00b8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    new-instance v0, Lcom/amazon/kcp/application/pages/internal/RegisterPage;

    invoke-virtual {p0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->loginSuccess:Lcom/amazon/foundation/ICallback;

    iget-object v3, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->loginFailure:Lcom/amazon/foundation/ICallback;

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/kcp/application/pages/internal/RegisterPage;-><init>(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/ICallback;)V

    iput-object v0, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->registrationPage:Lcom/amazon/kcp/application/pages/internal/RegisterPage;

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->registrationPage:Lcom/amazon/kcp/application/pages/internal/RegisterPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/pages/internal/RegisterPage;->getFailureEventProvider()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->loginFailure:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->register(Lcom/amazon/foundation/ICallback;)Z

    .line 97
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->setContentView(I)V

    .line 99
    const v0, 0x7f0c00b6

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->loginEmailEditText:Landroid/widget/EditText;

    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->loginEmailEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 101
    new-instance v0, Lcom/amazon/kcp/welcome/WelcomeActivity$NonZeroLengthTextWatcher;

    iget-object v1, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->loginEmailEditText:Landroid/widget/EditText;

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/welcome/WelcomeActivity$NonZeroLengthTextWatcher;-><init>(Lcom/amazon/kcp/welcome/WelcomeActivity;Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->emailTextWatcher:Lcom/amazon/kcp/welcome/WelcomeActivity$NonZeroLengthTextWatcher;

    .line 103
    const v0, 0x7f0c00b7

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->loginPasswordEditText:Landroid/widget/EditText;

    .line 104
    new-instance v0, Lcom/amazon/kcp/welcome/WelcomeActivity$NonZeroLengthTextWatcher;

    iget-object v1, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->loginPasswordEditText:Landroid/widget/EditText;

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/welcome/WelcomeActivity$NonZeroLengthTextWatcher;-><init>(Lcom/amazon/kcp/welcome/WelcomeActivity;Landroid/widget/EditText;)V

    iput-object v0, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->passwordTextWatcher:Lcom/amazon/kcp/welcome/WelcomeActivity$NonZeroLengthTextWatcher;

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->loginPasswordEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/amazon/kcp/welcome/WelcomeActivity$3;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/welcome/WelcomeActivity$3;-><init>(Lcom/amazon/kcp/welcome/WelcomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 120
    const v0, 0x7f0c00b8

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->loginButton:Landroid/widget/Button;

    .line 121
    invoke-direct {p0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->updateLoginButtonEnabled()V

    .line 122
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    packed-switch p1, :pswitch_data_0

    .line 160
    :goto_0
    return-object v0

    .line 157
    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-virtual {p0}, Lcom/amazon/kcp/welcome/WelcomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 159
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    goto :goto_0

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    .line 129
    iget-object v0, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->registrationPage:Lcom/amazon/kcp/application/pages/internal/RegisterPage;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/pages/internal/RegisterPage;->getFailureEventProvider()Lcom/amazon/foundation/IEventProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/welcome/WelcomeActivity;->loginFailure:Lcom/amazon/foundation/ICallback;

    invoke-interface {v0, v1}, Lcom/amazon/foundation/IEventProvider;->unregister(Lcom/amazon/foundation/ICallback;)Z

    .line 130
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 143
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 144
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/welcome/WelcomeActivity;->moveTaskToBack(Z)Z

    move v0, v1

    .line 147
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/redding/ReddingActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method
