.class public final Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceMethod;
.super Ljava/lang/Object;
.source "DiscoveryDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/json/DiscoveryDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceMethod"
.end annotation


# instance fields
.field public httpMethod:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public final methodType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field public parameters:Ljava/util/Map;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceParameter;",
            ">;"
        }
    .end annotation
.end field

.field public pathUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const-string v0, "rest"

    iput-object v0, p0, Lcom/google/api/client/googleapis/json/DiscoveryDocument$ServiceMethod;->methodType:Ljava/lang/String;

    return-void
.end method
