.class public Lnet/yostore/aws/api/helper/FolderCreateHelper;
.super Lnet/yostore/aws/api/helper/BaseHelper;
.source "FolderCreateHelper.java"


# instance fields
.field private attr:Ljava/lang/String;

.field private display:Ljava/lang/String;

.field private parent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "parent"
    .parameter "display"
    .parameter "attr"

    .prologue
    .line 19
    invoke-direct {p0}, Lnet/yostore/aws/api/helper/BaseHelper;-><init>()V

    .line 20
    iput-object p1, p0, Lnet/yostore/aws/api/helper/FolderCreateHelper;->parent:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lnet/yostore/aws/api/helper/FolderCreateHelper;->display:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lnet/yostore/aws/api/helper/FolderCreateHelper;->attr:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method protected doApi(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 7
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
    .line 28
    new-instance v0, Lnet/yostore/aws/api/entity/FolderCreateRequest;

    .line 29
    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 30
    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    .line 31
    iget-object v3, p0, Lnet/yostore/aws/api/helper/FolderCreateHelper;->parent:Ljava/lang/String;

    .line 32
    iget-object v4, p0, Lnet/yostore/aws/api/helper/FolderCreateHelper;->display:Ljava/lang/String;

    .line 33
    iget-object v5, p0, Lnet/yostore/aws/api/helper/FolderCreateHelper;->attr:Ljava/lang/String;

    .line 28
    invoke-direct/range {v0 .. v5}, Lnet/yostore/aws/api/entity/FolderCreateRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .local v0, request:Lnet/yostore/aws/api/entity/FolderCreateRequest;
    new-instance v6, Lnet/yostore/aws/api/InfoRelayApi;

    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    const-string v2, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v6, v1, v2}, Lnet/yostore/aws/api/InfoRelayApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .local v6, ir:Lnet/yostore/aws/api/InfoRelayApi;
    invoke-virtual {v6, v0}, Lnet/yostore/aws/api/InfoRelayApi;->folderCreate(Lnet/yostore/aws/api/entity/FolderCreateRequest;)Lnet/yostore/aws/api/entity/FolderCreateResponse;

    move-result-object v1

    return-object v1
.end method
