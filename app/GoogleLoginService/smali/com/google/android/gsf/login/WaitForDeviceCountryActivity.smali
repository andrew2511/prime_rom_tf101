.class public Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;
.super Lcom/google/android/gsf/login/BaseActivity;
.source "WaitForDeviceCountryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final WAITING_FOR_DEVICE_COUNTRY_TIMEOUT:I

.field private mCancelButton:Landroid/widget/Button;

.field private final mGservicesChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private final mTimeOutWaitingForDeviceCountry:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/android/gsf/login/BaseActivity;-><init>()V

    .line 49
    new-instance v0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity$1;-><init>(Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->mGservicesChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->WAITING_FOR_DEVICE_COUNTRY_TIMEOUT:I

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->mHandler:Landroid/os/Handler;

    .line 60
    new-instance v0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity$2;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity$2;-><init>(Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->mTimeOutWaitingForDeviceCountry:Ljava/lang/Runnable;

    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 95
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->setContentView(I)V

    .line 96
    const v0, 0x7f0c0026

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->mCancelButton:Landroid/widget/Button;

    .line 97
    iget-object v0, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->returnResult(I)V

    .line 104
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/google/android/gsf/login/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->mGservicesChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->getDeviceCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 78
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->returnResult(I)V

    .line 86
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->initView()V

    .line 85
    iget-object v1, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->mTimeOutWaitingForDeviceCountry:Ljava/lang/Runnable;

    const-wide/16 v3, 0x4e20

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Lcom/google/android/gsf/login/BaseActivity;->onDestroy()V

    .line 91
    iget-object v0, p0, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->mGservicesChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    return-void
.end method

.method protected returnResult(I)V
    .locals 0
    .parameter "result"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->setResult(I)V

    .line 108
    invoke-virtual {p0}, Lcom/google/android/gsf/login/WaitForDeviceCountryActivity;->finish()V

    .line 109
    return-void
.end method
