.class public final Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceDefinition;
.super Ljava/lang/Object;
.source "DiscoveryDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/json/DiscoveryDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceDefinition"
.end annotation


# instance fields
.field public baseUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public resources:Ljava/util/Map;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResourceMethod(Ljava/lang/String;)Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceMethod;
    .locals 5
    .parameter "methodIdentifier"

    .prologue
    .line 69
    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 70
    .local v0, dot:I
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, resourceName:Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, methodName:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceDefinition;->resources:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceResource;

    .line 73
    .local v2, resource:Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceResource;
    if-nez v2, :cond_0

    const/4 v4, 0x0

    .end local p0
    :goto_0
    return-object v4

    .restart local p0
    :cond_0
    iget-object v4, v2, Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceResource;->methods:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceMethod;

    move-object v4, p0

    goto :goto_0
.end method

.method getResourceUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "methodIdentifier"

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceDefinition;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceDefinition;->getResourceMethod(Ljava/lang/String;)Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceMethod;

    move-result-object v1

    iget-object v1, v1, Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceMethod;->pathUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
