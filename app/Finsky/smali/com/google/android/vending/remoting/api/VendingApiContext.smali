.class public Lcom/google/android/vending/remoting/api/VendingApiContext;
.super Ljava/lang/Object;
.source "VendingApiContext.java"


# instance fields
.field private final mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

.field private final mContext:Landroid/content/Context;

.field private mRequestProperties:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/Locale;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "account"
    .parameter "userLocale"
    .parameter "aid"
    .parameter "softwareVersion"
    .parameter "operatorName"
    .parameter "simOperatorName"
    .parameter "operatorNumericName"
    .parameter "simOperatorNumericName"
    .parameter "deviceName"
    .parameter "sdkVersion"
    .parameter "clientId"
    .parameter "loggingId"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mContext:Landroid/content/Context;

    .line 32
    new-instance v2, Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-direct {v2, p1, p2}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;)V

    iput-object v2, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    .line 33
    new-instance v2, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    invoke-direct {v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;-><init>()V

    iput-object v2, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 34
    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    invoke-virtual {v2, p4}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setAid(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 35
    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    invoke-virtual {p3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setUserCountry(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 36
    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    invoke-virtual {p3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setUserLanguage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 37
    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    invoke-virtual {v2, p6}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setOperatorName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 38
    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    invoke-virtual {v2, p5}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setSoftwareVersion(I)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 39
    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    invoke-virtual {v2, p7}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setSimOperatorName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 40
    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    invoke-virtual {v2, p8}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setOperatorNumericName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 41
    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    invoke-virtual {v2, p9}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setSimOperatorNumericName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 42
    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setProductNameAndVersion(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 43
    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    move-object v0, v2

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setClientId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 44
    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mRequestProperties:Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    move-object v0, v2

    move-object/from16 v1, p13

    invoke-virtual {v0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setLoggingId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    .line 45
    invoke-direct {p0}, Lcom/google/android/vending/remoting/api/VendingApiContext;->checkUrlRewrites()V

    .line 46
    return-void
.end method

.method private checkRewrittenToSecureUrl(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 62
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingApiContext;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/volley/toolbox/UrlTools;->rewrite(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, rewritten:Ljava/lang/String;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL blocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_0
    invoke-static {v0}, Lcom/google/android/finsky/utils/Utils;->checkUrlIsSecure(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method private checkUrlRewrites()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "https://android.clients.google.com/vending/api/ApiRequest"

    invoke-direct {p0, v0}, Lcom/google/android/vending/remoting/api/VendingApiContext;->checkRewrittenToSecureUrl(Ljava/lang/String;)V

    .line 58
    const-string v0, "https://android_efe.clients.google.com/vending/api/efeApiRequest"

    invoke-direct {p0, v0}, Lcom/google/android/vending/remoting/api/VendingApiContext;->checkRewrittenToSecureUrl(Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "[VendingApiContext]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
