.class Landroid/webkit/LoadListener;
.super Landroid/os/Handler;
.source "LoadListener.java"

# interfaces
.implements Landroid/net/http/EventHandler;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final HTTP_AUTH:I = 0x191

.field private static final HTTP_FOUND:I = 0x12e

.field private static final HTTP_MOVED_PERMANENTLY:I = 0x12d

.field private static final HTTP_NOT_FOUND:I = 0x194

.field private static final HTTP_NOT_MODIFIED:I = 0x130

.field private static final HTTP_OK:I = 0xc8

.field private static final HTTP_PARTIAL_CONTENT:I = 0xce

.field private static final HTTP_PROXY_AUTH:I = 0x197

.field private static final HTTP_SEE_OTHER:I = 0x12f

.field private static final HTTP_TEMPORARY_REDIRECT:I = 0x133

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final MSG_CONTENT_DATA:I = 0x6e

.field private static final MSG_CONTENT_ERROR:I = 0x82

.field private static final MSG_CONTENT_FINISHED:I = 0x78

.field private static final MSG_CONTENT_HEADERS:I = 0x64

.field private static final MSG_LOCATION_CHANGED:I = 0x8c

.field private static final MSG_LOCATION_CHANGED_REQUEST:I = 0x96

.field private static final MSG_SSL_CERTIFICATE:I = 0xaa

.field private static final MSG_SSL_ERROR:I = 0xb4

.field private static final MSG_STATUS:I = 0xa0

.field private static final XML_MIME_TYPE:Ljava/lang/String; = "^[\\w_\\-+~!$\\^{}|.%\'`#&*]+/[\\w_\\-+~!$\\^{}|.%\'`#&*]+\\+xml$"

.field private static sNativeLoaderCount:I


# instance fields
.field private mAuthFailed:Z

.field private mAuthHeader:Landroid/net/http/HttpAuthHeader;

.field private mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private mCacheLoader:Landroid/webkit/CacheLoader;

.field private mCacheRedirectCount:I

.field private mCancelled:Z

.field public mContentLength:J

.field private mContext:Landroid/content/Context;

.field private final mDataBuilder:Landroid/webkit/ByteArrayBuilder;

.field private mEncoding:Ljava/lang/String;

.field private mErrorDescription:Ljava/lang/String;

.field private mErrorID:I

.field private mFromCache:Z

.field private mHeaders:Landroid/net/http/Headers;

.field private mIsMainPageLoader:Z

.field private final mIsMainResourceLoader:Z

.field private mMessageQueue:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mMethod:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mNativeLoader:I

.field private mOriginalUrl:Ljava/lang/String;

.field private final mPassword:Ljava/lang/String;

.field private mPermanent:Z

