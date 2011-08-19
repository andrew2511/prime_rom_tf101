.class public Lnet/yostore/aws/api/helper/GetSharedEntriesHelper;
.super Lnet/yostore/aws/api/helper/BaseHelper;
.source "GetSharedEntriesHelper.java"


# instance fields
.field firstentrybound:Ljava/lang/String;

.field kind:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

.field pagesize:I

.field sortby:I

.field sortdirection:I


# direct methods
.method public constructor <init>(Lnet/yostore/aws/api/entity/EntryInfo$KIND;IIILjava/lang/String;)V
    .locals 0
    .parameter "kind"
    .parameter "pagesize"
    .parameter "sortby"
    .parameter "sortdirection"
    .parameter "firstentrybound"

    .prologue
    .line 22
    invoke-direct {p0}, Lnet/yostore/aws/api/helper/BaseHelper;-><init>()V

    .line 23
    iput-object p1, p0, Lnet/yostore/aws/api/helper/GetSharedEntriesHelper;->kind:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    .line 24
    iput p2, p0, Lnet/yostore/aws/api/helper/GetSharedEntriesHelper;->pagesize:I

    .line 25
    iput p3, p0, Lnet/yostore/aws/api/helper/GetSharedEntriesHelper;->sortby:I

    .line 26
    iput p4, p0, Lnet/yostore/aws/api/helper/GetSharedEntriesHelper;->sortdirection:I

    .line 27
    iput-object p5, p0, Lnet/yostore/aws/api/helper/GetSharedEntriesHelper;->firstentrybound:Ljava/lang/String;

    .line 28
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
    .line 33
    new-instance v0, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;

    .line 34
    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->userid:Ljava/lang/String;

    .line 35
    iget-object v2, p1, Lnet/yostore/aws/api/ApiConfig;->token:Ljava/lang/String;

    .line 36
    iget-object v3, p0, Lnet/yostore/aws/api/helper/GetSharedEntriesHelper;->kind:Lnet/yostore/aws/api/entity/EntryInfo$KIND;

    .line 37
    iget v4, p0, Lnet/yostore/aws/api/helper/GetSharedEntriesHelper;->pagesize:I

    .line 38
    iget v5, p0, Lnet/yostore/aws/api/helper/GetSharedEntriesHelper;->sortby:I

    .line 39
    iget v6, p0, Lnet/yostore/aws/api/helper/GetSharedEntriesHelper;->sortdirection:I

    .line 40
    iget-object v7, p0, Lnet/yostore/aws/api/helper/GetSharedEntriesHelper;->firstentrybound:Ljava/lang/String;

    .line 33
    invoke-direct/range {v0 .. v7}, Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/yostore/aws/api/entity/EntryInfo$KIND;IIILjava/lang/String;)V

    .line 43
    .local v0, request:Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;
    new-instance v8, Lnet/yostore/aws/api/InfoRelayApi;

    iget-object v1, p1, Lnet/yostore/aws/api/ApiConfig;->infoRelay:Ljava/lang/String;

    const-string v2, "https://approxy.asuswebstorage.com/api/"

    invoke-direct {v8, v1, v2}, Lnet/yostore/aws/api/InfoRelayApi;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .local v8, ir:Lnet/yostore/aws/api/InfoRelayApi;
    invoke-virtual {v8, v0}, Lnet/yostore/aws/api/InfoRelayApi;->getSharedEntries(Lnet/yostore/aws/api/entity/GetSharedEntriesRequest;)Lnet/yostore/aws/api/entity/GetSharedEntriesResponse;

    move-result-object v1

    return-object v1
.end method
