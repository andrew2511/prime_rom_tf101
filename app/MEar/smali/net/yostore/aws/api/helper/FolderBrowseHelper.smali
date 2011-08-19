.class public Lnet/yostore/aws/api/helper/FolderBrowseHelper;
.super Lnet/yostore/aws/api/helper/BaseHelper;
.source "FolderBrowseHelper.java"


# instance fields
.field private parent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 17
    invoke-direct {p0}, Lnet/yostore/aws/api/helper/BaseHelper;-><init>()V

    .line 18
    iput-object p1, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->parent:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method protected doApi(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 5
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
    .line 24
    new-instance v1, Lnet/yostore/aws/api/entity/FolderBrowseRequest;

    .line 25
    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 26
    iget-object v3, p1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    .line 27
    iget-object v4, p0, Lnet/yostore/aws/api/helper/FolderBrowseHelper;->parent:Ljava/lang/String;

    .line 24
    invoke-direct {v1, v2, v3, v4}, Lnet/yostore/aws/api/entity/FolderBrowseRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .local v1, request:Lnet/yostore/aws/api/entity/FolderBrowseRequest;
    new-instance v0, Lnet/yostore/aws/api/InfoRelayApi;

    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    const-string v3, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v0, v2, v3}, Lnet/yostore/aws/api/InfoRelayApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .local v0, ir:Lnet/yostore/aws/api/InfoRelayApi;
    invoke-virtual {v0, v1}, Lnet/yostore/aws/api/InfoRelayApi;->folderBrowse(Lnet/yostore/aws/api/entity/FolderBrowseRequest;)Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    move-result-object v2

    return-object v2
.end method
