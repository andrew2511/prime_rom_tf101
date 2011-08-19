.class public Lcom/google/android/gsf/checkin/CheckinRequestBuilder;
.super Ljava/lang/Object;
.source "CheckinRequestBuilder.java"


# static fields
.field private static final DEFAULT_KEYSTORE:Ljava/io/File;

.field private static DEVICE_ID_PATTERN:Ljava/util/regex/Pattern;

.field private static ESN_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x41b

    .line 112
    sget-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_CHECKIN_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x21b

    const/4 v2, 0x1

    sget-object v3, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_BUILD_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 117
    sget-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_CHECKIN_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/4 v1, 0x3

    sget-object v2, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_EVENT_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v4, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 122
    sget-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_CHECKIN_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11b

    const/4 v2, 0x4

    sget-object v3, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_CHECKIN_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 127
    sget-object v0, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_CHECKIN_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_INTENT_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v4, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 166
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/security/otacerts.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 234
    const-string v0, "^(([0-9]{15})|([0-9a-fA-F]{14}))$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->DEVICE_ID_PATTERN:Ljava/util/regex/Pattern;

    .line 237
    const-string v0, "^([0-9a-fA-F]{8})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->ESN_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAccountInfo(Landroid/content/Context;Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 10
    .parameter "context"
    .parameter "request"

    .prologue
    const/16 v9, 0xb

    .line 465
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 466
    .local v2, am:Landroid/accounts/AccountManager;
    const-string v7, "com.google"

    invoke-virtual {v2, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 467
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v3, v1

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v3, v4

    .line 468
    .local v0, a:Landroid/accounts/Account;
    const-string v7, "SID"

    invoke-virtual {v2, v0, v7}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 472
    .local v6, token:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v9, v7}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 473
    if-eqz v6, :cond_0

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 474
    invoke-virtual {p1, v9, v6}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 467
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 480
    .end local v0           #a:Landroid/accounts/Account;
    .end local v6           #token:Ljava/lang/String;
    :cond_1
    array-length v7, v1

    if-nez v7, :cond_2

    .line 481
    const-string v7, ""

    invoke-virtual {p1, v9, v7}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 483
    :cond_2
    return-void
.end method

