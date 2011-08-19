.class public Lcom/infraware/filemanager/webstorage/objects/GoogleData;
.super Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
.source "GoogleData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/filemanager/webstorage/objects/GoogleData$TempRootEntry;
    }
.end annotation


# static fields
.field private static DOWNLOAD_PATH_DOC:Ljava/lang/String;

.field private static DOWNLOAD_PATH_PPT:Ljava/lang/String;

.field private static GOOGLE_EXCEPTION_CLASS:Ljava/lang/String;

.field public static final NAMESPACE_DICTIONARY:Lcom/google/api/client/xml/XmlNamespaceDictionary;


# instance fields
.field private docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

.field private folderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

.field private xlsTransport:Lcom/google/api/client/googleapis/GoogleTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    new-instance v1, Lcom/google/api/client/xml/XmlNamespaceDictionary;

    invoke-direct {v1}, Lcom/google/api/client/xml/XmlNamespaceDictionary;-><init>()V

    sput-object v1, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->NAMESPACE_DICTIONARY:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    .line 73
    sget-object v1, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->NAMESPACE_DICTIONARY:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    iget-object v0, v1, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceAliasToUriMap:Ljava/util/HashMap;

    .line 74
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, ""

    const-string v2, "http://www.w3.org/2005/Atom"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v1, "app"

    const-string v2, "http://www.w3.org/2007/app"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "atom"

    const-string v2, "http://www.w3.org/2005/Atom"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v1, "xml"

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v1, "docs"

    const-string v2, "http://schemas.google.com/docs/2007"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v1, "gd"

    const-string v2, "http://schemas.google.com/g/2005"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "gs"

    const-string v2, "http://schemas.google.com/spreadsheets/2006"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "gsx"

    const-string v2, "http://schemas.google.com/spreadsheets/2006/extended"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v1, "https://docs.google.com/feeds/download/documents/Export?id="

    sput-object v1, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->DOWNLOAD_PATH_DOC:Ljava/lang/String;

    .line 88
    const-string v1, "https://docs.google.com/feeds/download/presentations/Export?docId="

    sput-object v1, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->DOWNLOAD_PATH_PPT:Ljava/lang/String;

    .line 90
    const-string v1, "com.google.api.client.http.HttpResponseException"

    sput-object v1, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->GOOGLE_EXCEPTION_CLASS:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;-><init>()V

    .line 84
    new-instance v0, Lcom/google/api/client/googleapis/GoogleTransport;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/GoogleTransport;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    .line 85
    new-instance v0, Lcom/google/api/client/googleapis/GoogleTransport;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/GoogleTransport;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->xlsTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->folderMap:Ljava/util/HashMap;

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    .line 95
    return-void
.end method

