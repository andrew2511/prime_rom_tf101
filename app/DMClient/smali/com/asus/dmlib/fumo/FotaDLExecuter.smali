.class public Lcom/asus/dmlib/fumo/FotaDLExecuter;
.super Ljava/lang/Object;
.source "FotaDLExecuter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dmlib/fumo/FotaDLExecuter$1;,
        Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;,
        Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;,
        Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;
    }
.end annotation


# static fields
.field private static final PREF_FOMO_STATUS:Ljava/lang/String; = "FUMOStatus"

.field private static final TAG:Ljava/lang/String; = "FOTADLHandler"


# instance fields
.field private currentStatus:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

.field private mDD:Lcom/asus/dmlib/vdm/DownloadDescriptor;

.field private mDownloadUri:Ljava/lang/String;

.field private mFumoHandler:Lcom/asus/dmlib/vdm/fumo/FumoHandler;

.field private mHandleType:Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

.field private mHandler:Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;

.field private mRootUri:Ljava/lang/String;

.field private mStateUri:Ljava/lang/String;

.field private mTaskScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

.field private mTree:Lcom/asus/dmlib/tree/DMTree;

.field private mVdmFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/asus/dmlib/vdm/fumo/VdmFumo;Lcom/asus/dmlib/vdm/fumo/FumoHandler;)V
    .locals 3
    .parameter "pRootUri"
    .parameter "pVdmFumo"
    .parameter "pFumoHandler"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mDD:Lcom/asus/dmlib/vdm/DownloadDescriptor;

    .line 62
    sget-object v0, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->READY_TO_FOTA:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    iput-object v0, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->currentStatus:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    .line 69
    iput-object p1, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mRootUri:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mFumoHandler:Lcom/asus/dmlib/vdm/fumo/FumoHandler;

    .line 71
    iput-object p2, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mVdmFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    .line 72
    invoke-static {}, Lcom/asus/dmlib/vdm/TaskScheduler;->getInstance()Lcom/asus/dmlib/vdm/TaskScheduler;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mTaskScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

    .line 73
    new-instance v0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;

    iget-object v1, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mTaskScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/TaskScheduler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;-><init>(Lcom/asus/dmlib/fumo/FotaDLExecuter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mHandler:Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mRootUri:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mRootUri:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "State"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mStateUri:Ljava/lang/String;

    .line 75
    invoke-static {}, Lcom/asus/dmlib/tree/DMTree;->getDMTree()Lcom/asus/dmlib/tree/DMTree;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mTree:Lcom/asus/dmlib/tree/DMTree;

    .line 76
    return-void

    .line 74
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mRootUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/asus/dmlib/fumo/FotaDLExecuter;)Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->currentStatus:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    return-object v0
.end method

.method static synthetic access$002(Lcom/asus/dmlib/fumo/FotaDLExecuter;Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;)Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->currentStatus:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    return-object p1
.end method

.method static synthetic access$100(Lcom/asus/dmlib/fumo/FotaDLExecuter;)Lcom/asus/dmlib/vdm/fumo/VdmFumo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mVdmFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/asus/dmlib/fumo/FotaDLExecuter;)Lcom/asus/dmlib/vdm/DownloadDescriptor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mDD:Lcom/asus/dmlib/vdm/DownloadDescriptor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/asus/dmlib/fumo/FotaDLExecuter;)Lcom/asus/dmlib/vdm/TaskScheduler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mTaskScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/asus/dmlib/fumo/FotaDLExecuter;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->getDeltaFromServer()V

    return-void
.end method

