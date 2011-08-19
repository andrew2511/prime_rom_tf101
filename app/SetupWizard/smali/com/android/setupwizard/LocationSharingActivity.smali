.class public Lcom/android/setupwizard/LocationSharingActivity;
.super Lcom/android/setupwizard/BaseActivity;
.source "LocationSharingActivity.java"


# instance fields
.field private mAgreeSharing:Landroid/widget/CompoundButton;

.field private mAgreeUseSearch:Landroid/widget/CompoundButton;

.field private mNextButton:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/setupwizard/BaseActivity;-><init>()V

    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 53
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/android/setupwizard/LocationSharingActivity;->setContentView(I)V

    .line 54
    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Lcom/android/setupwizard/LocationSharingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizard/LocationSharingActivity;->mNextButton:Landroid/view/View;

    .line 55
    const v0, 0x7f0d0016

    invoke-virtual {p0, v0}, Lcom/android/setupwizard/LocationSharingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/setupwizard/LocationSharingActivity;->mAgreeSharing:Landroid/widget/CompoundButton;

    .line 56
    const v0, 0x7f0d0017

    invoke-virtual {p0, v0}, Lcom/android/setupwizard/LocationSharingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/setupwizard/LocationSharingActivity;->mAgreeUseSearch:Landroid/widget/CompoundButton;

    .line 58
    iget-object v0, p0, Lcom/android/setupwizard/LocationSharingActivity;->mNextButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizard/LocationSharingActivity;->setDefaultButton(Landroid/view/View;Z)V

    .line 64
    invoke-virtual {p0}, Lcom/android/setupwizard/LocationSharingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 65
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    .line 42
    invoke-super {p0, p1}, Lcom/android/setupwizard/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-direct {p0}, Lcom/android/setupwizard/LocationSharingActivity;->initViews()V

    .line 44
    if-nez p1, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/android/setupwizard/LocationSharingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 47
    .local v0, res:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/setupwizard/LocationSharingActivity;->mAgreeSharing:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 48
    iget-object v1, p0, Lcom/android/setupwizard/LocationSharingActivity;->mAgreeUseSearch:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 50
    .end local v0           #res:Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method protected start()V
    .locals 5

    .prologue
    .line 69
    iget-object v3, p0, Lcom/android/setupwizard/LocationSharingActivity;->mAgreeSharing:Landroid/widget/CompoundButton;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 70
    .local v0, agreedSharing:Z
    invoke-virtual {p0}, Lcom/android/setupwizard/LocationSharingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 71
    .local v2, res:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/setupwizard/LocationSharingActivity;->mAgreeUseSearch:Landroid/widget/CompoundButton;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    .line 72
    .local v1, agreedUseSearch:Z
    if-eqz v0, :cond_0

    .line 74
    const-string v3, "network_location_opt_in"

    const-string v4, "1"

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 78
    :cond_0
    const-string v3, "network"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 80
    invoke-static {p0, v1}, Lcom/google/android/gsf/UseLocationForServices;->setUseLocationForServices(Landroid/content/Context;Z)Z

    .line 81
    const/16 v3, 0x2715

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/setupwizard/LocationSharingActivity;->onPageCompleted(II)V

    .line 82
    return-void
.end method
