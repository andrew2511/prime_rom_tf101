.class public Lnet/yostore/aws/api/entity/ApiCookies;
.super Ljava/lang/Object;
.source "ApiCookies.java"


# static fields
.field public static EEE_MANU_Maunfactory:Ljava/lang/String;

.field public static EEE_PROD_ProductModal:Ljava/lang/String;

.field public static c_ClientType:Ljava/lang/String;

.field public static macaddr:Ljava/lang/String;

.field public static sid:Ljava/lang/String;

.field public static uuid:Ljava/lang/String;

.field public static v_ClientVersion:Ljava/lang/String;


# instance fields
.field private final OS_VER:Ljava/lang/String;

.field private x_skunum:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "0"

    sput-object v0, Lnet/yostore/aws/api/entity/ApiCookies;->c_ClientType:Ljava/lang/String;

    .line 8
    const-string v0, "2.0."

    sput-object v0, Lnet/yostore/aws/api/entity/ApiCookies;->v_ClientVersion:Ljava/lang/String;

    .line 9
    const-string v0, ""

    sput-object v0, Lnet/yostore/aws/api/entity/ApiCookies;->EEE_MANU_Maunfactory:Ljava/lang/String;

    .line 10
    const-string v0, ""

    sput-object v0, Lnet/yostore/aws/api/entity/ApiCookies;->EEE_PROD_ProductModal:Ljava/lang/String;

    .line 11
    const-string v0, ""

    sput-object v0, Lnet/yostore/aws/api/entity/ApiCookies;->macaddr:Ljava/lang/String;

    .line 12
    const-string v0, ""

    sput-object v0, Lnet/yostore/aws/api/entity/ApiCookies;->uuid:Ljava/lang/String;

    .line 14
    const-string v0, "10035"

    sput-object v0, Lnet/yostore/aws/api/entity/ApiCookies;->sid:Ljava/lang/String;

    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lnet/yostore/aws/api/entity/ApiCookies;->OS_VER:Ljava/lang/String;

    .line 4
    return-void
.end method


# virtual methods
.method public getC_ClientType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lnet/yostore/aws/api/entity/ApiCookies;->c_ClientType:Ljava/lang/String;

    return-object v0
.end method

.method public getEEE_MANU_Maunfactory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lnet/yostore/aws/api/entity/ApiCookies;->EEE_MANU_Maunfactory:Ljava/lang/String;

    return-object v0
.end method

.method public getEEE_PROD_ProductModal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lnet/yostore/aws/api/entity/ApiCookies;->EEE_PROD_ProductModal:Ljava/lang/String;

    return-object v0
.end method

.method public getOS_VER()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lnet/yostore/aws/api/entity/ApiCookies;->OS_VER:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lnet/yostore/aws/api/entity/ApiCookies;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getV_ClientVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lnet/yostore/aws/api/entity/ApiCookies;->v_ClientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getX_skunum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lnet/yostore/aws/api/entity/ApiCookies;->x_skunum:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, ";t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, ";d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ";l="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ";c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