.field private mPostData:[B

.field private mPostIdentifier:J

.field private mRequestHandle:Landroid/net/http/RequestHandle;

.field private mRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSetNativeResponse:Z

.field private mSslError:Landroid/net/http/SslError;

.field private mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

.field private mStatusCode:I

.field private mStatusText:Ljava/lang/String;

.field private mSynchronous:Z

.field private mTransferEncoding:Ljava/lang/String;

.field private mUri:Landroid/net/WebAddress;

.field private mUrl:Ljava/lang/String;

.field private final mUserGesture:Z

.field private final mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const-class v0, Landroid/webkit/LoadListener;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Landroid/webkit/LoadListener;->$assertionsDisabled:Z

    .line 1392
    const-string v0, "^((?:[xX]-)?[a-zA-Z\\*]+/[\\w\\+\\*-]+[\\.[\\w\\+-]+]*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/webkit/LoadListener;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    return-void

    .line 50
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter "context"
    .parameter "frame"
    .parameter "url"
    .parameter "nativeLoader"
    .parameter "synchronous"
    .parameter "isMainPageLoader"
    .parameter "isMainResource"
    .parameter "userGesture"
    .parameter "postIdentifier"
    .parameter "username"
    .parameter "password"

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 80
    new-instance v0, Landroid/webkit/ByteArrayBuilder;

    invoke-direct {v0}, Landroid/webkit/ByteArrayBuilder;-><init>()V

    iput-object v0, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    .line 98
    iput-boolean v1, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    .line 100
    iput v1, p0, Landroid/webkit/LoadListener;->mErrorID:I

    .line 152
    sget-boolean v0, Landroid/webkit/LoadListener;->$assertionsDisabled:Z

    if-nez v0, :cond_1f

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 157
    :cond_1f
    iput-object p1, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    .line 158
    iput-object p2, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    .line 159
    invoke-virtual {p0, p3}, Landroid/webkit/LoadListener;->setUrl(Ljava/lang/String;)V

    .line 160
    iput p4, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    .line 161
    iput-boolean p5, p0, Landroid/webkit/LoadListener;->mSynchronous:Z

    .line 162
    if-eqz p5, :cond_33

    .line 163
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    .line 165
    :cond_33
    iput-boolean p6, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    .line 166
    iput-boolean p7, p0, Landroid/webkit/LoadListener;->mIsMainResourceLoader:Z

    .line 167
    iput-boolean p8, p0, Landroid/webkit/LoadListener;->mUserGesture:Z

    .line 168
    iput-wide p9, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    .line 169
    iput-object p11, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    .line 170
    iput-object p12, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    .line 171
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/LoadListener;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/LoadListener;->nativeSetResponseHeader(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private clearNativeLoader()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 178
    sget v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    .line 179
    iput v2, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    .line 180
    iput-boolean v2, p0, Landroid/webkit/LoadListener;->mSetNativeResponse:Z

    .line 181
    return-void
.end method

.method private commitHeaders()V
    .registers 2

    .prologue
    .line 1048
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/webkit/CertTool;->getCertType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1063
    :cond_c
    :goto_c
    return-void

    .line 1058
    :cond_d
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-nez v0, :cond_c

    .line 1062
    invoke-direct {p0}, Landroid/webkit/LoadListener;->setNativeResponse()V

    goto :goto_c
.end method

.method private commitHeadersCheckRedirect()V
    .registers 3

    .prologue
    .line 1030
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v0, :cond_5

    .line 1044
    :cond_4
    :goto_4
    return-void

    .line 1038
    :cond_5
    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x12d

    if-lt v0, v1, :cond_11

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x12f

    if-le v0, v1, :cond_4

    :cond_11
    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x133

    if-eq v0, v1, :cond_4

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-nez v0, :cond_4

    .line 1043
    :cond_21
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitHeaders()V

    goto :goto_4
.end method

.method private commitLoad()V
    .registers 11

    .prologue
    .line 1103
    iget-boolean v6, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v6, :cond_5

    .line 1157
    :cond_4
    :goto_4
    return-void

    .line 1104
    :cond_5
    iget-boolean v6, p0, Landroid/webkit/LoadListener;->mSetNativeResponse:Z

    if-nez v6, :cond_c

    .line 1105
    invoke-direct {p0}, Landroid/webkit/LoadListener;->setNativeResponse()V

    .line 1108
    :cond_c
    iget-boolean v6, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    if-eqz v6, :cond_4e

    .line 1109
    iget-object v6, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-static {v6}, Landroid/webkit/CertTool;->getCertType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1110
    .local v5, type:Ljava/lang/String;
    if-eqz v5, :cond_4e

    .line 1113
    iget-object v6, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    monitor-enter v6

    .line 1117
    :try_start_1b
    iget-object v7, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v7}, Landroid/webkit/ByteArrayBuilder;->getByteSize()I

    move-result v7

    new-array v1, v7, [B

    .line 1118
    .local v1, cert:[B
    const/4 v4, 0x0

    .line 1120
    .local v4, offset:I
    :goto_24
    iget-object v7, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v7}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .line 1121
    .local v0, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-nez v0, :cond_3b

    .line 1129
    iget-object v7, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v7, v5, v1}, Landroid/webkit/CertTool;->addCertificate(Landroid/content/Context;Ljava/lang/String;[B)V

    .line 1130
    iget-object v7, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v7}, Landroid/webkit/BrowserFrame;->stopLoading()V

    .line 1131
    monitor-exit v6

    goto :goto_4

    .line 1132
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .end local v1           #cert:[B
    .end local v4           #offset:I
    :catchall_38
    move-exception v7

    monitor-exit v6
    :try_end_3a
    .catchall {:try_start_1b .. :try_end_3a} :catchall_38

    throw v7

    .line 1123
    .restart local v0       #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .restart local v1       #cert:[B
    .restart local v4       #offset:I
    :cond_3b
    :try_start_3b
    iget v7, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v7, :cond_4a

    .line 1124
    iget-object v7, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    const/4 v8, 0x0

    iget v9, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-static {v7, v8, v1, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1125
    iget v7, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    add-int/2addr v4, v7

    .line 1127
    :cond_4a
    invoke-virtual {v0}, Landroid/webkit/ByteArrayBuilder$Chunk;->release()V
    :try_end_4d
    .catchall {:try_start_3b .. :try_end_4d} :catchall_38

    goto :goto_24

    .line 1139
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    .end local v1           #cert:[B
    .end local v4           #offset:I
    .end local v5           #type:Ljava/lang/String;
    :cond_4e
    new-instance v2, Landroid/webkit/PerfChecker;

    invoke-direct {v2}, Landroid/webkit/PerfChecker;-><init>()V

    .line 1142
    .local v2, checker:Landroid/webkit/PerfChecker;
    :goto_53
    iget-object v6, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v6}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .line 1143
    .restart local v0       #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-eqz v0, :cond_4

    .line 1145
    iget v6, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    if-eqz v6, :cond_83

    .line 1146
    iget-object v6, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    iget v7, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-direct {p0, v6, v7}, Landroid/webkit/LoadListener;->nativeAddData([BI)V

    .line 1147
    new-instance v3, Landroid/webkit/WebViewWorker$CacheData;

    invoke-direct {v3}, Landroid/webkit/WebViewWorker$CacheData;-><init>()V

    .line 1148
    .local v3, data:Landroid/webkit/WebViewWorker$CacheData;
    iput-object p0, v3, Landroid/webkit/WebViewWorker$CacheData;->mListener:Landroid/webkit/LoadListener;

    .line 1149
    iput-object v0, v3, Landroid/webkit/WebViewWorker$CacheData;->mChunk:Landroid/webkit/ByteArrayBuilder$Chunk;

    .line 1150
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v6

    const/16 v7, 0x69

    invoke-virtual {v6, v7, v3}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 1155
    .end local v3           #data:Landroid/webkit/WebViewWorker$CacheData;
    :goto_7c
    const-string/jumbo v6, "res nativeAddData"

    invoke-virtual {v2, v6}, Landroid/webkit/PerfChecker;->responseAlert(Ljava/lang/String;)V

    goto :goto_53

    .line 1153
    :cond_83
    invoke-virtual {v0}, Landroid/webkit/ByteArrayBuilder$Chunk;->release()V

    goto :goto_7c
.end method

.method private createNativeResponse()I
    .registers 10

    .prologue
    .line 1082
    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_2d

    iget-object v0, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-eqz v0, :cond_2d

    const/16 v0, 0xc8

    move v2, v0

    .line 1085
    .local v2, statusCode:I
    :goto_d
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->originalUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/webkit/LoadListener;->mStatusText:Ljava/lang/String;

    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    iget-wide v5, p0, Landroid/webkit/LoadListener;->mContentLength:J

    iget-object v7, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/webkit/LoadListener;->nativeCreateResponse(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)I

    move-result v8

    .line 1088
    .local v8, nativeResponse:I
    iget-object v0, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    if-eqz v0, :cond_2c

    .line 1089
    iget-object v0, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    new-instance v1, Landroid/webkit/LoadListener$1;

    invoke-direct {v1, p0, v8}, Landroid/webkit/LoadListener$1;-><init>(Landroid/webkit/LoadListener;I)V

    invoke-virtual {v0, v1}, Landroid/net/http/Headers;->getHeaders(Landroid/net/http/Headers$HeaderCallback;)V

    .line 1095
    :cond_2c
    return v8

    .line 1082
    .end local v2           #statusCode:I
    .end local v8           #nativeResponse:I
    :cond_2d
    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    move v2, v0

    goto :goto_d
.end method

.method private doRedirect()V
    .registers 14

    .prologue
    const v12, 0x1040007

    const/16 v11, -0xc

    .line 1265
    iget-boolean v7, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v7, :cond_a

    .line 1386
    :cond_9
    :goto_9
    return-void

    .line 1271
    :cond_a
    iget v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_1f

    .line 1272
    const/16 v7, -0x9

    iget-object v8, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    const v9, 0x1040107

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto :goto_9

    .line 1277
    :cond_1f
    iget-object v7, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v7}, Landroid/net/http/Headers;->getLocation()Ljava/lang/String;

    move-result-object v5

    .line 1278
    .local v5, redirectTo:Ljava/lang/String;
    if-eqz v5, :cond_14c

    .line 1279
    invoke-direct {p0}, Landroid/webkit/LoadListener;->createNativeResponse()I

    move-result v3

    .line 1280
    .local v3, nativeResponse:I
    iget-object v7, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v7, v5, v3}, Landroid/webkit/LoadListener;->nativeRedirectedToUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1284
    iget-boolean v7, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v7, :cond_9

    .line 1287
    if-nez v5, :cond_5a

    .line 1288
    const-string/jumbo v7, "webkit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Redirection failed for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v9}, Landroid/net/http/Headers;->getLocation()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->cancel()V

    goto :goto_9

    .line 1292
    :cond_5a
    invoke-static {v5}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9a

    .line 1293
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    const v9, 0x1040313

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1296
    .local v6, text:Ljava/lang/String;
    iget-boolean v7, p0, Landroid/webkit/LoadListener;->mSetNativeResponse:Z

    if-nez v7, :cond_87

    .line 1297
    invoke-direct {p0}, Landroid/webkit/LoadListener;->setNativeResponse()V

    .line 1299
    :cond_87
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/webkit/LoadListener;->nativeAddData([BI)V

    .line 1300
    invoke-direct {p0}, Landroid/webkit/LoadListener;->nativeFinished()V

    .line 1301
    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    goto/16 :goto_9

    .line 1307
    .end local v6           #text:Ljava/lang/String;
    :cond_9a
    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorID()I

    move-result v7

    if-nez v7, :cond_fa

    .line 1308
    new-instance v0, Landroid/webkit/WebViewWorker$CacheSaveData;

    invoke-direct {v0}, Landroid/webkit/WebViewWorker$CacheSaveData;-><init>()V

    .line 1309
    .local v0, data:Landroid/webkit/WebViewWorker$CacheSaveData;
    iput-object p0, v0, Landroid/webkit/WebViewWorker$CacheSaveData;->mListener:Landroid/webkit/LoadListener;

    .line 1310
    iget-object v7, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    iput-object v7, v0, Landroid/webkit/WebViewWorker$CacheSaveData;->mUrl:Ljava/lang/String;

    .line 1311
    iget-wide v7, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    iput-wide v7, v0, Landroid/webkit/WebViewWorker$CacheSaveData;->mPostId:J

    .line 1312
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v7

    const/16 v8, 0x6a

    invoke-virtual {v7, v8, v0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 1320
    .end local v0           #data:Landroid/webkit/WebViewWorker$CacheSaveData;
    :goto_bc
    iput-object v5, p0, Landroid/webkit/LoadListener;->mOriginalUrl:Ljava/lang/String;

    .line 1322
    invoke-virtual {p0, v5}, Landroid/webkit/LoadListener;->setUrl(Ljava/lang/String;)V

    .line 1325
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    if-nez v7, :cond_cc

    .line 1326
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    .line 1328
    :cond_cc
    const/4 v2, 0x0

    .line 1329
    .local v2, fromCache:Z
    iget-object v7, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-eqz v7, :cond_d8

    .line 1332
    iget v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    .line 1333
    const/4 v2, 0x1

    .line 1335
    :cond_d8
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    invoke-virtual {p0, v7}, Landroid/webkit/LoadListener;->checkCache(Ljava/util/Map;)Z

    move-result v7

    if-nez v7, :cond_13e

    .line 1338
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v7, :cond_11f

    .line 1340
    :try_start_e4
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    iget-object v8, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    iget v9, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    iget-object v10, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/http/RequestHandle;->setupRedirect(Ljava/lang/String;ILjava/util/Map;)Z
    :try_end_ef
    .catch Ljava/lang/RuntimeException; {:try_start_e4 .. :try_end_ef} :catch_108

    .line 1364
    :cond_ef
    if-eqz v2, :cond_9

    .line 1368
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    iget v8, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    invoke-virtual {v7, v8}, Landroid/net/http/RequestHandle;->setRedirectCount(I)V

    goto/16 :goto_9

    .line 1315
    .end local v2           #fromCache:Z
    :cond_fa
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v7

    const/16 v8, 0x6b

    invoke-virtual {v7, v8, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_bc

    .line 1342
    .restart local v2       #fromCache:Z
    :catch_108
    move-exception v7

    move-object v1, v7

    .line 1343
    .local v1, e:Ljava/lang/RuntimeException;
    const-string/jumbo v7, "webkit"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    iget-object v7, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v11, v7}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto/16 :goto_9

    .line 1354
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_11f
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v4

    .line 1355
    .local v4, network:Landroid/webkit/Network;
    iget-object v7, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    iget-object v8, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    iget-object v9, p0, Landroid/webkit/LoadListener;->mPostData:[B

    invoke-virtual {v4, v7, v8, v9, p0}, Landroid/webkit/Network;->requestURL(Ljava/lang/String;Ljava/util/Map;[BLandroid/webkit/LoadListener;)Z

    move-result v7

    if-nez v7, :cond_ef

    .line 1359
    iget-object v7, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v11, v7}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto/16 :goto_9

    .line 1370
    .end local v4           #network:Landroid/webkit/Network;
    :cond_13e
    if-nez v2, :cond_9

    .line 1374
    iget-object v7, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v7}, Landroid/net/http/RequestHandle;->getRedirectCount()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/webkit/LoadListener;->mCacheRedirectCount:I

    goto/16 :goto_9

    .line 1377
    .end local v2           #fromCache:Z
    .end local v3           #nativeResponse:I
    :cond_14c
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitHeaders()V

    .line 1378
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitLoad()V

    .line 1379
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    goto/16 :goto_9
.end method

.method private getErrorDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1200
    iget-object v0, p0, Landroid/webkit/LoadListener;->mErrorDescription:Ljava/lang/String;

    return-object v0
.end method

.method private getErrorID()I
    .registers 2

    .prologue
    .line 1192
    iget v0, p0, Landroid/webkit/LoadListener;->mErrorID:I

    return v0
.end method

.method public static getLoadListener(Landroid/content/Context;Landroid/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;)Landroid/webkit/LoadListener;
    .registers 25
    .parameter "context"
    .parameter "frame"
    .parameter "url"
    .parameter "nativeLoader"
    .parameter "synchronous"
    .parameter "isMainPageLoader"
    .parameter "isMainResource"
    .parameter "userGesture"
    .parameter "postIdentifier"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 138
    sget v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    .line 139
    new-instance v0, Landroid/webkit/LoadListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Landroid/webkit/LoadListener;-><init>(Landroid/content/Context;Landroid/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getNativeLoaderCount()I
    .registers 1

    .prologue
    .line 145
    sget v0, Landroid/webkit/LoadListener;->sNativeLoaderCount:I

    return v0
.end method

.method private guessMimeType()V
    .registers 5

    .prologue
    .line 1566
    iget-object v2, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_22

    .line 1567
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->cancel()V

    .line 1568
    iget-object v2, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    const v3, 0x1040007

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1569
    .local v1, text:Ljava/lang/String;
    const/16 v2, -0xc

    invoke-direct {p0, v2, v1}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    .line 1580
    .end local v1           #text:Ljava/lang/String;
    :cond_21
    :goto_21
    return-void

    .line 1574
    :cond_22
    const-string/jumbo v2, "text/html"

    iput-object v2, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 1575
    iget-object v2, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1576
    .local v0, newMimeType:Ljava/lang/String;
    if-eqz v0, :cond_21

    .line 1577
    iput-object v0, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    goto :goto_21
.end method

.method private guessMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "url"

    .prologue
    .line 1591
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleCertificate(Landroid/net/http/SslCertificate;)V
    .registers 3
    .parameter "certificate"

    .prologue
    .line 536
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mIsMainResourceLoader:Z

    if-eqz v0, :cond_d

    .line 538
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, p1}, Landroid/webkit/BrowserFrame;->certificate(Landroid/net/http/SslCertificate;)V

    .line 540
    :cond_d
    return-void
.end method

.method private handleEndData()V
    .registers 7

    .prologue
    const/16 v5, 0x96

    const/16 v3, 0x8c

    const/4 v4, 0x1

    .line 613
    iget-boolean v1, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v1, :cond_a

    .line 691
    :goto_9
    return-void

    .line 615
    :cond_a
    iget v1, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    sparse-switch v1, :sswitch_data_e2

    .line 689
    :cond_f
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->detachRequestHandle()V

    .line 690
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    goto :goto_9

    .line 618
    :sswitch_16
    iput-boolean v4, p0, Landroid/webkit/LoadListener;->mPermanent:Z

    .line 623
    :sswitch_18
    iget v1, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v2, 0x133

    if-ne v1, v2, :cond_56

    .line 624
    iget-object v1, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v1, :cond_38

    iget-object v1, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v1}, Landroid/net/http/RequestHandle;->getMethod()Ljava/lang/String;

    move-result-object v1

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 626
    invoke-virtual {p0, v5}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_9

    .line 628
    :cond_38
    iget-object v1, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    if-eqz v1, :cond_4e

    iget-object v1, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 629
    invoke-virtual {p0, v5}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_9

    .line 632
    :cond_4e
    invoke-virtual {p0, v3}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_9

    .line 635
    :cond_56
    invoke-virtual {p0, v3}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_9

    .line 644
    :sswitch_5e
    iget-object v1, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/Network;->isValidProxySet()Z

    move-result v1

    if-nez v1, :cond_76

    iget-object v1, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v1}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v1

    if-nez v1, :cond_f

    .line 649
    :cond_76
    iget-boolean v1, p0, Landroid/webkit/LoadListener;->mAuthFailed:Z

    if-nez v1, :cond_b3

    iget-object v1, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    if-eqz v1, :cond_b3

    iget-object v1, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    if-eqz v1, :cond_b3

    .line 650
    iget-object v1, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v1}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v1

    if-eqz v1, :cond_ab

    iget-object v1, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/Network;->getProxyHostname()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 653
    .local v0, host:Ljava/lang/String;
    :goto_95
    iget-object v1, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v1}, Landroid/net/http/HttpAuthHeader;->getRealm()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    iget-object v3, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/webkit/HttpAuthHandlerImpl;->onReceivedCredentials(Landroid/webkit/LoadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v1, p0, Landroid/webkit/LoadListener;->mUsername:Ljava/lang/String;

    iget-object v2, p0, Landroid/webkit/LoadListener;->mPassword:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/webkit/LoadListener;->makeAuthResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 650
    .end local v0           #host:Ljava/lang/String;
    :cond_ab
    iget-object v1, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    invoke-virtual {v1}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_95

    .line 657
    :cond_b3
    iget-object v1, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/webkit/Network;->handleAuthRequest(Landroid/webkit/LoadListener;)V

    goto/16 :goto_9

    .line 667
    :sswitch_be
    iget-object v1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    if-eqz v1, :cond_f

    .line 668
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 669
    iget-object v1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v1}, Landroid/webkit/CacheLoader;->load()V

    .line 676
    :goto_cd
    iput-boolean v4, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    goto/16 :goto_9

    .line 672
    :cond_d1
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    const/16 v2, 0x65

    iget-object v3, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_cd

    .line 615
    nop

    :sswitch_data_e2
    .sparse-switch
        0x12d -> :sswitch_16
        0x12e -> :sswitch_18
        0x12f -> :sswitch_18
        0x130 -> :sswitch_be
        0x133 -> :sswitch_18
        0x191 -> :sswitch_5e
        0x197 -> :sswitch_5e
    .end sparse-switch
