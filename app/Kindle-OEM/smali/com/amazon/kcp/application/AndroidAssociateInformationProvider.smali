.class public Lcom/amazon/kcp/application/AndroidAssociateInformationProvider;
.super Ljava/lang/Object;
.source "AndroidAssociateInformationProvider.java"

# interfaces
.implements Lcom/amazon/kcp/application/IAssociateInformationProvider;


# static fields
.field private static final ASSOC_TAG_FILE_PATH:Ljava/lang/String; = "/system/etc/amazon-kindle.properties"

.field private static final ASSOC_TAG_KEY:Ljava/lang/String; = "associatesId"

.field private static final ASSOC_TAG_PUBLIC_KEY_SPEC:Ljava/security/spec/RSAPublicKeySpec; = null

.field protected static final DEFAULT_ASSOCIATE_TAG:Ljava/lang/String; = "kindle-android-20"

.field protected static final OEM_PREF_KEY:Ljava/lang/String; = "ranStub"

.field protected static final OEM_PREF_NAME:Ljava/lang/String; = "KindleOEM"

.field protected static final STUB_NOT_STARTED:Ljava/lang/String; = "notStarted"

.field protected static final STUB_STARTED:Ljava/lang/String; = "started"


# instance fields
.field private associateTag:Ljava/lang/String;

.field private publicKey:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x10

    .line 33
    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "d42f9f3c2c0a90c291da4cbf60ac074dda7d4179ee7d2a41dc832b1f7d38dc02c1112ac8b7ea7392216b9a2a8328c8030886ca168a09eb1e3dbfa35a33669c00ad6e59f44ed7a0cbb162314dd6a2bd42641f69250492602a0b339cfe6948dc3a65fd025f3dad49ab3e7d92df0188bd2832df1f19df8a5b948c6b0f1253ec35b24ef322da1ba5c10fbbe3de0c55274ddce3c234761fbf98f17a3de0c591f855faae7da39530c294c84b0a50add70f28741842d5f0c6432352b24954d1da848dd6b998c4d8360053ffe058dd59256d548c32cc3232a5c269e6110c20a95ba8dc25abcacd0fd491f95ae4651f378e115fb81672c5b52f45118327a091c2ea8722ad"

    invoke-direct {v1, v2, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "10001"

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    sput-object v0, Lcom/amazon/kcp/application/AndroidAssociateInformationProvider;->ASSOC_TAG_PUBLIC_KEY_SPEC:Ljava/security/spec/RSAPublicKeySpec;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/application/ISecureStorage;)V
    .locals 1
    .parameter "context"
    .parameter "secureStorage"

    .prologue
    .line 78
    const-string v0, "/system/etc/amazon-kindle.properties"

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/application/AndroidAssociateInformationProvider;-><init>(Landroid/content/Context;Lcom/amazon/kcp/application/ISecureStorage;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/application/ISecureStorage;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-string v0, "kindle-android-20"

    .line 93
    :try_start_0
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 95
    sget-object v2, Lcom/amazon/kcp/application/AndroidAssociateInformationProvider;->ASSOC_TAG_PUBLIC_KEY_SPEC:Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/application/AndroidAssociateInformationProvider;->publicKey:Ljava/security/PublicKey;

    .line 97
    const-string v1, "associatesId"

    invoke-interface {p2, v1}, Lcom/amazon/kcp/application/ISecureStorage;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 101
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 104
    const-string v2, "KindleOEM"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 105
    const-string v3, "ranStub"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 107
    if-eqz v2, :cond_1

    const-string v2, "started"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    const-string v2, "associatesId"

    invoke-interface {p2, v2, v1}, Lcom/amazon/kcp/application/ISecureStorage;->setValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 113
    :cond_0
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 115
    invoke-direct {p0, v1}, Lcom/amazon/kcp/application/AndroidAssociateInformationProvider;->decryptTag([B)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 123
    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidAssociateInformationProvider;->associateTag:Ljava/lang/String;

    .line 125
    :goto_1
    return-void

    .line 107
    :cond_1
    :try_start_1
    const-string v2, "notStarted"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v1

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidAssociateInformationProvider;->associateTag:Ljava/lang/String;

    goto :goto_1

    .line 123
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/amazon/kcp/application/AndroidAssociateInformationProvider;->associateTag:Ljava/lang/String;

    throw v1
.end method

.method public static addAssociatesTagInfoToUrl(Landroid/net/Uri$Builder;)Landroid/net/Uri;
    .locals 3
    .parameter "builder"

    .prologue
    .line 61
    const-string v0, "linkCode"

    const-string v1, "as2"

    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "tag"

    invoke-static {}, Lcom/amazon/kcp/application/AssociateInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IAssociateInformationProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAssociateInformationProvider;->getAssociateTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addAssociatesTagInfoToUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "url"

    .prologue
    .line 46
    const-string v2, "linkCode"

    const-string v3, "as2"

    invoke-static {p0, v2, v3}, Lcom/amazon/kcp/util/Utils;->addGetParamaterToURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, urlWithLink:Ljava/lang/String;
    const-string v2, "tag"

    invoke-static {}, Lcom/amazon/kcp/application/AssociateInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IAssociateInformationProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IAssociateInformationProvider;->getAssociateTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/amazon/kcp/util/Utils;->addGetParamaterToURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, urlWithTagAndLink:Ljava/lang/String;
    return-object v1
.end method

.method private decryptTag([B)Ljava/lang/String;
    .locals 4
    .parameter "encrypted"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    const-string v2, "RSA/ECB/PKCS1Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 150
    .local v1, rsaCipher:Ljavax/crypto/Cipher;
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/amazon/kcp/application/AndroidAssociateInformationProvider;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 151
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 152
    .local v0, decrypted:[B
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public getAssociateTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidAssociateInformationProvider;->associateTag:Ljava/lang/String;

    return-object v0
.end method

.method public isOEMPreload()Z
    .locals 2

    .prologue
    .line 137
    const-string v0, "kindle-android-20"

    iget-object v1, p0, Lcom/amazon/kcp/application/AndroidAssociateInformationProvider;->associateTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
