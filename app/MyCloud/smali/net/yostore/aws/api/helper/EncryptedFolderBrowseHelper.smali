.class public Lnet/yostore/aws/api/helper/EncryptedFolderBrowseHelper;
.super Lnet/yostore/aws/api/helper/BaseHelper;
.source "EncryptedFolderBrowseHelper.java"


# instance fields
.field private encryptedPwd:Ljava/lang/String;

.field private parent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "parent"
    .parameter "encryptedPwd"

    .prologue
    .line 19
    invoke-direct {p0}, Lnet/yostore/aws/api/helper/BaseHelper;-><init>()V

    .line 20
    iput-object p1, p0, Lnet/yostore/aws/api/helper/EncryptedFolderBrowseHelper;->parent:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lnet/yostore/aws/api/helper/EncryptedFolderBrowseHelper;->encryptedPwd:Ljava/lang/String;

    .line 22
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
    .line 27
    new-instance v1, Lnet/yostore/aws/api/entity/FolderBrowseRequest;

    .line 28
    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 29
    iget-object v3, p1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    .line 30
    iget-object v4, p0, Lnet/yostore/aws/api/helper/EncryptedFolderBrowseHelper;->parent:Ljava/lang/String;

    .line 27
    invoke-direct {v1, v2, v3, v4}, Lnet/yostore/aws/api/entity/FolderBrowseRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .local v1, request:Lnet/yostore/aws/api/entity/FolderBrowseRequest;
    new-instance v0, Lnet/yostore/aws/api/InfoRelayApi;

    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    const-string v3, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v0, v2, v3}, Lnet/yostore/aws/api/InfoRelayApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .local v0, ir:Lnet/yostore/aws/api/InfoRelayApi;
    iget-object v2, p0, Lnet/yostore/aws/api/helper/EncryptedFolderBrowseHelper;->encryptedPwd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lnet/yostore/aws/api/InfoRelayApi;->encryptedFolderBrowse(Lnet/yostore/aws/api/entity/FolderBrowseRequest;Ljava/lang/String;)Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    move-result-object v2

    return-object v2
.end method
