.class public Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
.super Ljava/lang/Object;
.source "HttpRequestHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$InvalidResponseException;,
        Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;
    }
.end annotation


# static fields
.field private static final CONNECTION_CONNECT_TIMEOUT:I = 0x7530

.field private static final CONNECTION_READ_TIMEOUT:I = 0x3a98

.field private static final REQUEST_TEMPLATE:Ljava/lang/String; = null

.field private static final SERVICE_URL:Ljava/lang/String; = "https://secure.newspaperdirect.com/epaper/services/deliveryqueue.ashx"

.field private static final TAG:Ljava/lang/String; = "HttpRequestHelper"


# instance fields
.field private mAppendAuthInfo:Z

.field private mRequestBody:Ljava/lang/String;

.field private mRequestType:Ljava/lang/String;

.field private mResponseElement:Landroid/sax/Element;

.field private mResponseErrorCode:I

.field private mResponseErrorMessage:Ljava/lang/String;

.field private mRootElement:Landroid/sax/RootElement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<?xml version=\'1.0\' encoding=\'UTF-8\'?><nd version=\'1.0\'><client-info><software>PRAndroid</software><version>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</version>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    const-string v1, "<client-type>PC</client-type>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 69
    const-string v1, "<client-subtype>Tablet</client-subtype>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 70
    const-string v1, "<system-manufacturer>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->getSystemManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</system-manufacturer>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 71
    const-string v1, "<system-model>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->getSystemModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</system-model>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 72
    const-string v1, "<installkey1>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->getAffiliation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</installkey1>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 73
    const-string v1, "<client-locale-language>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</client-locale-language>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    const-string v1, "<client-locale-country>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</client-locale-country>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    const-string v1, "<client-locale-variant>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</client-locale-variant>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    const-string v1, "</client-info>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    const-string v1, "<request id=\'0\' type=\'%s\'>%s</request>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    const-string v1, "</nd>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->REQUEST_TEMPLATE:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "requestType"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mRequestBody:Ljava/lang/String;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mAppendAuthInfo:Z

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mRequestType:Ljava/lang/String;

    .line 93
    new-instance v0, Landroid/sax/RootElement;

    const-string v1, "nd"

    invoke-direct {v0, v1}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mRootElement:Landroid/sax/RootElement;

    .line 94
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mRootElement:Landroid/sax/RootElement;

    const-string v1, "response"

    invoke-virtual {v0, v1}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mResponseElement:Landroid/sax/Element;

    .line 95
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mResponseElement:Landroid/sax/Element;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$1;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 101
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mResponseElement:Landroid/sax/Element;

    const-string v1, "error-code"

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$2;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$2;-><init>(Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 106
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mResponseElement:Landroid/sax/Element;

    const-string v1, "error-message"

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$3;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$3;-><init>(Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 111
    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mResponseErrorCode:I

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mResponseErrorMessage:Ljava/lang/String;

    return-void
.end method

.method private static checkForErrors(Lorg/w3c/dom/Document;)V
    .locals 5
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;
        }
    .end annotation

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, code:I
    const-string v2, ""

    .line 286
    .local v2, msg:Ljava/lang/String;
    :try_start_0
    const-string v3, "error-code"

    const-string v4, "0"

    invoke-static {p0, v3, v4}, Lcom/newspaperdirect/pressreader/android/core/XmlHelper;->getElementValue(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 287
    const-string v3, "error-message"

    const-string v4, ""

    invoke-static {p0, v3, v4}, Lcom/newspaperdirect/pressreader/android/core/XmlHelper;->getElementValue(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 293
    if-eqz v0, :cond_0

    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;

    invoke-direct {v3, v0, v2}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 289
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 290
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 294
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public static getContent(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V
    .locals 4
    .parameter "url"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 270
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 271
    .local v1, objURL:Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 272
    .local v0, conn:Ljava/net/HttpURLConnection;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 273
    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 274
    const/16 v3, 0x7530

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 275
    const/16 v3, 0x3a98

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 276
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 277
    .local v2, stream:Ljava/io/InputStream;
    sget-object v3, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-static {v2, v3, p1}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 278
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 279
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 280
    return-void
.end method

.method private getRequestBody(Lcom/newspaperdirect/pressreader/android/core/Service;)Ljava/lang/String;
    .locals 2
    .parameter "service"

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mAppendAuthInfo:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mRequestBody:Ljava/lang/String;

    .line 193
    :goto_0
    return-object v0

    .line 192
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mRequestBody:Ljava/lang/String;

    goto :goto_0

    .line 193
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<service-name>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/Service;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</service-name>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 194
    const-string v1, "<authentication>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 195
    const-string v1, "<user-name>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/Service;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</user-name>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 196
    const-string v1, "<activation-number>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActivationNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</activation-number>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 197
    const-string v1, "<client-number>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->getClientNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</client-number>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 198
    const-string v1, "</authentication>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mRequestBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static sendRequest(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 4
    .parameter "requestType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActive()Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v1

    .line 238
    .local v1, service:Lcom/newspaperdirect/pressreader/android/core/Service;
    if-nez v1, :cond_0

    const-string v0, ""

    .line 248
    .local v0, requestBody:Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v2

    return-object v2

    .line 241
    .end local v0           #requestBody:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<service-name>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/Service;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</service-name>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 242
    const-string v3, "<authentication>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 243
    const-string v3, "<user-name>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/Service;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</user-name>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 244
    const-string v3, "<activation-number>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActivationNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</activation-number>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 245
    const-string v3, "<client-number>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->getClientNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</client-number>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 246
    const-string v3, "</authentication>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 241
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    .restart local v0       #requestBody:Ljava/lang/String;
    goto :goto_0
.end method

.method public static sendRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 9
    .parameter "requestType"
    .parameter "requestBody"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;
        }
    .end annotation

    .prologue
    .line 204
    const/4 v3, 0x0

    .line 206
    .local v3, result:Lorg/w3c/dom/Document;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    const-string v6, "https://secure.newspaperdirect.com/epaper/services/deliveryqueue.ashx"

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 207
    .local v4, url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/HttpsURLConnection;

    .line 208
    .local v1, conn:Ljavax/net/ssl/HttpsURLConnection;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    .line 209
    const-string v6, "POST"

    invoke-virtual {v1, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 210
    const-string v6, "Content-Type"

    const-string v7, "text/xml; charset=\"utf-8\""

    invoke-virtual {v1, v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 212
    const/16 v6, 0x7530

    invoke-virtual {v1, v6}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 213
    const/16 v6, 0x3a98

    invoke-virtual {v1, v6}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 215
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 216
    .local v5, writer:Ljava/io/OutputStreamWriter;
    sget-object v6, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->REQUEST_TEMPLATE:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, body:Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    .line 220
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 221
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 230
    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->checkForErrors(Lorg/w3c/dom/Document;)V

    move-object v6, v3

    .line 231
    .end local v0           #body:Ljava/lang/String;
    .end local v1           #conn:Ljavax/net/ssl/HttpsURLConnection;
    .end local v4           #url:Ljava/net/URL;
    .end local v5           #writer:Ljava/io/OutputStreamWriter;
    :goto_0
    return-object v6

    .line 223
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 224
    .local v2, e:Ljava/io/IOException;
    throw v2

    .line 226
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    move-object v2, v6

    .line 227
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 228
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static sendRequest(Ljava/lang/String;Ljava/lang/String;Z)Lorg/w3c/dom/Document;
    .locals 3
    .parameter "requestType"
    .parameter "requestBody"
    .parameter "appendAuthenticationInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;
        }
    .end annotation

    .prologue
    .line 253
    if-eqz p2, :cond_0

    .line 254
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActive()Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v0

    .line 255
    .local v0, service:Lcom/newspaperdirect/pressreader/android/core/Service;
    if-eqz v0, :cond_0

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<service-name>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</service-name>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 258
    const-string v2, "<authentication>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 259
    const-string v2, "<user-name>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</user-name>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 260
    const-string v2, "<activation-number>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActivationNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</activation-number>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 261
    const-string v2, "<client-number>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->getClientNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</client-number>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 262
    const-string v2, "</authentication>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 263
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 266
    .end local v0           #service:Lcom/newspaperdirect/pressreader/android/core/Service;
    :cond_0
    invoke-static {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getResponseElement()Landroid/sax/Element;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mResponseElement:Landroid/sax/Element;

    return-object v0
.end method

.method public sendRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActive()Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->sendRequest(Lcom/newspaperdirect/pressreader/android/core/Service;)V

    .line 138
    return-void
.end method

.method public sendRequest(Lcom/newspaperdirect/pressreader/android/core/Service;)V
    .locals 10
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v4, Ljava/net/URL;

    const-string v6, "https://secure.newspaperdirect.com/epaper/services/deliveryqueue.ashx"

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 142
    .local v4, url:Ljava/net/URL;
    const/4 v2, 0x0

    .line 143
    .local v2, conn:Ljavax/net/ssl/HttpsURLConnection;
    const/4 v3, 0x0

    .line 145
    .local v3, stream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    .line 146
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 147
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    .line 148
    const-string v6, "POST"

    invoke-virtual {v2, v6}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 149
    const-string v6, "Content-Type"

    const-string v7, "text/xml; charset=\"utf-8\""

    invoke-virtual {v2, v6, v7}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 151
    const/16 v6, 0x7530

    invoke-virtual {v2, v6}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 152
    const/16 v6, 0x3a98

    invoke-virtual {v2, v6}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 154
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 155
    .local v5, writer:Ljava/io/OutputStreamWriter;
    sget-object v6, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->REQUEST_TEMPLATE:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mRequestType:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->getRequestBody(Lcom/newspaperdirect/pressreader/android/core/Service;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, body:Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V

    .line 159
    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 174
    sget-object v6, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    iget-object v7, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mRootElement:Landroid/sax/RootElement;

    invoke-virtual {v7}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v7

    invoke-static {v3, v6, v7}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 181
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 183
    :cond_1
    iget v6, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mResponseErrorCode:I

    if-eqz v6, :cond_5

    .line 184
    const-string v6, "HttpRequestHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mResponseErrorMessage:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mResponseErrorCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mRequestType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget v6, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mResponseErrorCode:I

    const/16 v7, 0xcb

    if-ne v6, v7, :cond_2

    const-string v6, "HttpRequestHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "activation-number = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActivationNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_2
    new-instance v6, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;

    iget v7, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mResponseErrorCode:I

    iget-object v8, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mResponseErrorMessage:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 179
    .end local v1           #body:Ljava/lang/String;
    .end local v5           #writer:Ljava/io/OutputStreamWriter;
    :catchall_0
    move-exception v6

    .line 180
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 181
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 182
    :cond_4
    throw v6

    .line 188
    .restart local v1       #body:Ljava/lang/String;
    .restart local v5       #writer:Ljava/io/OutputStreamWriter;
    :cond_5
    return-void
.end method

.method public setAppendAuthInfo(Z)Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    .locals 0
    .parameter "value"

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mAppendAuthInfo:Z

    .line 129
    return-object p0
.end method

.method public setRequestBody(Landroid/os/Bundle;)Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    .locals 7
    .parameter "extra"

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 120
    .local v0, body:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mRequestBody:Ljava/lang/String;

    .line 124
    return-object p0

    .line 120
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 121
    .local v1, key:Ljava/lang/String;
    const-string v3, "<%1$s>%2$s</%1$s>"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public setRequestBody(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    .locals 0
    .parameter "value"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->mRequestBody:Ljava/lang/String;

    .line 115
    return-object p0
.end method
