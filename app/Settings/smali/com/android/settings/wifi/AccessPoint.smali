.class Lcom/android/settings/wifi/AccessPoint;
.super Landroid/preference/Preference;
.source "AccessPoint.java"


# static fields
.field private static final ENABLE_WAPI:Z

.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I


# instance fields
.field final bssid:Ljava/lang/String;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mRssi:I

.field private mSignal:Landroid/widget/ImageView;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field final mode:I

.field final networkId:I

.field final security:I

.field final ssid:Ljava/lang/String;

.field wpsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-array v0, v3, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_SECURED:[I

    .line 38
    new-array v0, v2, [I

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_NONE:[I

    .line 39
    const-string v0, "ro.wifi.country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.carrier"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi-only"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/android/settings/wifi/AccessPoint;->ENABLE_WAPI:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 4
    .parameter "context"
    .parameter "result"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 55
    iput-boolean v2, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 109
    const v0, 0x7f040040

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 110
    iget-object v0, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 111
    iget-object v0, p2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 112
    invoke-static {p2}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    .line 113
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 116
    iget v0, p2, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 117
    iget-object v0, p2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "[IBSS]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iput v3, p0, Lcom/android/settings/wifi/AccessPoint;->mode:I

    .line 122
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 113
    goto :goto_0

    .line 120
    :cond_1
    iput v2, p0, Lcom/android/settings/wifi/AccessPoint;->mode:I

    goto :goto_1
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "context"
    .parameter "config"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 97
    const v0, 0x7f040040

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 98
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 99
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 100
    invoke-static {p2}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    .line 101
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 102
    iput-object p2, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 103
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 104
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->mode:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mode:I

    .line 105
    return-void

    .line 98
    :cond_0
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .parameter "result"

    .prologue
    .line 81
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x4

    .line 92
    :goto_0
    return v0

    .line 83
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const/4 v0, 0x5

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    const/4 v0, 0x1

    goto :goto_0

    .line 87
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    const/4 v0, 0x2

    goto :goto_0

    .line 89
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 90
    const/4 v0, 0x3

    goto :goto_0

    .line 92
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .parameter "config"

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 77
    :goto_0
    return v0

    .line 67
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v4

    .line 69
    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    const/4 v0, 0x4

    goto :goto_0

    .line 74
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v5

    .line 75
    goto :goto_0

    .line 77
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0
.end method

.method private refresh()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 230
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mSignal:Landroid/widget/ImageView;

    if-nez v4, :cond_0

    .line 265
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 234
    .local v0, context:Landroid/content/Context;
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mSignal:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 236
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v4, :cond_1

    .line 237
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v4}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 239
    :cond_1
    const/4 v2, 0x0

    .line 240
    .local v2, status:Ljava/lang/String;
    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_3

    .line 241
    const v4, 0x7f0801e8

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 247
    :cond_2
    :goto_1
    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v4, :cond_6

    .line 248
    iget-boolean v4, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v4, :cond_5

    .line 249
    const v4, 0x7f0801e9

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 242
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_2

    .line 243
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v4, v7, :cond_4

    const v4, 0x7f0801e7

    :goto_2
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    const v4, 0x7f0801e6

    goto :goto_2

    .line 251
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 255
    :cond_6
    iget-boolean v4, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v4, :cond_7

    .line 256
    const v4, 0x7f0801eb

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, format:Ljava/lang/String;
    :goto_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/wifi/AccessPoint;->ENABLE_WAPI:Z

    if-eqz v5, :cond_9

    const v5, 0x7f070015

    :goto_4
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, type:[Ljava/lang/String;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    aget-object v6, v3, v6

    aput-object v6, v4, v5

    aput-object v2, v4, v7

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 258
    .end local v1           #format:Ljava/lang/String;
    .end local v3           #type:[Ljava/lang/String;
    :cond_7
    if-nez v2, :cond_8

    const v4, 0x7f0801ea

    :goto_5
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #format:Ljava/lang/String;
    goto :goto_3

    .end local v1           #format:Ljava/lang/String;
    :cond_8
    const v4, 0x7f0801ec

    goto :goto_5

    .line 261
    .restart local v1       #format:Ljava/lang/String;
    :cond_9
    const v5, 0x7f070014

    goto :goto_4
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 217
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 218
    .local v0, length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    sub-int v1, v0, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 220
    sub-int v1, v0, v2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 222
    :goto_0
    return-object v1

    :cond_0
    move-object v1, p0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 7
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 141
    instance-of v3, p1, Lcom/android/settings/wifi/AccessPoint;

    if-nez v3, :cond_0

    move v3, v6

    .line 163
    :goto_0
    return v3

    .line 144
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/AccessPoint;

    move-object v2, v0

    .line 146
    .local v2, other:Lcom/android/settings/wifi/AccessPoint;
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, v2, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eq v3, v4, :cond_2

    .line 147
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v6

    goto :goto_0

    .line 150
    :cond_2
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    iget v4, v2, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    xor-int/2addr v3, v4

    if-gez v3, :cond_4

    .line 151
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_3

    move v3, v5

    goto :goto_0

    :cond_3
    move v3, v6

    goto :goto_0

    .line 154
    :cond_4
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget v4, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    xor-int/2addr v3, v4

    if-gez v3, :cond_6

    .line 155
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v5, :cond_5

    move v3, v5

    goto :goto_0

    :cond_5
    move v3, v6

    goto :goto_0

    .line 158
    :cond_6
    iget v3, v2, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    invoke-static {v3, v4}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v1

    .line 159
    .local v1, difference:I
    if-eqz v1, :cond_7

    move v3, v1

    .line 160
    goto :goto_0

    .line 163
    :cond_7
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method getLevel()I
    .locals 2

    .prologue
    .line 198
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 199
    const/4 v0, -0x1

    .line 201
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method getState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 127
    const v0, 0x7f0f00b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mSignal:Landroid/widget/ImageView;

    .line 128
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mSignal:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 136
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 137
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mSignal:Landroid/widget/ImageView;

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mSignal:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/wifi/AccessPoint;->STATE_SECURED:[I

    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/settings/wifi/AccessPoint;->STATE_NONE:[I

    goto :goto_1
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter "info"
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, reorder:Z
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 181
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    move v0, v1

    .line 182
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 183
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 184
    iput-object p2, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 185
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 192
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->notifyHierarchyChanged()V

    .line 195
    :cond_1
    return-void

    .line 181
    :cond_2
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 186
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    .line 187
    const/4 v0, 0x1

    .line 188
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 189
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 190
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    goto :goto_1
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .parameter "result"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 170
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 171
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 173
    :cond_0
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
