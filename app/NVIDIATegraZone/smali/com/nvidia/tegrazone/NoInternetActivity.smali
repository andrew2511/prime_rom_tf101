.class public Lcom/nvidia/tegrazone/NoInternetActivity;
.super Landroid/app/Activity;
.source "NoInternetActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public checkConnection()V
    .locals 1

    .prologue
    .line 48
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->isOnline(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/IntentLauncher;->launchSpotlight(Landroid/app/Activity;)V

    .line 51
    :cond_0
    return-void
.end method

.method public killApp()V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/nvidia/tegrazone/NoInternetActivity;->finish()V

    .line 44
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v2, 0x7f03002b

    invoke-virtual {p0, v2}, Lcom/nvidia/tegrazone/NoInternetActivity;->setContentView(I)V

    .line 19
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/nvidia/tegrazone/model/NVModel;->setAppVars(Landroid/app/Activity;)V

    .line 20
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->orientationSetter(Landroid/app/Activity;)V

    .line 22
    const v2, 0x7f0a00ac

    invoke-virtual {p0, v2}, Lcom/nvidia/tegrazone/NoInternetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 23
    .local v0, btn:Landroid/widget/Button;
    const v2, 0x7f0a00ab

    invoke-virtual {p0, v2}, Lcom/nvidia/tegrazone/NoInternetActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 24
    .local v1, retryBtn:Landroid/widget/Button;
    new-instance v2, Lcom/nvidia/tegrazone/NoInternetActivity$1;

    invoke-direct {v2, p0}, Lcom/nvidia/tegrazone/NoInternetActivity$1;-><init>(Lcom/nvidia/tegrazone/NoInternetActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    new-instance v2, Lcom/nvidia/tegrazone/NoInternetActivity$2;

    invoke-direct {v2, p0}, Lcom/nvidia/tegrazone/NoInternetActivity$2;-><init>(Lcom/nvidia/tegrazone/NoInternetActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    return-void
.end method