.method private getDDFromServer()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 100
    .local v0, ddUrl:Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mTree:Lcom/asus/dmlib/tree/DMTree;

    iget-object v7, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mDownloadUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/asus/dmlib/tree/DMTree;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string v6, "FOTADLHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ddUrl = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v2, Lcom/asus/dmlib/transport/HttpLinkChannel;

    invoke-direct {v2}, Lcom/asus/dmlib/transport/HttpLinkChannel;-><init>()V

    .line 103
    .local v2, http:Lcom/asus/dmlib/transport/HttpLinkChannel;
    invoke-virtual {v2, v0}, Lcom/asus/dmlib/transport/HttpLinkChannel;->requestOMADD(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 104
    .local v5, resp:Lorg/apache/http/HttpResponse;
    if-eqz v5, :cond_0

    .line 105
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 106
    .local v3, is:Ljava/io/InputStream;
    new-instance v4, Lcom/asus/dmlib/fumo/DDParser;

    invoke-direct {v4}, Lcom/asus/dmlib/fumo/DDParser;-><init>()V

    .line 107
    .local v4, parser:Lcom/asus/dmlib/fumo/DDParser;
    invoke-virtual {v4, v3}, Lcom/asus/dmlib/fumo/DDParser;->parse(Ljava/io/InputStream;)Lcom/asus/dmlib/vdm/DownloadDescriptor;

    move-result-object v6

    iput-object v6, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mDD:Lcom/asus/dmlib/vdm/DownloadDescriptor;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2

    .line 122
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #parser:Lcom/asus/dmlib/fumo/DDParser;
    :cond_0
    return-void

    .line 109
    .end local v2           #http:Lcom/asus/dmlib/transport/HttpLinkChannel;
    .end local v5           #resp:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 110
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 111
    new-instance v6, Lcom/asus/dmlib/vdm/VdmException;

    const-string v7, "encounter ClientProtocolException"

    sget-object v8, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_COMMS_BAD_PROTOCOL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-direct {v6, v7, v8}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;)V

    throw v6

    .line 113
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 114
    .local v1, e:Ljava/io/IOException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 115
    new-instance v6, Lcom/asus/dmlib/vdm/VdmException;

    const-string v7, "encounter IOException"

    sget-object v8, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_COMMS_FATAL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-direct {v6, v7, v8}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;)V

    throw v6

    .line 117
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v6

    move-object v1, v6

    .line 118
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 119
    new-instance v6, Lcom/asus/dmlib/vdm/VdmException;

    const-string v7, "encounter XmlPullParserException"

    sget-object v8, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_BAD_DD:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-direct {v6, v7, v8}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;)V

    throw v6
.end method

.method private getDeltaFromServer()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mDD:Lcom/asus/dmlib/vdm/DownloadDescriptor;

    if-nez v3, :cond_0

    .line 127
    const-string v3, "FOTADLHandler"

    const-string v4, "DD is null"

    invoke-static {v3, v4}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object v3, Lcom/asus/dmlib/vdm/fumo/FumoState;->DOWNLOAD_FAILED:Lcom/asus/dmlib/vdm/fumo/FumoState;

    invoke-virtual {p0, v3}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->setFumoState(Lcom/asus/dmlib/vdm/fumo/FumoState;)V

    .line 129
    iget-object v3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mTaskScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    sget-object v5, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_BAD_DD:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-virtual {v3, v4, v5}, Lcom/asus/dmlib/vdm/TaskScheduler;->onFinishDL(Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;)V

    .line 162
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v2, Lcom/asus/dmlib/transport/HttpLinkChannel;

    invoke-direct {v2}, Lcom/asus/dmlib/transport/HttpLinkChannel;-><init>()V

    .line 136
    .local v2, http:Lcom/asus/dmlib/transport/HttpLinkChannel;
    iget-object v3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mDD:Lcom/asus/dmlib/vdm/DownloadDescriptor;

    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getStorage()Lcom/asus/dmlib/vdm/PLStorage;

    move-result-object v4

    sget-object v5, Lcom/asus/dmlib/vdm/PLStorage$ItemType;->FUMODELTA:Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    invoke-virtual {v2, v3, v4, v5}, Lcom/asus/dmlib/transport/HttpLinkChannel;->requestDownload(Lcom/asus/dmlib/vdm/DownloadDescriptor;Lcom/asus/dmlib/vdm/PLStorage;Lcom/asus/dmlib/vdm/PLStorage$ItemType;)I

    move-result v0

    .line 137
    .local v0, downloadStatus:I
    if-nez v0, :cond_2

    .line 138
    sget-object v3, Lcom/asus/dmlib/vdm/fumo/FumoState;->DOWNLOAD_COMPLETE:Lcom/asus/dmlib/vdm/fumo/FumoState;

    invoke-virtual {p0, v3}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->setFumoState(Lcom/asus/dmlib/vdm/fumo/FumoState;)V

    .line 140
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getRegistry()Lcom/asus/dmlib/vdm/PLRegistry;

    move-result-object v3

    sget-object v4, Lcom/asus/dmlib/fumo/FumoExecHandler;->PREF_FOTA_HANDLE_TYPE:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/asus/dmlib/vdm/PLRegistry;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, execType:Ljava/lang/String;
    const-string v3, "DOWNLOAD_AND_UPDATE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    sget-object v3, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->CONFIRM_UPDATE:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    invoke-virtual {p0, v3}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->setStatus(Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;)V

    .line 146
    :cond_1
    iget-object v3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mTaskScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->COMPLETE:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    sget-object v5, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_CODE_OK:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-virtual {v3, v4, v5}, Lcom/asus/dmlib/vdm/TaskScheduler;->onFinishDL(Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;)V

    goto :goto_0

    .line 147
    .end local v1           #execType:Ljava/lang/String;
    :cond_2
    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 148
    sget-object v3, Lcom/asus/dmlib/vdm/fumo/FumoState;->DOWNLOAD_FAILED:Lcom/asus/dmlib/vdm/fumo/FumoState;

    invoke-virtual {p0, v3}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->setFumoState(Lcom/asus/dmlib/vdm/fumo/FumoState;)V

    .line 149
    iget-object v3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mTaskScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    sget-object v5, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_BAD_URL:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-virtual {v3, v4, v5}, Lcom/asus/dmlib/vdm/TaskScheduler;->onFinishDL(Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;)V

    goto :goto_0

    .line 151
    :cond_3
    const/4 v3, -0x2

    if-ne v0, v3, :cond_4

    .line 152
    sget-object v3, Lcom/asus/dmlib/vdm/fumo/FumoState;->DOWNLOAD_FAILED:Lcom/asus/dmlib/vdm/fumo/FumoState;

    invoke-virtual {p0, v3}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->setFumoState(Lcom/asus/dmlib/vdm/fumo/FumoState;)V

    .line 153
    iget-object v3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mTaskScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    sget-object v5, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_MAX_DL_TIMES_EXPIRE:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-virtual {v3, v4, v5}, Lcom/asus/dmlib/vdm/TaskScheduler;->onFinishDL(Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;)V

    goto :goto_0

    .line 157
    :cond_4
    sget-object v3, Lcom/asus/dmlib/vdm/fumo/FumoState;->DOWNLOAD_FAILED:Lcom/asus/dmlib/vdm/fumo/FumoState;

    invoke-virtual {p0, v3}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->setFumoState(Lcom/asus/dmlib/vdm/fumo/FumoState;)V

    .line 158
    iget-object v3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mTaskScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    sget-object v5, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_ABORT:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-virtual {v3, v4, v5}, Lcom/asus/dmlib/vdm/TaskScheduler;->onFinishDL(Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;)V

    goto :goto_0
