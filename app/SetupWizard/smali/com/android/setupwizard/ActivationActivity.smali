.class public Lcom/android/setupwizard/ActivationActivity;
.super Lcom/android/setupwizard/BaseActivity;
.source "ActivationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final STATE_ACTIVATING:I

.field private final STATE_CANCEL_COMPLETED:I

.field private final STATE_CANCEL_REQUESTED:I

.field private final STATE_FAILED:I

.field private final STATE_NOT_STARTED:I

.field private final STATE_SHUTTING_DOWN:I

.field private final STATE_SUCCESS:I

.field private final STATE_WAITING_FOR_ACTIVATION_STATE:I

.field private final WAITING_FOR_CANCEL_TIMEOUT:I

.field private mActivationText:Landroid/widget/TextView;

.field private mActivationTitle:Landroid/widget/TextView;

.field private mAllowDontShowMode:Z

.field private mBackgroundId:I

.field private mCancelButton:Landroid/widget/Button;

.field private mContinueSkipButton:Landroid/widget/Button;

.field private mCountdownText:Landroid/widget/TextView;

.field private mDoExitToHome:Z

.field private mFilter:Landroid/content/IntentFilter;

.field private final mHandler:Landroid/os/Handler;

.field private mNetworkBars:Landroid/widget/ImageView;

.field private mNetworkName:Ljava/lang/CharSequence;

.field private mNetworkNotifier:Landroid/view/View;

.field private mNextButton:Landroid/widget/Button;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSignalStrengthImages:Landroid/content/res/TypedArray;

.field private mSignalStrengthPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSkipButton:Landroid/widget/Button;

.field private mSkipButtonForStandAlone:Landroid/widget/Button;

.field private mState:I

