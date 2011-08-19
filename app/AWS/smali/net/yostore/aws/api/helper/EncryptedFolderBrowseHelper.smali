.class public Lnet/yostore/aws/api/helper/EncryptedFolderBrowseHelper;
.super Lnet/yostore/aws/api/helper/BaseHelper;
.source "EncryptedFolderBrowseHelper.java"


# instance fields
.field private encryptedPwd:Ljava/lang/String;

.field private parent:Ljava/lang/String;

.field private sort:I

.field private sortByDesc:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .parameter "parent"
    .parameter "encryptedPwd"
    .parameter "sort"
    .parameter "sortByDesc"

    .prologue
    .line 21
    invoke-direct {p0}, Lnet/yostore/aws/api/helper/BaseHelper;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lnet/yostore/aws/api/helper/EncryptedFolderBrowseHelper;->sort:I

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/api/helper/EncryptedFolderBrowseHelper;->sortByDesc:I

    .line 22
    iput-object p1, p0, Lnet/yostore/aws/api/helper/EncryptedFolderBrowseHelper;->parent:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lnet/yostore/aws/api/helper/EncryptedFolderBrowseHelper;->encryptedPwd:Ljava/lang/String;

    .line 24
    iput p3, p0, Lnet/yostore/aws/api/helper/EncryptedFolderBrowseHelper;->sort:I

    .line 25
    iput p4, p0, Lnet/yostore/aws/api/helper/EncryptedFolderBrowseHelper;->sortByDesc:I

    .line 26
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
    .line 31
    new-instance v0, Lnet/yostore/aws/api/entity/FolderBrowseRequest;

    .line 32
    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 33
    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    .line 34
    iget-object v3, p0, Lnet/yostore/aws/api/helper/EncryptedFolderBrowseHelper;->parent:Ljava/lang/String;

    .line 35
    iget v4, p0, Lnet/yostore/aws/api/helper/EncryptedFolderBrowseHelper;->sort:I

    .line 36
    iget v5, p0, Lnet/yostore/aws/api/helper/EncryptedFolderBrowseHelper;->sortByDesc:I

    .line 31
    invoke-direct/range {v0 .. v5}, Lnet/yostore/aws/api/entity/FolderBrowseRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 39
    .local v0, request:Lnet/yostore/aws/api/entity/FolderBrowseRequest;
    new-instance v6, Lnet/yostore/aws/api/InfoRelayApi;

    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    const-string v2, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v6, v1, v2}, Lnet/yostore/aws/api/InfoRelayApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .local v6, ir:Lnet/yostore/aws/api/InfoRelayApi;
    iget-object v1, p0, Lnet/yostore/aws/api/helper/EncryptedFolderBrowseHelper;->encryptedPwd:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Lnet/yostore/aws/api/InfoRelayApi;->encryptedFolderBrowse(Lnet/yostore/aws/api/entity/FolderBrowseRequest;Ljava/lang/String;)Lnet/yostore/aws/api/entity/FolderBrowseResponse;

    move-result-object v1

    return-object v1
.end method
