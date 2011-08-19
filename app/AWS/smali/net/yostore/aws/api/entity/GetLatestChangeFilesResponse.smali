.class public Lnet/yostore/aws/api/entity/GetLatestChangeFilesResponse;
.super Lnet/yostore/aws/api/entity/ApiResponse;
.source "GetLatestChangeFilesResponse.java"


# instance fields
.field private LastestChangeFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/BaseEntry;",
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

    .line 8
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/entity/GetLatestChangeFilesResponse;->LastestChangeFileList:Ljava/util/List;

    .line 6
    return-void
.end method


# virtual methods
.method public getLatestChangeFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/BaseEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lnet/yostore/aws/api/entity/GetLatestChangeFilesResponse;->LastestChangeFileList:Ljava/util/List;

    return-object v0
.end method

.method public setLatestChangeFileList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/BaseEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p1, LastestChangeFileList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/BaseEntry;>;"
    iput-object p1, p0, Lnet/yostore/aws/api/entity/GetLatestChangeFilesResponse;->LastestChangeFileList:Ljava/util/List;

    .line 17
    return-void
.end method