.method private arrangFolderTree(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, folderEntries:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v1, folderNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-lt v2, v6, :cond_0

    .line 186
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v2, v6, :cond_1

    .line 197
    return-void

    .line 179
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;

    .line 180
    .local v0, entry:Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;
    new-instance v5, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    invoke-direct {v5}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;-><init>()V

    .line 181
    .local v5, treeNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    invoke-virtual {v5, v0}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->setUserObject(Ljava/lang/Object;)V

    .line 182
    iget-object v6, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->folderMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;->getSelfLink()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    .end local v0           #entry:Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;
    .end local v5           #treeNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    .line 189
    .restart local v5       #treeNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    invoke-virtual {v5}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;

    .line 190
    .restart local v0       #entry:Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;
    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;->getParentLink()Ljava/lang/String;

    move-result-object v3

    .local v3, parentLink:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 191
    iget-object v6, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    invoke-virtual {v6, v5}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->add(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V

    .line 186
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 193
    :cond_2
    iget-object v6, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->folderMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    .line 194
    .local v4, parentNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    invoke-virtual {v4, v5}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->add(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V

    goto :goto_2
.end method

.method public static cutExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "fileName"

    .prologue
    .line 519
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 520
    .local v1, index:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    :cond_0
    move-object v2, p0

    .line 530
    :goto_0
    return-object v2

    .line 523
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 524
    .local v0, extension:Ljava/lang/String;
    const-string v2, ".doc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ".docx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 525
    const-string v2, ".xls"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ".xlsx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 526
    const-string v2, ".ppt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ".pptx"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 527
    const-string v2, ".pps"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 528
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, p0

    .line 530
    goto :goto_0
.end method

.method private static getMimetypeFromFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "filename"

    .prologue
    .line 509
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 510
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 509
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, extension:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, mimeType:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 513
    const-string v1, "unknown"

    .line 514
    :cond_0
    return-object v1
.end method

.method private removeEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "resourceId"
    .parameter "etag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/WebStorageException;
        }
    .end annotation

    .prologue
    .line 352
    const-string v3, ""

    .line 353
    .local v3, urlPostFix:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 359
    :cond_0
    if-nez p2, :cond_1

    .line 360
    const-string p2, "*"

    .line 362
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->RELATIVE_URL:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;->fromRelativePath(Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;

    move-result-object v2

    .line 363
    .local v2, url:Lcom/google/api/client/googleapis/GoogleUrl;
    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    invoke-virtual {v4}, Lcom/google/api/client/googleapis/GoogleTransport;->buildDeleteRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v1

    .line 364
    .local v1, request:Lcom/google/api/client/http/HttpRequest;
    iget-object v4, v1, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    const-string v5, "GData-Version"

    const-string v6, "3.0"

    invoke-virtual {v4, v5, v6}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v4, v1, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    iput-object p2, v4, Lcom/google/api/client/http/HttpHeaders;->ifMatch:Ljava/lang/String;

    .line 366
    iput-object v2, v1, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 369
    :try_start_0
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, e:Ljava/io/IOException;
    new-instance v4, Lcom/infraware/filemanager/webstorage/WebStorageException;

    invoke-direct {v4, v0}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private retreiveDocumentEntries()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    sget-object v4, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->RELATIVE_URL:Ljava/lang/String;

    invoke-static {v4}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;->fromRelativePath(Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;

    move-result-object v3

    .line 203
    .local v3, url:Lcom/google/api/client/googleapis/GoogleUrl;
    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    invoke-virtual {v4}, Lcom/google/api/client/googleapis/GoogleTransport;->buildGetRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v2

    .line 204
    .local v2, request:Lcom/google/api/client/http/HttpRequest;
    iget-object v4, v2, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    const-string v5, "GData-Version"

    const-string v6, "3.0"

    invoke-virtual {v4, v5, v6}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iput-object v3, v2, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 207
    invoke-virtual {v2}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v4

    const-class v5, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;

    invoke-virtual {v4, v5}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;

    .line 208
    .local v1, feed:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v0, documentsEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;>;"
    iget-object v4, v1, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->documents:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 210
    iget-object v4, v1, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->documents:Ljava/util/List;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 212
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->getNextLink()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 222
    return-object v0

    .line 214
    :cond_1
    new-instance v3, Lcom/google/api/client/googleapis/GoogleUrl;

    .end local v3           #url:Lcom/google/api/client/googleapis/GoogleUrl;
    invoke-virtual {v1}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->getNextLink()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/api/client/googleapis/GoogleUrl;-><init>(Ljava/lang/String;)V

    .line 216
    .restart local v3       #url:Lcom/google/api/client/googleapis/GoogleUrl;
    iput-object v3, v2, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 217
    invoke-virtual {v2}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v4

    const-class v5, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;

    invoke-virtual {v4, v5}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #feed:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;
    check-cast v1, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;

    .line 218
    .restart local v1       #feed:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;
    iget-object v4, v1, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->documents:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 219
    iget-object v4, v1, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->documents:Ljava/util/List;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private retreiveFolderEntries()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    sget-object v4, Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;->RELATIVE_URL:Ljava/lang/String;

    invoke-static {v4}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;->fromRelativePath(Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;

    move-result-object v3

    .line 150
    .local v3, url:Lcom/google/api/client/googleapis/GoogleUrl;
    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    invoke-virtual {v4}, Lcom/google/api/client/googleapis/GoogleTransport;->buildGetRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v2

    .line 151
    .local v2, request:Lcom/google/api/client/http/HttpRequest;
    iget-object v4, v2, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    const-string v5, "GData-Version"

    const-string v6, "3.0"

    invoke-virtual {v4, v5, v6}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iput-object v3, v2, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 154
    invoke-virtual {v2}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v4

    const-class v5, Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;

    invoke-virtual {v4, v5}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;

    .line 155
    .local v0, feed:Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v1, folderEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;>;"
    iget-object v4, v0, Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;->folders:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 157
    iget-object v4, v0, Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;->folders:Ljava/util/List;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 159
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;->getNextLink()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 166
    return-object v1

    .line 161
    :cond_1
    iget-object v4, v2, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;->getNextLink()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/google/api/client/http/GenericUrl;->path:Ljava/lang/String;

    .line 162
    invoke-virtual {v2}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v4

    const-class v5, Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;

    invoke-virtual {v4, v5}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #feed:Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;
    check-cast v0, Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;

    .line 163
    .restart local v0       #feed:Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;
    iget-object v4, v0, Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;->folders:Ljava/util/List;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method


# virtual methods
.method public createFolder(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/lang/String;)V
    .locals 20
    .parameter "node"
    .parameter "newFolderName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/WebStorageException;
        }
    .end annotation

    .prologue
    .line 291
    const-string v16, ""

    .line 292
    .local v16, urlPostFix:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 294
    invoke-virtual/range {p1 .. p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 295
    .local v5, entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-interface {v5}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->isFolder()Z

    move-result v17

    if-nez v17, :cond_0

    .line 346
    .end local v5           #entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    :goto_0
    return-void

    .line 298
    .restart local v5       #entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    :cond_0
    check-cast v5, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;

    .end local v5           #entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-virtual {v5}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;->getEntryId()Ljava/lang/String;

    move-result-object v13

    .line 299
    .local v13, resourceId:Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 300
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "/"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/contents"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 303
    .end local v13           #resourceId:Ljava/lang/String;
    :cond_1
    new-instance v10, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;

    invoke-direct {v10}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;-><init>()V

    .line 304
    .local v10, newEntry:Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;
    move-object v0, v10

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;->setEntryTitle(Ljava/lang/String;)V

    .line 305
    const-string v17, "folder"

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;->addCategories(Ljava/lang/String;)V

    .line 307
    new-instance v3, Lcom/google/api/client/xml/atom/AtomContent;

    invoke-direct {v3}, Lcom/google/api/client/xml/atom/AtomContent;-><init>()V

    .line 308
    .local v3, content:Lcom/google/api/client/xml/atom/AtomContent;
    sget-object v17, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->NAMESPACE_DICTIONARY:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    move-object/from16 v0, v17

    move-object v1, v3

    iput-object v0, v1, Lcom/google/api/client/xml/atom/AtomContent;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    .line 309
    iput-object v10, v3, Lcom/google/api/client/xml/atom/AtomContent;->entry:Ljava/lang/Object;

    .line 311
    new-instance v17, Ljava/lang/StringBuilder;

    sget-object v18, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->RELATIVE_URL:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;->fromRelativePath(Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;

    move-result-object v15

    .line 312
    .local v15, url:Lcom/google/api/client/googleapis/GoogleUrl;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/api/client/googleapis/GoogleTransport;->buildPostRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v12

    .line 313
    .local v12, request:Lcom/google/api/client/http/HttpRequest;
    move-object v0, v12

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v17, v0

    const-string v18, "GData-Version"

    const-string v19, "3.0"

    invoke-virtual/range {v17 .. v19}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    iput-object v15, v12, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 315
    iput-object v3, v12, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 317
    const/4 v14, 0x0

    .line 319
    .local v14, response:Lcom/google/api/client/http/HttpResponse;
    :try_start_0
    invoke-virtual {v12}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 324
    const/4 v6, 0x0

    .line 326
    .local v6, feed:Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;
    :try_start_1
    const-class v17, Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #feed:Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;
    check-cast v6, Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 331
    .restart local v6       #feed:Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;
    invoke-virtual {v6}, Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;->getSelfLink()Ljava/lang/String;

    move-result-object v8

    .line 332
    .local v8, folderId:Ljava/lang/String;
    const-string v17, "folder%3A"

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 333
    .local v9, index:I
    if-ltz v9, :cond_2

    .line 334
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 336
    :cond_2
    new-instance v7, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;

    invoke-direct {v7}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;-><init>()V

    .line 337
    .local v7, folderEntry:Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;
    invoke-static {v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;->setEntryId(Ljava/lang/String;)V

    .line 338
    move-object v0, v7

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;->setEntryTitle(Ljava/lang/String;)V

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object v0, v7

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;->setCreatedLong(J)V

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object v0, v7

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;->setUpdatedLong(J)V

    .line 341
    const-wide/16 v17, 0x0

    move-object v0, v7

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;->setSize(J)V

    .line 343
    new-instance v11, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    invoke-direct {v11}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;-><init>()V

    .line 344
    .local v11, newNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    invoke-virtual {v11, v7}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->setUserObject(Ljava/lang/Object;)V

    .line 345
    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->add(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V

    goto/16 :goto_0

    .line 320
    .end local v6           #feed:Lcom/infraware/filemanager/webstorage/objects/google/FolderFeed;
    .end local v7           #folderEntry:Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;
    .end local v8           #folderId:Ljava/lang/String;
    .end local v9           #index:I
    .end local v11           #newNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    :catch_0
    move-exception v4

    .line 321
    .local v4, e:Ljava/io/IOException;
    new-instance v17, Lcom/infraware/filemanager/webstorage/WebStorageException;

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 327
    .end local v4           #e:Ljava/io/IOException;
    :catch_1
    move-exception v17

    move-object/from16 v4, v17

    .line 328
    .restart local v4       #e:Ljava/io/IOException;
    goto/16 :goto_0
.end method

.method public decodeTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "title"

    .prologue
    .line 284
    return-object p1
.end method

.method public downloadFile(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/lang/String;)Ljava/lang/String;
    .locals 23
    .parameter "node"
    .parameter "newFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/WebStorageException;
        }
    .end annotation

    .prologue
    .line 816
    invoke-virtual/range {p1 .. p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;

    .line 818
    .local v6, entry:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;
    invoke-virtual {v6}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->getKind()Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    move-result-object v20

    sget-object v21, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->SPREADSHEET:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->xlsTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    move-object/from16 v18, v0

    .line 823
    .local v18, transport:Lcom/google/api/client/http/HttpTransport;
    :goto_0
    const/4 v13, 0x0

    .line 824
    .local v13, requestUrl:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->getKind()Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    move-result-object v20

    sget-object v21, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->DOCUMENT:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 826
    invoke-virtual {v6}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->getEntryId()Ljava/lang/String;

    move-result-object v14

    .line 827
    .local v14, resourceId:Ljava/lang/String;
    const/16 v20, 0x0

    const/16 v21, 0x9

    move-object v0, v14

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    const-string v21, "document:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 828
    new-instance v20, Ljava/lang/StringBuilder;

    sget-object v21, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->DOWNLOAD_PATH_DOC:Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->getEntryId()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x9

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 837
    .end local v14           #resourceId:Ljava/lang/String;
    :goto_1
    invoke-virtual {v6}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->getExportFormat()Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;

    move-result-object v7

    .line 838
    .local v7, exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;
    if-eqz v7, :cond_0

    .line 839
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v21, "&exportFormat="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 841
    :cond_0
    new-instance v19, Lcom/google/api/client/googleapis/GoogleUrl;

    move-object/from16 v0, v19

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/google/api/client/googleapis/GoogleUrl;-><init>(Ljava/lang/String;)V

    .line 842
    .local v19, url:Lcom/google/api/client/googleapis/GoogleUrl;
    invoke-virtual/range {v18 .. v18}, Lcom/google/api/client/googleapis/GoogleTransport;->buildGetRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v12

    .line 843
    .local v12, request:Lcom/google/api/client/http/HttpRequest;
    move-object v0, v12

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v20, v0

    const-string v21, "GData-Version"

    const-string v22, "3.0"

    invoke-virtual/range {v20 .. v22}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    move-object/from16 v0, v19

    move-object v1, v12

    iput-object v0, v1, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 846
    const/4 v15, 0x0

    .line 847
    .local v15, response:Lcom/google/api/client/http/HttpResponse;
    const/4 v8, 0x0

    .line 848
    .local v8, fos:Ljava/io/FileOutputStream;
    const/4 v10, 0x0

    .line 850
    .local v10, is:Ljava/io/InputStream;
    sget-boolean v20, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->m_bCancel:Z

    if-eqz v20, :cond_5

    .line 851
    const/16 v20, 0x0

    .line 896
    :goto_2
    return-object v20

    .line 821
    .end local v7           #exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .end local v10           #is:Ljava/io/InputStream;
    .end local v12           #request:Lcom/google/api/client/http/HttpRequest;
    .end local v13           #requestUrl:Ljava/lang/String;
    .end local v15           #response:Lcom/google/api/client/http/HttpResponse;
    .end local v18           #transport:Lcom/google/api/client/http/HttpTransport;
    .end local v19           #url:Lcom/google/api/client/googleapis/GoogleUrl;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    move-object/from16 v18, v0

    .restart local v18       #transport:Lcom/google/api/client/http/HttpTransport;
    goto/16 :goto_0

    .line 830
    .restart local v13       #requestUrl:Ljava/lang/String;
    .restart local v14       #resourceId:Ljava/lang/String;
    :cond_2
    new-instance v20, Ljava/lang/StringBuilder;

    sget-object v21, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->DOWNLOAD_PATH_DOC:Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->getEntryId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 832
    .end local v14           #resourceId:Ljava/lang/String;
    :cond_3
    invoke-virtual {v6}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->getKind()Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    move-result-object v20

    sget-object v21, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->PRESENTATION:Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 833
    new-instance v20, Ljava/lang/StringBuilder;

    sget-object v21, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->DOWNLOAD_PATH_PPT:Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->getEntryId()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 835
    :cond_4
    invoke-virtual {v6}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->getContentSrc()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 853
    .restart local v7       #exportFormat:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry$ExportFormat;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    .restart local v10       #is:Ljava/io/InputStream;
    .restart local v12       #request:Lcom/google/api/client/http/HttpRequest;
    .restart local v15       #response:Lcom/google/api/client/http/HttpResponse;
    .restart local v19       #url:Lcom/google/api/client/googleapis/GoogleUrl;
    :cond_5
    const/16 v16, 0x0

    .line 855
    .local v16, tmpFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v12}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v15

    .line 857
    sget-boolean v20, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->m_bCancel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    if-eqz v20, :cond_8

    .line 880
    if-eqz v8, :cond_6

    .line 882
    :try_start_1
    throw v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 887
    :cond_6
    if-eqz v10, :cond_7

    sget-boolean v20, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->m_bCancel:Z

    if-nez v20, :cond_7

    .line 889
    :try_start_2
    throw v10
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 858
    :cond_7
    const/16 v20, 0x0

    goto :goto_2

    .line 883
    :catch_0
    move-exception v5

    .line 884
    .local v5, e:Ljava/io/IOException;
    new-instance v20, Lcom/infraware/filemanager/webstorage/WebStorageException;

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v20

    .line 890
    .end local v5           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 891
    .restart local v5       #e:Ljava/io/IOException;
    new-instance v20, Lcom/infraware/filemanager/webstorage/WebStorageException;

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v20

    .line 860
    .end local v5           #e:Ljava/io/IOException;
    :cond_8
    :try_start_3
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 861
    .end local v16           #tmpFile:Ljava/io/File;
    .local v17, tmpFile:Ljava/io/File;
    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->createNewFile()Z

    .line 863
    new-instance v9, Ljava/io/FileOutputStream;

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 864
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .local v9, fos:Ljava/io/FileOutputStream;
    :try_start_5
    invoke-virtual {v15}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 866
    const v20, 0xa000

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object v4, v0

    .line 867
    .local v4, buffer:[B
    const/4 v11, 0x0

    .line 869
    .local v11, readed:I
    :goto_3
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/16 v20, -0x1

    move v0, v11

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 876
    :cond_9
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 880
    if-eqz v9, :cond_a

    .line 882
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 887
    :cond_a
    if-eqz v10, :cond_b

    sget-boolean v20, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->m_bCancel:Z

    if-nez v20, :cond_b

    .line 889
    :try_start_7
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 896
    :cond_b
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    move-object v8, v9

    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 870
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    :cond_c
    :try_start_8
    sget-boolean v20, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->m_bCancel:Z

    if-nez v20, :cond_9

    .line 874
    const/16 v20, 0x0

    move-object v0, v9

    move-object v1, v4

    move/from16 v2, v20

    move v3, v11

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 877
    .end local v4           #buffer:[B
    .end local v11           #readed:I
    :catch_2
    move-exception v20

    move-object/from16 v5, v20

    move-object/from16 v16, v17

    .end local v17           #tmpFile:Ljava/io/File;
    .restart local v16       #tmpFile:Ljava/io/File;
    move-object v8, v9

    .line 878
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #e:Ljava/io/IOException;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    :goto_4
    :try_start_9
    new-instance v20, Lcom/infraware/filemanager/webstorage/WebStorageException;

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v20
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 879
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v20

    .line 880
    :goto_5
    if-eqz v8, :cond_d

    .line 882
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 887
    :cond_d
    if-eqz v10, :cond_e

    sget-boolean v21, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->m_bCancel:Z

    if-nez v21, :cond_e

    .line 889
    :try_start_b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 894
    :cond_e
    throw v20

    .line 883
    :catch_3
    move-exception v5

    .line 884
    .restart local v5       #e:Ljava/io/IOException;
    new-instance v20, Lcom/infraware/filemanager/webstorage/WebStorageException;

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v20

    .line 890
    .end local v5           #e:Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 891
    .restart local v5       #e:Ljava/io/IOException;
    new-instance v20, Lcom/infraware/filemanager/webstorage/WebStorageException;

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v20

    .line 883
    .end local v5           #e:Ljava/io/IOException;
    .end local v8           #fos:Ljava/io/FileOutputStream;
    .end local v16           #tmpFile:Ljava/io/File;
    .restart local v4       #buffer:[B
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    .restart local v11       #readed:I
    .restart local v17       #tmpFile:Ljava/io/File;
    :catch_5
    move-exception v5

    .line 884
    .restart local v5       #e:Ljava/io/IOException;
    new-instance v20, Lcom/infraware/filemanager/webstorage/WebStorageException;

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v20

    .line 890
    .end local v5           #e:Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 891
    .restart local v5       #e:Ljava/io/IOException;
    new-instance v20, Lcom/infraware/filemanager/webstorage/WebStorageException;

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v20

    .line 879
    .end local v4           #buffer:[B
    .end local v5           #e:Ljava/io/IOException;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v11           #readed:I
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v20

    move-object/from16 v16, v17

    .end local v17           #tmpFile:Ljava/io/File;
    .restart local v16       #tmpFile:Ljava/io/File;
    goto :goto_5

    .end local v8           #fos:Ljava/io/FileOutputStream;
    .end local v16           #tmpFile:Ljava/io/File;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    .restart local v17       #tmpFile:Ljava/io/File;
    :catchall_2
    move-exception v20

    move-object/from16 v16, v17

    .end local v17           #tmpFile:Ljava/io/File;
    .restart local v16       #tmpFile:Ljava/io/File;
    move-object v8, v9

    .end local v9           #fos:Ljava/io/FileOutputStream;
    .restart local v8       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 877
    :catch_7
    move-exception v20

    move-object/from16 v5, v20

    goto :goto_4

    .end local v16           #tmpFile:Ljava/io/File;
    .restart local v17       #tmpFile:Ljava/io/File;
    :catch_8
    move-exception v20

    move-object/from16 v5, v20

    move-object/from16 v16, v17

    .end local v17           #tmpFile:Ljava/io/File;
    .restart local v16       #tmpFile:Ljava/io/File;
    goto :goto_4
.end method

.method public encodeTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "title"

    .prologue
    .line 279
    return-object p1
.end method

.method public getEntryTree()Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    return-object v0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "userId"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/WebStorageException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    const-string v5, "private-docsnavi-0.1"

    iput-object v5, v4, Lcom/google/api/client/googleapis/GoogleTransport;->applicationName:Ljava/lang/String;

    .line 102
    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->xlsTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    const-string v5, "private-docsnavi-0.1"

    iput-object v5, v4, Lcom/google/api/client/googleapis/GoogleTransport;->applicationName:Ljava/lang/String;

    .line 104
    sget-object v4, Lcom/google/api/client/apache/ApacheHttpTransport;->INSTANCE:Lcom/google/api/client/apache/ApacheHttpTransport;

    invoke-static {v4}, Lcom/google/api/client/http/HttpTransport;->setLowLevelHttpTransport(Lcom/google/api/client/http/LowLevelHttpTransport;)V

    .line 106
    new-instance v0, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin;-><init>()V

    .line 108
    .local v0, auth:Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin;
    iput-object p1, v0, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin;->username:Ljava/lang/String;

    .line 109
    iput-object p2, v0, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin;->password:Ljava/lang/String;

    .line 112
    new-instance v1, Lcom/google/api/client/xml/atom/AtomParser;

    invoke-direct {v1}, Lcom/google/api/client/xml/atom/AtomParser;-><init>()V

    .line 113
    .local v1, docParser:Lcom/google/api/client/xml/atom/AtomParser;
    sget-object v4, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->NAMESPACE_DICTIONARY:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    iput-object v4, v1, Lcom/google/api/client/xml/atom/AtomParser;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    .line 114
    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    invoke-virtual {v4, v1}, Lcom/google/api/client/googleapis/GoogleTransport;->addParser(Lcom/google/api/client/http/HttpParser;)V

    .line 117
    :try_start_0
    const-string v4, "writely"

    iput-object v4, v0, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin;->authTokenType:Ljava/lang/String;

    .line 118
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin;->authenticate()Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin$Response;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    invoke-virtual {v4, v5}, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin$Response;->setAuthorizationHeader(Lcom/google/api/client/googleapis/GoogleTransport;)V
    :try_end_0
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    new-instance v3, Lcom/google/api/client/xml/atom/AtomParser;

    invoke-direct {v3}, Lcom/google/api/client/xml/atom/AtomParser;-><init>()V

    .line 130
    .local v3, xlsParser:Lcom/google/api/client/xml/atom/AtomParser;
    sget-object v4, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->NAMESPACE_DICTIONARY:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    iput-object v4, v3, Lcom/google/api/client/xml/atom/AtomParser;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    .line 131
    iget-object v4, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    invoke-virtual {v4, v3}, Lcom/google/api/client/googleapis/GoogleTransport;->addParser(Lcom/google/api/client/http/HttpParser;)V

    .line 134
    :try_start_1
    const-string v4, "wise"

    iput-object v4, v0, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin;->authTokenType:Ljava/lang/String;

    .line 135
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin;->authenticate()Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin$Response;

    move-result-object v4

    iget-object v5, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->xlsTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    invoke-virtual {v4, v5}, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin$Response;->setAuthorizationHeader(Lcom/google/api/client/googleapis/GoogleTransport;)V
    :try_end_1
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 144
    return-void

    .line 119
    .end local v3           #xlsParser:Lcom/google/api/client/xml/atom/AtomParser;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 120
    .local v2, e:Lcom/google/api/client/http/HttpResponseException;
    invoke-virtual {v2}, Lcom/google/api/client/http/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "403 Forbidden"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 121
    new-instance v4, Lcom/infraware/filemanager/webstorage/WebStorageException;

    const-string v5, "403"

    invoke-direct {v4, v5, v2}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 123
    :cond_0
    new-instance v4, Lcom/infraware/filemanager/webstorage/WebStorageException;

    const-string v5, "bad network state"

    invoke-direct {v4, v5, v2}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 124
    .end local v2           #e:Lcom/google/api/client/http/HttpResponseException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 125
    .local v2, e:Ljava/io/IOException;
    new-instance v4, Lcom/infraware/filemanager/webstorage/WebStorageException;

    invoke-direct {v4, v2}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 136
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #xlsParser:Lcom/google/api/client/xml/atom/AtomParser;
    :catch_2
    move-exception v4

    move-object v2, v4

    .line 137
    .local v2, e:Lcom/google/api/client/http/HttpResponseException;
    invoke-virtual {v2}, Lcom/google/api/client/http/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "403 Forbidden"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 138
    new-instance v4, Lcom/infraware/filemanager/webstorage/WebStorageException;

    const-string v5, "403"

    invoke-direct {v4, v5, v2}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 140
    :cond_1
    new-instance v4, Lcom/infraware/filemanager/webstorage/WebStorageException;

    const-string v5, "bad network state"

    invoke-direct {v4, v5, v2}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 141
    .end local v2           #e:Lcom/google/api/client/http/HttpResponseException;
    :catch_3
    move-exception v4

    move-object v2, v4

    .line 142
    .local v2, e:Ljava/io/IOException;
    new-instance v4, Lcom/infraware/filemanager/webstorage/WebStorageException;

    invoke-direct {v4, v2}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public moveEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V
    .locals 20
    .parameter "srcNode"
    .parameter "dstNode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/WebStorageException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    const-string v16, ""

    .line 447
    .local v16, urlPostFix:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_3

    .line 449
    invoke-virtual/range {p2 .. p2}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 450
    .local v5, dstEntry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-interface {v5}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->isFolder()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 453
    check-cast v5, Lcom/infraware/filemanager/webstorage/objects/google/Entry;

    .end local v5           #dstEntry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-virtual {v5}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->getEntryId()Ljava/lang/String;

    move-result-object v6

    .line 454
    .local v6, dstResourceId:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 455
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "/"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/contents"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 457
    :cond_2
    new-instance v10, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;

    invoke-direct {v10}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;-><init>()V

    .line 458
    .local v10, newEntry:Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;
    invoke-virtual/range {p1 .. p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    check-cast v2, Lcom/infraware/filemanager/webstorage/objects/google/Entry;

    invoke-virtual {v2}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->getId()Ljava/lang/String;

    move-result-object v17

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;->setId(Ljava/lang/String;)V

    .line 460
    new-instance v2, Lcom/google/api/client/xml/atom/AtomContent;

    invoke-direct {v2}, Lcom/google/api/client/xml/atom/AtomContent;-><init>()V

    .line 461
    .local v2, content:Lcom/google/api/client/xml/atom/AtomContent;
    sget-object v17, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->NAMESPACE_DICTIONARY:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    move-object/from16 v0, v17

    move-object v1, v2

    iput-object v0, v1, Lcom/google/api/client/xml/atom/AtomContent;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    .line 462
    iput-object v10, v2, Lcom/google/api/client/xml/atom/AtomContent;->entry:Ljava/lang/Object;

    .line 464
    new-instance v17, Ljava/lang/StringBuilder;

    sget-object v18, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->RELATIVE_URL:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;->fromRelativePath(Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;

    move-result-object v9

    .line 465
    .local v9, moveUrl:Lcom/google/api/client/googleapis/GoogleUrl;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/api/client/googleapis/GoogleTransport;->buildPostRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v8

    .line 466
    .local v8, moveRequest:Lcom/google/api/client/http/HttpRequest;
    move-object v0, v8

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v17, v0

    const-string v18, "GData-Version"

    const-string v19, "3.0"

    invoke-virtual/range {v17 .. v19}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iput-object v9, v8, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 468
    iput-object v2, v8, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 471
    :try_start_0
    invoke-virtual {v8}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    .end local v2           #content:Lcom/google/api/client/xml/atom/AtomContent;
    .end local v6           #dstResourceId:Ljava/lang/String;
    .end local v8           #moveRequest:Lcom/google/api/client/http/HttpRequest;
    .end local v9           #moveUrl:Lcom/google/api/client/googleapis/GoogleUrl;
    .end local v10           #newEntry:Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getParent()Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v12

    .line 479
    .local v12, parentNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-object/from16 v17, v0

    move-object v0, v12

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_6

    .line 481
    invoke-virtual {v12}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 482
    .local v11, parentEntry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-interface {v11}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryId()Ljava/lang/String;

    move-result-object v13

    .line 483
    .local v13, parentResourceId:Ljava/lang/String;
    if-eqz v13, :cond_4

    .line 484
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "/"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/contents"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 486
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 487
    .local v14, srcEntry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-interface {v14}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryId()Ljava/lang/String;

    move-result-object v15

    .line 488
    .local v15, srcResourceId:Ljava/lang/String;
    if-eqz v15, :cond_5

    .line 489
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v15}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 491
    :cond_5
    new-instance v17, Ljava/lang/StringBuilder;

    sget-object v18, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->RELATIVE_URL:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;->fromRelativePath(Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;

    move-result-object v4

    .line 492
    .local v4, deleteUrl:Lcom/google/api/client/googleapis/GoogleUrl;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/api/client/googleapis/GoogleTransport;->buildDeleteRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v3

    .line 493
    .local v3, deleteRequest:Lcom/google/api/client/http/HttpRequest;
    move-object v0, v3

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v17, v0

    const-string v18, "GData-Version"

    const-string v19, "3.0"

    invoke-virtual/range {v17 .. v19}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    move-object v0, v3

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v17, v0

    const-string v18, "*"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/google/api/client/http/HttpHeaders;->ifMatch:Ljava/lang/String;

    .line 495
    iput-object v4, v3, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 498
    :try_start_1
    invoke-virtual {v3}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 503
    .end local v3           #deleteRequest:Lcom/google/api/client/http/HttpRequest;
    .end local v4           #deleteUrl:Lcom/google/api/client/googleapis/GoogleUrl;
    .end local v11           #parentEntry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    .end local v13           #parentResourceId:Ljava/lang/String;
    .end local v14           #srcEntry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    .end local v15           #srcResourceId:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getParent()Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getChildArray()Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 504
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->add(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V

    goto/16 :goto_0

    .line 472
    .end local v12           #parentNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    .restart local v2       #content:Lcom/google/api/client/xml/atom/AtomContent;
    .restart local v6       #dstResourceId:Ljava/lang/String;
    .restart local v8       #moveRequest:Lcom/google/api/client/http/HttpRequest;
    .restart local v9       #moveUrl:Lcom/google/api/client/googleapis/GoogleUrl;
    .restart local v10       #newEntry:Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;
    :catch_0
    move-exception v7

    .line 473
    .local v7, e:Ljava/io/IOException;
    new-instance v17, Lcom/infraware/filemanager/webstorage/WebStorageException;

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 499
    .end local v2           #content:Lcom/google/api/client/xml/atom/AtomContent;
    .end local v6           #dstResourceId:Ljava/lang/String;
    .end local v7           #e:Ljava/io/IOException;
    .end local v8           #moveRequest:Lcom/google/api/client/http/HttpRequest;
    .end local v9           #moveUrl:Lcom/google/api/client/googleapis/GoogleUrl;
    .end local v10           #newEntry:Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;
    .restart local v3       #deleteRequest:Lcom/google/api/client/http/HttpRequest;
    .restart local v4       #deleteUrl:Lcom/google/api/client/googleapis/GoogleUrl;
    .restart local v11       #parentEntry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    .restart local v12       #parentNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    .restart local v13       #parentResourceId:Ljava/lang/String;
    .restart local v14       #srcEntry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    .restart local v15       #srcResourceId:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 500
    .restart local v7       #e:Ljava/io/IOException;
    new-instance v17, Lcom/infraware/filemanager/webstorage/WebStorageException;

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v17
.end method

.method public refreshEntryTree()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/WebStorageException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 229
    iget-object v10, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->folderMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 230
    new-instance v10, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;-><init>(Z)V

    iput-object v10, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    .line 231
    iget-object v10, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    new-instance v11, Lcom/infraware/filemanager/webstorage/objects/GoogleData$TempRootEntry;

    invoke-direct {v11, p0, v12}, Lcom/infraware/filemanager/webstorage/objects/GoogleData$TempRootEntry;-><init>(Lcom/infraware/filemanager/webstorage/objects/GoogleData;Lcom/infraware/filemanager/webstorage/objects/GoogleData$TempRootEntry;)V

    invoke-virtual {v10, v11}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->setUserObject(Ljava/lang/Object;)V

    .line 233
    const/4 v3, 0x0

    .line 234
    .local v3, folderEntries:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;>;"
    const/4 v0, 0x0

    .line 236
    .local v0, documentsEntries:Ljava/util/List;,"Ljava/util/List<Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->retreiveFolderEntries()Ljava/util/List;

    move-result-object v3

    .line 237
    invoke-direct {p0, v3}, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->arrangFolderTree(Ljava/util/List;)V

    .line 238
    invoke-direct {p0}, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->retreiveDocumentEntries()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 250
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-lt v5, v10, :cond_0

    .line 270
    return-void

    .line 239
    .end local v5           #i:I
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 240
    .local v2, e:Ljava/io/IOException;
    iput-object v12, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    .line 241
    new-instance v10, Lcom/infraware/filemanager/webstorage/WebStorageException;

    invoke-direct {v10, v2}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 252
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #i:I
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;

    .line 253
    .local v1, documentsEntry:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;
    invoke-virtual {v1}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->getParentLinkList()Ljava/util/ArrayList;

    move-result-object v8

    .line 254
    .local v8, parentLinkList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    invoke-direct {v9}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;-><init>()V

    .line 255
    .local v9, treeNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    invoke-virtual {v9, v1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->setUserObject(Ljava/lang/Object;)V

    .line 256
    if-eqz v8, :cond_2

    .line 258
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-lt v6, v10, :cond_1

    .line 250
    .end local v6           #j:I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 260
    .restart local v6       #j:I
    :cond_1
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 261
    .local v7, parentLink:Ljava/lang/String;
    iget-object v10, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->folderMap:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    .line 262
    .local v4, folderNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    invoke-virtual {v4, v9}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->add(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V

    .line 258
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 267
    .end local v4           #folderNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    .end local v6           #j:I
    .end local v7           #parentLink:Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    invoke-virtual {v10, v9}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->add(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V

    goto :goto_2
.end method

.method public removeEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V
    .locals 4
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/WebStorageException;
        }
    .end annotation

    .prologue
    .line 379
    iget-object v3, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    if-ne p1, v3, :cond_0

    .line 389
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-virtual {p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 383
    .local v0, entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-interface {v0}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryId()Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, resourceId:Ljava/lang/String;
    check-cast v0, Lcom/infraware/filemanager/webstorage/objects/google/Entry;

    .end local v0           #entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-virtual {v0}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->getEtag()Ljava/lang/String;

    move-result-object v1

    .line 386
    .local v1, etag:Ljava/lang/String;
    invoke-direct {p0, v2, v1}, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->removeEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getParent()Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getChildArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public renameEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/lang/String;)V
    .locals 12
    .parameter "node"
    .parameter "newEntryName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/WebStorageException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 395
    const-string v8, ""

    .line 396
    .local v8, urlPostFix:Ljava/lang/String;
    iget-object v9, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->rootTree:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    if-ne p1, v9, :cond_0

    .line 436
    :goto_0
    return-void

    .line 399
    :cond_0
    invoke-virtual {p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/filemanager/webstorage/objects/google/Entry;

    .line 400
    .local v2, entry:Lcom/infraware/filemanager/webstorage/objects/google/Entry;
    invoke-virtual {v2}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->getEntryId()Ljava/lang/String;

    move-result-object v6

    .line 401
    .local v6, resourceId:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 402
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 404
    :cond_1
    const/4 v4, 0x0

    .line 406
    .local v4, newEntry:Lcom/infraware/filemanager/webstorage/objects/google/Entry;
    invoke-virtual {v2}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->isFolder()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 407
    new-instance v4, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;

    .end local v4           #newEntry:Lcom/infraware/filemanager/webstorage/objects/google/Entry;
    invoke-direct {v4}, Lcom/infraware/filemanager/webstorage/objects/google/FolderEntry;-><init>()V

    .line 411
    .restart local v4       #newEntry:Lcom/infraware/filemanager/webstorage/objects/google/Entry;
    :goto_1
    invoke-virtual {v2}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->getKind()Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;

    move-result-object v9

    invoke-virtual {v9}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry$Kind;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->addCategories(Ljava/lang/String;)V

    .line 412
    invoke-virtual {v4, p2}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->setEntryTitle(Ljava/lang/String;)V

    .line 414
    new-instance v0, Lcom/google/api/client/xml/atom/AtomContent;

    invoke-direct {v0}, Lcom/google/api/client/xml/atom/AtomContent;-><init>()V

    .line 415
    .local v0, content:Lcom/google/api/client/xml/atom/AtomContent;
    sget-object v9, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->NAMESPACE_DICTIONARY:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    iput-object v9, v0, Lcom/google/api/client/xml/atom/AtomContent;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    .line 416
    iput-object v4, v0, Lcom/google/api/client/xml/atom/AtomContent;->entry:Ljava/lang/Object;

    .line 418
    invoke-virtual {v2}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->getEtag()Ljava/lang/String;

    move-result-object v3

    .line 419
    .local v3, etag:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 420
    const-string v3, "*"

    .line 422
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->RELATIVE_URL:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;->fromRelativePath(Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;

    move-result-object v7

    .line 423
    .local v7, url:Lcom/google/api/client/googleapis/GoogleUrl;
    iget-object v9, p0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    invoke-virtual {v9}, Lcom/google/api/client/googleapis/GoogleTransport;->buildPutRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v5

    .line 424
    .local v5, request:Lcom/google/api/client/http/HttpRequest;
    iget-object v9, v5, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    const-string v10, "GData-Version"

    const-string v11, "3.0"

    invoke-virtual {v9, v10, v11}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v9, v5, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    iput-object v3, v9, Lcom/google/api/client/http/HttpHeaders;->ifMatch:Ljava/lang/String;

    .line 426
    iput-object v7, v5, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 427
    iput-object v0, v5, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 430
    :try_start_0
    invoke-virtual {v5}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    invoke-virtual {v2, p2}, Lcom/infraware/filemanager/webstorage/objects/google/Entry;->setEntryTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 409
    .end local v0           #content:Lcom/google/api/client/xml/atom/AtomContent;
    .end local v3           #etag:Ljava/lang/String;
    .end local v5           #request:Lcom/google/api/client/http/HttpRequest;
    .end local v7           #url:Lcom/google/api/client/googleapis/GoogleUrl;
    :cond_3
    new-instance v4, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;

    .end local v4           #newEntry:Lcom/infraware/filemanager/webstorage/objects/google/Entry;
    invoke-direct {v4}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;-><init>()V

    .restart local v4       #newEntry:Lcom/infraware/filemanager/webstorage/objects/google/Entry;
    goto :goto_1

    .line 431
    .restart local v0       #content:Lcom/google/api/client/xml/atom/AtomContent;
    .restart local v3       #etag:Ljava/lang/String;
    .restart local v5       #request:Lcom/google/api/client/http/HttpRequest;
    .restart local v7       #url:Lcom/google/api/client/googleapis/GoogleUrl;
    :catch_0
    move-exception v1

    .line 432
    .local v1, e:Ljava/io/IOException;
    new-instance v9, Lcom/infraware/filemanager/webstorage/WebStorageException;

    invoke-direct {v9, v1}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method

.method public uploadFile(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/io/File;)I
    .locals 45
    .parameter "node"
    .parameter "uploadFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/WebStorageException;
        }
    .end annotation

    .prologue
    .line 613
    invoke-virtual/range {p1 .. p1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->getUserObject()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;

    .line 614
    .local v12, entry:Lcom/infraware/filemanager/webstorage/service/AbstractEntry;
    invoke-interface {v12}, Lcom/infraware/filemanager/webstorage/service/AbstractEntry;->getEntryId()Ljava/lang/String;

    move-result-object v31

    .line 616
    .local v31, targetId:Ljava/lang/String;
    const-string v36, ""

    .line 617
    .local v36, urlPostFix:Ljava/lang/String;
    if-eqz v31, :cond_0

    .line 618
    new-instance v38, Ljava/lang/StringBuilder;

    const-string v39, "/"

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v31 .. v31}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "/contents"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 625
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    .line 626
    .local v15, fileName:Ljava/lang/String;
    new-instance v38, Ljava/lang/StringBuilder;

    const-string v39, "upload/create-session/default/private/full"

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;->fromRelativePath(Ljava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/google/DocumentsListUrl;

    move-result-object v35

    .line 628
    .local v35, url:Lcom/google/api/client/googleapis/GoogleUrl;
    new-instance v5, Lcom/google/api/client/http/InputStreamContent;

    invoke-direct {v5}, Lcom/google/api/client/http/InputStreamContent;-><init>()V

    .line 629
    .local v5, content:Lcom/google/api/client/http/InputStreamContent;
    new-instance v38, Ljava/io/ByteArrayInputStream;

    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [B

    move-object/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v38

    move-object v1, v5

    iput-object v0, v1, Lcom/google/api/client/http/InputStreamContent;->inputStream:Ljava/io/InputStream;

    .line 631
    invoke-static {v15}, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->getMimetypeFromFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 640
    .local v6, contentType:Ljava/lang/String;
    iput-object v6, v5, Lcom/google/api/client/http/InputStreamContent;->type:Ljava/lang/String;

    .line 641
    const-wide/16 v38, 0x0

    move-wide/from16 v0, v38

    move-object v2, v5

    iput-wide v0, v2, Lcom/google/api/client/http/InputStreamContent;->length:J

    .line 643
    invoke-static {v15}, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->cutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/google/api/client/googleapis/GoogleTransport;->buildPostRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v20

    .line 646
    .local v20, initRequest:Lcom/google/api/client/http/HttpRequest;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v38, v0

    const-string v39, "GData-Version"

    const-string v40, "3.0"

    invoke-virtual/range {v38 .. v40}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    move-object/from16 v0, v35

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 648
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object v1, v15

    invoke-static {v0, v1}, Lcom/google/api/client/googleapis/GoogleHeaders;->setSlug(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/String;)V

    .line 649
    move-object v0, v5

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 650
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v38, v0

    const-string v39, "X-Upload-Content-Type"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v38, v0

    const-string v39, "X-Upload-Content-Length"

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v40

    invoke-static/range {v40 .. v41}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    const/16 v21, 0x0

    .line 655
    .local v21, initResponse:Lcom/google/api/client/http/HttpResponse;
    :try_start_0
    invoke-virtual/range {v20 .. v20}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 660
    move-object/from16 v0, v21

    iget v0, v0, Lcom/google/api/client/http/HttpResponse;->statusCode:I

    move/from16 v38, v0

    const/16 v39, 0xc8

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_1

    .line 661
    const/16 v38, -0x1

    .line 808
    :goto_0
    return v38

    .line 656
    :catch_0
    move-exception v11

    .line 657
    .local v11, e:Ljava/io/IOException;
    new-instance v38, Lcom/infraware/filemanager/webstorage/WebStorageException;

    move-object/from16 v0, v38

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v38

    .line 663
    .end local v11           #e:Ljava/io/IOException;
    :cond_1
    const/16 v22, 0x0

    .line 665
    .local v22, inputStream:Ljava/io/InputStream;
    :try_start_1
    new-instance v22, Ljava/io/FileInputStream;

    .end local v22           #inputStream:Ljava/io/InputStream;
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 670
    .restart local v22       #inputStream:Ljava/io/InputStream;
    const/4 v4, 0x0

    check-cast v4, [B

    .line 671
    .local v4, buffer:[B
    const/16 v32, 0x0

    check-cast v32, [B

    .line 672
    .local v32, tmpbuf:[B
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v33

    .line 674
    .local v33, total:J
    const-wide/16 v18, 0x0

    .local v18, index:J
    const-wide/16 v7, 0x0

    .line 675
    .local v7, count:J
    const/16 v27, 0x0

    .local v27, readBytes:I
    const/16 v37, 0x0

    .line 677
    .local v37, writeBytes:I
    const/4 v13, 0x0

    .line 678
    .local v13, exception:Lcom/google/api/client/http/HttpResponseException;
    new-instance v30, Lcom/google/api/client/googleapis/GoogleUrl;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/api/client/http/HttpResponse;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v38, v0

    const-string v39, "Location"

    invoke-virtual/range {v38 .. v39}, Lcom/google/api/client/http/HttpHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/google/api/client/googleapis/GoogleUrl;-><init>(Ljava/lang/String;)V

    .line 680
    .local v30, sendUrl:Lcom/google/api/client/googleapis/GoogleUrl;
    const/16 v28, 0x0

    .line 681
    .local v28, response:Lcom/google/api/client/http/HttpResponse;
    :goto_1
    cmp-long v38, v33, v18

    if-gtz v38, :cond_3

    .line 808
    :cond_2
    const/16 v38, 0x1

    goto :goto_0

    .line 666
    .end local v4           #buffer:[B
    .end local v7           #count:J
    .end local v13           #exception:Lcom/google/api/client/http/HttpResponseException;
    .end local v18           #index:J
    .end local v22           #inputStream:Ljava/io/InputStream;
    .end local v27           #readBytes:I
    .end local v28           #response:Lcom/google/api/client/http/HttpResponse;
    .end local v30           #sendUrl:Lcom/google/api/client/googleapis/GoogleUrl;
    .end local v32           #tmpbuf:[B
    .end local v33           #total:J
    .end local v37           #writeBytes:I
    :catch_1
    move-exception v38

    move-object/from16 v11, v38

    .line 667
    .local v11, e:Ljava/io/FileNotFoundException;
    new-instance v38, Lcom/infraware/filemanager/webstorage/WebStorageException;

    move-object/from16 v0, v38

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v38

    .line 683
    .end local v11           #e:Ljava/io/FileNotFoundException;
    .restart local v4       #buffer:[B
    .restart local v7       #count:J
    .restart local v13       #exception:Lcom/google/api/client/http/HttpResponseException;
    .restart local v18       #index:J
    .restart local v22       #inputStream:Ljava/io/InputStream;
    .restart local v27       #readBytes:I
    .restart local v28       #response:Lcom/google/api/client/http/HttpResponse;
    .restart local v30       #sendUrl:Lcom/google/api/client/googleapis/GoogleUrl;
    .restart local v32       #tmpbuf:[B
    .restart local v33       #total:J
    .restart local v37       #writeBytes:I
    :cond_3
    sget-boolean v38, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->m_bCancel:Z

    if-nez v38, :cond_2

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/google/api/client/googleapis/GoogleTransport;->buildPutRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v29

    .line 687
    .local v29, sendRequest:Lcom/google/api/client/http/HttpRequest;
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 690
    const/high16 v38, 0x4

    :try_start_2
    move/from16 v0, v38

    new-array v0, v0, [B

    move-object v4, v0

    .line 692
    move/from16 v16, v37

    .local v16, i:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v27

    if-lt v0, v1, :cond_9

    .line 695
    sub-int v27, v27, v37

    .line 696
    const/high16 v38, 0x4

    sub-int v38, v38, v27

    move-object/from16 v0, v22

    move-object v1, v4

    move/from16 v2, v27

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide v7, v0

    .line 697
    const-wide/16 v38, -0x1

    cmp-long v38, v7, v38

    if-eqz v38, :cond_4

    .line 699
    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v38, v0

    add-long v38, v38, v7

    move-wide/from16 v0, v38

    long-to-int v0, v0

    move/from16 v27, v0

    .line 700
    move/from16 v0, v27

    int-to-long v0, v0

    move-wide v7, v0

    .line 703
    :cond_4
    iput-object v6, v5, Lcom/google/api/client/http/InputStreamContent;->type:Ljava/lang/String;

    .line 704
    iput-wide v7, v5, Lcom/google/api/client/http/InputStreamContent;->length:J

    .line 705
    new-instance v38, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v38

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v38

    move-object v1, v5

    iput-object v0, v1, Lcom/google/api/client/http/InputStreamContent;->inputStream:Ljava/io/InputStream;

    .line 707
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v38, v0

    const-string v39, "Content-Range"

    new-instance v40, Ljava/lang/StringBuilder;

    const-string v41, "bytes "

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "-"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    add-long v41, v18, v7

    const-wide/16 v43, 0x1

    sub-long v41, v41, v43

    invoke-static/range {v41 .. v42}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, "/"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    move-object v0, v5

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 709
    invoke-virtual/range {v29 .. v29}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v28

    .line 717
    .end local v16           #i:I
    :goto_3
    if-nez v13, :cond_b

    .line 719
    const/4 v14, 0x0

    .line 721
    .local v14, feed:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;
    :try_start_3
    const-class v38, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #feed:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;
    check-cast v14, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 726
    .restart local v14       #feed:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;
    invoke-virtual {v14}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->getSelfLink()Ljava/lang/String;

    move-result-object v9

    .line 727
    .local v9, documentId:Ljava/lang/String;
    const-string v38, "document%3A"

    move-object v0, v9

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 728
    .local v17, idIndex:I
    if-gez v17, :cond_5

    .line 729
    const-string v38, "spreadsheet%3A"

    move-object v0, v9

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 730
    :cond_5
    if-gez v17, :cond_6

    .line 731
    const-string v38, "presentation%3A"

    move-object v0, v9

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 732
    :cond_6
    if-gez v17, :cond_7

    .line 733
    const-string v38, "pdf%3A"

    move-object v0, v9

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 735
    :cond_7
    if-lez v17, :cond_8

    .line 736
    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 738
    :cond_8
    new-instance v10, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;

    invoke-direct {v10}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;-><init>()V

    .line 739
    .local v10, documentsEntry:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;
    invoke-static {v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object v0, v10

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->setEntryId(Ljava/lang/String;)V

    .line 740
    invoke-virtual {v10, v15}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->setEntryTitle(Ljava/lang/String;)V

    .line 741
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    move-object v0, v10

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->setCreatedLong(J)V

    .line 742
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    move-object v0, v10

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->setUpdatedLong(J)V

    .line 743
    const-wide/16 v38, 0x0

    move-object v0, v10

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->setSize(J)V

    .line 744
    invoke-virtual {v14}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->getContent()Lcom/infraware/filemanager/webstorage/objects/google/Content;

    move-result-object v38

    move-object v0, v10

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->setContent(Lcom/infraware/filemanager/webstorage/objects/google/Content;)V

    .line 745
    invoke-virtual {v14}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;->getCategories()Ljava/util/List;

    move-result-object v38

    move-object v0, v10

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;->setCategories(Ljava/util/List;)V

    .line 747
    new-instance v23, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    invoke-direct/range {v23 .. v23}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;-><init>()V

    .line 748
    .local v23, newNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    move-object/from16 v0, v23

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->setUserObject(Ljava/lang/Object;)V

    .line 749
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->add(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V

    .line 751
    const/16 v38, 0x1

    goto/16 :goto_0

    .line 693
    .end local v9           #documentId:Ljava/lang/String;
    .end local v10           #documentsEntry:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsEntry;
    .end local v14           #feed:Lcom/infraware/filemanager/webstorage/objects/google/DocumentsFeed;
    .end local v17           #idIndex:I
    .end local v23           #newNode:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    .restart local v16       #i:I
    :cond_9
    sub-int v38, v16, v37

    :try_start_4
    aget-byte v39, v32, v16

    aput-byte v39, v4, v38
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 692
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 710
    .end local v16           #i:I
    :catch_2
    move-exception v38

    move-object/from16 v11, v38

    .line 711
    .local v11, e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v38

    sget-object v39, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->GOOGLE_EXCEPTION_CLASS:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v38

    if-eqz v38, :cond_a

    .line 712
    new-instance v38, Lcom/infraware/filemanager/webstorage/WebStorageException;

    move-object/from16 v0, v38

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v38

    .line 714
    :cond_a
    move-object v0, v11

    check-cast v0, Lcom/google/api/client/http/HttpResponseException;

    move-object v13, v0

    goto/16 :goto_3

    .line 722
    .end local v11           #e:Ljava/io/IOException;
    :catch_3
    move-exception v38

    move-object/from16 v11, v38

    .line 723
    .restart local v11       #e:Ljava/io/IOException;
    const/16 v38, 0x1

    goto/16 :goto_0

    .line 756
    .end local v11           #e:Ljava/io/IOException;
    :cond_b
    move-object v0, v13

    iget-object v0, v0, Lcom/google/api/client/http/HttpResponseException;->response:Lcom/google/api/client/http/HttpResponse;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/google/api/client/http/HttpResponse;->statusCode:I

    move/from16 v38, v0

    const/16 v39, 0x1f7

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_c

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->docTransport:Lcom/google/api/client/googleapis/GoogleTransport;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/google/api/client/googleapis/GoogleTransport;->buildPutRequest()Lcom/google/api/client/http/HttpRequest;

    move-result-object v24

    .line 759
    .local v24, queryRequest:Lcom/google/api/client/http/HttpRequest;
    move-object/from16 v0, v30

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/google/api/client/http/HttpRequest;->url:Lcom/google/api/client/http/GenericUrl;

    .line 761
    new-instance v38, Ljava/io/ByteArrayInputStream;

    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [B

    move-object/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v38

    move-object v1, v5

    iput-object v0, v1, Lcom/google/api/client/http/InputStreamContent;->inputStream:Ljava/io/InputStream;

    .line 762
    const-string v38, "text/html"

    move-object/from16 v0, v38

    move-object v1, v5

    iput-object v0, v1, Lcom/google/api/client/http/InputStreamContent;->type:Ljava/lang/String;

    .line 763
    const-wide/16 v38, 0x0

    move-wide/from16 v0, v38

    move-object v2, v5

    iput-wide v0, v2, Lcom/google/api/client/http/InputStreamContent;->length:J

    .line 765
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/google/api/client/http/HttpRequest;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v38, v0

    const-string v39, "Content-Range"

    new-instance v40, Ljava/lang/StringBuilder;

    const-string v41, "bytes * /"

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Lcom/google/api/client/http/HttpHeaders;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    move-object v0, v5

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/google/api/client/http/HttpRequest;->content:Lcom/google/api/client/http/HttpContent;

    .line 769
    :try_start_5
    invoke-virtual/range {v24 .. v24}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/google/api/client/http/HttpResponse;->ignore()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 781
    .end local v24           #queryRequest:Lcom/google/api/client/http/HttpRequest;
    :cond_c
    move-object v0, v13

    iget-object v0, v0, Lcom/google/api/client/http/HttpResponseException;->response:Lcom/google/api/client/http/HttpResponse;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/google/api/client/http/HttpResponse;->statusCode:I

    move/from16 v38, v0

    const/16 v39, 0x134

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_12

    .line 783
    move-object v0, v13

    iget-object v0, v0, Lcom/google/api/client/http/HttpResponseException;->response:Lcom/google/api/client/http/HttpResponse;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/google/api/client/http/HttpResponse;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v38, v0

    const-string v39, "Location"

    invoke-virtual/range {v38 .. v39}, Lcom/google/api/client/http/HttpHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    if-eqz v38, :cond_d

    .line 784
    new-instance v30, Lcom/google/api/client/googleapis/GoogleUrl;

    .end local v30           #sendUrl:Lcom/google/api/client/googleapis/GoogleUrl;
    move-object v0, v13

    iget-object v0, v0, Lcom/google/api/client/http/HttpResponseException;->response:Lcom/google/api/client/http/HttpResponse;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/google/api/client/http/HttpResponse;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v38, v0

    const-string v39, "Location"

    invoke-virtual/range {v38 .. v39}, Lcom/google/api/client/http/HttpHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v30

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/google/api/client/googleapis/GoogleUrl;-><init>(Ljava/lang/String;)V

    .line 786
    .restart local v30       #sendUrl:Lcom/google/api/client/googleapis/GoogleUrl;
    :cond_d
    move-object v0, v13

    iget-object v0, v0, Lcom/google/api/client/http/HttpResponseException;->response:Lcom/google/api/client/http/HttpResponse;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/google/api/client/http/HttpResponse;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v38, v0

    const-string v39, "Range"

    invoke-virtual/range {v38 .. v39}, Lcom/google/api/client/http/HttpHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    if-eqz v38, :cond_10

    .line 788
    move-object v0, v13

    iget-object v0, v0, Lcom/google/api/client/http/HttpResponseException;->response:Lcom/google/api/client/http/HttpResponse;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/google/api/client/http/HttpResponse;->headers:Lcom/google/api/client/http/HttpHeaders;

    move-object/from16 v38, v0

    const-string v39, "Range"

    invoke-virtual/range {v38 .. v39}, Lcom/google/api/client/http/HttpHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    .line 789
    .local v25, range:Ljava/lang/String;
    const-string v38, "bytes="

    move-object/from16 v0, v25

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_e

    .line 790
    const/16 v38, 0x6

    move-object/from16 v0, v25

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    .line 792
    :cond_e
    const/16 v38, 0x2d

    move-object/from16 v0, v25

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v26

    .line 793
    .local v26, rangeIndex:I
    const/16 v38, -0x1

    move/from16 v0, v26

    move/from16 v1, v38

    if-eq v0, v1, :cond_f

    .line 794
    add-int/lit8 v38, v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    .line 796
    :cond_f
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Integer;->intValue()I

    move-result v38

    add-int/lit8 v38, v38, 0x1

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v39, v0

    sub-int v37, v38, v39

    .line 797
    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v38, v0

    add-long v18, v18, v38

    .line 800
    .end local v25           #range:Ljava/lang/String;
    .end local v26           #rangeIndex:I
    :cond_10
    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v32

    .end local v32           #tmpbuf:[B
    check-cast v32, [B

    .line 805
    .restart local v32       #tmpbuf:[B
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 770
    .restart local v24       #queryRequest:Lcom/google/api/client/http/HttpRequest;
    :catch_4
    move-exception v38

    move-object/from16 v11, v38

    .line 771
    .restart local v11       #e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v38

    sget-object v39, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->GOOGLE_EXCEPTION_CLASS:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v38

    if-eqz v38, :cond_11

    .line 772
    new-instance v38, Lcom/infraware/filemanager/webstorage/WebStorageException;

    move-object/from16 v0, v38

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v38

    .line 774
    :cond_11
    move-object v0, v11

    check-cast v0, Lcom/google/api/client/http/HttpResponseException;

    move-object v13, v0

    .line 775
    move-object v0, v13

    iget-object v0, v0, Lcom/google/api/client/http/HttpResponseException;->response:Lcom/google/api/client/http/HttpResponse;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/google/api/client/http/HttpResponse;->statusCode:I

    move/from16 v38, v0

    const/16 v39, 0x134

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_c

    .line 776
    new-instance v38, Lcom/infraware/filemanager/webstorage/WebStorageException;

    move-object/from16 v0, v38

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v38

    .line 803
    .end local v11           #e:Ljava/io/IOException;
    .end local v24           #queryRequest:Lcom/google/api/client/http/HttpRequest;
    :cond_12
    new-instance v38, Lcom/infraware/filemanager/webstorage/WebStorageException;

    move-object/from16 v0, v38

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/infraware/filemanager/webstorage/WebStorageException;-><init>(Ljava/lang/Throwable;)V

    throw v38
.end method
