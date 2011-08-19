.class public Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;
.super Lnet/yostore/aws/api/entity/ApiResponse;
.source "GetSharedFolderListResponse.java"


# instance fields
.field private _scrip:Ljava/lang/String;

.field private folderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/UserSharedFolderInfo;",
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

    iput-object v0, p0, Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;->folderList:Ljava/util/List;

    .line 6
    return-void
.end method


# virtual methods
.method public getFolderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/UserSharedFolderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9
    iget-object v0, p0, Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;->folderList:Ljava/util/List;

    return-object v0
.end method

.method public getScrip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;->_scrip:Ljava/lang/String;

    return-object v0
.end method

.method public setFolderList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/UserSharedFolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 10
    .local p1, folderList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/UserSharedFolderInfo;>;"
    iput-object p1, p0, Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;->folderList:Ljava/util/List;

    return-void
.end method

.method public setScrip(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 15
    iput-object p1, p0, Lnet/yostore/aws/api/entity/GetSharedFolderListResponse;->_scrip:Ljava/lang/String;

    return-void
.end method
