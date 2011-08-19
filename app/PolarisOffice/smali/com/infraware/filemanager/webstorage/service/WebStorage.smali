.class public Lcom/infraware/filemanager/webstorage/service/WebStorage;
.super Ljava/lang/Object;
.source "WebStorage.java"


# static fields
.field private static final instance:Lcom/infraware/filemanager/webstorage/service/WebStorage;


# instance fields
.field private boxnetDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/infraware/filemanager/webstorage/objects/BoxNetData;",
            ">;"
        }
    .end annotation
.end field

.field private googleDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/infraware/filemanager/webstorage/objects/GoogleData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/infraware/filemanager/webstorage/service/WebStorage;

    invoke-direct {v0}, Lcom/infraware/filemanager/webstorage/service/WebStorage;-><init>()V

    sput-object v0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->instance:Lcom/infraware/filemanager/webstorage/service/WebStorage;

    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->boxnetDataMap:Ljava/util/HashMap;

    .line 31
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->googleDataMap:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/.temp/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 45
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/infraware/filemanager/webstorage/service/WebStorage;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->instance:Lcom/infraware/filemanager/webstorage/service/WebStorage;

    return-object v0
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->googleDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 117
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->boxnetDataMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 118
    return-void
.end method

.method public getData(ILjava/lang/String;)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    .locals 2
    .parameter "serviceType"
    .parameter "userId"

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 86
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->googleDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    check-cast v0, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    .line 92
    .restart local v0       #data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    :cond_0
    :goto_0
    return-object v0

    .line 87
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->boxnetDataMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    check-cast v0, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    .restart local v0       #data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    goto :goto_0
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;I)Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    .locals 4
    .parameter "userId"
    .parameter "password"
    .parameter "serviceType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;,
            Lcom/infraware/filemanager/webstorage/WebStorageException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 59
    .local v1, data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 60
    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->googleDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    check-cast v1, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    .restart local v1       #data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    if-nez v1, :cond_0

    .line 61
    new-instance v1, Lcom/infraware/filemanager/webstorage/objects/GoogleData;

    .end local v1           #data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    invoke-direct {v1}, Lcom/infraware/filemanager/webstorage/objects/GoogleData;-><init>()V

    .line 62
    .restart local v1       #data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    invoke-virtual {v1, p1, p2}, Lcom/infraware/filemanager/webstorage/objects/GoogleData;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v3, p0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->googleDataMap:Ljava/util/HashMap;

    move-object v0, v1

    check-cast v0, Lcom/infraware/filemanager/webstorage/objects/GoogleData;

    move-object v2, v0

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    :goto_0
    return-object v1

    .line 65
    :cond_1
    const/4 v2, 0x2

    if-ne p3, v2, :cond_0

    .line 66
    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->boxnetDataMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    check-cast v1, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;

    .restart local v1       #data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;

    .end local v1           #data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    invoke-direct {v1}, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;-><init>()V

    .line 68
    .restart local v1       #data:Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
    invoke-virtual {v1, p1, p2}, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v3, p0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->boxnetDataMap:Ljava/util/HashMap;

    move-object v0, v1

    check-cast v0, Lcom/infraware/filemanager/webstorage/objects/BoxNetData;

    move-object v2, v0

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeData(ILjava/lang/String;)V
    .locals 1
    .parameter "serviceType"
    .parameter "userId"

    .prologue
    .line 102
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->googleDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/service/WebStorage;->boxnetDataMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
