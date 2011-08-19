.class public Lnet/yostore/aws/api/entity/ApiCookies;
.super Ljava/lang/Object;
.source "ApiCookies.java"


# instance fields
.field private EEE_MANU_Maunfactory:Ljava/lang/String;

.field private EEE_PROD_ProductModal:Ljava/lang/String;

.field private OS_VER:Ljava/lang/String;

.field private c_ClientType:Ljava/lang/String;

.field private final sid:Ljava/lang/String;

.field private v_ClientVersion:Ljava/lang/String;

.field private x_skunum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, "0"

    iput-object v0, p0, Lnet/yostore/aws/api/entity/ApiCookies;->c_ClientType:Ljava/lang/String;

    .line 11
    const-string v0, "2.0."

    iput-object v0, p0, Lnet/yostore/aws/api/entity/ApiCookies;->v_ClientVersion:Ljava/lang/String;

    .line 12
    invoke-static {}, Lcom/ecareme/mear/Mear;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/api/entity/ApiCookies;->EEE_MANU_Maunfactory:Ljava/lang/String;

    .line 13
    invoke-static {}, Lcom/ecareme/mear/Mear;->getProductname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/api/entity/ApiCookies;->EEE_PROD_ProductModal:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/entity/ApiCookies;->OS_VER:Ljava/lang/String;

    .line 15
    const-string v0, "10027"

    iput-object v0, p0, Lnet/yostore/aws/api/entity/ApiCookies;->sid:Ljava/lang/String;

    .line 7
    return-void
.end method


# virtual methods
.method public getC_ClientType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lnet/yostore/aws/api/entity/ApiCookies;->c_ClientType:Ljava/lang/String;

    return-object v0
.end method

.method public getEEE_MANU_Maunfactory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lnet/yostore/aws/api/entity/ApiCookies;->EEE_MANU_Maunfactory:Ljava/lang/String;

    return-object v0
.end method

.method public getEEE_PROD_ProductModal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lnet/yostore/aws/api/entity/ApiCookies;->EEE_PROD_ProductModal:Ljava/lang/String;

    return-object v0
.end method

.method public getOS_VER()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lnet/yostore/aws/api/entity/ApiCookies;->OS_VER:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "10027"

    return-object v0
.end method

.method public getV_ClientVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lnet/yostore/aws/api/entity/ApiCookies;->v_ClientVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getX_skunum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lnet/yostore/aws/api/entity/ApiCookies;->x_skunum:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, ";t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ";d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ";l="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ";c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
