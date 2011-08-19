.class public Lcom/android/volley/NetworkResponse;
.super Ljava/lang/Object;
.source "NetworkResponse.java"


# instance fields
.field public final data:[B

.field public final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final notModified:Z


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .parameter "data"

    .prologue
    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/volley/NetworkResponse;-><init>([BLjava/util/Map;Z)V

    .line 26
    return-void
.end method

.method public constructor <init>([BLjava/util/Map;Z)V
    .locals 0
    .parameter "data"
    .parameter
    .parameter "notModified"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/volley/NetworkResponse;->data:[B

    .line 20
    iput-object p2, p0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    .line 21
    iput-boolean p3, p0, Lcom/android/volley/NetworkResponse;->notModified:Z

    .line 22
    return-void
.end method
