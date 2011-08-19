.class public Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored;
.super Lorg/apache/http/entity/mime/MultipartEntity;
.source "HttpMultipartEntityMonitored.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "HttpMultipartEntityMonitored"


# instance fields
.field private m_outputstream:Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored;->m_outputstream:Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;

    .line 126
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/entity/mime/HttpMultipartMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;)V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored;->m_outputstream:Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;

    .line 130
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 1
    .parameter "mode"
    .parameter "boundary"
    .parameter "charset"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored;->m_outputstream:Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;

    .line 135
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored;->m_outputstream:Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;

    invoke-virtual {p0}, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored;->getContentLength()J

    move-result-wide v1

    invoke-direct {v0, p0, p1, v1, v2}, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;-><init>(Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored;Ljava/io/OutputStream;J)V

    iput-object v0, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored;->m_outputstream:Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;

    .line 143
    :cond_0
    iget-object v0, p0, Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored;->m_outputstream:Lnet/yostore/aws/model/http/HttpMultipartEntityMonitored$OutputStreamMonitored;

    invoke-super {p0, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 144
    return-void
.end method
