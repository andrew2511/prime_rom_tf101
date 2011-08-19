.class public final Lcom/amazon/android/system/security/DeviceFingerprint;
.super Ljava/lang/Object;
.source "DeviceFingerprint.java"


# static fields
.field private static final ANDROID_ID_KEY:Ljava/lang/String; = "android_id"

.field private static final PHONE_NUMBER_KEY:Ljava/lang/String; = "phone_number"

.field private static final SD_CARD_SERIAL_KEY:Ljava/lang/String; = "sd_card_serials"

.field private static final SERIAL_NO_PROPERTY_KEY:Ljava/lang/String; = "ro.serialno"

.field private static final SERIAL_NUMBER_KEY:Ljava/lang/String; = "serial_no"

.field private static final SIM_SERIAL_KEY:Ljava/lang/String; = "sim_serial"

.field private static final SUBSCRIBER_ID_KEY:Ljava/lang/String; = "subscriber_id"

.field private static final TELEPHONY_ID_KEY:Ljava/lang/String; = "telephony_id"

.field private static final WIFI_MAC_KEY:Ljava/lang/String; = "wifi_mac"

.field private static final privateKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final androidId:Ljava/lang/String;

.field final phoneNumber:Ljava/lang/String;

.field final sdCardSerials:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final serialNo:Ljava/lang/String;

.field final simSerial:Ljava/lang/String;

.field final subscriberId:Ljava/lang/String;

.field final telephonyId:Ljava/lang/String;

