.class public Lnet/yostore/aws/api/helper/VideoEncHelper;
.super Lnet/yostore/aws/api/helper/BaseHelper;
.source "VideoEncHelper.java"


# instance fields
.field private f:J

.field private fn:Ljava/lang/String;

.field private fo:I

.field private p:J

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJJ)V
    .locals 3
    .parameter "fn"
    .parameter "fo"
    .parameter "f"
    .parameter "p"

    .prologue
    const-wide/16 v1, -0x3e7

    .line 40
    invoke-direct {p0}, Lnet/yostore/aws/api/helper/BaseHelper;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/aws/api/helper/VideoEncHelper;->fn:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/api/helper/VideoEncHelper;->fo:I

    .line 37
    iput-wide v1, p0, Lnet/yostore/aws/api/helper/VideoEncHelper;->f:J

    .line 38
    iput-wide v1, p0, Lnet/yostore/aws/api/helper/VideoEncHelper;->p:J

    .line 41
    iput-object p1, p0, Lnet/yostore/aws/api/helper/VideoEncHelper;->fn:Ljava/lang/String;

    .line 42
    iput p2, p0, Lnet/yostore/aws/api/helper/VideoEncHelper;->fo:I

    .line 43
    iput-wide p3, p0, Lnet/yostore/aws/api/helper/VideoEncHelper;->f:J

    .line 44
    iput-wide p5, p0, Lnet/yostore/aws/api/helper/VideoEncHelper;->p:J

    .line 45
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/yostore/aws/api/helper/VideoEncHelper;->r:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method protected doApi(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 13
    .parameter "apicfg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/ProtocolException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x4e20

    const/4 v11, 0x1

    .line 50
    new-instance v2, Lnet/yostore/aws/api/sax/VideoEnc;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/VideoEnc;-><init>()V

    .line 51
    .local v2, handler:Lnet/yostore/aws/api/sax/VideoEnc;
    new-instance v4, Lnet/yostore/aws/api/entity/VideoEncRequest;

    invoke-direct {v4}, Lnet/yostore/aws/api/entity/VideoEncRequest;-><init>()V

    .line 53
    .local v4, request:Lnet/yostore/aws/api/entity/VideoEncRequest;
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/ecareme/pixwe/PixWe;->pixweWeb:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/enc/?v="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    iget-object v10, p1, Lnet/yostore/aws/api/ApiConfig;->password:Ljava/lang/String;

    invoke-static {v9, v10}, Lnet/yostore/utility/Base64Decode;->getVString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&fn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnet/yostore/aws/api/helper/VideoEncHelper;->fn:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&fo="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lnet/yostore/aws/api/helper/VideoEncHelper;->fo:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&f="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lnet/yostore/aws/api/helper/VideoEncHelper;->f:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&p="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lnet/yostore/aws/api/helper/VideoEncHelper;->p:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&r="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lnet/yostore/aws/api/helper/VideoEncHelper;->r:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 54
    .local v7, urlStr:Ljava/lang/String;
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 55
    .local v6, url:Ljava/net/URL;
    const-string v8, "BaseHelper"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 58
    .local v1, conn:Ljava/net/HttpURLConnection;
    invoke-virtual {v1, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 59
    invoke-virtual {v1, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 60
    const-string v8, "GET"

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 62
    new-instance v0, Lnet/yostore/aws/api/entity/ApiCookies;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/ApiCookies;-><init>()V

    .line 63
    .local v0, apicookies:Lnet/yostore/aws/api/entity/ApiCookies;
    const-string v8, "extension-pragma"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "sid="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/ApiCookies;->getSid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";c="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/ApiCookies;->getC_ClientType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";v="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/ApiCookies;->getV_ClientVersion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";x-v="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lnet/yostore/aws/api/BaseApi;->clientversion:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";EEE_MANU_Maunfactory="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/ApiCookies;->getEEE_MANU_Maunfactory()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";EEE_PROD_ProductModal="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lnet/yostore/aws/api/entity/ApiCookies;->getEEE_PROD_ProductModal()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";OS_VER="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 65
    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 66
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 74
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 75
    .local v3, in:Ljava/io/InputStream;
    sget-object v8, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-static {v3, v8, v2}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 77
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 78
    invoke-virtual {v2}, Lnet/yostore/aws/api/sax/VideoEnc;->getResponse()Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v5

    .line 79
    .local v5, response:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string v8, "BaseHelper"

    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/ApiResponse;->getStatus()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-object v5
.end method
