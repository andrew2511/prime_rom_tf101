.class public Lnet/yostore/aws/api/entity/GetSharedEntriesResponse;
.super Lnet/yostore/aws/api/entity/ApiResponse;
.source "GetSharedEntriesResponse.java"


# instance fields
.field private lastentrybound:Ljava/lang/String;

.field private sharedEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/SharedEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lnet/yostore/aws/api/entity/ApiResponse;-><init>()V

    .line 9
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesResponse;->sharedEntryList:Ljava/util/List;

    .line 6
    return-void
.end method


# virtual methods
.method public getLastentrybound()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesResponse;->lastentrybound:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedEntryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/SharedEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesResponse;->sharedEntryList:Ljava/util/List;

    return-object v0
.end method

.method public setLastentrybound(Ljava/lang/String;)V
    .locals 0
    .parameter "lastentrybound"

    .prologue
    .line 17
    iput-object p1, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesResponse;->lastentrybound:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setSharedEntryList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/SharedEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, sharedEntryList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/SharedEntry;>;"
    iput-object p1, p0, Lnet/yostore/aws/api/entity/GetSharedEntriesResponse;->sharedEntryList:Ljava/util/List;

    .line 26
    return-void
.end method