.field private final mTimeOutWaitingForCancel:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/android/setupwizard/BaseActivity;-><init>()V

    .line 106
    iput-boolean v1, p0, Lcom/android/setupwizard/ActivationActivity;->mAllowDontShowMode:Z

    .line 113
    iput v1, p0, Lcom/android/setupwizard/ActivationActivity;->STATE_NOT_STARTED:I

    .line 115
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/setupwizard/ActivationActivity;->STATE_WAITING_FOR_ACTIVATION_STATE:I

    .line 117
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/setupwizard/ActivationActivity;->STATE_ACTIVATING:I

    .line 119
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/setupwizard/ActivationActivity;->STATE_CANCEL_REQUESTED:I

    .line 121
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/setupwizard/ActivationActivity;->STATE_CANCEL_COMPLETED:I

    .line 123
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/setupwizard/ActivationActivity;->STATE_SUCCESS:I

    .line 125
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/setupwizard/ActivationActivity;->STATE_FAILED:I

    .line 130
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/setupwizard/ActivationActivity;->STATE_SHUTTING_DOWN:I

    .line 131
    iput v1, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    .line 145
    new-instance v0, Lcom/android/setupwizard/ActivationActivity$1;

    invoke-direct {v0, p0}, Lcom/android/setupwizard/ActivationActivity$1;-><init>(Lcom/android/setupwizard/ActivationActivity;)V

    iput-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mSignalStrengthPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 164
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/setupwizard/ActivationActivity;->WAITING_FOR_CANCEL_TIMEOUT:I

    .line 165
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mHandler:Landroid/os/Handler;

    .line 166
    new-instance v0, Lcom/android/setupwizard/ActivationActivity$2;

    invoke-direct {v0, p0}, Lcom/android/setupwizard/ActivationActivity$2;-><init>(Lcom/android/setupwizard/ActivationActivity;)V

    iput-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mTimeOutWaitingForCancel:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/android/setupwizard/ActivationActivity;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/setupwizard/ActivationActivity;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/setupwizard/ActivationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/setupwizard/ActivationActivity;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/setupwizard/ActivationActivity;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/setupwizard/ActivationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->onCancelCompleted()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/setupwizard/ActivationActivity;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mNetworkName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/setupwizard/ActivationActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/setupwizard/ActivationActivity;->mNetworkName:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$500(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-static {p0}, Lcom/android/setupwizard/ActivationActivity;->getNetworkNameFromIntent(Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/setupwizard/ActivationActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->shouldChangeTitleUsingNetworkName()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/setupwizard/ActivationActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mActivationTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/setupwizard/ActivationActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mCountdownText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/setupwizard/ActivationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->doShutdown()V

    return-void
.end method

.method private static calculateSignalStrength(Landroid/telephony/SignalStrength;Landroid/telephony/ServiceState;I)I
    .locals 1
    .parameter "signalStrength"
    .parameter "serviceState"
    .parameter "phoneState"

    .prologue
    .line 830
    invoke-static {p0}, Lcom/android/setupwizard/ActivationActivity;->isCdma(Landroid/telephony/SignalStrength;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 831
    invoke-static {p0}, Lcom/android/setupwizard/ActivationActivity;->getGsmLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    .line 839
    :goto_0
    return v0

    .line 836
    :cond_0
    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/android/setupwizard/ActivationActivity;->isEvdo(Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 837
    invoke-static {p0}, Lcom/android/setupwizard/ActivationActivity;->getEvdoLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    goto :goto_0

    .line 839
    :cond_1
    invoke-static {p0}, Lcom/android/setupwizard/ActivationActivity;->getCdmaLevel(Landroid/telephony/SignalStrength;)I

    move-result v0

    goto :goto_0
.end method

.method private doShutdown()V
    .locals 3

    .prologue
    .line 773
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 774
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 775
    invoke-virtual {p0, v0}, Lcom/android/setupwizard/ActivationActivity;->startActivity(Landroid/content/Intent;)V

    .line 776
    return-void
.end method

.method private static getCdmaLevel(Landroid/telephony/SignalStrength;)I
    .locals 5
    .parameter "signalStrength"

    .prologue
    .line 882
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 883
    .local v0, cdmaDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 884
    .local v1, cdmaEcio:I
    const/4 v2, 0x0

    .line 885
    .local v2, levelDbm:I
    const/4 v3, 0x0

    .line 887
    .local v3, levelEcio:I
    const/16 v4, -0x4b

    if-lt v0, v4, :cond_0

    .line 888
    const/4 v2, 0x4

    .line 899
    :goto_0
    const/16 v4, -0x5a

    if-lt v1, v4, :cond_4

    .line 900
    const/4 v3, 0x4

    .line 910
    :goto_1
    if-ge v2, v3, :cond_8

    move v4, v2

    :goto_2
    return v4

    .line 889
    :cond_0
    const/16 v4, -0x55

    if-lt v0, v4, :cond_1

    .line 890
    const/4 v2, 0x3

    goto :goto_0

    .line 891
    :cond_1
    const/16 v4, -0x5f

    if-lt v0, v4, :cond_2

    .line 892
    const/4 v2, 0x2

    goto :goto_0

    .line 893
    :cond_2
    const/16 v4, -0x64

    if-lt v0, v4, :cond_3

    .line 894
    const/4 v2, 0x1

    goto :goto_0

    .line 896
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 901
    :cond_4
    const/16 v4, -0x6e

    if-lt v1, v4, :cond_5

    .line 902
    const/4 v3, 0x3

    goto :goto_1

    .line 903
    :cond_5
    const/16 v4, -0x82

    if-lt v1, v4, :cond_6

    .line 904
    const/4 v3, 0x2

    goto :goto_1

    .line 905
    :cond_6
    const/16 v4, -0x96

    if-lt v1, v4, :cond_7

    .line 906
    const/4 v3, 0x1

    goto :goto_1

    .line 908
    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    move v4, v3

    .line 910
    goto :goto_2
.end method

.method private static getEvdoLevel(Landroid/telephony/SignalStrength;)I
    .locals 5
    .parameter "signalStrength"

    .prologue
    .line 917
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 918
    .local v0, evdoDbm:I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 919
    .local v1, evdoSnr:I
    const/4 v2, 0x0

    .line 920
    .local v2, levelEvdoDbm:I
    const/4 v3, 0x0

    .line 922
    .local v3, levelEvdoSnr:I
    const/16 v4, -0x41

    if-lt v0, v4, :cond_0

    .line 923
    const/4 v2, 0x4

    .line 933
    :goto_0
    const/4 v4, 0x7

    if-lt v1, v4, :cond_4

    .line 934
    const/4 v3, 0x4

    .line 944
    :goto_1
    if-ge v2, v3, :cond_8

    move v4, v2

    :goto_2
    return v4

    .line 924
    :cond_0
    const/16 v4, -0x4b

    if-lt v0, v4, :cond_1

    .line 925
    const/4 v2, 0x3

    goto :goto_0

    .line 926
    :cond_1
    const/16 v4, -0x5a

    if-lt v0, v4, :cond_2

    .line 927
    const/4 v2, 0x2

    goto :goto_0

    .line 928
    :cond_2
    const/16 v4, -0x69

    if-lt v0, v4, :cond_3

    .line 929
    const/4 v2, 0x1

    goto :goto_0

    .line 931
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 935
    :cond_4
    const/4 v4, 0x5

    if-lt v1, v4, :cond_5

    .line 936
    const/4 v3, 0x3

    goto :goto_1

    .line 937
    :cond_5
    const/4 v4, 0x3

    if-lt v1, v4, :cond_6

    .line 938
    const/4 v3, 0x2

    goto :goto_1

    .line 939
    :cond_6
    const/4 v4, 0x1

    if-lt v1, v4, :cond_7

    .line 940
    const/4 v3, 0x1

    goto :goto_1

    .line 942
    :cond_7
    const/4 v3, 0x0

    goto :goto_1

    :cond_8
    move v4, v3

    .line 944
    goto :goto_2
.end method

.method private static getGsmLevel(Landroid/telephony/SignalStrength;)I
    .locals 3
    .parameter "signalStrength"

    .prologue
    const/4 v2, 0x2

    .line 860
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 866
    .local v0, asu:I
    if-le v0, v2, :cond_0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    .line 867
    :cond_0
    const/4 v1, 0x0

    .line 875
    :goto_0
    return v1

    .line 868
    :cond_1
    const/16 v1, 0xc

    if-lt v0, v1, :cond_2

    .line 869
    const/4 v1, 0x4

    goto :goto_0

    .line 870
    :cond_2
    const/16 v1, 0x8

    if-lt v0, v1, :cond_3

    .line 871
    const/4 v1, 0x3

    goto :goto_0

    .line 872
    :cond_3
    const/4 v1, 0x5

    if-lt v0, v1, :cond_4

    move v1, v2

    .line 873
    goto :goto_0

    .line 875
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static getNetworkNameFromIntent(Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 952
    const-string v0, "showPlmn"

    const-string v1, "plmn"

    invoke-static {p0, v0, v1}, Lcom/android/setupwizard/ActivationActivity;->getSpecificNetworkName(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 953
    const-string v1, "showSpn"

    const-string v2, "spn"

    invoke-static {p0, v1, v2}, Lcom/android/setupwizard/ActivationActivity;->getSpecificNetworkName(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 954
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v5

    .line 955
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    .line 957
    :goto_1
    if-eqz v2, :cond_2

    if-nez v3, :cond_2

    .line 964
    :goto_2
    return-object v0

    :cond_0
    move v2, v4

    .line 954
    goto :goto_0

    :cond_1
    move v3, v4

    .line 955
    goto :goto_1

    .line 959
    :cond_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 960
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 961
    :cond_3
    if-nez v2, :cond_4

    if-eqz v3, :cond_4

    move-object v0, v1

    .line 962
    goto :goto_2

    .line 964
    :cond_4
    const-string v0, ""

    goto :goto_2
.end method

.method private static getSpecificNetworkName(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "intent"
    .parameter "showNameParam"
    .parameter "nameParam"

    .prologue
    .line 976
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    invoke-virtual {p0, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 979
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private goNextOrFinish(I)V
    .locals 3
    .parameter

    .prologue
    .line 782
    sget-boolean v0, Lcom/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivationActivity"

    const-string v1, "goNextOrExitToHome"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_0
    iget-boolean v0, p0, Lcom/android/setupwizard/ActivationActivity;->mDoExitToHome:Z

    if-eqz v0, :cond_1

    .line 784
    invoke-virtual {p0, p1}, Lcom/android/setupwizard/ActivationActivity;->setResult(I)V

    .line 785
    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->finish()V

    .line 786
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/setupwizard/ActivationActivity;->startActivity(Landroid/content/Intent;)V

    .line 796
    :goto_0
    return-void

    .line 790
    :cond_1
    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->isFirstRun()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 791
    const/16 v0, 0x2712

    invoke-virtual {p0, v0, p1}, Lcom/android/setupwizard/ActivationActivity;->onPageCompleted(II)V

    goto :goto_0

    .line 793
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/setupwizard/ActivationActivity;->setResult(I)V

    .line 794
    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->finish()V

    goto :goto_0
.end method

.method private initStandaloneView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 523
    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->overrideAllowBackHardkey()V

    .line 524
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    const v1, 0x7f0a0035

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 525
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mNetworkNotifier:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 527
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    const v1, 0x7f0a0039

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 529
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mSkipButtonForStandAlone:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 532
    return-void
.end method

.method private static isCdma(Landroid/telephony/SignalStrength;)Z
    .locals 1
    .parameter "signalStrength"

    .prologue
    .line 845
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isEvdo(Landroid/telephony/ServiceState;)Z
    .locals 2
    .parameter "serviceState"

    .prologue
    .line 849
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeActivateOrExit()V
    .locals 2

    .prologue
    .line 226
    iget v0, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->otaspStateIsKnown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->otaspIsNeeded()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->isFirstRun()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    const-string v0, "SetupWizard"

    const-string v1, "maybeActivateOrExit(): activation not needed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->isPessimisticMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    const-string v0, "SetupWizard"

    const-string v1, "Be pessimistic. Show failure screen anyway."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->onFailure()V

    goto :goto_0

    .line 239
    :cond_2
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->onSuccess()V

    goto :goto_0

    .line 241
    :cond_3
    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->canActivate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "SetupWizard"

    const-string v1, "maybeActivateOrExit(): activation required"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->performActivationCall()V

    goto :goto_0
.end method

.method private onActualSkip()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 535
    sget-boolean v0, Lcom/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivationActivity"

    const-string v1, "onActualSkip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_0
    iget-boolean v0, p0, Lcom/android/setupwizard/ActivationActivity;->mAllowDontShowMode:Z

    if-eqz v0, :cond_1

    .line 539
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dont_show_again"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 541
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/setupwizard/ActivationActivity;->goNextOrFinish(I)V

    .line 542
    return-void
.end method

.method private onCancelCompleted()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 689
    iget v0, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 690
    const-string v0, "ActivationActivity"

    const-string v1, "Unexpected state migration request (%d -> %d)."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_0
    iput v5, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    .line 697
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->showCancelCompletedScreen()V

    .line 698
    return-void
.end method

.method private onCancelRequested()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x1

    .line 646
    iget v2, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    if-eq v2, v7, :cond_0

    iget v2, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    if-eq v2, v4, :cond_0

    .line 648
    const-string v2, "ActivationActivity"

    const-string v3, "Unexpected state migration request (%d -> %d). Ignored."

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :goto_0
    return-void

    .line 653
    :cond_0
    iput v8, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    .line 655
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 658
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :goto_1
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->showCancelRequestedScreen()V

    goto :goto_0

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "ActivationActivity"

    const-string v3, "Exception hanging up activation call: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private onFailure()V
    .locals 2

    .prologue
    .line 611
    sget-boolean v0, Lcom/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivationActivity"

    const-string v1, "onFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_0
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    .line 613
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->showFailureScreen()V

    .line 614
    return-void
.end method

.method private onSpcRetriesFailure()V
    .locals 6

    .prologue
    .line 724
    sget-boolean v0, Lcom/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivationActivity"

    const-string v1, "onSpcRetriesFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_0
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    .line 727
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->showShuttingDownScreen()V

    .line 729
    new-instance v0, Lcom/android/setupwizard/ActivationActivity$4;

    const-wide/32 v2, 0xea60

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/setupwizard/ActivationActivity$4;-><init>(Lcom/android/setupwizard/ActivationActivity;JJ)V

    invoke-virtual {v0}, Lcom/android/setupwizard/ActivationActivity$4;->start()Landroid/os/CountDownTimer;

    .line 741
    return-void
.end method

.method private onSuccess()V
    .locals 2

    .prologue
    .line 586
    sget-boolean v0, Lcom/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivationActivity"

    const-string v1, "onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    .line 588
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->showSuccessScreen()V

    .line 589
    return-void
.end method

.method private performActivationCall()V
    .locals 7

    .prologue
    .line 504
    sget-boolean v4, Lcom/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v4, :cond_0

    const-string v4, "ActivationActivity"

    const-string v5, "startActivationCall"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_0
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    .line 509
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.phone.PERFORM_CDMA_PROVISIONING"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 510
    .local v1, otaspIntent:Landroid/content/Intent;
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 511
    .local v3, resultIntent:Landroid/content/Intent;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p0, v4, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 512
    .local v2, pendingResultIntent:Landroid/app/PendingIntent;
    const-string v4, "otasp_result_code_pending_intent"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 513
    const/16 v4, 0x4e21

    invoke-virtual {p0, v1, v4}, Lcom/android/setupwizard/ActivationActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    .end local v1           #otaspIntent:Landroid/content/Intent;
    .end local v2           #pendingResultIntent:Landroid/app/PendingIntent;
    .end local v3           #resultIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 514
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 515
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "ActivationActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t start activation call; ActivityNotFoundException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private shouldChangeTitleUsingNetworkName()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 810
    iget v0, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showActivationProcessScreen()V
    .locals 7

    .prologue
    const v2, 0x7f0a0033

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 545
    sget-boolean v0, Lcom/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivationActivity"

    const-string v1, "showProgress()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_0
    const v0, 0x7f02001a

    invoke-direct {p0, v0}, Lcom/android/setupwizard/ActivationActivity;->trySetBackground(I)V

    .line 549
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mNetworkName:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/setupwizard/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mActivationTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0031

    invoke-virtual {p0, v1}, Lcom/android/setupwizard/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    :goto_0
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mNetworkNotifier:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 555
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 556
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mSkipButtonForStandAlone:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 558
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 560
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 561
    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->isFirstRun()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mCancelButton:Landroid/widget/Button;

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 566
    :cond_1
    monitor-enter p0

    .line 567
    :try_start_0
    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->isFirstRun()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 568
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mNetworkName:Ljava/lang/CharSequence;

    const v1, 0x7f0a0033

    invoke-virtual {p0, v1}, Lcom/android/setupwizard/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 569
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    const v1, 0x7f0a003a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 582
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    return-void

    .line 552
    :cond_2
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mActivationTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0032

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/setupwizard/ActivationActivity;->mNetworkName:Ljava/lang/CharSequence;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/setupwizard/ActivationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 572
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    const v1, 0x7f0a003b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 582
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 575
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mNetworkName:Ljava/lang/CharSequence;

    const v1, 0x7f0a0033

    invoke-virtual {p0, v1}, Lcom/android/setupwizard/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 576
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    const v1, 0x7f0a003c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 579
    :cond_5
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    const v1, 0x7f0a003d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private showCancelCompletedScreen()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 701
    const v0, 0x7f02001c

    invoke-direct {p0, v0}, Lcom/android/setupwizard/ActivationActivity;->trySetBackground(I)V

    .line 703
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mNetworkNotifier:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 705
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mActivationTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0046

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 708
    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->isFirstRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 711
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 713
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mSkipButtonForStandAlone:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 714
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    const v1, 0x7f0a0047

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 721
    :goto_0
    return-void

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    const v1, 0x7f0a0039

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 717
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 718
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mSkipButtonForStandAlone:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 719
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    const v1, 0x7f0a0048

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private showCancelRequestedScreen()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 670
    const v0, 0x7f02001c

    invoke-direct {p0, v0}, Lcom/android/setupwizard/ActivationActivity;->trySetBackground(I)V

    .line 671
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mActivationTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0044

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 672
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    const v1, 0x7f0a0045

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 673
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 674
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 675
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mSkipButtonForStandAlone:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mCancelButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 682
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/setupwizard/ActivationActivity;->mTimeOutWaitingForCancel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 683
    return-void
.end method

.method private showFailureScreen()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 617
    const v0, 0x7f02001c

    invoke-direct {p0, v0}, Lcom/android/setupwizard/ActivationActivity;->trySetBackground(I)V

    .line 619
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mNetworkNotifier:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 620
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 621
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mActivationTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0041

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 623
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 624
    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->isFirstRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 629
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 630
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 631
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mSkipButtonForStandAlone:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 632
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    const v1, 0x7f0a0042

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 639
    :goto_0
    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 635
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 636
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mSkipButtonForStandAlone:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 637
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    const v1, 0x7f0a0043

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private showShuttingDownScreen()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 744
    const v1, 0x7f02001c

    invoke-direct {p0, v1}, Lcom/android/setupwizard/ActivationActivity;->trySetBackground(I)V

    .line 745
    iget-object v1, p0, Lcom/android/setupwizard/ActivationActivity;->mNetworkNotifier:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 746
    iget-object v1, p0, Lcom/android/setupwizard/ActivationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 747
    iget-object v1, p0, Lcom/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    const v2, 0x7f0a004a

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 748
    iget-object v1, p0, Lcom/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 749
    iget-object v1, p0, Lcom/android/setupwizard/ActivationActivity;->mSkipButtonForStandAlone:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 750
    iget-object v1, p0, Lcom/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 751
    iget-object v1, p0, Lcom/android/setupwizard/ActivationActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 752
    iget-object v1, p0, Lcom/android/setupwizard/ActivationActivity;->mActivationTitle:Landroid/widget/TextView;

    const v2, 0x7f0a0041

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 753
    iget-object v1, p0, Lcom/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    const v2, 0x7f0a0049

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 755
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/setupwizard/ActivationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 757
    .local v0, statusBarManager:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 758
    const/high16 v1, 0x37

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 768
    :goto_0
    const v1, 0x7f0d0008

    invoke-virtual {p0, v1}, Lcom/android/setupwizard/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/setupwizard/ActivationActivity;->mCountdownText:Landroid/widget/TextView;

    .line 769
    iget-object v1, p0, Lcom/android/setupwizard/ActivationActivity;->mCountdownText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 770
    return-void

    .line 764
    :cond_0
    const-string v1, "SetupWizard"

    const-string v2, "Unable to instantiate status bar manager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showSuccessScreen()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 592
    const v0, 0x7f02001b

    invoke-direct {p0, v0}, Lcom/android/setupwizard/ActivationActivity;->trySetBackground(I)V

    .line 595
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 596
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 598
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 599
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mSkipButtonForStandAlone:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mActivationTitle:Landroid/widget/TextView;

    const v1, 0x7f0a003e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 602
    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->isFirstRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    const v1, 0x7f0a003f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 608
    :goto_0
    return-void

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    const v1, 0x7f0a0040

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private startActivationProcess()V
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    .line 493
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->showActivationProcessScreen()V

    .line 497
    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->maybeRegisterOtaspPhoneStateListener()V

    .line 498
    return-void
.end method

.method private trySetBackground(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 984
    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->isLargerScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/setupwizard/ActivationActivity;->mBackgroundId:I

    if-eq v0, p1, :cond_0

    .line 985
    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 986
    iput p1, p0, Lcom/android/setupwizard/ActivationActivity;->mBackgroundId:I

    .line 988
    :cond_0
    return-void
.end method

.method private updateSignalStrength()V
    .locals 5

    .prologue
    .line 802
    sget-boolean v0, Lcom/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivationActivity"

    const-string v1, "updateSignalStrength"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mNetworkBars:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/setupwizard/ActivationActivity;->mSignalStrengthImages:Landroid/content/res/TypedArray;

    iget-object v2, p0, Lcom/android/setupwizard/ActivationActivity;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v3, p0, Lcom/android/setupwizard/ActivationActivity;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/setupwizard/ActivationActivity;->calculateSignalStrength(Landroid/telephony/SignalStrength;Landroid/telephony/ServiceState;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 807
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 475
    const/16 v0, 0x4e21

    if-ne p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    iget v0, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 478
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->onFailure()V

    .line 482
    :goto_0
    return-void

    .line 480
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/setupwizard/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 177
    iget v0, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->doShutdown()V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mSkipButtonForStandAlone:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 185
    :cond_2
    sget-boolean v0, Lcom/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_3

    .line 186
    const-string v0, "ActivationActivity"

    const-string v1, "onClickView: Activiting is not needed, skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_3
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->onActualSkip()V

    goto :goto_0

    .line 189
    :cond_4
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_7

    .line 190
    iget v0, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 191
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/setupwizard/ActivationActivity;->goNextOrFinish(I)V

    goto :goto_0

    .line 193
    :cond_5
    sget-boolean v0, Lcom/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_6

    const-string v0, "ActivationActivity"

    const-string v1, "onClickView: Activiting, next button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_6
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->startActivationProcess()V

    goto :goto_0

    .line 196
    :cond_7
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mContinueSkipButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_9

    .line 197
    sget-boolean v0, Lcom/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_8

    const-string v0, "ActivationActivity"

    const-string v1, "onClickView: Skip button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_8
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->onActualSkip()V

    goto :goto_0

    .line 199
    :cond_9
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mCancelButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_a

    .line 200
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->onCancelRequested()V

    goto :goto_0

    .line 202
    :cond_a
    sget-boolean v0, Lcom/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivationActivity"

    const-string v1, "onClickView: ignorning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 250
    invoke-super {p0, p1}, Lcom/android/setupwizard/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->getContentView()Landroid/view/View;

    move-result-object v4

    .line 253
    .local v4, view:Landroid/view/View;
    const/high16 v5, 0x67

    invoke-virtual {v4, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 260
    sget-boolean v5, Lcom/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v5, :cond_0

    const-string v5, "ActivationActivity"

    const-string v6, "onCreate: E"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    if-nez p1, :cond_5

    .line 273
    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "exitToHome"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/setupwizard/ActivationActivity;->mDoExitToHome:Z

    .line 274
    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.android.phone.VOICELESS_PROVISIONING_OFFER_DONTSHOW"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/setupwizard/ActivationActivity;->mAllowDontShowMode:Z

    .line 277
    sget-boolean v5, Lcom/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v5, :cond_1

    .line 278
    const-string v5, "ActivationActivity"

    const-string v6, "onCreate: mDoExitToHome: %b, mAllowDontShowMode: %b"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-boolean v8, p0, Lcom/android/setupwizard/ActivationActivity;->mDoExitToHome:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v9

    iget-boolean v8, p0, Lcom/android/setupwizard/ActivationActivity;->mAllowDontShowMode:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_1
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/setupwizard/ActivationActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 292
    iget-boolean v5, p0, Lcom/android/setupwizard/ActivationActivity;->mAllowDontShowMode:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/setupwizard/ActivationActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v6, "dont_show_again"

    invoke-interface {v5, v6, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 293
    invoke-direct {p0, v10}, Lcom/android/setupwizard/ActivationActivity;->goNextOrFinish(I)V

    .line 296
    :cond_2
    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    iput-object v5, p0, Lcom/android/setupwizard/ActivationActivity;->mSignalStrengthImages:Landroid/content/res/TypedArray;

    .line 298
    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 299
    .local v2, inflater:Landroid/view/LayoutInflater;
    const/high16 v5, 0x7f03

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 300
    .local v1, contentView:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/setupwizard/ActivationActivity;->setContentView(Landroid/view/View;)V

    .line 302
    const v5, 0x7f0d000e

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    .line 303
    iget-object v5, p0, Lcom/android/setupwizard/ActivationActivity;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    const v5, 0x7f0d000c

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/setupwizard/ActivationActivity;->mSkipButtonForStandAlone:Landroid/widget/Button;

    .line 306
    iget-object v5, p0, Lcom/android/setupwizard/ActivationActivity;->mSkipButtonForStandAlone:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    const v5, 0x7f0d000d

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    .line 308
    iget-object v5, p0, Lcom/android/setupwizard/ActivationActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    const v5, 0x7f0d000b

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/setupwizard/ActivationActivity;->mCancelButton:Landroid/widget/Button;

    .line 310
    iget-object v5, p0, Lcom/android/setupwizard/ActivationActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    const/high16 v5, 0x7f0d

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/setupwizard/ActivationActivity;->mActivationTitle:Landroid/widget/TextView;

    .line 313
    const v5, 0x7f0d0006

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/setupwizard/ActivationActivity;->mActivationText:Landroid/widget/TextView;

    .line 314
    const v5, 0x7f0d0002

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, p0, Lcom/android/setupwizard/ActivationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 315
    iget-object v5, p0, Lcom/android/setupwizard/ActivationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v10}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 316
    iget-object v5, p0, Lcom/android/setupwizard/ActivationActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v5, v9}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 318
    const v5, 0x7f0d0003

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/setupwizard/ActivationActivity;->mNetworkNotifier:Landroid/view/View;

    .line 319
    const v5, 0x7f0d0004

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/setupwizard/ActivationActivity;->mNetworkBars:Landroid/widget/ImageView;

    .line 320
    const v5, 0x7f0a0033

    invoke-virtual {p0, v5}, Lcom/android/setupwizard/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/setupwizard/ActivationActivity;->mNetworkName:Ljava/lang/CharSequence;

    .line 322
    const v5, 0x7f0d000f

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/setupwizard/ActivationActivity;->mContinueSkipButton:Landroid/widget/Button;

    .line 323
    iget-object v5, p0, Lcom/android/setupwizard/ActivationActivity;->mContinueSkipButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    iput-object v5, p0, Lcom/android/setupwizard/ActivationActivity;->mFilter:Landroid/content/IntentFilter;

    .line 327
    iget-object v5, p0, Lcom/android/setupwizard/ActivationActivity;->mFilter:Landroid/content/IntentFilter;

    const-string v6, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 328
    new-instance v5, Lcom/android/setupwizard/ActivationActivity$3;

    invoke-direct {v5, p0}, Lcom/android/setupwizard/ActivationActivity$3;-><init>(Lcom/android/setupwizard/ActivationActivity;)V

    iput-object v5, p0, Lcom/android/setupwizard/ActivationActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 340
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Lcom/android/setupwizard/ActivationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 342
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_6

    .line 343
    iget-object v5, p0, Lcom/android/setupwizard/ActivationActivity;->mSignalStrengthPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x100

    invoke-virtual {v3, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 351
    :goto_1
    if-nez p1, :cond_8

    .line 352
    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "autoStart"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 353
    .local v0, autoStart:Z
    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->isFirstRun()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v0, :cond_7

    .line 354
    :cond_3
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->startActivationProcess()V

    .line 396
    .end local v0           #autoStart:Z
    :goto_2
    sget-boolean v5, Lcom/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v5, :cond_4

    const-string v5, "ActivationActivity"

    const-string v6, "onCreate: X"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_4
    return-void

    .line 283
    .end local v1           #contentView:Landroid/view/View;
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_5
    const-string v5, "exitToHome"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/setupwizard/ActivationActivity;->mDoExitToHome:Z

    .line 284
    const-string v5, "com.android.phone.VOICELESS_PROVISIONING_OFFER_DONTSHOW"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/setupwizard/ActivationActivity;->mAllowDontShowMode:Z

    .line 286
    const-string v5, "prevState"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    goto/16 :goto_0

    .line 348
    .restart local v1       #contentView:Landroid/view/View;
    .restart local v2       #inflater:Landroid/view/LayoutInflater;
    .restart local v3       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_6
    const-string v5, "ActivationActivity"

    const-string v6, "telephony manager null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 356
    .restart local v0       #autoStart:Z
    :cond_7
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->initStandaloneView()V

    goto :goto_2

    .line 360
    .end local v0           #autoStart:Z
    :cond_8
    iget v5, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    packed-switch v5, :pswitch_data_0

    .line 390
    const-string v5, "SetupWizard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->initStandaloneView()V

    goto :goto_2

    .line 362
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "autoStart"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 364
    .restart local v0       #autoStart:Z
    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->isFirstRun()Z

    move-result v5

    if-nez v5, :cond_9

    if-eqz v0, :cond_a

    .line 365
    :cond_9
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->startActivationProcess()V

    goto :goto_2

    .line 367
    :cond_a
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->initStandaloneView()V

    goto :goto_2

    .line 372
    .end local v0           #autoStart:Z
    :pswitch_1
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->showActivationProcessScreen()V

    goto :goto_2

    .line 375
    :pswitch_2
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->showCancelRequestedScreen()V

    goto :goto_2

    .line 378
    :pswitch_3
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->showCancelCompletedScreen()V

    goto :goto_2

    .line 381
    :pswitch_4
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->onSuccess()V

    goto :goto_2

    .line 384
    :pswitch_5
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->showFailureScreen()V

    goto/16 :goto_2

    .line 387
    :pswitch_6
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->showShuttingDownScreen()V

    goto/16 :goto_2

    .line 360
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x4

    .line 404
    invoke-super {p0, p1}, Lcom/android/setupwizard/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 406
    sget-boolean v1, Lcom/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    const-string v1, "ActivationActivity"

    const-string v2, "onNewIntent: E"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_0
    const-string v1, "otasp_result_code"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_7

    .line 409
    const-string v1, "otasp_result_code"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 411
    .local v0, resultCode:I
    sget-boolean v1, Lcom/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v1, :cond_1

    const-string v1, "ActivationActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got OTASP result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_1
    iget v1, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    if-ne v1, v4, :cond_6

    .line 414
    :cond_2
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 415
    const-string v1, "ActivationActivity"

    const-string v2, "OTASP_USER_SKIPPED not returned."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_3
    iget v1, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    if-ne v1, v4, :cond_4

    .line 418
    const-string v1, "ActivationActivity"

    const-string v2, "mState is already STATE_CANCEL_COMPLETED"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_4
    iget-object v1, p0, Lcom/android/setupwizard/ActivationActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/setupwizard/ActivationActivity;->mTimeOutWaitingForCancel:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 421
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->onCancelCompleted()V

    .line 449
    .end local v0           #resultCode:I
    :cond_5
    :goto_0
    return-void

    .line 425
    .restart local v0       #resultCode:I
    :cond_6
    packed-switch v0, :pswitch_data_0

    .line 444
    const-string v1, "ActivationActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown otasp activation result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    .end local v0           #resultCode:I
    :cond_7
    :goto_1
    sget-boolean v1, Lcom/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v1, :cond_5

    const-string v1, "ActivationActivity"

    const-string v2, "onNewIntent: X"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 427
    .restart local v0       #resultCode:I
    :pswitch_0
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->onActualSkip()V

    goto :goto_1

    .line 430
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/setupwizard/ActivationActivity;->isPessimisticMode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 431
    const-string v1, "SetupWizard"

    const-string v2, "Be pessimistic. Show failure screen anyway."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->onFailure()V

    goto :goto_1

    .line 434
    :cond_8
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->onSuccess()V

    goto :goto_1

    .line 438
    :pswitch_2
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->onFailure()V

    goto :goto_1

    .line 441
    :pswitch_3
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->onSpcRetriesFailure()V

    goto :goto_1

    .line 425
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onOtaspChanged()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->maybeActivateOrExit()V

    .line 214
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 453
    invoke-super {p0}, Lcom/android/setupwizard/BaseActivity;->onPause()V

    .line 454
    sget-boolean v0, Lcom/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivationActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/setupwizard/ActivationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 456
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 460
    invoke-super {p0}, Lcom/android/setupwizard/BaseActivity;->onResume()V

    .line 461
    sget-boolean v0, Lcom/android/setupwizard/ActivationActivity;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivationActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizard/ActivationActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/setupwizard/ActivationActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizard/ActivationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 463
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 467
    invoke-super {p0, p1}, Lcom/android/setupwizard/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 468
    const-string v0, "exitToHome"

    iget-boolean v1, p0, Lcom/android/setupwizard/ActivationActivity;->mDoExitToHome:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 469
    const-string v0, "com.android.phone.VOICELESS_PROVISIONING_OFFER_DONTSHOW"

    iget-boolean v1, p0, Lcom/android/setupwizard/ActivationActivity;->mAllowDontShowMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 470
    const-string v0, "prevState"

    iget v1, p0, Lcom/android/setupwizard/ActivationActivity;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 471
    return-void
.end method

.method protected onServiceStateChanged()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/android/setupwizard/ActivationActivity;->maybeActivateOrExit()V

    .line 209
    return-void
.end method
