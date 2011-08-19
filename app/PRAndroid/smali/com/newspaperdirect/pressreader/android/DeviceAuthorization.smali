.class public Lcom/newspaperdirect/pressreader/android/DeviceAuthorization;
.super Landroid/app/Activity;
.source "DeviceAuthorization.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;

    invoke-direct {v0, p0}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;-><init>(Landroid/app/Activity;)V

    .line 14
    new-instance v1, Lcom/newspaperdirect/pressreader/android/DeviceAuthorization$1;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/DeviceAuthorization$1;-><init>(Lcom/newspaperdirect/pressreader/android/DeviceAuthorization;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationChecker;->setPositiveResult(Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnPositiveResult;)Lcom/newspaperdirect/pressreader/android/core/BaseChecker;

    move-result-object v0

    .line 20
    new-instance v1, Lcom/newspaperdirect/pressreader/android/DeviceAuthorization$2;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/DeviceAuthorization$2;-><init>(Lcom/newspaperdirect/pressreader/android/DeviceAuthorization;)V

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->setNegativeResult(Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnNegativeResult;)Lcom/newspaperdirect/pressreader/android/core/BaseChecker;

    move-result-object v0

    .line 26
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/DeviceAuthorization;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->setNegativeResultMessage(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/BaseChecker;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/BaseChecker;->check()V

    .line 28
    return-void
.end method