.end method

.method private handleError(ILjava/lang/String;)V
    .registers 3
    .parameter "id"
    .parameter "description"

    .prologue
    .line 560
    iput p1, p0, Landroid/webkit/LoadListener;->mErrorID:I

    .line 561
    iput-object p2, p0, Landroid/webkit/LoadListener;->mErrorDescription:Ljava/lang/String;

    .line 562
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->detachRequestHandle()V

    .line 563
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->notifyError()V

    .line 564
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    .line 565
    return-void
.end method

.method private handleHeaders(Landroid/net/http/Headers;)V
    .registers 16
    .parameter "headers"

    .prologue
    .line 328
    iget-boolean v10, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v10, :cond_5

    .line 465
    :goto_4
    return-void

    .line 333
    :cond_5
    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v11, 0xce

    if-ne v10, v11, :cond_19

    .line 335
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v10

    const/16 v11, 0x6b

    invoke-virtual {v10, v11, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4

    .line 340
    :cond_19
    iput-object p1, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    .line 342
    invoke-virtual {p1}, Landroid/net/http/Headers;->getContentLength()J

    move-result-wide v1

    .line 343
    .local v1, contentLength:J
    const-wide/16 v10, -0x1

    cmp-long v10, v1, v10

    if-eqz v10, :cond_189

    .line 344
    iput-wide v1, p0, Landroid/webkit/LoadListener;->mContentLength:J

    .line 349
    :goto_27
    invoke-virtual {p1}, Landroid/net/http/Headers;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, contentType:Ljava/lang/String;
    if-eqz v3, :cond_18f

    .line 351
    invoke-virtual {p0, v3}, Landroid/webkit/LoadListener;->parseContentTypeHeader(Ljava/lang/String;)V

    .line 352
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v10

    iget-object v11, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    iget-object v12, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/http/Headers;->getContentDisposition()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Landroid/webkit/MimeTypeMap;->remapGenericMimeType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 363
    :goto_42
    iget-boolean v10, p0, Landroid/webkit/LoadListener;->mIsMainPageLoader:Z

    if-eqz v10, :cond_a1

    iget-boolean v10, p0, Landroid/webkit/LoadListener;->mIsMainResourceLoader:Z

    if-eqz v10, :cond_a1

    iget-boolean v10, p0, Landroid/webkit/LoadListener;->mUserGesture:Z

    if-eqz v10, :cond_a1

    const-string v10, "^[\\w_\\-+~!$\\^{}|.%\'`#&*]+/[\\w_\\-+~!$\\^{}|.%\'`#&*]+\\+xml$"

    iget-object v11, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a1

    iget-object v10, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    const-string v11, "application/xhtml+xml"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a1

    .line 366
    new-instance v5, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    .local v5, i:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    iget-object v10, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/high16 v11, 0x1

    invoke-virtual {v10, v5, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 370
    .local v6, info:Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_a1

    iget-object v10, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a1

    .line 375
    :try_start_94
    iget-object v10, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 376
    iget-object v10, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v10}, Landroid/webkit/BrowserFrame;->stopLoading()V
    :try_end_9e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_94 .. :try_end_9e} :catch_a0

    goto/16 :goto_4

    .line 378
    :catch_a0
    move-exception v10

    .line 385
    .end local v5           #i:Landroid/content/Intent;
    .end local v6           #info:Landroid/content/pm/ResolveInfo;
    :cond_a1
    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v11, 0x191

    if-eq v10, v11, :cond_ad

    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v11, 0x197

    if-ne v10, v11, :cond_194

    :cond_ad
    const/4 v10, 0x1

    move v8, v10

    .line 388
    .local v8, mustAuthenticate:Z
    :goto_af
    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v11, 0x197

    if-ne v10, v11, :cond_198

    const/4 v10, 0x1

    move v7, v10

    .line 391
    .local v7, isProxyAuthRequest:Z
    :goto_b7
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/webkit/LoadListener;->mAuthFailed:Z

    .line 394
    iget-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v10, :cond_f7

    .line 397
    if-eqz v8, :cond_19c

    iget-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v10}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v10

    if-ne v7, v10, :cond_19c

    const/4 v10, 0x1

    :goto_c9
    iput-boolean v10, p0, Landroid/webkit/LoadListener;->mAuthFailed:Z

    .line 402
    iget-boolean v10, p0, Landroid/webkit/LoadListener;->mAuthFailed:Z

    if-nez v10, :cond_f7

    iget-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v10}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v10

    if-eqz v10, :cond_f7

    .line 403
    iget-object v10, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v9

    .line 405
    .local v9, network:Landroid/webkit/Network;
    invoke-virtual {v9}, Landroid/webkit/Network;->isValidProxySet()Z

    move-result v10

    if-eqz v10, :cond_f7

    .line 408
    monitor-enter v9

    .line 411
    :try_start_e4
    iget-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v10}, Landroid/net/http/HttpAuthHeader;->getUsername()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/Network;->setProxyUsername(Ljava/lang/String;)V

    .line 412
    iget-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v10}, Landroid/net/http/HttpAuthHeader;->getPassword()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/webkit/Network;->setProxyPassword(Ljava/lang/String;)V

    .line 413
    monitor-exit v9
    :try_end_f7
    .catchall {:try_start_e4 .. :try_end_f7} :catchall_19f

    .line 420
    .end local v9           #network:Landroid/webkit/Network;
    :cond_f7
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    .line 421
    if-eqz v8, :cond_10c

    .line 422
    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v11, 0x191

    if-ne v10, v11, :cond_1a2

    .line 423
    invoke-virtual {p1}, Landroid/net/http/Headers;->getWwwAuthenticate()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/webkit/LoadListener;->parseAuthHeader(Ljava/lang/String;)Landroid/net/http/HttpAuthHeader;

    move-result-object v10

    iput-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    .line 437
    :cond_10c
    :goto_10c
    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v11, 0xc8

    if-eq v10, v11, :cond_124

    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v11, 0x12e

    if-eq v10, v11, :cond_124

    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v11, 0x12d

    if-eq v10, v11, :cond_124

    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v11, 0x133

    if-ne v10, v11, :cond_184

    :cond_124
    iget v10, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    if-eqz v10, :cond_184

    .line 445
    iget-boolean v10, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    if-nez v10, :cond_16c

    iget-object v10, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v10, :cond_16c

    iget-object v10, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v10}, Landroid/net/http/RequestHandle;->getMethod()Ljava/lang/String;

    move-result-object v10

    const-string v11, "POST"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_146

    iget-wide v10, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_16c

    .line 448
    :cond_146
    new-instance v4, Landroid/webkit/WebViewWorker$CacheCreateData;

    invoke-direct {v4}, Landroid/webkit/WebViewWorker$CacheCreateData;-><init>()V

    .line 449
    .local v4, data:Landroid/webkit/WebViewWorker$CacheCreateData;
    iput-object p0, v4, Landroid/webkit/WebViewWorker$CacheCreateData;->mListener:Landroid/webkit/LoadListener;

    .line 450
    iget-object v10, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    iput-object v10, v4, Landroid/webkit/WebViewWorker$CacheCreateData;->mUrl:Ljava/lang/String;

    .line 451
    iget-object v10, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    iput-object v10, v4, Landroid/webkit/WebViewWorker$CacheCreateData;->mMimeType:Ljava/lang/String;

    .line 452
    iget v10, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    iput v10, v4, Landroid/webkit/WebViewWorker$CacheCreateData;->mStatusCode:I

    .line 453
    iget-wide v10, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    iput-wide v10, v4, Landroid/webkit/WebViewWorker$CacheCreateData;->mPostId:J

    .line 454
    iput-object p1, v4, Landroid/webkit/WebViewWorker$CacheCreateData;->mHeaders:Landroid/net/http/Headers;

    .line 455
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v10

    const/16 v11, 0x67

    invoke-virtual {v10, v11, v4}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 458
    .end local v4           #data:Landroid/webkit/WebViewWorker$CacheCreateData;
    :cond_16c
    new-instance v0, Landroid/webkit/WebViewWorker$CacheEncoding;

    invoke-direct {v0}, Landroid/webkit/WebViewWorker$CacheEncoding;-><init>()V

    .line 459
    .local v0, ce:Landroid/webkit/WebViewWorker$CacheEncoding;
    iget-object v10, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    iput-object v10, v0, Landroid/webkit/WebViewWorker$CacheEncoding;->mEncoding:Ljava/lang/String;

    .line 460
    iput-object p0, v0, Landroid/webkit/WebViewWorker$CacheEncoding;->mListener:Landroid/webkit/LoadListener;

    .line 461
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v10

    const/16 v11, 0x68

    invoke-virtual {v10, v11, v0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/Message;->sendToTarget()V

    .line 464
    .end local v0           #ce:Landroid/webkit/WebViewWorker$CacheEncoding;
    :cond_184
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitHeadersCheckRedirect()V

    goto/16 :goto_4

    .line 346
    .end local v3           #contentType:Ljava/lang/String;
    .end local v7           #isProxyAuthRequest:Z
    .end local v8           #mustAuthenticate:Z
    :cond_189
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Landroid/webkit/LoadListener;->mContentLength:J

    goto/16 :goto_27

    .line 360
    .restart local v3       #contentType:Ljava/lang/String;
    :cond_18f
    invoke-direct {p0}, Landroid/webkit/LoadListener;->guessMimeType()V

    goto/16 :goto_42

    .line 385
    :cond_194
    const/4 v10, 0x0

    move v8, v10

    goto/16 :goto_af

    .line 388
    .restart local v8       #mustAuthenticate:Z
    :cond_198
    const/4 v10, 0x0

    move v7, v10

    goto/16 :goto_b7

    .line 397
    .restart local v7       #isProxyAuthRequest:Z
    :cond_19c
    const/4 v10, 0x0

    goto/16 :goto_c9

    .line 413
    .restart local v9       #network:Landroid/webkit/Network;
    :catchall_19f
    move-exception v10

    :try_start_1a0
    monitor-exit v9
    :try_end_1a1
    .catchall {:try_start_1a0 .. :try_end_1a1} :catchall_19f

    throw v10

    .line 426
    .end local v9           #network:Landroid/webkit/Network;
    :cond_1a2
    invoke-virtual {p1}, Landroid/net/http/Headers;->getProxyAuthenticate()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/webkit/LoadListener;->parseAuthHeader(Ljava/lang/String;)Landroid/net/http/HttpAuthHeader;

    move-result-object v10

    iput-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    .line 429
    iget-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v10, :cond_10c

    .line 431
    iget-object v10, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v10}, Landroid/net/http/HttpAuthHeader;->setProxy()V

    goto/16 :goto_10c
