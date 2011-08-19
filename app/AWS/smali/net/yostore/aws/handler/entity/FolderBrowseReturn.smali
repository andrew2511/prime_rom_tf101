.class public Lnet/yostore/aws/handler/entity/FolderBrowseReturn;
.super Ljava/lang/Object;
.source "FolderBrowseReturn.java"


# instance fields
.field private fbTotal:I

.field public fsInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private parentFolderId:Ljava/lang/String;

.field private parentFolderName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->fsInfos:Ljava/util/List;

    .line 7
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->parentFolderId:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->parentFolderName:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->fbTotal:I

    .line 11
    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter "fbTotal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, fsInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->fsInfos:Ljava/util/List;

    .line 7
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->parentFolderId:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->parentFolderName:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->fbTotal:I

    .line 21
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->fsInfos:Ljava/util/List;

    .line 22
    iput p2, p0, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->fbTotal:I

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "parentFolderId"
    .parameter "parentFolderName"
    .parameter "fbTotal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p1, fsInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->fsInfos:Ljava/util/List;

    .line 7
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->parentFolderId:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->parentFolderName:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->fbTotal:I

    .line 14
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->fsInfos:Ljava/util/List;

    .line 15
    iput-object p2, p0, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->parentFolderId:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->parentFolderName:Ljava/lang/String;

    .line 17
    iput p4, p0, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->fbTotal:I

    .line 18
    return-void
.end method


# virtual methods
.method public getFbTotal()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->fbTotal:I

    return v0
.end method

.method public getFsInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->fsInfos:Ljava/util/List;

    return-object v0
.end method

.method public getParentFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->parentFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getParentFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->parentFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public setFbTotal(I)V
    .locals 0
    .parameter "fbTotal"

    .prologue
    .line 59
    iput p1, p0, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->fbTotal:I

    .line 60
    return-void
.end method

.method public setFsInfos(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, fsInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->fsInfos:Ljava/util/List;

    .line 50
    return-void
.end method

.method public setParentFolderId(Ljava/lang/String;)V
    .locals 0
    .parameter "parentFolderId"

    .prologue
    .line 31
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->parentFolderId:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setParentFolderName(Ljava/lang/String;)V
    .locals 0
    .parameter "parentFolderName"

    .prologue
    .line 39
    iput-object p1, p0, Lnet/yostore/aws/handler/entity/FolderBrowseReturn;->parentFolderName:Ljava/lang/String;

    .line 40
    return-void
.end method