.end method


# virtual methods
.method abortFotaDL()V
    .locals 4

    .prologue
    .line 300
    sget-object v1, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->READY_TO_FOTA:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    iput-object v1, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->currentStatus:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    .line 301
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getRegistry()Lcom/asus/dmlib/vdm/PLRegistry;

    move-result-object v1

    const-string v2, "FUMOStatus"

    iget-object v3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->currentStatus:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    invoke-virtual {v3}, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->ordinal()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/asus/dmlib/vdm/PLRegistry;->setIntValue(Ljava/lang/String;I)V

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mVdmFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    sget-object v2, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->PACKAGE_MISMATCH:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    invoke-virtual {v1, v2}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->triggerReportSession(Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 305
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public findStatus()Z
    .locals 3

    .prologue
    .line 288
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getRegistry()Lcom/asus/dmlib/vdm/PLRegistry;

    move-result-object v1

    const-string v2, "FUMOStatus"

    invoke-interface {v1, v2}, Lcom/asus/dmlib/vdm/PLRegistry;->getIntValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 289
    .local v0, status:I
    sget-object v1, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->CONFIRM_DOWNLOAD:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    invoke-virtual {v1}, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 290
    sget-object v1, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->CONFIRM_DOWNLOAD:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    invoke-virtual {p0, v1}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->setStatus(Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;)V

    .line 296
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 291
    :cond_0
    sget-object v1, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->DOWNLOADING:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    invoke-virtual {v1}, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 292
    sget-object v1, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->DOWNLOADING:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    invoke-virtual {p0, v1}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->setStatus(Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;)V

    goto :goto_0

    .line 294
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getDD()Lcom/asus/dmlib/vdm/DownloadDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mDD:Lcom/asus/dmlib/vdm/DownloadDescriptor;

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->getDDFromServer()V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mDD:Lcom/asus/dmlib/vdm/DownloadDescriptor;

    return-object v0
.end method

.method public onConfirmDownload(Lcom/asus/dmlib/vdm/DownloadDescriptor;)V
    .locals 3
    .parameter "pDownloadDescriptor"

    .prologue
    .line 251
    iget-object v1, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mFumoHandler:Lcom/asus/dmlib/vdm/fumo/FumoHandler;

    iget-object v2, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mVdmFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    invoke-interface {v1, p1, v2}, Lcom/asus/dmlib/vdm/fumo/FumoHandler;->confirmDownload(Lcom/asus/dmlib/vdm/DownloadDescriptor;Lcom/asus/dmlib/vdm/fumo/VdmFumo;)Z

    move-result v0

    .line 252
    .local v0, download:Z
    if-eqz v0, :cond_0

    .line 253
    sget-object v1, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->DOWNLOADING:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    invoke-virtual {p0, v1}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->setStatus(Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;)V

    .line 255
    :cond_0
    return-void
.end method

.method public onConfirmUpgrade()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mFumoHandler:Lcom/asus/dmlib/vdm/fumo/FumoHandler;

    iget-object v1, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mVdmFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    invoke-interface {v0, v1}, Lcom/asus/dmlib/vdm/fumo/FumoHandler;->confirmUpdate(Lcom/asus/dmlib/vdm/fumo/VdmFumo;)Z

    .line 259
    return-void
.end method

.method public onExecuteUpdate()V
    .locals 6

    .prologue
    .line 262
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getDownloadPkg()Lcom/asus/dmlib/vdm/PLDlPkg;

    move-result-object v4

    const-string v5, "dlpkg"

    invoke-interface {v4, v5}, Lcom/asus/dmlib/vdm/PLDlPkg;->getFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, updatePkgPath:Ljava/lang/String;
    iget-object v4, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mFumoHandler:Lcom/asus/dmlib/vdm/fumo/FumoHandler;

    iget-object v5, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mVdmFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    invoke-interface {v4, v3, v5}, Lcom/asus/dmlib/vdm/fumo/FumoHandler;->executeUpdate(Ljava/lang/String;Lcom/asus/dmlib/vdm/fumo/VdmFumo;)Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult;

    move-result-object v2

    .line 265
    .local v2, result:Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult;
    :try_start_0
    sget-object v4, Lcom/asus/dmlib/fumo/FotaDLExecuter$1;->$SwitchMap$com$asus$dmlib$vdm$fumo$VdmFumoUpdateResult$ResultCode:[I

    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult;->getfumoResult()Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 270
    sget-object v4, Lcom/asus/dmlib/vdm/fumo/FumoState;->UPDATE_FAILED_NO_DATA:Lcom/asus/dmlib/vdm/fumo/FumoState;

    invoke-virtual {p0, v4}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->setFumoState(Lcom/asus/dmlib/vdm/fumo/FumoState;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :goto_0
    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult;->getSynchronousUpdate()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 280
    :try_start_1
    iget-object v4, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mVdmFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    invoke-virtual {v2}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult;->getfumoResult()Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->triggerReportSession(Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;)V
    :try_end_1
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 285
    :cond_0
    :goto_1
    return-void

    .line 267
    :pswitch_0
    :try_start_2
    sget-object v4, Lcom/asus/dmlib/vdm/fumo/FumoState;->UPDATE_SUCCESSFUL_HAVE_DATA:Lcom/asus/dmlib/vdm/fumo/FumoState;

    invoke-virtual {p0, v4}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->setFumoState(Lcom/asus/dmlib/vdm/fumo/FumoState;)V
    :try_end_2
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 273
    .local v1, e1:Lcom/asus/dmlib/vdm/VdmException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 281
    .end local v1           #e1:Lcom/asus/dmlib/vdm/VdmException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 282
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setFumoState(Lcom/asus/dmlib/vdm/fumo/FumoState;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 312
    :try_start_0
    const-string v1, "FOTADLHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFumoState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/asus/dmlib/vdm/fumo/FumoState;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mTree:Lcom/asus/dmlib/tree/DMTree;

    iget-object v2, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mStateUri:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/asus/dmlib/vdm/fumo/FumoState;->val()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/asus/dmlib/tree/DMTree;->replaceIntValue(Ljava/lang/String;I)V

    .line 314
    iget-object v1, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mTree:Lcom/asus/dmlib/tree/DMTree;

    invoke-virtual {v1}, Lcom/asus/dmlib/tree/DMTree;->writeToPersistentStorage()V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 316
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setHandleType(Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;)V
    .locals 3
    .parameter "handleType"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mHandleType:Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    .line 80
    iget-object v0, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mHandleType:Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    sget-object v1, Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;->DOWNLOAD:Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    if-ne v0, v1, :cond_2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mRootUri:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mRootUri:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Download/PkgURL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mDownloadUri:Ljava/lang/String;

    .line 87
    :cond_0
    :goto_1
    return-void

    .line 81
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mRootUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mHandleType:Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    sget-object v1, Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;->DOWNLOAD_AND_UPDATE:Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    if-ne v0, v1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mRootUri:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mRootUri:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DownloadAndUpdate/PkgURL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mDownloadUri:Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mRootUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public setStatus(Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;)V
    .locals 4
    .parameter "status"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter;->mHandler:Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;

    invoke-virtual {p1}, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->ordinal()I

    move-result v1

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 248
    return-void
.end method
