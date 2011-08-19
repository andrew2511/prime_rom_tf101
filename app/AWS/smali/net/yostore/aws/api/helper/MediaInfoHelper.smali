.class public Lnet/yostore/aws/api/helper/MediaInfoHelper;
.super Lnet/yostore/aws/api/helper/BaseHelper;
.source "MediaInfoHelper.java"


# instance fields
.field private fileId:J


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .parameter "fileid"

    .prologue
    .line 30
    invoke-direct {p0}, Lnet/yostore/aws/api/helper/BaseHelper;-><init>()V

    .line 29
    const-wide/16 v0, -0x3e7

    iput-wide v0, p0, Lnet/yostore/aws/api/helper/MediaInfoHelper;->fileId:J

    .line 31
    iput-wide p1, p0, Lnet/yostore/aws/api/helper/MediaInfoHelper;->fileId:J

    .line 32
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

    .line 36
    new-instance v2, Lnet/yostore/aws/api/sax/MediaInfo;

    invoke-direct {v2}, Lnet/yostore/aws/api/sax/MediaInfo;-><init>()V

    .line 37
    .local v2, handler:Lnet/yostore/aws/api/sax/MediaInfo;
    new-instance v4, Lnet/yostore/aws/api/entity/MediaInfoRequest;

    invoke-direct {v4}, Lnet/yostore/aws/api/entity/MediaInfoRequest;-><init>()V

    .line 39
    .local v4, request:Lnet/yostore/aws/api/entity/MediaInfoRequest;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "https://"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p1, Lnet/yostore/aws/api/ApiConfig;->webRelay:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/webrelay/directdownload/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/?fi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lnet/yostore/aws/api/helper/MediaInfoHelper;->fileId:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 40
    .local v7, urlStr:Ljava/lang/String;
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 41
    .local v6, url:Ljava/net/URL;
    const-string v8, "BaseHelper"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 44
    .local v1, conn:Ljava/net/HttpURLConnection;
    invoke-virtual {v1, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 45
    invoke-virtual {v1, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 46
    const-string v8, "GET"

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 48
    new-instance v0, Lnet/yostore/aws/api/entity/ApiCookies;

    invoke-direct {v0}, Lnet/yostore/aws/api/entity/ApiCookies;-><init>()V

    .line 49
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

    .line 50
    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 51
    invoke-virtual {v1, v11}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 52
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 60
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 61
    .local v3, in:Ljava/io/InputStream;
    sget-object v8, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-static {v3, v8, v2}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 63
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 64
    invoke-virtual {v2}, Lnet/yostore/aws/api/sax/MediaInfo;->getResponse()Lnet/yostore/aws/api/entity/ApiResponse;

    move-result-object v5

    .line 65
    .local v5, response:Lnet/yostore/aws/api/entity/ApiResponse;
    const-string v8, "BaseHelper"

    invoke-virtual {v5}, Lnet/yostore/aws/api/entity/ApiResponse;->getStatus()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-object v5
.end method
