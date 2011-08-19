.class public Lcom/android/vending/api/BillingParametersService;
.super Ljava/lang/Object;
.source "BillingParametersService.java"


# static fields
.field private static sBillingParameter:Lcom/android/vending/model/BillingParameter;

.field private static sBillingParameterIsCached:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAndCacheBillingParameter(Landroid/content/Context;Lcom/android/vending/model/BillingParameter$BillingParameterSet;)Lcom/android/vending/model/BillingParameter;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 71
    const-class v0, Lcom/android/vending/api/BillingParametersService;

    monitor-enter v0

    .line 72
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/vending/api/BillingParametersService;->getParameterForCurrentSim(Landroid/content/Context;Lcom/android/vending/model/BillingParameter$BillingParameterSet;)Lcom/android/vending/model/BillingParameter;

    move-result-object v1

    sput-object v1, Lcom/android/vending/api/BillingParametersService;->sBillingParameter:Lcom/android/vending/model/BillingParameter;

    .line 73
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/vending/api/BillingParametersService;->sBillingParameterIsCached:Z

    .line 74
    sget-object v1, Lcom/android/vending/api/BillingParametersService;->sBillingParameter:Lcom/android/vending/model/BillingParameter;

    monitor-exit v0

    return-object v1

    .line 75
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getParameterForCurrentSim(Landroid/content/Context;Lcom/android/vending/model/BillingParameter$BillingParameterSet;)Lcom/android/vending/model/BillingParameter;
    .locals 6
    .parameter "context"
    .parameter "billingParameters"

    .prologue
    const/4 v5, 0x0

    .line 105
    if-nez p2, :cond_0

    move-object v4, v5

    .line 121
    :goto_0
    return-object v4

    .line 109
    :cond_0
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 111
    .local v3, telephonyService:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, simOperator:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move-object v4, v5

    .line 113
    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p2}, Lcom/android/vending/model/BillingParameter$BillingParameterSet;->getParameters()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/BillingParameter;

    .line 117
    .local v0, billingParameter:Lcom/android/vending/model/BillingParameter;
    invoke-virtual {v0}, Lcom/android/vending/model/BillingParameter;->getMncMcc()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v0

    .line 118
    goto :goto_0

    .end local v0           #billingParameter:Lcom/android/vending/model/BillingParameter;
    :cond_4
    move-object v4, v5

    .line 121
    goto :goto_0
.end method

.method private readBillingParameters()Lcom/android/vending/model/BillingParameter$BillingParameterSet;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 79
    sget-object v4, Lcom/android/vending/util/VendingPreferences;->BILLING_PARAMS_VERSION:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v4}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    move-object v4, v6

    .line 99
    :goto_0
    return-object v4

    .line 83
    :cond_0
    sget-object v4, Lcom/android/vending/util/VendingPreferences;->BILLING_PARAMS:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v4}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 84
    .local v2, encodedParams:Ljava/lang/String;
    const/4 v0, 0x0

    .line 86
    .local v0, decodedData:[B
    const/4 v4, 0x0

    :try_start_0
    invoke-static {v2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    new-instance v3, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v4, Lcom/android/vending/model/ApiDefsMessageTypes;->GET_MARKET_METADATA_RESPONSE_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 94
    .local v3, proto:Lcom/google/common/io/protocol/ProtoBuf;
    :try_start_1
    invoke-virtual {v3, v0}, Lcom/google/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    new-instance v4, Lcom/android/vending/model/BillingParameter$BillingParameterSet;

    invoke-direct {v4, v3}, Lcom/android/vending/model/BillingParameter$BillingParameterSet;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_0

    .line 87
    .end local v3           #proto:Lcom/google/common/io/protocol/ProtoBuf;
    :catch_0
    move-exception v1

    .line 88
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error decoding billing params data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    move-object v4, v6

    .line 89
    goto :goto_0

    .line 95
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #proto:Lcom/google/common/io/protocol/ProtoBuf;
    :catch_1
    move-exception v1

    .line 96
    .local v1, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing billing params data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    move-object v4, v6

    .line 97
    goto :goto_0
.end method


# virtual methods
.method public getBillingParameter(Landroid/content/Context;)Lcom/android/vending/model/BillingParameter;
    .locals 2
    .parameter

    .prologue
    .line 59
    const-class v0, Lcom/android/vending/api/BillingParametersService;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-boolean v1, Lcom/android/vending/api/BillingParametersService;->sBillingParameterIsCached:Z

    if-eqz v1, :cond_0

    .line 61
    sget-object v1, Lcom/android/vending/api/BillingParametersService;->sBillingParameter:Lcom/android/vending/model/BillingParameter;

    monitor-exit v0

    move-object v0, v1

    .line 65
    :goto_0
    return-object v0

    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/android/vending/api/BillingParametersService;->readBillingParameters()Lcom/android/vending/model/BillingParameter$BillingParameterSet;

    move-result-object v1

    .line 65
    invoke-direct {p0, p1, v1}, Lcom/android/vending/api/BillingParametersService;->getAndCacheBillingParameter(Landroid/content/Context;Lcom/android/vending/model/BillingParameter$BillingParameterSet;)Lcom/android/vending/model/BillingParameter;

    move-result-object v1

    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public saveBillingParameters(Landroid/content/Context;Lcom/android/vending/model/BillingParameter$BillingParameterSet;)V
    .locals 5
    .parameter "context"
    .parameter "billingParameters"

    .prologue
    .line 45
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 47
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {p2}, Lcom/android/vending/model/BillingParameter$BillingParameterSet;->getProto()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, encodedParams:Ljava/lang/String;
    sget-object v3, Lcom/android/vending/util/VendingPreferences;->BILLING_PARAMS:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    invoke-virtual {v3, v2}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 53
    sget-object v3, Lcom/android/vending/util/VendingPreferences;->BILLING_PARAMS_VERSION:Lcom/android/vending/util/PreferenceFile$SharedPreference;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/vending/api/BillingParametersService;->getAndCacheBillingParameter(Landroid/content/Context;Lcom/android/vending/model/BillingParameter$BillingParameterSet;)Lcom/android/vending/model/BillingParameter;

    .line 56
    return-void

    .line 48
    .end local v2           #encodedParams:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 49
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error saving billing parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
