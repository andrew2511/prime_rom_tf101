.class Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;
.super Ljava/lang/Object;
.source "AccountSettingsXL.java"

# interfaces
.implements Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountServerSettingsFragmentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsXL;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V
    .locals 0
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 557
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V

    return-void
.end method


# virtual methods
.method public onCheckSettingsComplete(II)V
    .locals 2
    .parameter "result"
    .parameter "setupMode"

    .prologue
    .line 576
    if-nez p1, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    .line 579
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onBackPressed()V

    .line 581
    :cond_0
    return-void
.end method

.method public onEnableProceedButtons(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 562
    return-void
.end method

.method public onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V
    .locals 3
    .parameter "checkMode"
    .parameter "target"

    .prologue
    .line 566
    invoke-static {p1, p2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    move-result-object v0

    .line 568
    .local v0, checkerFragment:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/email/activity/setup/AccountSettingsXL;->startPreferenceFragment(Landroid/app/Fragment;Z)V

    .line 569
    return-void
.end method