.method public static addBuildProperties(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 7
    .parameter "request"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 143
    invoke-virtual {p0, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 144
    .local v1, checkin:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 145
    .local v0, build:Lcom/google/common/io/protocol/ProtoBuf;
    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    .end local v0           #build:Lcom/google/common/io/protocol/ProtoBuf;
    sget-object v2, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_BUILD_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 147
    .restart local v0       #build:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v1, v3, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 150
    :cond_0
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->opt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 151
    sget-object v2, Landroid/os/Build;->RADIO:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->opt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 152
    const/4 v2, 0x5

    sget-object v3, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->opt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 153
    const/4 v2, 0x2

    sget-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->opt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 154
    const/4 v2, 0x3

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->opt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 155
    const/16 v2, 0x9

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->opt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 156
    const/16 v2, 0xb

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->opt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 157
    const/16 v2, 0xc

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->opt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 158
    const/16 v2, 0xd

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->opt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 159
    const/4 v2, 0x7

    sget-wide v3, Landroid/os/Build;->TIME:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 160
    const/16 v2, 0xa

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 162
    invoke-static {p0}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addOtaCerts(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 163
    return-void
.end method

.method public static addDeviceConfiguration(Landroid/content/Context;Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 7
    .parameter "context"
    .parameter "request"

    .prologue
    .line 689
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 691
    .local v0, deviceConfig:Lcom/google/common/io/protocol/ProtoBuf;
    if-nez v0, :cond_0

    .line 692
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    .end local v0           #deviceConfig:Lcom/google/common/io/protocol/ProtoBuf;
    sget-object v1, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->DEVICE_CONFIGURATION_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 693
    .restart local v0       #deviceConfig:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v1, 0x12

    invoke-virtual {p1, v1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    :cond_0
    move-object v1, v0

    .line 696
    .end local v0           #deviceConfig:Lcom/google/common/io/protocol/ProtoBuf;
    .local v1, deviceConfig:Lcom/google/common/io/protocol/ProtoBuf;
    const-string p1, "activity"

    .end local p1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 697
    .local p1, am:Landroid/app/ActivityManager;
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object p1

    .line 700
    .local p1, ci:Landroid/content/pm/ConfigurationInfo;
    const/4 v0, 0x1

    invoke-static {p1}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->touchScreenFromConfig(Landroid/content/pm/ConfigurationInfo;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 701
    const/4 v0, 0x2

    invoke-static {p1}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->keyboardFromConfig(Landroid/content/pm/ConfigurationInfo;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 702
    const/4 v0, 0x3

    invoke-static {p1}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->navigationFromConfig(Landroid/content/pm/ConfigurationInfo;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 704
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 705
    .local v0, config:Landroid/content/res/Configuration;
    const/4 v2, 0x4

    invoke-static {v0}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->screenLayoutFromConfig(Landroid/content/res/Configuration;)I

    move-result v0

    .end local v0           #config:Landroid/content/res/Configuration;
    invoke-virtual {v1, v2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 707
    const/4 v0, 0x5

    iget v2, p1, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 709
    const/4 v0, 0x6

    iget v2, p1, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 713
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 714
    .local v2, wm:Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 715
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .end local v2           #wm:Landroid/view/WindowManager;
    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 716
    const/4 v2, 0x7

    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 717
    const/16 v2, 0xc

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 718
    const/16 v2, 0xd

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v1, v2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 721
    const/16 v0, 0x8

    iget p1, p1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .end local p1           #ci:Landroid/content/pm/ConfigurationInfo;
    invoke-virtual {v1, v0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 724
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 725
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object p1

    .line 726
    .local p1, libraries:[Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 727
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 728
    move-object p1, p1

    .local p1, arr$:[Ljava/lang/String;
    array-length v2, p1

    .local v2, len$:I
    const/4 v0, 0x0

    .local v0, i$:I
    :goto_2
    if-ge v0, v2, :cond_3

    aget-object v3, p1, v0

    .line 729
    .local v3, library:Ljava/lang/String;
    const/16 v5, 0x9

    invoke-virtual {v1, v5, v3}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 728
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 707
    .end local v0           #i$:I
    .end local v2           #len$:I
    .end local v3           #library:Ljava/lang/String;
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .local p1, ci:Landroid/content/pm/ConfigurationInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 709
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 734
    .end local p1           #ci:Landroid/content/pm/ConfigurationInfo;
    .restart local v4       #pm:Landroid/content/pm/PackageManager;
    :cond_3
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object p1

    .line 737
    .local p1, features:[Landroid/content/pm/FeatureInfo;
    if-eqz p1, :cond_5

    .line 738
    array-length v0, p1

    new-array v6, v0, [Ljava/lang/String;

    .line 739
    .local v6, names:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 740
    .local v2, n:I
    move-object p1, p1

    .local p1, arr$:[Landroid/content/pm/FeatureInfo;
    array-length v3, p1

    .local v3, len$:I
    const/4 v0, 0x0

    .restart local v0       #i$:I
    move v5, v2

    .end local v2           #n:I
    .local v5, n:I
    move v2, v0

    .end local v0           #i$:I
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .local v2, i$:I
    :goto_3
    if-ge v2, v3, :cond_4

    aget-object v0, p1, v2

    .line 741
    .local v0, f:Landroid/content/pm/FeatureInfo;
    iget-object v4, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 742
    add-int/lit8 v4, v5, 0x1

    .end local v5           #n:I
    .local v4, n:I
    iget-object v0, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .end local v0           #f:Landroid/content/pm/FeatureInfo;
    aput-object v0, v6, v5

    .line 740
    :goto_4
    add-int/lit8 v0, v2, 0x1

    .end local v2           #i$:I
    .local v0, i$:I
    move v2, v0

    .end local v0           #i$:I
    .restart local v2       #i$:I
    move v5, v4

    .end local v4           #n:I
    .restart local v5       #n:I
    goto :goto_3

    .line 745
    :cond_4
    const/4 p1, 0x0

    invoke-static {v6, p1, v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    .line 746
    .end local p1           #arr$:[Landroid/content/pm/FeatureInfo;
    const/4 p1, 0x0

    .end local v2           #i$:I
    .local p1, i:I
    :goto_5
    if-ge p1, v5, :cond_5

    .line 747
    const/16 v0, 0xa

    aget-object v2, v6, p1

    invoke-virtual {v1, v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 746
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 752
    .end local v3           #len$:I
    .end local v5           #n:I
    .end local v6           #names:[Ljava/lang/String;
    .end local p1           #i:I
    :cond_5
    const/16 p1, 0xb

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 757
    sget-object p1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const-string v0, "unknown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 758
    const/16 p1, 0xb

    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 762
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object p1

    .line 763
    .local p1, locales:[Ljava/lang/String;
    if-eqz p1, :cond_8

    .line 764
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 765
    move-object p1, p1

    .local p1, arr$:[Ljava/lang/String;
    array-length v2, p1

    .local v2, len$:I
    const/4 v0, 0x0

    .restart local v0       #i$:I
    :goto_6
    if-ge v0, v2, :cond_8

    aget-object v3, p1, v0

    .line 766
    .local v3, locale:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 767
    const/16 v4, 0xe

    invoke-virtual {v1, v4, v3}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 765
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 773
    .end local v0           #i$:I
    .end local v2           #len$:I
    .end local v3           #locale:Ljava/lang/String;
    .end local p1           #arr$:[Ljava/lang/String;
    :cond_8
    invoke-static {p0}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->getGlExtensions(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .end local p0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .local p1, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 774
    .local p0, extension:Ljava/lang/String;
    const/16 v0, 0xf

    invoke-virtual {v1, v0, p0}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    goto :goto_7

    .line 776
    .end local p0           #extension:Ljava/lang/String;
    :cond_9
    return-void

    .local v0, f:Landroid/content/pm/FeatureInfo;
    .local v2, i$:I
    .local v3, len$:I
    .restart local v5       #n:I
    .restart local v6       #names:[Ljava/lang/String;
    .local p0, context:Landroid/content/Context;
    .local p1, arr$:[Landroid/content/pm/FeatureInfo;
    :cond_a
    move v4, v5

    .end local v5           #n:I
    .restart local v4       #n:I
    goto :goto_4
.end method

.method public static addEvents(Landroid/os/DropBoxManager;IILjava/util/Map;JLcom/google/common/io/protocol/ProtoBuf;)J
    .locals 22
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/DropBoxManager;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/google/common/io/protocol/ProtoBuf;",
            ")J"
        }
    .end annotation

    .prologue
    .line 806
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 807
    const/4 v6, 0x0

    .line 812
    const/4 v7, 0x4

    :try_start_0
    move-object/from16 v0, p6

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v7

    .line 813
    const/16 p6, 0x2

    move-object v0, v7

    move/from16 v1, p6

    move-wide/from16 v2, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 816
    const-string p6, "checkin_dropbox_upload"

    move-object/from16 v0, p3

    move-object/from16 v1, p6

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    .line 817
    if-eqz p6, :cond_0

    sget-object v8, Lcom/google/android/gsf/Gservices;->FALSE_PATTERN:Ljava/util/regex/Pattern;

    move-object v0, v8

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p6

    invoke-virtual/range {p6 .. p6}, Ljava/util/regex/Matcher;->matches()Z

    move-result p6

    if-nez p6, :cond_7

    :cond_0
    const/16 p6, 0x1

    move/from16 v8, p6

    .line 822
    :goto_0
    const/16 p6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-wide/from16 v2, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object p6

    .line 823
    :try_start_1
    const-string v4, "event_log"

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide/from16 v2, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    .line 824
    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 825
    const/4 v9, 0x0

    .line 826
    const-wide/16 v10, -0x1

    .line 828
    const/16 v12, 0x1000

    new-array v12, v12, [B

    .line 829
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 830
    const/4 v14, 0x0

    move/from16 v19, v14

    move-object/from16 v14, p6

    move-object/from16 p6, v9

    move-wide/from16 v20, v10

    move-wide/from16 v9, v20

    move-object v11, v4

    move/from16 v4, v19

    .line 832
    :goto_1
    move v0, v4

    move/from16 v1, p1

    if-ge v0, v1, :cond_1a

    if-nez v11, :cond_1

    if-eqz v14, :cond_1a

    :cond_1
    move-object v15, v11

    move-object/from16 v11, p6

    .line 835
    :cond_2
    :goto_2
    if-eqz v15, :cond_b

    :try_start_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p6

    const/16 v16, 0x2

    move/from16 v0, p6

    move/from16 v1, v16

    if-lt v0, v1, :cond_3

    cmp-long p6, v9, p4

    if-gtz p6, :cond_b

    .line 836
    :cond_3
    if-nez v11, :cond_4

    .line 837
    invoke-virtual {v15}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object p6

    .line 838
    if-eqz p6, :cond_4

    .line 839
    new-instance v11, Ljava/io/BufferedReader;

    new-instance v16, Ljava/io/InputStreamReader;

    move-object/from16 v0, v16

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p6, 0x1000

    move-object v0, v11

    move-object/from16 v1, v16

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 843
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 844
    if-eqz v11, :cond_5

    invoke-static {v11, v5}, Lcom/google/android/common/Csv;->parseLine(Ljava/io/BufferedReader;Ljava/util/List;)Z

    move-result p6

    if-nez p6, :cond_8

    .line 845
    :cond_5
    invoke-virtual {v15}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v16

    .line 846
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V

    .line 847
    :cond_6
    const/16 p6, 0x0

    .line 848
    invoke-virtual {v15}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 849
    const-string v11, "event_log"

    move-object/from16 v0, p0

    move-object v1, v11

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v11

    move-object v15, v11

    move-object/from16 v11, p6

    .line 850
    goto :goto_2

    .line 817
    :cond_7
    const/16 p6, 0x0

    move/from16 v8, p6

    goto/16 :goto_0

    .line 850
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-result p6

    if-nez p6, :cond_2

    .line 852
    const/16 p6, 0x0

    :try_start_4
    move-object v0, v5

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    .line 853
    const/16 v9, 0x2e

    move-object/from16 v0, p6

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 854
    const/4 v10, -0x1

    if-ne v9, v10, :cond_9

    :goto_3
    invoke-static/range {p6 .. p6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p6

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto/16 :goto_2

    :cond_9
    const/4 v10, 0x0

    move-object/from16 v0, p6

    move v1, v10

    move v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object p6

    goto :goto_3

    .line 855
    :catch_0
    move-exception p6

    move-object/from16 v9, p6

    .line 856
    :try_start_5
    const-string v10, "CheckinRequestBuilder"

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct/range {p6 .. p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Can\'t parse event_log timestamp: "

    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 p6, 0x0

    move-object v0, v5

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    move-object v0, v10

    move-object/from16 v1, p6

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 857
    const-wide/16 v9, -0x1

    .line 858
    goto/16 :goto_2

    .line 880
    :cond_a
    invoke-virtual {v14}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v16

    .line 881
    invoke-virtual {v14}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 882
    const/16 p6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object p6

    move-object/from16 v14, p6

    .line 862
    :cond_b
    if-eqz v14, :cond_d

    .line 864
    invoke-virtual {v14}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object p6

    .line 865
    const-string v16, "event_log"

    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    invoke-virtual {v14}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v16

    and-int/lit8 v16, v16, 0x1

    if-eqz v16, :cond_a

    .line 867
    :cond_c
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "checkin_dropbox_upload:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    .line 868
    move-object/from16 v0, p3

    move-object/from16 v1, p6

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    .line 869
    if-eqz p6, :cond_10

    sget-object v16, Lcom/google/android/gsf/Gservices;->TRUE_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v16

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->matches()Z

    move-result v16

    if-eqz v16, :cond_10

    .line 886
    :cond_d
    :goto_4
    if-eqz v15, :cond_14

    if-eqz v14, :cond_e

    invoke-virtual {v14}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v16

    cmp-long p6, v9, v16

    if-gez p6, :cond_14

    .line 888
    :cond_e
    new-instance v16, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object p6, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_EVENT_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v16

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 889
    const/16 p6, 0x3

    :try_start_6
    move-object v0, v7

    move/from16 v1, p6

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 890
    const/4 v6, 0x1

    const/16 p6, 0x3

    move-object v0, v5

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    move-object/from16 v0, v16

    move v1, v6

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 891
    const/16 p6, 0x3

    move-object/from16 v0, v16

    move/from16 v1, p6

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 895
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p6

    const/4 v6, 0x5

    move/from16 v0, p6

    move v1, v6

    if-ne v0, v1, :cond_11

    .line 897
    const/4 v6, 0x2

    const/16 p6, 0x4

    move-object v0, v5

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    move-object/from16 v0, v16

    move v1, v6

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 909
    :cond_f
    :goto_5
    invoke-virtual/range {v16 .. v16}, Lcom/google/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result p6

    add-int/lit8 p6, p6, 0x1

    add-int p6, p6, v4

    .line 910
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move/from16 v4, p6

    move-object/from16 v6, v16

    move-object/from16 p6, v11

    move-object v11, v15

    goto/16 :goto_1

    .line 873
    :cond_10
    if-eqz v8, :cond_a

    if-eqz p6, :cond_d

    :try_start_7
    sget-object v16, Lcom/google/android/gsf/Gservices;->FALSE_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v16

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p6

    invoke-virtual/range {p6 .. p6}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    move-result p6

    if-nez p6, :cond_a

    goto/16 :goto_4

    .line 898
    :cond_11
    :try_start_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p6

    const/4 v6, 0x5

    move/from16 v0, p6

    move v1, v6

    if-le v0, v1, :cond_f

    .line 900
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 901
    const/16 p6, 0x4

    move-object v0, v5

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/google/android/common/Csv;->writeValue(Ljava/lang/String;Ljava/lang/Appendable;)V

    .line 902
    const/16 p6, 0x5

    move/from16 v17, p6

    :goto_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p6

    move/from16 v0, v17

    move/from16 v1, p6

    if-ge v0, v1, :cond_12

    .line 903
    const-string p6, ","

    move-object v0, v6

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    move-object/from16 v0, p6

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/google/android/common/Csv;->writeValue(Ljava/lang/String;Ljava/lang/Appendable;)V

    .line 902
    add-int/lit8 p6, v17, 0x1

    move/from16 v17, p6

    goto :goto_6

    .line 906
    :cond_12
    const/16 p6, 0x2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    move/from16 v1, p6

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_5

    .line 948
    :catch_1
    move-exception p0

    move-object/from16 p1, v16

    move-object/from16 p2, v15

    move-object/from16 p3, v14

    .line 949
    :goto_7
    :try_start_9
    const-string p6, "CheckinRequestBuilder"

    const-string v4, "Can\'t copy dropbox data"

    move-object/from16 v0, p6

    move-object v1, v4

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 951
    if-eqz p3, :cond_13

    invoke-virtual/range {p3 .. p3}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 952
    :cond_13
    if-eqz p2, :cond_20

    invoke-virtual/range {p2 .. p2}, Landroid/os/DropBoxManager$Entry;->close()V

    move-object/from16 p0, p1

    .line 955
    :goto_8
    if-nez p0, :cond_1f

    move-wide/from16 p0, p4

    :goto_9
    return-wide p0

    .line 911
    :cond_14
    if-eqz v14, :cond_22

    if-eqz v15, :cond_15

    :try_start_a
    invoke-virtual {v14}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v16

    cmp-long p6, v16, v9

    if-gtz p6, :cond_22

    .line 913
    :cond_15
    new-instance p6, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v16, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_EVENT_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, p6

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 914
    const/4 v6, 0x3

    :try_start_b
    move-object v0, v7

    move v1, v6

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 915
    const/4 v6, 0x1

    invoke-virtual {v14}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p6

    move v1, v6

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 916
    const/4 v6, 0x3

    invoke-virtual {v14}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p6

    move v1, v6

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 919
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 920
    invoke-virtual {v14}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 921
    :cond_16
    if-eqz v6, :cond_17

    invoke-virtual {v6, v12}, Ljava/io/InputStream;->read([B)I

    move-result v16

    if-lez v16, :cond_17

    .line 922
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v17

    sub-int v17, p2, v17

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 923
    const/16 v18, 0x0

    move-object v0, v13

    move-object v1, v12

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 924
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_16

    .line 925
    const-string v16, "CheckinRequestBuilder"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Truncating "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v14}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " entry to "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " bytes for upload"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    invoke-virtual {v14}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v16

    and-int/lit8 v16, v16, 0x2

    if-eqz v16, :cond_17

    .line 928
    const-string v16, "\n=== TRUNCATED FOR UPLOAD ===\n"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 933
    :cond_17
    if-eqz v6, :cond_18

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 935
    :cond_18
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 936
    move-object v0, v6

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_19

    const/16 v16, 0x2

    move-object/from16 v0, p6

    move/from16 v1, v16

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setBytes(I[B)V

    .line 938
    :cond_19
    invoke-virtual/range {p6 .. p6}, Lcom/google/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v4, v6

    .line 939
    invoke-virtual {v14}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v16

    .line 940
    invoke-virtual {v14}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 941
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    move-result-object v6

    move-object v14, v6

    move-object/from16 v6, p6

    move-object/from16 p6, v11

    move-object v11, v15

    .line 942
    goto/16 :goto_1

    .line 945
    :cond_1a
    if-eqz p6, :cond_1b

    .line 946
    :try_start_c
    invoke-virtual/range {p6 .. p6}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 951
    :cond_1b
    if-eqz v14, :cond_1c

    invoke-virtual {v14}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 952
    :cond_1c
    if-eqz v11, :cond_21

    invoke-virtual {v11}, Landroid/os/DropBoxManager$Entry;->close()V

    move-object/from16 p0, v6

    goto/16 :goto_8

    .line 951
    :catchall_0
    move-exception p0

    move-object/from16 p1, v5

    move-object/from16 p2, v4

    :goto_a
    if-eqz p2, :cond_1d

    invoke-virtual/range {p2 .. p2}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 952
    :cond_1d
    if-eqz p1, :cond_1e

    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    :cond_1e
    throw p0

    .line 955
    :cond_1f
    const/16 p1, 0x3

    invoke-virtual/range {p0 .. p1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide p0

    goto/16 :goto_9

    .line 951
    :catchall_1
    move-exception p0

    move-object/from16 p1, v5

    move-object/from16 p2, p6

    goto :goto_a

    :catchall_2
    move-exception p0

    move-object/from16 p1, v4

    move-object/from16 p2, p6

    goto :goto_a

    :catchall_3
    move-exception p0

    move-object/from16 p1, v15

    move-object/from16 p2, v14

    goto :goto_a

    :catchall_4
    move-exception p0

    move-object/from16 p1, v11

    move-object/from16 p2, v14

    goto :goto_a

    :catchall_5
    move-exception p0

    move-object/from16 p1, p2

    move-object/from16 p2, p3

    goto :goto_a

    .line 948
    :catch_2
    move-exception p0

    move-object/from16 p1, v6

    move-object/from16 p2, v5

    move-object/from16 p3, v4

    goto/16 :goto_7

    :catch_3
    move-exception p0

    move-object/from16 p1, v6

    move-object/from16 p2, v5

    move-object/from16 p3, p6

    goto/16 :goto_7

    :catch_4
    move-exception p0

    move-object/from16 p1, v6

    move-object/from16 p2, v4

    move-object/from16 p3, p6

    goto/16 :goto_7

    :catch_5
    move-exception p0

    move-object/from16 p1, v6

    move-object/from16 p2, v15

    move-object/from16 p3, v14

    goto/16 :goto_7

    :catch_6
    move-exception p0

    move-object/from16 p1, p6

    move-object/from16 p2, v15

    move-object/from16 p3, v14

    goto/16 :goto_7

    :catch_7
    move-exception p0

    move-object/from16 p1, v6

    move-object/from16 p2, v11

    move-object/from16 p3, v14

    goto/16 :goto_7

    :cond_20
    move-object/from16 p0, p1

    goto/16 :goto_8

    :cond_21
    move-object/from16 p0, v6

    goto/16 :goto_8

    :cond_22
    move-object/from16 p6, v11

    move-object v11, v15

    goto/16 :goto_1
.end method

.method private static addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V
    .locals 9
    .parameter "egl"
    .parameter "display"
    .parameter "config"
    .parameter "surfaceSize"
    .parameter "contextAttribs"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/microedition/khronos/egl/EGL10;",
            "Ljavax/microedition/khronos/egl/EGLDisplay;",
            "Ljavax/microedition/khronos/egl/EGLConfig;",
            "[I[I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 586
    .local p5, glExtensions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p0, p1, p2, v7, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    .line 589
    .local v1, context:Ljavax/microedition/khronos/egl/EGLContext;
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v1, v7, :cond_0

    .line 617
    :goto_0
    return-void

    .line 594
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v6

    .line 595
    .local v6, surface:Ljavax/microedition/khronos/egl/EGLSurface;
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v6, v7, :cond_1

    .line 596
    invoke-interface {p0, p1, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto :goto_0

    .line 601
    :cond_1
    invoke-interface {p0, p1, v6, v6, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 604
    const/16 v7, 0x1f03

    invoke-static {v7}, Landroid/opengl/GLES10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    .line 605
    .local v3, extensionList:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 608
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v2, v0, v4

    .line 609
    .local v2, extension:Ljava/lang/String;
    invoke-interface {p5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 608
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 614
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #extension:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2
    sget-object v7, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {p0, p1, v7, v8, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 615
    invoke-interface {p0, p1, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 616
    invoke-interface {p0, p1, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto :goto_0
.end method

.method public static addIdProperties(Landroid/content/Context;JLcom/google/common/io/protocol/ProtoBuf;)V
    .locals 6
    .parameter "context"
    .parameter "securityToken"
    .parameter "request"

    .prologue
    .line 352
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 353
    .local v3, resolver:Landroid/content/ContentResolver;
    const-string v0, "android_id"

    const-wide/16 v1, 0x0

    invoke-static {v3, v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 355
    .local v0, androidId:J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 357
    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    const-string v4, "pre_froyo_aid"

    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    .end local p0
    invoke-direct {v2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 359
    .local v2, dis:Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    .line 360
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    .end local v2           #dis:Ljava/io/DataInputStream;
    :goto_0
    const-string p0, "CheckinRequestBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pre-froyo android id is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_0
    const/4 p0, 0x2

    invoke-virtual {p3, p0, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 370
    const-wide/16 v4, 0x0

    cmp-long p0, p1, v4

    if-eqz p0, :cond_1

    .line 371
    const/16 p0, 0xd

    invoke-virtual {p3, p0, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 377
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long p0, p1, v4

    if-nez p0, :cond_2

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-nez p0, :cond_3

    .line 378
    :cond_2
    const/16 p0, 0xe

    const-wide/16 p1, 0x2

    invoke-virtual {p3, p0, p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 381
    .end local p1
    :cond_3
    const-wide/16 p1, 0x0

    .line 383
    .local p1, loggingId:J
    :try_start_1
    const-string p0, "logging_id2"

    invoke-static {v3, p0}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 385
    .local p0, str:Ljava/lang/String;
    if-eqz p0, :cond_7

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0           #androidId:J
    move-result-wide p0

    .line 390
    .end local p1           #loggingId:J
    .local p0, loggingId:J
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-nez p2, :cond_4

    .line 391
    new-instance p0, Ljava/security/SecureRandom;

    .end local p0           #loggingId:J
    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide p0

    .line 393
    .restart local p0       #loggingId:J
    const/16 p2, 0x10

    invoke-static {p0, p1, p2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object p2

    .line 394
    .local p2, str:Ljava/lang/String;
    const-string v0, "logging_id2"

    invoke-static {v3, v0, p2}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 397
    .end local p2           #str:Ljava/lang/String;
    :cond_4
    const/4 p2, 0x7

    invoke-virtual {p3, p2, p0, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 401
    const-string p0, "digest"

    .end local p0           #loggingId:J
    invoke-static {v3, p0}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 402
    .local p0, pd:Ljava/lang/String;
    const/4 p1, 0x3

    if-nez p0, :cond_5

    const-string p0, ""

    .end local p0           #pd:Ljava/lang/String;
    :cond_5
    invoke-virtual {p3, p1, p0}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 404
    sget-object p0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->opt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 405
    .local p0, serial:Ljava/lang/String;
    if-eqz p0, :cond_6

    const-string p1, "unknown"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 406
    const/16 p1, 0x10

    invoke-virtual {p3, p1, p0}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 408
    :cond_6
    return-void

    .line 363
    .end local p0           #serial:Ljava/lang/String;
    .restart local v0       #androidId:J
    .local p1, securityToken:J
    :catch_0
    move-exception p0

    .line 364
    .local p0, e:Ljava/io/IOException;
    const-string v2, "CheckinRequestBuilder"

    const-string v4, "error reading pre-froyo android id file"

    invoke-static {v2, v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 386
    .end local v0           #androidId:J
    .end local p0           #e:Ljava/io/IOException;
    .local p1, loggingId:J
    :catch_1
    move-exception p0

    .line 387
    .local p0, e:Ljava/lang/NumberFormatException;
    const-string v0, "CheckinRequestBuilder"

    const-string v1, "Can\'t parse Logging ID"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local p0           #e:Ljava/lang/NumberFormatException;
    :cond_7
    move-wide p0, p1

    .end local p1           #loggingId:J
    .local p0, loggingId:J
    goto :goto_1

    .line 361
    .end local p0           #loggingId:J
    .restart local v0       #androidId:J
    .local p1, securityToken:J
    :catch_2
    move-exception p0

    goto/16 :goto_0
.end method

.method public static addLocaleProperty(Ljava/util/Locale;Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 2
    .parameter "locale"
    .parameter "request"

    .prologue
    .line 333
    const/4 v0, 0x6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 334
    return-void

    .line 333
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static addMarketProperty(Ljava/lang/String;Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 1
    .parameter "marketData"
    .parameter "request"

    .prologue
    .line 457
    const/16 v0, 0x8

    invoke-virtual {p1, v0, p0}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 458
    return-void
.end method

.method public static addNetworkProperties(Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/net/NetworkInfo;Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 6
    .parameter "tm"
    .parameter "wm"
    .parameter "ni"
    .parameter "request"

    .prologue
    .line 256
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 257
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 258
    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 259
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 261
    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 262
    .local v0, checkin:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 263
    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 265
    if-eqz p0, :cond_1

    .line 266
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, id:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->getCurrentPhoneType(Landroid/telephony/TelephonyManager;)I

    move-result v2

    .line 269
    .local v2, phoneType:I
    packed-switch v2, :pswitch_data_0

    .line 299
    const-string v3, "CheckinRequestBuilder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .end local v2           #phoneType:I
    const-string v4, " id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #id:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    :goto_0
    const/4 v1, 0x6

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->opt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 304
    const/4 v1, 0x7

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->opt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 307
    :cond_1
    if-nez p2, :cond_6

    const-string p2, "unknown"

    .line 309
    .local p2, isMobile:Ljava/lang/String;
    :goto_1
    if-nez p0, :cond_8

    const-string p0, "unknown"

    .line 311
    .local p0, isRoaming:Ljava/lang/String;
    :goto_2
    const/16 v1, 0x8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2           #isMobile:Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #isRoaming:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 313
    if-eqz p1, :cond_2

    .line 317
    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    .line 318
    .local p0, wi:Landroid/net/wifi/WifiInfo;
    if-eqz p0, :cond_2

    .line 319
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    .line 320
    .local p0, mac:Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 321
    const-string p1, ":"

    .end local p1
    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 322
    const/16 p1, 0x9

    invoke-static {p0}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->opt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .end local p0           #mac:Ljava/lang/String;
    invoke-virtual {p3, p1, p0}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 326
    :cond_2
    return-void

    .line 271
    .restart local v1       #id:Ljava/lang/String;
    .restart local v2       #phoneType:I
    .local p0, tm:Landroid/telephony/TelephonyManager;
    .restart local p1
    .local p2, ni:Landroid/net/NetworkInfo;
    :pswitch_0
    if-eqz v1, :cond_4

    sget-object v2, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->ESN_PATTERN:Ljava/util/regex/Pattern;

    .end local v2           #phoneType:I
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 275
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "80"

    if-ne v2, v3, :cond_3

    .line 276
    const-string v1, "CheckinRequestBuilder"

    .end local v1           #id:Ljava/lang/String;
    const-string v2, "TelephonyManager.getDeviceId() is returning a pseudo-ESN instead of an MEID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 279
    .restart local v1       #id:Ljava/lang/String;
    :cond_3
    const/16 v2, 0x11

    invoke-virtual {p3, v2, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 287
    :cond_4
    :pswitch_1
    if-eqz v1, :cond_0

    .line 288
    sget-object v2, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->DEVICE_ID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 289
    const/16 v2, 0xa

    invoke-virtual {p3, v2, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 291
    :cond_5
    const-string v1, "CheckinRequestBuilder"

    .end local v1           #id:Ljava/lang/String;
    const-string v2, "TelephonyManager.getDeviceId() must return a 15-decimal-digit IMEI, a 14-hex-digit MEID or an 8-hex-digit ESN "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 307
    :cond_6
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result p2

    .end local p2           #ni:Landroid/net/NetworkInfo;
    if-nez p2, :cond_7

    const-string p2, "mobile"

    goto/16 :goto_1

    :cond_7
    const-string p2, "notmobile"

    goto/16 :goto_1

    .line 309
    .local p2, isMobile:Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result p0

    .end local p0           #tm:Landroid/telephony/TelephonyManager;
    if-eqz p0, :cond_9

    const-string p0, "roaming"

    goto/16 :goto_2

    :cond_9
    const-string p0, "notroaming"

    goto/16 :goto_2

    .line 269
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static addOtaCerts(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 14
    .parameter "request"

    .prologue
    const/16 v13, 0xf

    .line 170
    const/4 v9, 0x0

    .line 171
    .local v9, zip:Ljava/util/zip/ZipFile;
    const/4 v1, 0x0

    .line 174
    .local v1, count:I
    :try_start_0
    new-instance v10, Ljava/util/zip/ZipFile;

    sget-object v11, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->DEFAULT_KEYSTORE:Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 175
    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .local v10, zip:Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 176
    .local v3, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    const/16 v11, 0x800

    new-array v8, v11, [B

    .line 177
    .local v8, temp:[B
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 178
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 179
    .local v4, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v10, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 180
    .local v5, is:Ljava/io/InputStream;
    const-string v11, "SHA-1"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 182
    .local v6, md:Ljava/security/MessageDigest;
    :goto_1
    invoke-virtual {v5, v8}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, read:I
    if-lez v7, :cond_2

    .line 183
    const/4 v11, 0x0

    invoke-virtual {v6, v8, v11, v7}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 191
    .end local v3           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v4           #entry:Ljava/util/zip/ZipEntry;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #md:Ljava/security/MessageDigest;
    .end local v7           #read:I
    .end local v8           #temp:[B
    :catchall_0
    move-exception v11

    move-object v9, v10

    .end local v10           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    :goto_2
    if-eqz v9, :cond_0

    :try_start_2
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V

    :cond_0
    throw v11
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    .line 193
    :catch_0
    move-exception v11

    move-object v2, v11

    .line 194
    .local v2, e:Ljava/io/IOException;
    :goto_3
    const-string v11, "CheckinRequestBuilder"

    const-string v12, "error reading OTA certs"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 195
    const-string v11, "--IOException--"

    invoke-virtual {p0, v13, v11}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 196
    add-int/lit8 v1, v1, 0x1

    .line 202
    .end local v2           #e:Ljava/io/IOException;
    :goto_4
    if-nez v1, :cond_1

    .line 203
    const-string v11, "--no-output--"

    invoke-virtual {p0, v13, v11}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 205
    :cond_1
    return-void

    .line 185
    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v3       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v4       #entry:Ljava/util/zip/ZipEntry;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #md:Ljava/security/MessageDigest;
    .restart local v7       #read:I
    .restart local v8       #temp:[B
    .restart local v10       #zip:Ljava/util/zip/ZipFile;
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 186
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v11

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, cert:Ljava/lang/String;
    const/16 v11, 0xf

    invoke-virtual {p0, v11, v0}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 188
    add-int/lit8 v1, v1, 0x1

    .line 189
    goto :goto_0

    .line 191
    .end local v0           #cert:Ljava/lang/String;
    .end local v4           #entry:Ljava/util/zip/ZipEntry;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #md:Ljava/security/MessageDigest;
    .end local v7           #read:I
    :cond_3
    if-eqz v10, :cond_4

    :try_start_4
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    move-object v9, v10

    .line 201
    .end local v10           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    goto :goto_4

    .line 197
    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v10       #zip:Ljava/util/zip/ZipFile;
    :catch_1
    move-exception v11

    move-object v2, v11

    move-object v9, v10

    .line 198
    .end local v3           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v8           #temp:[B
    .end local v10           #zip:Ljava/util/zip/ZipFile;
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    :goto_5
    const-string v11, "CheckinRequestBuilder"

    const-string v12, "no support for SHA-1?"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    const-string v11, "--NoSuchAlgorithmException--"

    invoke-virtual {p0, v13, v11}, Lcom/google/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 197
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v11

    move-object v2, v11

    goto :goto_5

    .line 193
    .end local v9           #zip:Ljava/util/zip/ZipFile;
    .restart local v3       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v8       #temp:[B
    .restart local v10       #zip:Ljava/util/zip/ZipFile;
    :catch_3
    move-exception v11

    move-object v2, v11

    move-object v9, v10

    .end local v10           #zip:Ljava/util/zip/ZipFile;
    .restart local v9       #zip:Ljava/util/zip/ZipFile;
    goto :goto_3

    .line 191
    .end local v3           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v8           #temp:[B
    :catchall_1
    move-exception v11

    goto :goto_2
.end method

.method public static addPackageProperties(Landroid/content/Context;Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 8
    .parameter "context"
    .parameter "request"

    .prologue
    const/4 v6, 0x1

    .line 212
    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 213
    .local v1, checkin:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v1, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 214
    .local v0, build:Lcom/google/common/io/protocol/ProtoBuf;
    if-nez v0, :cond_0

    .line 215
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    .end local v0           #build:Lcom/google/common/io/protocol/ProtoBuf;
    sget-object v5, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_BUILD_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v5}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 216
    .restart local v0       #build:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v1, v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 219
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "client_id"

    invoke-static {v5, v6}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, client:Ljava/lang/String;
    if-eqz v2, :cond_1

    const/4 v5, 0x6

    invoke-virtual {v0, v5, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 223
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, packageName:Ljava/lang/String;
    const/16 v5, 0x8

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v5, v6}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 228
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "CheckinRequestBuilder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Our own package not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static addTimeZone(Ljava/util/TimeZone;Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 2
    .parameter "tz"
    .parameter "request"

    .prologue
    .line 341
    if-eqz p0, :cond_0

    .line 342
    const/16 v0, 0xc

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 344
    :cond_0
    return-void
.end method

.method private static getCurrentPhoneType(Landroid/telephony/TelephonyManager;)I
    .locals 5
    .parameter "tm"

    .prologue
    .line 242
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getCurrentPhoneType"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 243
    .local v0, m:Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 245
    .end local v0           #m:Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 244
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 245
    .local v1, t:Ljava/lang/Throwable;
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    goto :goto_0
.end method

.method public static getGlExtensions(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 554
    .local v2, sortedExtensions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/google/android/gsf/checkin/CheckinService;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 555
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v5, "CheckinService_cachedGlExt"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, cachedExtensions:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/gsf/checkin/CheckinService;->wasSystemUpgraded(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 557
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 569
    :goto_0
    return-object v2

    .line 560
    :cond_0
    invoke-static {}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->getGlExtensionsFromDriver()Ljava/util/Set;

    move-result-object v4

    .line 563
    .local v4, unsortedExtensions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 564
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 565
    const-string v5, " "

    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 566
    .local v1, flattened:Ljava/lang/String;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "CheckinService_cachedGlExt"

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private static getGlExtensionsFromDriver()Ljava/util/Set;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 620
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 623
    .local v5, glExtensions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 624
    .local v0, egl:Ljavax/microedition/khronos/egl/EGL10;
    if-nez v0, :cond_0

    .line 625
    const-string v0, "CheckinRequestBuilder"

    .end local v0           #egl:Ljavax/microedition/khronos/egl/EGL10;
    const-string v1, "Couldn\'t get EGL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :goto_0
    return-object v5

    .line 630
    .restart local v0       #egl:Ljavax/microedition/khronos/egl/EGL10;
    :cond_0
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    .line 631
    .local v1, display:Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 632
    .local v2, version:[I
    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 635
    const/4 v2, 0x1

    new-array v10, v2, [I

    .line 636
    .end local v2           #version:[I
    .local v10, numConfigs:[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 637
    const-string v0, "CheckinRequestBuilder"

    .end local v0           #egl:Ljavax/microedition/khronos/egl/EGL10;
    const-string v1, "Couldn\'t get EGL config count"

    .end local v1           #display:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 642
    .restart local v0       #egl:Ljavax/microedition/khronos/egl/EGL10;
    .restart local v1       #display:Ljavax/microedition/khronos/egl/EGLDisplay;
    :cond_1
    const/4 v2, 0x0

    aget v2, v10, v2

    new-array v7, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 643
    .local v7, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v2, 0x0

    aget v2, v10, v2

    invoke-interface {v0, v1, v7, v2, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 644
    const-string v0, "CheckinRequestBuilder"

    .end local v0           #egl:Ljavax/microedition/khronos/egl/EGL10;
    const-string v1, "Couldn\'t get EGL configs"

    .end local v1           #display:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 651
    .restart local v0       #egl:Ljavax/microedition/khronos/egl/EGL10;
    .restart local v1       #display:Ljavax/microedition/khronos/egl/EGLDisplay;
    :cond_2
    const/4 v2, 0x5

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    .line 658
    .local v3, surfaceSize:[I
    const/16 v2, 0x3098

    .line 659
    .local v2, EGL_CONTEXT_CLIENT_VERSION:I
    const/4 v2, 0x3

    new-array v8, v2, [I

    .end local v2           #EGL_CONTEXT_CLIENT_VERSION:I
    fill-array-data v8, :array_1

    .line 662
    .local v8, gles2:[I
    const/4 v2, 0x1

    new-array v6, v2, [I

    .line 664
    .local v6, attrib:[I
    const/4 v2, 0x0

    .local v2, i:I
    move v9, v2

    .end local v2           #i:I
    .local v9, i:I
    :goto_1
    const/4 v2, 0x0

    aget v2, v10, v2

    if-ge v9, v2, :cond_6

    .line 666
    aget-object v2, v7, v9

    const/16 v4, 0x3027

    invoke-interface {v0, v1, v2, v4, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 667
    const/4 v2, 0x0

    aget v2, v6, v2

    const/16 v4, 0x3050

    if-ne v2, v4, :cond_4

    .line 664
    :cond_3
    :goto_2
    add-int/lit8 v2, v9, 0x1

    .end local v9           #i:I
    .restart local v2       #i:I
    move v9, v2

    .end local v2           #i:I
    .restart local v9       #i:I
    goto :goto_1

    .line 671
    :cond_4
    const/4 v2, 0x1

    .line 672
    .local v2, EGL_OPENGL_ES_BIT:I
    const/4 v2, 0x4

    .line 673
    .local v2, EGL_OPENGL_ES2_BIT:I
    aget-object v2, v7, v9

    .end local v2           #EGL_OPENGL_ES2_BIT:I
    const/16 v4, 0x3040

    invoke-interface {v0, v1, v2, v4, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 674
    const/4 v2, 0x0

    aget v2, v6, v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 675
    aget-object v2, v7, v9

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    .line 677
    :cond_5
    const/4 v2, 0x0

    aget v2, v6, v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    .line 678
    aget-object v2, v7, v9

    move-object v4, v8

    invoke-static/range {v0 .. v5}, Lcom/google/android/gsf/checkin/CheckinRequestBuilder;->addExtensionsForConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I[ILjava/util/Set;)V

    goto :goto_2

    .line 683
    :cond_6
    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    goto/16 :goto_0

    .line 651
    nop

    :array_0
    .array-data 0x4
        0x57t 0x30t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x56t 0x30t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data

    .line 659
    :array_1
    .array-data 0x4
        0x98t 0x30t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method private static keyboardFromConfig(Landroid/content/pm/ConfigurationInfo;)I
    .locals 1
    .parameter "ci"

    .prologue
    .line 499
    iget v0, p0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    packed-switch v0, :pswitch_data_0

    .line 508
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 501
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 503
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 505
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static navigationFromConfig(Landroid/content/pm/ConfigurationInfo;)I
    .locals 1
    .parameter "ci"

    .prologue
    .line 512
    iget v0, p0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    packed-switch v0, :pswitch_data_0

    .line 523
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 514
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 516
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 518
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 520
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 512
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static newRequest()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 4

    .prologue
    .line 135
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_CHECKIN_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 136
    .local v0, request:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v1, 0x4

    new-instance v2, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/android/gsf/checkin/proto/CheckinMessageTypes;->ANDROID_CHECKIN_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v3}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 138
    return-object v0
.end method

.method private static opt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "str"

    .prologue
    .line 959
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static screenLayoutFromConfig(Landroid/content/res/Configuration;)I
    .locals 2
    .parameter "config"

    .prologue
    .line 527
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v1, 0xf

    .line 529
    .local v0, sizeBits:I
    packed-switch v0, :pswitch_data_0

    .line 540
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 531
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 533
    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 535
    :pswitch_2
    const/4 v1, 0x3

    goto :goto_0

    .line 537
    :pswitch_3
    const/4 v1, 0x4

    goto :goto_0

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static touchScreenFromConfig(Landroid/content/pm/ConfigurationInfo;)I
    .locals 1
    .parameter "ci"

    .prologue
    .line 486
    iget v0, p0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    packed-switch v0, :pswitch_data_0

    .line 495
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 488
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 490
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 492
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 486
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
