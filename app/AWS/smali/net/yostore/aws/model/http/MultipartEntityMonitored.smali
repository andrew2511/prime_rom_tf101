.class public Lnet/yostore/aws/model/http/MultipartEntityMonitored;
.super Lorg/apache/http/entity/mime/MultipartEntity;
.source "MultipartEntityMonitored.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "MultipartEntityMonitored"


# instance fields
.field private m_broadcast_intent:Landroid/content/Intent;

.field private m_context:Landroid/content/Context;

.field private m_outputstream:Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;

.field private m_upid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "upid"

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-direct {p0}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 173
    iput-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->m_outputstream:Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;

    .line 174
    iput-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->m_broadcast_intent:Landroid/content/Intent;

    .line 175
    iput-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->m_context:Landroid/content/Context;

    .line 176
    iput-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->m_upid:Ljava/lang/String;

    .line 147
    iput-object p1, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->m_context:Landroid/content/Context;

    .line 148
    iput-object p2, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->m_upid:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/entity/mime/HttpMultipartMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, p1}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;)V

    .line 173
    iput-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->m_outputstream:Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;

    .line 174
    iput-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->m_broadcast_intent:Landroid/content/Intent;

    .line 175
    iput-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->m_context:Landroid/content/Context;

    .line 176
    iput-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->m_upid:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 1
    .parameter "mode"
    .parameter "boundary"
    .parameter "charset"

    .prologue
    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 173
    iput-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->m_outputstream:Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;

    .line 174
    iput-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->m_broadcast_intent:Landroid/content/Intent;

    .line 175
    iput-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->m_context:Landroid/content/Context;

    .line 176
    iput-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->m_upid:Ljava/lang/String;

    .line 158
    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->m_upid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->m_broadcast_intent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lnet/yostore/aws/model/http/MultipartEntityMonitored;)Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;
    .locals 1
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->m_outputstream:Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;

    return-object v0
.end method

.method static synthetic access$4(Lnet/yostore/aws/model/http/MultipartEntityMonitored;Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->m_outputstream:Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;

    return-void
.end method

.method static synthetic access$5(Lnet/yostore/aws/model/http/MultipartEntityMonitored;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->m_broadcast_intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected cancelUpload()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/yostore/aws/api/exception/HttpException;
        }
    .end annotation

    .prologue
    .line 172
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    sget-object v0, Lnet/yostore/aws/service/AWSService;->uploadingItem:Lnet/yostore/aws/sqlite/entity/UploadItem;

    if-eqz v0, :cond_1

    sget-boolean v0, Lnet/yostore/aws/service/AWSService;->isUploading:Z

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->m_outputstream:Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;

    invoke-virtual {p0}, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->getContentLength()J

    move-result-wide v1

    invoke-direct {v0, p0, p1, v1, v2}, Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;-><init>(Lnet/yostore/aws/model/http/MultipartEntityMonitored;Ljava/io/OutputStream;J)V

    iput-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->m_outputstream:Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;

    .line 167
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->m_outputstream:Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;

    invoke-super {p0, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/model/http/MultipartEntityMonitored;->m_outputstream:Lnet/yostore/aws/model/http/MultipartEntityMonitored$OutputStreamMonitored;

    goto :goto_0
.end method
