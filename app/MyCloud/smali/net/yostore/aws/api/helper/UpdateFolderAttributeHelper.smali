.class public Lnet/yostore/aws/api/helper/UpdateFolderAttributeHelper;
.super Lnet/yostore/aws/api/helper/BaseHelper;
.source "UpdateFolderAttributeHelper.java"


# instance fields
.field private attr:Ljava/lang/String;

.field private display:Ljava/lang/String;

.field private folderId:J

.field private parent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter "parent"
    .parameter "display"
    .parameter "folderId"
    .parameter "attr"

    .prologue
    .line 21
    invoke-direct {p0}, Lnet/yostore/aws/api/helper/BaseHelper;-><init>()V

    .line 22
    iput-object p1, p0, Lnet/yostore/aws/api/helper/UpdateFolderAttributeHelper;->parent:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lnet/yostore/aws/api/helper/UpdateFolderAttributeHelper;->display:Ljava/lang/String;

    .line 24
    iput-object p5, p0, Lnet/yostore/aws/api/helper/UpdateFolderAttributeHelper;->attr:Ljava/lang/String;

    .line 25
    iput-wide p3, p0, Lnet/yostore/aws/api/helper/UpdateFolderAttributeHelper;->folderId:J

    .line 26
    return-void
.end method


# virtual methods
.method protected doApi(Lnet/yostore/aws/api/ApiConfig;)Lnet/yostore/aws/api/entity/ApiResponse;
    .locals 9
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
    .line 31
    new-instance v0, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;

    .line 32
    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 33
    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    .line 34
    iget-object v3, p0, Lnet/yostore/aws/api/helper/UpdateFolderAttributeHelper;->parent:Ljava/lang/String;

    .line 35
    iget-object v4, p0, Lnet/yostore/aws/api/helper/UpdateFolderAttributeHelper;->display:Ljava/lang/String;

    .line 36
    iget-object v5, p0, Lnet/yostore/aws/api/helper/UpdateFolderAttributeHelper;->attr:Ljava/lang/String;

    .line 37
    iget-wide v6, p0, Lnet/yostore/aws/api/helper/UpdateFolderAttributeHelper;->folderId:J

    .line 31
    invoke-direct/range {v0 .. v7}, Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 40
    .local v0, request:Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;
    new-instance v8, Lnet/yostore/aws/api/InfoRelayApi;

    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    const-string v2, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v8, v1, v2}, Lnet/yostore/aws/api/InfoRelayApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .local v8, ir:Lnet/yostore/aws/api/InfoRelayApi;
    invoke-virtual {v8, v0}, Lnet/yostore/aws/api/InfoRelayApi;->updateFolderAttribute(Lnet/yostore/aws/api/entity/UpdateFolderAttributeRequest;)Lnet/yostore/aws/api/entity/UpdateFolderAttributeResponse;

    move-result-object v1

    return-object v1
.end method
