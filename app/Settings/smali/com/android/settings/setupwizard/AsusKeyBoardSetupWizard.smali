.class public Lcom/android/settings/setupwizard/AsusKeyBoardSetupWizard;
.super Landroid/app/Activity;
.source "AsusKeyBoardSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private goToDataConnection()V
    .locals 4

    .prologue
    .line 48
    const-string v2, "wifi-only"

    const-string v3, "ro.carrier"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 49
    .local v1, wifi_only:Z
    if-nez v1, :cond_0

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v0, i:Landroid/content/Intent;
    const-string v2, "com.asus.setupwizard"

    const-string v3, "com.asus.setupwizard.DataConnectSetupWizard"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/settings/setupwizard/AsusKeyBoardSetupWizard;->startActivity(Landroid/content/Intent;)V

    .line 56
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/setupwizard/AsusKeyBoardSetupWizard;->setResult(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/setupwizard/AsusKeyBoardSetupWizard;->finish()V

    .line 58
    return-void
.end method


# virtual methods
.method public initUi()V
    .locals 2

    .prologue
    .line 35
    const v1, 0x7f0f0004

    invoke-virtual {p0, v1}, Lcom/android/settings/setupwizard/AsusKeyBoardSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, layoutRoot:Landroid/view/View;
    const/high16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 38
    const v1, 0x7f0f0009

    invoke-virtual {p0, v1}, Lcom/android/settings/setupwizard/AsusKeyBoardSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/setupwizard/AsusKeyBoardSetupWizard;->goToDataConnection()V

    .line 44
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const-string v0, "com.nuance.xt9.input/.IME"

    .line 23
    .local v0, IMIID:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/setupwizard/AsusKeyBoardSetupWizard;->requestWindowFeature(I)Z

    .line 24
    const v2, 0x7f040005

    invoke-virtual {p0, v2}, Lcom/android/settings/setupwizard/AsusKeyBoardSetupWizard;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Lcom/android/settings/setupwizard/AsusKeyBoardSetupWizard;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0f0007

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;

    .line 28
    .local v1, im:Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;
    const-string v2, "com.nuance.xt9.input/.IME"

    invoke-virtual {v1, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->updateInputMethodList(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/setupwizard/AsusKeyBoardSetupWizard;->initUi()V

    .line 32
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 63
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 64
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
