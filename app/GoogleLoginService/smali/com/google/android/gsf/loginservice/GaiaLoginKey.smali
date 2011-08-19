.class public final enum Lcom/google/android/gsf/loginservice/GaiaLoginKey;
.super Ljava/lang/Enum;
.source "GaiaLoginKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gsf/loginservice/GaiaLoginKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gsf/loginservice/GaiaLoginKey;

.field public static final enum ACCOUNT_SERVICE:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

.field public static final enum ACCOUNT_SOURCE:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

.field public static final enum ACCOUNT_TYPE:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

.field public static final enum ANDROID_ID:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

.field public static final enum CAPTCHA_ANSWER:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

.field public static final enum CAPTCHA_DATA:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

.field public static final enum CAPTCHA_REQUIRED:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

.field public static final enum CAPTCHA_TOKEN:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

.field public static final enum CAPTCHA_URL:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

.field public static final enum CLIENT_LOGIN_DISABLED:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

.field public static final enum EMAIL:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

.field public static final enum ENCRYPTED_PASSWORD:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

.field public static final enum FLAGS:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

.field public static final enum PASSWORD:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

.field public static final enum SECURITY_TOKEN:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

.field public static final enum SHA1HASH:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

.field public static final enum TOKEN:Lcom/google/android/gsf/loginservice/GaiaLoginKey;


# instance fields
.field private final wireKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    new-instance v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    const-string v1, "ACCOUNT_TYPE"

    const-string v2, "accountType"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->ACCOUNT_TYPE:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    .line 28
    new-instance v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    const-string v1, "ANDROID_ID"

    const-string v2, "androidId"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->ANDROID_ID:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    .line 29
    new-instance v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    const-string v1, "SECURITY_TOKEN"

    const-string v2, "securityToken"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->SECURITY_TOKEN:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    .line 30
    new-instance v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    const-string v1, "EMAIL"

    const-string v2, "Email"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->EMAIL:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    .line 31
    new-instance v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    const-string v1, "ENCRYPTED_PASSWORD"

    const-string v2, "EncryptedPasswd"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->ENCRYPTED_PASSWORD:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    .line 32
    new-instance v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    const-string v1, "PASSWORD"

    const/4 v2, 0x5

    const-string v3, "Passwd"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->PASSWORD:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    .line 33
    new-instance v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    const-string v1, "TOKEN"

    const/4 v2, 0x6

    const-string v3, "Token"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->TOKEN:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    .line 34
    new-instance v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    const-string v1, "ACCOUNT_SERVICE"

    const/4 v2, 0x7

    const-string v3, "service"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->ACCOUNT_SERVICE:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    .line 35
    new-instance v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    const-string v1, "ACCOUNT_SOURCE"

    const/16 v2, 0x8

    const-string v3, "source"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->ACCOUNT_SOURCE:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    .line 36
    new-instance v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    const-string v1, "CAPTCHA_ANSWER"

    const/16 v2, 0x9

    const-string v3, "logincaptcha"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->CAPTCHA_ANSWER:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    .line 37
    new-instance v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    const-string v1, "CAPTCHA_REQUIRED"

    const/16 v2, 0xa

    const-string v3, "CaptchaRequired"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->CAPTCHA_REQUIRED:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    .line 38
    new-instance v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    const-string v1, "CAPTCHA_TOKEN"

    const/16 v2, 0xb

    const-string v3, "logintoken"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->CAPTCHA_TOKEN:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    .line 39
    new-instance v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    const-string v1, "CAPTCHA_URL"

    const/16 v2, 0xc

    const-string v3, "CaptchaUrl"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->CAPTCHA_URL:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    .line 40
    new-instance v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    const-string v1, "CAPTCHA_DATA"

    const/16 v2, 0xd

    const-string v3, "CaptchaData"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->CAPTCHA_DATA:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    .line 41
    new-instance v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    const-string v1, "CLIENT_LOGIN_DISABLED"

    const/16 v2, 0xe

    const-string v3, "ClientLoginDisabled"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->CLIENT_LOGIN_DISABLED:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    .line 42
    new-instance v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    const-string v1, "SHA1HASH"

    const/16 v2, 0xf

    const-string v3, "sha1hash"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->SHA1HASH:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    .line 43
    new-instance v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    const-string v1, "FLAGS"

    const/16 v2, 0x10

    const-string v3, "flags"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gsf/loginservice/GaiaLoginKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->FLAGS:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    .line 24
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    sget-object v1, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->ACCOUNT_TYPE:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->ANDROID_ID:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->SECURITY_TOKEN:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->EMAIL:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->ENCRYPTED_PASSWORD:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->PASSWORD:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->TOKEN:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->ACCOUNT_SERVICE:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->ACCOUNT_SOURCE:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->CAPTCHA_ANSWER:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->CAPTCHA_REQUIRED:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->CAPTCHA_TOKEN:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->CAPTCHA_URL:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->CAPTCHA_DATA:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->CLIENT_LOGIN_DISABLED:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->SHA1HASH:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->FLAGS:Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->$VALUES:[Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "wireKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput-object p3, p0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->wireKey:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GaiaLoginKey;
    .locals 1
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    return-object p0
.end method

.method public static values()[Lcom/google/android/gsf/loginservice/GaiaLoginKey;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->$VALUES:[Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    invoke-virtual {v0}, [Lcom/google/android/gsf/loginservice/GaiaLoginKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gsf/loginservice/GaiaLoginKey;

    return-object v0
.end method


# virtual methods
.method public getWire()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/GaiaLoginKey;->wireKey:Ljava/lang/String;

    return-object v0
.end method