.end method

.method private handleSslError(Landroid/net/http/SslError;)V
    .registers 4
    .parameter "error"

    .prologue
    .line 787
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v0, :cond_13

    .line 788
    iput-object p1, p0, Landroid/webkit/LoadListener;->mSslError:Landroid/net/http/SslError;

    .line 789
    iget-object v0, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/Network;->handleSslErrorRequest(Landroid/webkit/LoadListener;)V

    .line 793
    :cond_f
    :goto_f
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    .line 794
    return-void

    .line 790
    :cond_13
    iget-object v0, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_f

    .line 791
    iget-object v0, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/http/RequestHandle;->handleSslErrorResponse(Z)V

    goto :goto_f
.end method

.method private handleStatus(IIILjava/lang/String;)V
    .registers 6
    .parameter "major"
    .parameter "minor"
    .parameter "code"
    .parameter "reason"

    .prologue
    .line 508
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v0, :cond_5

    .line 513
    :goto_4
    return-void

    .line 510
    :cond_5
    iput p3, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    .line 511
    iput-object p4, p0, Landroid/webkit/LoadListener;->mStatusText:Ljava/lang/String;

    .line 512
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mPermanent:Z

    goto :goto_4
.end method

.method private ignoreCallbacks()Z
    .registers 3

    .prologue
    .line 1534
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-nez v0, :cond_1a

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x12c

    if-le v0, v1, :cond_1c

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_1c

    iget v0, p0, Landroid/webkit/LoadListener;->mStatusCode:I

    const/16 v1, 0x131

    if-eq v0, v1, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private native nativeAddData([BI)V
.end method

.method private native nativeCreateResponse(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)I
.end method

.method private native nativeError(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeFinished()V
.end method

.method private native nativeReceivedResponse(I)V
.end method

.method private native nativeRedirectedToUrl(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private native nativeSetResponseHeader(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private parseAuthHeader(Ljava/lang/String;)Landroid/net/http/HttpAuthHeader;
    .registers 22
    .parameter "header"

    .prologue
    .line 1456
    if-eqz p1, :cond_df

    .line 1457
    const/16 v16, 0x100

    .line 1458
    .local v16, posMax:I
    const/4 v14, 0x0

    .line 1459
    .local v14, posLen:I
    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v13, v0

    .line 1461
    .local v13, pos:[I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    .line 1462
    .local v12, headerLen:I
    if-lez v12, :cond_65

    .line 1464
    const/16 v17, 0x0

    .line 1465
    .local v17, quoted:Z
    const/4 v5, 0x0

    .local v5, i:I
    move v15, v14

    .end local v14           #posLen:I
    .local v15, posLen:I
    :goto_14
    if-ge v5, v12, :cond_64

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_64

    .line 1466
    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_34

    .line 1467
    if-nez v17, :cond_30

    const/4 v3, 0x1

    move/from16 v17, v3

    :goto_2b
    move v14, v15

    .line 1465
    .end local v15           #posLen:I
    .restart local v14       #posLen:I
    :goto_2c
    add-int/lit8 v5, v5, 0x1

    move v15, v14

    .end local v14           #posLen:I
    .restart local v15       #posLen:I
    goto :goto_14

    .line 1467
    :cond_30
    const/4 v3, 0x0

    move/from16 v17, v3

    goto :goto_2b

    .line 1469
    :cond_34
    if-nez v17, :cond_e1

    .line 1470
    const/4 v4, 0x1

    const-string v6, "Basic"

    const/4 v7, 0x0

    const-string v3, "Basic"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1473
    add-int/lit8 v14, v15, 0x1

    .end local v15           #posLen:I
    .restart local v14       #posLen:I
    aput v5, v13, v15

    goto :goto_2c

    .line 1477
    .end local v14           #posLen:I
    .restart local v15       #posLen:I
    :cond_4d
    const/4 v4, 0x1

    const-string v6, "Digest"

    const/4 v7, 0x0

    const-string v3, "Digest"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_e1

    .line 1480
    add-int/lit8 v14, v15, 0x1

    .end local v15           #posLen:I
    .restart local v14       #posLen:I
    aput v5, v13, v15

    goto :goto_2c

    .end local v14           #posLen:I
    .restart local v15       #posLen:I
    :cond_64
    move v14, v15

    .line 1488
    .end local v5           #i:I
    .end local v15           #posLen:I
    .end local v17           #quoted:Z
    .restart local v14       #posLen:I
    :cond_65
    if-lez v14, :cond_df

    .line 1490
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_68
    if-ge v5, v14, :cond_a3

    .line 1491
    const/4 v7, 0x1

    aget v8, v13, v5

    const-string v9, "Digest"

    const/4 v10, 0x0

    const-string v3, "Digest"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 1494
    aget v3, v13, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v14, :cond_9e

    add-int/lit8 v4, v5, 0x1

    aget v4, v13, v4

    :goto_88
    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 1497
    .local v19, sub:Ljava/lang/String;
    new-instance v18, Landroid/net/http/HttpAuthHeader;

    invoke-direct/range {v18 .. v19}, Landroid/net/http/HttpAuthHeader;-><init>(Ljava/lang/String;)V

    .line 1498
    .local v18, rval:Landroid/net/http/HttpAuthHeader;
    invoke-virtual/range {v18 .. v18}, Landroid/net/http/HttpAuthHeader;->isSupportedScheme()Z

    move-result v3

    if-eqz v3, :cond_a0

    move-object/from16 v3, v18

    .line 1523
    .end local v5           #i:I
    .end local v12           #headerLen:I
    .end local v13           #pos:[I
    .end local v14           #posLen:I
    .end local v16           #posMax:I
    .end local v18           #rval:Landroid/net/http/HttpAuthHeader;
    .end local v19           #sub:Ljava/lang/String;
    :goto_9d
    return-object v3

    .restart local v5       #i:I
    .restart local v12       #headerLen:I
    .restart local v13       #pos:[I
    .restart local v14       #posLen:I
    .restart local v16       #posMax:I
    :cond_9e
    move v4, v12

    .line 1494
    goto :goto_88

    .line 1490
    :cond_a0
    add-int/lit8 v5, v5, 0x1

    goto :goto_68

    .line 1506
    :cond_a3
    const/4 v5, 0x0

    :goto_a4
    if-ge v5, v14, :cond_df

    .line 1507
    const/4 v7, 0x1

    aget v8, v13, v5

    const-string v9, "Basic"

    const/4 v10, 0x0

    const-string v3, "Basic"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_dc

    .line 1510
    aget v3, v13, v5

    add-int/lit8 v4, v5, 0x1

    if-ge v4, v14, :cond_da

    add-int/lit8 v4, v5, 0x1

    aget v4, v13, v4

    :goto_c4
    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 1513
    .restart local v19       #sub:Ljava/lang/String;
    new-instance v18, Landroid/net/http/HttpAuthHeader;

    invoke-direct/range {v18 .. v19}, Landroid/net/http/HttpAuthHeader;-><init>(Ljava/lang/String;)V

    .line 1514
    .restart local v18       #rval:Landroid/net/http/HttpAuthHeader;
    invoke-virtual/range {v18 .. v18}, Landroid/net/http/HttpAuthHeader;->isSupportedScheme()Z

    move-result v3

    if-eqz v3, :cond_dc

    move-object/from16 v3, v18

    .line 1516
    goto :goto_9d

    .end local v18           #rval:Landroid/net/http/HttpAuthHeader;
    .end local v19           #sub:Ljava/lang/String;
    :cond_da
    move v4, v12

    .line 1510
    goto :goto_c4

    .line 1506
    :cond_dc
    add-int/lit8 v5, v5, 0x1

    goto :goto_a4

    .line 1523
    .end local v5           #i:I
    .end local v12           #headerLen:I
    .end local v13           #pos:[I
    .end local v14           #posLen:I
    .end local v16           #posMax:I
    :cond_df
    const/4 v3, 0x0

    goto :goto_9d

    .restart local v5       #i:I
    .restart local v12       #headerLen:I
    .restart local v13       #pos:[I
    .restart local v15       #posLen:I
    .restart local v16       #posMax:I
    .restart local v17       #quoted:Z
    :cond_e1
    move v14, v15

    .end local v15           #posLen:I
    .restart local v14       #posLen:I
    goto/16 :goto_2c
.end method

.method private sendMessageInternal(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1600
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mSynchronous:Z

    if-eqz v0, :cond_a

    .line 1601
    iget-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1605
    :goto_9
    return-void

    .line 1603
    :cond_a
    invoke-virtual {p0, p1}, Landroid/webkit/LoadListener;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9
.end method

.method private setNativeResponse()V
    .registers 3

    .prologue
    .line 1066
    invoke-direct {p0}, Landroid/webkit/LoadListener;->createNativeResponse()I

    move-result v0

    .line 1068
    .local v0, nativeResponse:I
    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->nativeReceivedResponse(I)V

    .line 1069
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/LoadListener;->mSetNativeResponse:Z

    .line 1070
    return-void
.end method

.method static willLoadFromCache(Ljava/lang/String;J)Z
    .registers 5
    .parameter "url"
    .parameter "identifier"

    .prologue
    .line 989
    sget-boolean v1, Landroid/webkit/LoadListener;->$assertionsDisabled:Z

    if-nez v1, :cond_10

    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v1

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 990
    :cond_10
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    move v0, v1

    .line 996
    .local v0, inCache:Z
    :goto_19
    return v0

    .line 990
    .end local v0           #inCache:Z
    :cond_1a
    const/4 v1, 0x0

    move v0, v1

    goto :goto_19
.end method


# virtual methods
.method attachRequestHandle(Landroid/net/http/RequestHandle;)V
    .registers 2
    .parameter "requestHandle"

    .prologue
    .line 947
    iput-object p1, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    .line 948
    return-void
.end method

.method authCredentialsInvalid()Z
    .registers 2

    .prologue
    .line 814
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mAuthFailed:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isDigest()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getStale()Z

    move-result v0

    if-nez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public cancel()V
    .registers 3

    .prologue
    .line 1240
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_c

    .line 1241
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0}, Landroid/net/http/RequestHandle;->cancel()V

    .line 1242
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    .line 1245
    :cond_c
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1247
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    .line 1249
    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    .line 1250
    return-void
.end method

.method public cancelled()Z
    .registers 2

    .prologue
    .line 299
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    return v0
.end method

.method public certificate(Landroid/net/http/SslCertificate;)V
    .registers 3
    .parameter "certificate"

    .prologue
    .line 530
    const/16 v0, 0xaa

    invoke-virtual {p0, v0, p1}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 531
    return-void
.end method

.method checkCache(Ljava/util/Map;)Z
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 708
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    invoke-static {v1, v2, v3, p1}, Landroid/webkit/CacheManager;->getCacheFile(Ljava/lang/String;JLjava/util/Map;)Landroid/webkit/CacheManager$CacheResult;

    move-result-object v0

    .line 713
    .local v0, result:Landroid/webkit/CacheManager$CacheResult;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    .line 715
    iput-boolean v4, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    .line 717
    if-eqz v0, :cond_49

    .line 722
    new-instance v1, Landroid/webkit/CacheLoader;

    invoke-direct {v1, p0, v0}, Landroid/webkit/CacheLoader;-><init>(Landroid/webkit/LoadListener;Landroid/webkit/CacheManager$CacheResult;)V

    iput-object v1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    .line 726
    const-string v1, "if-none-match"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    const-string v1, "if-modified-since"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 734
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 735
    iget-object v1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v1}, Landroid/webkit/CacheLoader;->load()V

    .line 742
    :goto_35
    iput-boolean v5, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    move v1, v5

    .line 746
    :goto_38
    return v1

    .line 738
    :cond_39
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v1

    const/16 v2, 0x65

    iget-object v3, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_35

    :cond_49
    move v1, v4

    .line 746
    goto :goto_38
.end method

.method contentLength()J
    .registers 3

    .prologue
    .line 1025
    iget-wide v0, p0, Landroid/webkit/LoadListener;->mContentLength:J

    return-wide v0
.end method

.method public data([BI)V
    .registers 7
    .parameter "data"
    .parameter "length"

    .prologue
    .line 587
    const/4 v0, 0x0

    .line 588
    .local v0, sendMessage:Z
    iget-object v1, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    monitor-enter v1

    .line 589
    :try_start_4
    iget-object v2, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v2}, Landroid/webkit/ByteArrayBuilder;->isEmpty()Z

    move-result v0

    .line 590
    iget-object v2, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, p2}, Landroid/webkit/ByteArrayBuilder;->append([BII)V

    .line 591
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_1d

    .line 592
    if-eqz v0, :cond_1c

    .line 594
    const/16 v1, 0x6e

    invoke-virtual {p0, v1}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 596
    :cond_1c
    return-void

    .line 591
    :catchall_1d
    move-exception v2

    :try_start_1e
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v2
.end method

.method detachRequestHandle()V
    .registers 2

    .prologue
    .line 955
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    .line 956
    return-void
.end method

.method downloadFile()V
    .registers 8

    .prologue
    .line 966
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 970
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/LoadListener;->mHeaders:Landroid/net/http/Headers;

    invoke-virtual {v3}, Landroid/net/http/Headers;->getContentDisposition()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    iget-wide v5, p0, Landroid/webkit/LoadListener;->mContentLength:J

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/CallbackProxy;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    .line 979
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->cancel()V

    .line 980
    return-void
.end method

.method public endData()V
    .registers 2

    .prologue
    .line 608
    const/16 v0, 0x78

    invoke-virtual {p0, v0}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 609
    return-void
.end method

.method public error(ILjava/lang/String;)V
    .registers 5
    .parameter "id"
    .parameter "description"

    .prologue
    .line 555
    const/16 v0, 0x82

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/webkit/LoadListener;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 556
    return-void
.end method

.method getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getFrame()Landroid/webkit/BrowserFrame;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method getWebAddress()Landroid/net/WebAddress;
    .registers 2

    .prologue
    .line 913
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    return-object v0
.end method

.method handleAuthResponse(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "username"
    .parameter "password"

    .prologue
    .line 849
    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    .line 850
    invoke-virtual {p0, p1, p2}, Landroid/webkit/LoadListener;->makeAuthResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    :goto_7
    return-void

    .line 853
    :cond_8
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitLoad()V

    .line 854
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    goto :goto_7
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .parameter "msg"

    .prologue
    .line 188
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_8a

    .line 278
    :cond_5
    :goto_5
    return-void

    .line 195
    :sswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/http/Headers;

    invoke-direct {p0, v3}, Landroid/webkit/LoadListener;->handleHeaders(Landroid/net/http/Headers;)V

    goto :goto_5

    .line 204
    :sswitch_e
    iget v3, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    if-eqz v3, :cond_5

    invoke-direct {p0}, Landroid/webkit/LoadListener;->ignoreCallbacks()Z

    move-result v3

    if-nez v3, :cond_5

    .line 205
    invoke-direct {p0}, Landroid/webkit/LoadListener;->commitLoad()V

    goto :goto_5

    .line 216
    :sswitch_1c
    invoke-direct {p0}, Landroid/webkit/LoadListener;->handleEndData()V

    goto :goto_5

    .line 224
    :sswitch_20
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Landroid/webkit/LoadListener;->handleError(ILjava/lang/String;)V

    goto :goto_5

    .line 233
    :sswitch_2a
    invoke-direct {p0}, Landroid/webkit/LoadListener;->doRedirect()V

    goto :goto_5

    .line 244
    :sswitch_2e
    const/16 v3, 0x8c

    invoke-virtual {p0, v3}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 245
    .local v0, contMsg:Landroid/os/Message;
    const/16 v3, 0x78

    invoke-virtual {p0, v3}, Landroid/webkit/LoadListener;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 246
    .local v2, stopMsg:Landroid/os/Message;
    iget-object v3, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v3}, Landroid/webkit/BrowserFrame;->getCallbackProxy()Landroid/webkit/CallbackProxy;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Landroid/webkit/CallbackProxy;->onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_5

    .line 255
    .end local v0           #contMsg:Landroid/os/Message;
    .end local v2           #stopMsg:Landroid/os/Message;
    :sswitch_44
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    .line 256
    .local v1, status:Ljava/util/HashMap;
    const-string v3, "major"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v3, "minor"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string v3, "code"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string/jumbo v3, "reason"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6, v3}, Landroid/webkit/LoadListener;->handleStatus(IIILjava/lang/String;)V

    goto :goto_5

    .line 267
    .end local v1           #status:Ljava/util/HashMap;
    :sswitch_79
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/http/SslCertificate;

    invoke-direct {p0, v3}, Landroid/webkit/LoadListener;->handleCertificate(Landroid/net/http/SslCertificate;)V

    goto :goto_5

    .line 275
    :sswitch_81
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/http/SslError;

    invoke-direct {p0, v3}, Landroid/webkit/LoadListener;->handleSslError(Landroid/net/http/SslError;)V

    goto/16 :goto_5

    .line 188
    :sswitch_data_8a
    .sparse-switch
        0x64 -> :sswitch_6
        0x6e -> :sswitch_e
        0x78 -> :sswitch_1c
        0x82 -> :sswitch_20
        0x8c -> :sswitch_2a
        0x96 -> :sswitch_2e
        0xa0 -> :sswitch_44
        0xaa -> :sswitch_79
        0xb4 -> :sswitch_81
    .end sparse-switch
.end method

.method public handleSslErrorRequest(Landroid/net/http/SslError;)Z
    .registers 5
    .parameter "error"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 764
    iget-object v0, p0, Landroid/webkit/LoadListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/Network;->getInstance(Landroid/content/Context;)Landroid/webkit/Network;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/webkit/Network;->checkSslPrefTable(Landroid/webkit/LoadListener;Landroid/net/http/SslError;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    .line 782
    :goto_f
    return v0

    .line 769
    :cond_10
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->isSynchronous()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 770
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0, v2}, Landroid/net/http/RequestHandle;->handleSslErrorResponse(Z)V

    move v0, v1

    .line 771
    goto :goto_f

    .line 773
    :cond_1d
    const/16 v0, 0xb4

    invoke-virtual {p0, v0, p1}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 779
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v0, :cond_2e

    .line 780
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    iput-object v0, p0, Landroid/webkit/LoadListener;->mSslErrorRequestHandle:Landroid/net/http/RequestHandle;

    .line 782
    :cond_2e
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-nez v0, :cond_34

    move v0, v1

    goto :goto_f

    :cond_34
    move v0, v2

    goto :goto_f
.end method

.method handleSslErrorResponse(Z)V
    .registers 3
    .parameter "proceed"

    .prologue
    .line 830
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_9

    .line 831
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0, p1}, Landroid/net/http/RequestHandle;->handleSslErrorResponse(Z)V

    .line 833
    :cond_9
    if-nez p1, :cond_13

    .line 834
    iget-object v0, p0, Landroid/webkit/LoadListener;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->stopLoading()V

    .line 835
    invoke-virtual {p0}, Landroid/webkit/LoadListener;->tearDown()V

    .line 837
    :cond_13
    return-void
.end method

.method public headers(Landroid/net/http/Headers;)V
    .registers 7
    .parameter "headers"

    .prologue
    .line 311
    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    if-eqz v2, :cond_5

    .line 317
    :goto_4
    return-void

    .line 312
    :cond_5
    invoke-virtual {p1}, Landroid/net/http/Headers;->getSetCookie()Ljava/util/ArrayList;

    move-result-object v0

    .line 313
    .local v0, cookies:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 314
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/webkit/CookieManager;->setCookie(Landroid/net/WebAddress;Ljava/lang/String;)V

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 316
    :cond_22
    const/16 v2, 0x64

    invoke-virtual {p0, v2, p1}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    goto :goto_4
.end method

.method host()Ljava/lang/String;
    .registers 2

    .prologue
    .line 920
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    if-eqz v0, :cond_b

    .line 921
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    invoke-virtual {v0}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 924
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method isSynchronous()Z
    .registers 2

    .prologue
    .line 292
    iget-boolean v0, p0, Landroid/webkit/LoadListener;->mSynchronous:Z

    return v0
.end method

.method loadSynchronousMessages()V
    .registers 3

    .prologue
    .line 1620
    :goto_0
    iget-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1621
    iget-object v0, p0, Landroid/webkit/LoadListener;->mMessageQueue:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {p0, v0}, Landroid/webkit/LoadListener;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1623
    :cond_15
    return-void
.end method

.method makeAuthResponse(Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "username"
    .parameter "password"

    .prologue
    .line 859
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-nez v0, :cond_9

    .line 885
    :cond_8
    :goto_8
    return-void

    .line 863
    :cond_9
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0, p1}, Landroid/net/http/HttpAuthHeader;->setUsername(Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0, p2}, Landroid/net/http/HttpAuthHeader;->setPassword(Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getScheme()I

    move-result v9

    .line 867
    .local v9, scheme:I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_28

    .line 869
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v1

    .line 871
    .local v1, isProxy:Z
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/http/RequestHandle;->setupBasicAuthResponse(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 872
    .end local v1           #isProxy:Z
    :cond_28
    const/4 v0, 0x2

    if-ne v9, v0, :cond_8

    .line 874
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v1

    .line 876
    .restart local v1       #isProxy:Z
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getRealm()Ljava/lang/String;

    move-result-object v4

    .line 877
    .local v4, realm:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getNonce()Ljava/lang/String;

    move-result-object v5

    .line 878
    .local v5, nonce:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getQop()Ljava/lang/String;

    move-result-object v6

    .line 879
    .local v6, qop:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    .line 880
    .local v7, algorithm:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getOpaque()Ljava/lang/String;

    move-result-object v8

    .line 882
    .local v8, opaque:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v8}, Landroid/net/http/RequestHandle;->setupDigestAuthResponse(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method mimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1010
    iget-object v0, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method notifyError()V
    .registers 4

    .prologue
    .line 1207
    iget v1, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    if-eqz v1, :cond_1a

    .line 1208
    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorDescription()Ljava/lang/String;

    move-result-object v0

    .line 1209
    .local v0, description:Ljava/lang/String;
    if-nez v0, :cond_c

    const-string v0, ""

    .line 1210
    :cond_c
    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorID()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/LoadListener;->url()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Landroid/webkit/LoadListener;->nativeError(ILjava/lang/String;Ljava/lang/String;)V

    .line 1211
    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    .line 1213
    .end local v0           #description:Ljava/lang/String;
    :cond_1a
    return-void
.end method

.method originalUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 931
    iget-object v0, p0, Landroid/webkit/LoadListener;->mOriginalUrl:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 932
    iget-object v0, p0, Landroid/webkit/LoadListener;->mOriginalUrl:Ljava/lang/String;

    .line 934
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    goto :goto_6
.end method

.method parseContentTypeHeader(Ljava/lang/String;)V
    .registers 9
    .parameter "contentType"

    .prologue
    const/16 v6, 0x3b

    const/4 v5, 0x1

    .line 1401
    if-eqz p1, :cond_6c

    .line 1402
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1403
    .local v1, i:I
    if-ltz v1, :cond_7e

    .line 1404
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 1406
    const/16 v4, 0x3d

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 1407
    .local v2, j:I
    if-lez v2, :cond_75

    .line 1408
    invoke-virtual {p1, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1409
    if-ge v1, v2, :cond_24

    .line 1410
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1412
    :cond_24
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    .line 1417
    :goto_2c
    iget-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    .line 1419
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    if-ge v1, v4, :cond_4f

    .line 1423
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mTransferEncoding:Ljava/lang/String;

    .line 1431
    .end local v2           #j:I
    :cond_4f
    :goto_4f
    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 1434
    :try_start_57
    sget-object v4, Landroid/webkit/LoadListener;->CONTENT_TYPE_PATTERN:Ljava/util/regex/Pattern;

    iget-object v5, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1435
    .local v3, m:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 1436
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;
    :try_end_6c
    .catch Ljava/lang/IllegalStateException; {:try_start_57 .. :try_end_6c} :catch_85

    .line 1445
    .end local v1           #i:I
    .end local v3           #m:Ljava/util/regex/Matcher;
    :cond_6c
    :goto_6c
    iget-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 1446
    return-void

    .line 1414
    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_75
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    goto :goto_2c

    .line 1427
    .end local v2           #j:I
    :cond_7e
    iput-object p1, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    goto :goto_4f

    .line 1438
    .restart local v3       #m:Ljava/util/regex/Matcher;
    :cond_81
    :try_start_81
    invoke-direct {p0}, Landroid/webkit/LoadListener;->guessMimeType()V
    :try_end_84
    .catch Ljava/lang/IllegalStateException; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_6c

    .line 1440
    .end local v3           #m:Ljava/util/regex/Matcher;
    :catch_85
    move-exception v4

    move-object v0, v4

    .line 1441
    .local v0, ex:Ljava/lang/IllegalStateException;
    invoke-direct {p0}, Landroid/webkit/LoadListener;->guessMimeType()V

    goto :goto_6c
.end method

.method pauseLoad(Z)V
    .registers 3
    .parameter "pause"

    .prologue
    .line 1220
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    if-eqz v0, :cond_9

    .line 1221
    iget-object v0, p0, Landroid/webkit/LoadListener;->mRequestHandle:Landroid/net/http/RequestHandle;

    invoke-virtual {v0, p1}, Landroid/net/http/RequestHandle;->pauseRequest(Z)V

    .line 1223
    :cond_9
    return-void
.end method

.method postIdentifier()J
    .registers 3

    .prologue
    .line 939
    iget-wide v0, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    return-wide v0
.end method

.method proxyAuthenticate()Z
    .registers 2

    .prologue
    .line 471
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-eqz v0, :cond_b

    .line 472
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->isProxy()Z

    move-result v0

    .line 475
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method realm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 800
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    if-nez v0, :cond_6

    .line 801
    const/4 v0, 0x0

    .line 803
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/webkit/LoadListener;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    invoke-virtual {v0}, Landroid/net/http/HttpAuthHeader;->getRealm()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method resetCancel()V
    .registers 2

    .prologue
    .line 1006
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mCancelled:Z

    .line 1007
    return-void
.end method

.method setCacheLoader(Landroid/webkit/CacheLoader;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 696
    iput-object p1, p0, Landroid/webkit/LoadListener;->mCacheLoader:Landroid/webkit/CacheLoader;

    .line 697
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/LoadListener;->mFromCache:Z

    .line 698
    return-void
.end method

.method setRequestData(Ljava/lang/String;Ljava/util/Map;[B)V
    .registers 4
    .parameter "method"
    .parameter
    .parameter "postData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 897
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/webkit/LoadListener;->mMethod:Ljava/lang/String;

    .line 898
    iput-object p2, p0, Landroid/webkit/LoadListener;->mRequestHeaders:Ljava/util/Map;

    .line 899
    iput-object p3, p0, Landroid/webkit/LoadListener;->mPostData:[B

    .line 900
    return-void
.end method

.method setUrl(Ljava/lang/String;)V
    .registers 5
    .parameter "url"

    .prologue
    .line 1543
    if-eqz p1, :cond_1a

    .line 1544
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;

    .line 1545
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1546
    invoke-static {p1}, Landroid/webkit/URLUtil;->stripAnchor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    .line 1548
    :try_start_11
    new-instance v1, Landroid/net/WebAddress;

    iget-object v2, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/webkit/LoadListener;->mUri:Landroid/net/WebAddress;
    :try_end_1a
    .catch Landroid/net/ParseException; {:try_start_11 .. :try_end_1a} :catch_1b

    .line 1556
    :cond_1a
    :goto_1a
    return-void

    .line 1549
    :catch_1b
    move-exception v1

    move-object v0, v1

    .line 1550
    .local v0, e:Landroid/net/ParseException;
    invoke-virtual {v0}, Landroid/net/ParseException;->printStackTrace()V

    goto :goto_1a

    .line 1553
    .end local v0           #e:Landroid/net/ParseException;
    :cond_21
    iput-object p1, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    goto :goto_1a
.end method

.method sslError()Landroid/net/http/SslError;
    .registers 2

    .prologue
    .line 822
    iget-object v0, p0, Landroid/webkit/LoadListener;->mSslError:Landroid/net/http/SslError;

    return-object v0
.end method

.method public status(IIILjava/lang/String;)V
    .registers 8
    .parameter "majorVersion"
    .parameter "minorVersion"
    .parameter "code"
    .parameter "reasonPhrase"

    .prologue
    .line 493
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 494
    .local v0, status:Ljava/util/HashMap;
    const-string v1, "major"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string v1, "minor"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string v1, "code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    iget-object v1, p0, Landroid/webkit/LoadListener;->mDataBuilder:Landroid/webkit/ByteArrayBuilder;

    invoke-virtual {v1}, Landroid/webkit/ByteArrayBuilder;->clear()V

    .line 500
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/LoadListener;->mMimeType:Ljava/lang/String;

    .line 501
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/LoadListener;->mEncoding:Ljava/lang/String;

    .line 502
    const-string v1, ""

    iput-object v1, p0, Landroid/webkit/LoadListener;->mTransferEncoding:Ljava/lang/String;

    .line 503
    const/16 v1, 0xa0

    invoke-virtual {p0, v1, v0}, Landroid/webkit/LoadListener;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/webkit/LoadListener;->sendMessageInternal(Landroid/os/Message;)V

    .line 504
    return-void
.end method

.method tearDown()V
    .registers 5

    .prologue
    .line 1164
    invoke-direct {p0}, Landroid/webkit/LoadListener;->getErrorID()I

    move-result v2

    if-nez v2, :cond_3f

    .line 1165
    new-instance v1, Landroid/webkit/WebViewWorker$CacheSaveData;

    invoke-direct {v1}, Landroid/webkit/WebViewWorker$CacheSaveData;-><init>()V

    .line 1166
    .local v1, data:Landroid/webkit/WebViewWorker$CacheSaveData;
    iput-object p0, v1, Landroid/webkit/WebViewWorker$CacheSaveData;->mListener:Landroid/webkit/LoadListener;

    .line 1167
    iget-object v2, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    iput-object v2, v1, Landroid/webkit/WebViewWorker$CacheSaveData;->mUrl:Ljava/lang/String;

    .line 1168
    iget-wide v2, p0, Landroid/webkit/LoadListener;->mPostIdentifier:J

    iput-wide v2, v1, Landroid/webkit/WebViewWorker$CacheSaveData;->mPostId:J

    .line 1169
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    const/16 v3, 0x6a

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1175
    .end local v1           #data:Landroid/webkit/WebViewWorker$CacheSaveData;
    :goto_22
    iget v2, p0, Landroid/webkit/LoadListener;->mNativeLoader:I

    if-eqz v2, :cond_3e

    .line 1176
    new-instance v0, Landroid/webkit/PerfChecker;

    invoke-direct {v0}, Landroid/webkit/PerfChecker;-><init>()V

    .line 1177
    .local v0, checker:Landroid/webkit/PerfChecker;
    iget-boolean v2, p0, Landroid/webkit/LoadListener;->mSetNativeResponse:Z

    if-nez v2, :cond_32

    .line 1178
    invoke-direct {p0}, Landroid/webkit/LoadListener;->setNativeResponse()V

    .line 1181
    :cond_32
    invoke-direct {p0}, Landroid/webkit/LoadListener;->nativeFinished()V

    .line 1182
    const-string/jumbo v2, "res nativeFinished"

    invoke-virtual {v0, v2}, Landroid/webkit/PerfChecker;->responseAlert(Ljava/lang/String;)V

    .line 1183
    invoke-direct {p0}, Landroid/webkit/LoadListener;->clearNativeLoader()V

    .line 1185
    .end local v0           #checker:Landroid/webkit/PerfChecker;
    :cond_3e
    return-void

    .line 1172
    :cond_3f
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v2

    const/16 v3, 0x6b

    invoke-virtual {v2, v3, p0}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_22
.end method

.method transferEncoding()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1014
    iget-object v0, p0, Landroid/webkit/LoadListener;->mTransferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method url()Ljava/lang/String;
    .registers 2

    .prologue
    .line 906
    iget-object v0, p0, Landroid/webkit/LoadListener;->mUrl:Ljava/lang/String;

    return-object v0
.end method
