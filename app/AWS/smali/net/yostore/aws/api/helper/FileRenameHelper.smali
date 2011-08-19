.class public Lnet/yostore/aws/api/helper/FileRenameHelper;
.super Lnet/yostore/aws/api/helper/BaseHelper;
.source "FileRenameHelper.java"


# instance fields
.field private display:Ljava/lang/String;

.field private fileid:Ljava/lang/String;

.field private isencrypted:Z

.field private issharing:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0
    .parameter "fileid"
    .parameter "isencrypted"
    .parameter "issharing"
    .parameter "display"

    .prologue
    .line 22
    invoke-direct {p0}, Lnet/yostore/aws/api/helper/BaseHelper;-><init>()V

    .line 23
    iput-object p1, p0, Lnet/yostore/aws/api/helper/FileRenameHelper;->fileid:Ljava/lang/String;

    .line 24
    iput-boolean p2, p0, Lnet/yostore/aws/api/helper/FileRenameHelper;->isencrypted:Z

    .line 25
    iput-boolean p3, p0, Lnet/yostore/aws/api/helper/FileRenameHelper;->issharing:Z

    .line 26
    iput-object p4, p0, Lnet/yostore/aws/api/helper/FileRenameHelper;->display:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method protected doApi(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 8
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
    .line 32
    new-instance v0, Lnet/yostore/aws/api/entity/FileRenameRequest;

    .line 33
    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 34
    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    .line 35
    iget-object v3, p0, Lnet/yostore/aws/api/helper/FileRenameHelper;->fileid:Ljava/lang/String;

    .line 36
    iget-boolean v4, p0, Lnet/yostore/aws/api/helper/FileRenameHelper;->isencrypted:Z

    .line 37
    iget-boolean v5, p0, Lnet/yostore/aws/api/helper/FileRenameHelper;->issharing:Z

    .line 38
    iget-object v6, p0, Lnet/yostore/aws/api/helper/FileRenameHelper;->display:Ljava/lang/String;

    .line 32
    invoke-direct/range {v0 .. v6}, Lnet/yostore/aws/api/entity/FileRenameRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 41
    .local v0, request:Lnet/yostore/aws/api/entity/FileRenameRequest;
    new-instance v7, Lnet/yostore/aws/api/InfoRelayApi;

    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    const-string v2, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v7, v1, v2}, Lnet/yostore/aws/api/InfoRelayApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .local v7, ir:Lnet/yostore/aws/api/InfoRelayApi;
    invoke-virtual {v7, v0}, Lnet/yostore/aws/api/InfoRelayApi;->fileRename(Lnet/yostore/aws/api/entity/FileRenameRequest;)Lnet/yostore/aws/api/entity/FileRenameResponse;

    move-result-object v1

    return-object v1
.end method