.field final wifiMac:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/android/system/security/DeviceFingerprint;->privateKeys:Ljava/util/Set;

    .line 64
    sget-object v0, Lcom/amazon/android/system/security/DeviceFingerprint;->privateKeys:Ljava/util/Set;

    const-string v1, "phone_number"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method constructor <init>(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sdCardSerials"
    .parameter "androidId"
    .parameter "serialNo"
    .parameter "telephonyId"
    .parameter "wifiMac"
    .parameter "phoneNumber"
    .parameter "simSerial"
    .parameter "subscriberId"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->sdCardSerials:Ljava/util/Set;

    .line 98
    iput-object p2, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->androidId:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->serialNo:Ljava/lang/String;

    .line 100
    iput-object p4, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->telephonyId:Ljava/lang/String;

    .line 101
    iput-object p5, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->wifiMac:Ljava/lang/String;

    .line 102
    iput-object p6, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->phoneNumber:Ljava/lang/String;

    .line 103
    iput-object p7, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->simSerial:Ljava/lang/String;

    .line 104
    iput-object p8, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->subscriberId:Ljava/lang/String;

    .line 105
    return-void
.end method

.method static areEqualOrAtLeastOneNull(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 442
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/amazon/kcp/util/Utils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkFingerprintString(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/system/security/FingerprintMismatchException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-static {p1}, Lcom/amazon/android/system/security/DeviceFingerprint;->getCurrentFingerprint(Landroid/content/Context;)Lcom/amazon/android/system/security/DeviceFingerprint;

    move-result-object v0

    .line 193
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {v0}, Lcom/amazon/android/system/security/DeviceFingerprint;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    :goto_0
    return-object v0

    .line 200
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/amazon/android/system/security/DeviceFingerprint;->fromJSONString(Ljava/lang/String;)Lcom/amazon/android/system/security/DeviceFingerprint;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazon/android/system/security/DeviceFingerprint;->validateMatchAndMerge(Lcom/amazon/android/system/security/DeviceFingerprint;Lcom/amazon/android/system/security/DeviceFingerprint;)Lcom/amazon/android/system/security/DeviceFingerprint;

    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lcom/amazon/android/system/security/DeviceFingerprint;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    new-instance v0, Lcom/amazon/android/system/security/FingerprintMismatchException;

    invoke-direct {v0}, Lcom/amazon/android/system/security/FingerprintMismatchException;-><init>()V

    throw v0
.end method

.method public static fromJSONString(Ljava/lang/String;)Lcom/amazon/android/system/security/DeviceFingerprint;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 283
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 284
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 286
    const-string v0, "sd_card_serials"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const-string v0, "sd_card_serials"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 289
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 291
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 289
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    :cond_0
    new-instance v0, Lcom/amazon/android/system/security/DeviceFingerprint;

    const-string v2, "android_id"

    invoke-static {v2, v8}, Lcom/amazon/android/system/security/DeviceFingerprint;->getValueOrNull(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "serial_no"

    invoke-static {v3, v8}, Lcom/amazon/android/system/security/DeviceFingerprint;->getValueOrNull(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "telephony_id"

    invoke-static {v4, v8}, Lcom/amazon/android/system/security/DeviceFingerprint;->getValueOrNull(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "wifi_mac"

    invoke-static {v5, v8}, Lcom/amazon/android/system/security/DeviceFingerprint;->getValueOrNull(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "phone_number"

    invoke-static {v6, v8}, Lcom/amazon/android/system/security/DeviceFingerprint;->getValueOrNull(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "sim_serial"

    invoke-static {v7, v8}, Lcom/amazon/android/system/security/DeviceFingerprint;->getValueOrNull(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "subscriber_id"

    invoke-static {v9, v8}, Lcom/amazon/android/system/security/DeviceFingerprint;->getValueOrNull(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/amazon/android/system/security/DeviceFingerprint;-><init>(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getCurrentFingerprint(Landroid/content/Context;)Lcom/amazon/android/system/security/DeviceFingerprint;
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 115
    invoke-static {}, Lcom/amazon/android/system/security/DeviceIDDumper;->dumpSystemProperties()Ljava/util/Map;

    move-result-object v4

    .line 116
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/telephony/TelephonyManager;

    move-object v9, v0

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 130
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "FEATURE_WIFI"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 131
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "hasSystemFeature"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 132
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 133
    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v1

    if-eqz v1, :cond_0

    move v1, v10

    .line 153
    :goto_0
    if-eqz v1, :cond_1

    .line 159
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    .line 166
    :goto_1
    new-instance v1, Lcom/amazon/android/system/security/DeviceFingerprint;

    invoke-static {}, Lcom/amazon/android/system/security/DeviceIDDumper;->getSDCardSerials()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "android_id"

    invoke-static {v3, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "ro.serialno"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcom/amazon/android/system/security/DeviceFingerprint;-><init>(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEVFINGER: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    return-object v1

    :cond_0
    move v1, v11

    .line 133
    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    move v1, v10

    goto :goto_0

    .line 141
    :catch_1
    move-exception v1

    move v1, v10

    goto :goto_0

    .line 145
    :catch_2
    move-exception v1

    move v1, v10

    goto :goto_0

    .line 149
    :catch_3
    move-exception v1

    move v1, v10

    goto :goto_0

    :catch_4
    move-exception v1

    move v1, v10

    goto :goto_0

    :cond_1
    move-object v6, v12

    .line 163
    goto :goto_1
.end method

.method static getValueOrNull(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 377
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static pickFirstNonNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 426
    if-nez p0, :cond_0

    move-object v0, p1

    .line 431
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method static saveIfNotNull(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 369
    if-eqz p1, :cond_0

    .line 371
    invoke-virtual {p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    :cond_0
    return-void
.end method

.method static validateMatchAndMerge(Lcom/amazon/android/system/security/DeviceFingerprint;Lcom/amazon/android/system/security/DeviceFingerprint;)Lcom/amazon/android/system/security/DeviceFingerprint;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/system/security/FingerprintMismatchException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/amazon/android/system/security/DeviceFingerprint;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 264
    :goto_0
    return-object v0

    .line 229
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->sdCardSerials:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 230
    iget-object v1, p1, Lcom/amazon/android/system/security/DeviceFingerprint;->sdCardSerials:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 233
    iget-object v1, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->androidId:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/android/system/security/DeviceFingerprint;->androidId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/android/system/security/DeviceFingerprint;->areEqualOrAtLeastOneNull(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->serialNo:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/android/system/security/DeviceFingerprint;->serialNo:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/android/system/security/DeviceFingerprint;->areEqualOrAtLeastOneNull(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->wifiMac:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/android/system/security/DeviceFingerprint;->wifiMac:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/android/system/security/DeviceFingerprint;->areEqualOrAtLeastOneNull(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 237
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stored: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mismatch"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    new-instance v0, Lcom/amazon/android/system/security/FingerprintMismatchException;

    invoke-direct {v0}, Lcom/amazon/android/system/security/FingerprintMismatchException;-><init>()V

    throw v0

    .line 243
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->androidId:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/android/system/security/DeviceFingerprint;->androidId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/android/system/security/DeviceFingerprint;->areEqualOrAtLeastOneNull(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->serialNo:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/android/system/security/DeviceFingerprint;->serialNo:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/android/system/security/DeviceFingerprint;->areEqualOrAtLeastOneNull(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->telephonyId:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/android/system/security/DeviceFingerprint;->telephonyId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/android/system/security/DeviceFingerprint;->areEqualOrAtLeastOneNull(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->wifiMac:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/android/system/security/DeviceFingerprint;->wifiMac:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/android/system/security/DeviceFingerprint;->areEqualOrAtLeastOneNull(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->phoneNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/android/system/security/DeviceFingerprint;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/android/system/security/DeviceFingerprint;->areEqualOrAtLeastOneNull(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->simSerial:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/android/system/security/DeviceFingerprint;->simSerial:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/android/system/security/DeviceFingerprint;->areEqualOrAtLeastOneNull(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->subscriberId:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/android/system/security/DeviceFingerprint;->subscriberId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/android/system/security/DeviceFingerprint;->areEqualOrAtLeastOneNull(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stored: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " shared no common fields"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    new-instance v0, Lcom/amazon/android/system/security/FingerprintMismatchException;

    invoke-direct {v0}, Lcom/amazon/android/system/security/FingerprintMismatchException;-><init>()V

    throw v0

    .line 260
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->sdCardSerials:Ljava/util/Set;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 261
    iget-object v0, p1, Lcom/amazon/android/system/security/DeviceFingerprint;->sdCardSerials:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 264
    new-instance v0, Lcom/amazon/android/system/security/DeviceFingerprint;

    iget-object v2, p1, Lcom/amazon/android/system/security/DeviceFingerprint;->androidId:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->androidId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/android/system/security/DeviceFingerprint;->pickFirstNonNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/amazon/android/system/security/DeviceFingerprint;->serialNo:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->serialNo:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/amazon/android/system/security/DeviceFingerprint;->pickFirstNonNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/amazon/android/system/security/DeviceFingerprint;->telephonyId:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->telephonyId:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/amazon/android/system/security/DeviceFingerprint;->pickFirstNonNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/amazon/android/system/security/DeviceFingerprint;->wifiMac:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->wifiMac:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/amazon/android/system/security/DeviceFingerprint;->pickFirstNonNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/amazon/android/system/security/DeviceFingerprint;->phoneNumber:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->phoneNumber:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/amazon/android/system/security/DeviceFingerprint;->pickFirstNonNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/amazon/android/system/security/DeviceFingerprint;->simSerial:Ljava/lang/String;

    iget-object v8, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->simSerial:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/amazon/android/system/security/DeviceFingerprint;->pickFirstNonNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p1, Lcom/amazon/android/system/security/DeviceFingerprint;->subscriberId:Ljava/lang/String;

    iget-object v9, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->subscriberId:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/amazon/android/system/security/DeviceFingerprint;->pickFirstNonNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/amazon/android/system/security/DeviceFingerprint;-><init>(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getPackedForTransport()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/amazon/android/system/security/DeviceFingerprint;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    .line 325
    sget-object v1, Lcom/amazon/android/system/security/DeviceFingerprint;->privateKeys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 327
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 334
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 335
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 337
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 339
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 342
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->sdCardSerials:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->androidId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->serialNo:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->telephonyId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->wifiMac:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->phoneNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->simSerial:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->subscriberId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method toJSON()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 388
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 390
    iget-object v1, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->sdCardSerials:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 392
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->sdCardSerials:Ljava/util/Set;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 393
    const-string v2, "sd_card_serials"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 396
    :cond_0
    const-string v1, "android_id"

    iget-object v2, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->androidId:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/amazon/android/system/security/DeviceFingerprint;->saveIfNotNull(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    .line 397
    const-string v1, "serial_no"

    iget-object v2, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->serialNo:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/amazon/android/system/security/DeviceFingerprint;->saveIfNotNull(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    .line 398
    const-string v1, "telephony_id"

    iget-object v2, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->telephonyId:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/amazon/android/system/security/DeviceFingerprint;->saveIfNotNull(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    .line 399
    const-string v1, "wifi_mac"

    iget-object v2, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->wifiMac:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/amazon/android/system/security/DeviceFingerprint;->saveIfNotNull(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    .line 400
    const-string v1, "phone_number"

    iget-object v2, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->phoneNumber:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/amazon/android/system/security/DeviceFingerprint;->saveIfNotNull(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    .line 401
    const-string v1, "sim_serial"

    iget-object v2, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->simSerial:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/amazon/android/system/security/DeviceFingerprint;->saveIfNotNull(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    .line 402
    const-string v1, "subscriber_id"

    iget-object v2, p0, Lcom/amazon/android/system/security/DeviceFingerprint;->subscriberId:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/amazon/android/system/security/DeviceFingerprint;->saveIfNotNull(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V

    .line 404
    return-object v0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/amazon/android/system/security/DeviceFingerprint;->toJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/android/system/security/DeviceFingerprint;->toJSONString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 354
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
