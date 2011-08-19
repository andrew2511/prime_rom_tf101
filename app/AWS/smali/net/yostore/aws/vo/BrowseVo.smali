.class public Lnet/yostore/aws/vo/BrowseVo;
.super Ljava/lang/Object;
.source "BrowseVo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;
    }
.end annotation


# instance fields
.field private browseFolderId:Ljava/lang/String;

.field private browseFolderName:Ljava/lang/String;

.field private browsePage:I

.field private browseTotal:I

.field private browseType:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

.field private errMsg:Ljava/lang/String;

.field private fsInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isBackup:Z

.field private isReadOnly:Z

.field private parentFolderId:Ljava/lang/String;

.field private parentFolderName:Ljava/lang/String;

.field private search:Lnet/yostore/aws/handler/entity/Search;

.field private searchOffset:I

.field private status:Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/dto/BrowseToObject$BrowseType;)V
    .locals 3
    .parameter "browseType"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Browse:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    iput-object v0, p0, Lnet/yostore/aws/vo/BrowseVo;->browseType:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    .line 11
    iput-object v1, p0, Lnet/yostore/aws/vo/BrowseVo;->fsInfos:Ljava/util/List;

    .line 12
    iput-object v1, p0, Lnet/yostore/aws/vo/BrowseVo;->browseFolderId:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lnet/yostore/aws/vo/BrowseVo;->browseFolderName:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lnet/yostore/aws/vo/BrowseVo;->parentFolderId:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lnet/yostore/aws/vo/BrowseVo;->parentFolderName:Ljava/lang/String;

    .line 16
    iput v2, p0, Lnet/yostore/aws/vo/BrowseVo;->browseTotal:I

    .line 17
    iput v2, p0, Lnet/yostore/aws/vo/BrowseVo;->searchOffset:I

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lnet/yostore/aws/vo/BrowseVo;->browsePage:I

    .line 19
    iput-boolean v2, p0, Lnet/yostore/aws/vo/BrowseVo;->isBackup:Z

    .line 20
    iput-boolean v2, p0, Lnet/yostore/aws/vo/BrowseVo;->isReadOnly:Z

    .line 65
    iput-object p1, p0, Lnet/yostore/aws/vo/BrowseVo;->browseType:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    .line 66
    return-void
.end method


# virtual methods
.method public getBrowseFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lnet/yostore/aws/vo/BrowseVo;->browseFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getBrowseFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lnet/yostore/aws/vo/BrowseVo;->browseFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getBrowsePage()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lnet/yostore/aws/vo/BrowseVo;->browsePage:I

    return v0
.end method

.method public getBrowseTotal()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lnet/yostore/aws/vo/BrowseVo;->browseTotal:I

    return v0
.end method

.method public getBrowseType()Lnet/yostore/aws/dto/BrowseToObject$BrowseType;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lnet/yostore/aws/vo/BrowseVo;->browseType:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    return-object v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lnet/yostore/aws/vo/BrowseVo;->errMsg:Ljava/lang/String;

    return-object v0
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
    .line 82
    iget-object v0, p0, Lnet/yostore/aws/vo/BrowseVo;->fsInfos:Ljava/util/List;

    return-object v0
.end method

.method public getParentFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lnet/yostore/aws/vo/BrowseVo;->parentFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getParentFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lnet/yostore/aws/vo/BrowseVo;->parentFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public getSearch()Lnet/yostore/aws/handler/entity/Search;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lnet/yostore/aws/vo/BrowseVo;->search:Lnet/yostore/aws/handler/entity/Search;

    return-object v0
.end method

.method public getSearchOffset()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lnet/yostore/aws/vo/BrowseVo;->searchOffset:I

    return v0
.end method

.method public getStatus()Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lnet/yostore/aws/vo/BrowseVo;->status:Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    return-object v0
.end method

.method public isBackup()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lnet/yostore/aws/vo/BrowseVo;->isBackup:Z

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lnet/yostore/aws/vo/BrowseVo;->isReadOnly:Z

    return v0
.end method

.method public setBackup(Z)V
    .locals 0
    .parameter "isBackup"

    .prologue
    .line 206
    iput-boolean p1, p0, Lnet/yostore/aws/vo/BrowseVo;->isBackup:Z

    .line 207
    return-void
.end method

.method public setBrowseFolderId(Ljava/lang/String;)V
    .locals 0
    .parameter "browseFolderId"

    .prologue
    .line 100
    iput-object p1, p0, Lnet/yostore/aws/vo/BrowseVo;->browseFolderId:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setBrowseFolderName(Ljava/lang/String;)V
    .locals 0
    .parameter "browseFolderName"

    .prologue
    .line 112
    iput-object p1, p0, Lnet/yostore/aws/vo/BrowseVo;->browseFolderName:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setBrowsePage(I)V
    .locals 0
    .parameter "browsePage"

    .prologue
    .line 160
    iput p1, p0, Lnet/yostore/aws/vo/BrowseVo;->browsePage:I

    .line 161
    return-void
.end method

.method public setBrowseTotal(I)V
    .locals 0
    .parameter "browseTotal"

    .prologue
    .line 148
    iput p1, p0, Lnet/yostore/aws/vo/BrowseVo;->browseTotal:I

    .line 149
    return-void
.end method

.method public setBrowseType(Lnet/yostore/aws/dto/BrowseToObject$BrowseType;)V
    .locals 0
    .parameter "browseType"

    .prologue
    .line 76
    iput-object p1, p0, Lnet/yostore/aws/vo/BrowseVo;->browseType:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    .line 77
    return-void
.end method

.method public setErrMsg(Ljava/lang/String;)V
    .locals 0
    .parameter "errMsg"

    .prologue
    .line 172
    iput-object p1, p0, Lnet/yostore/aws/vo/BrowseVo;->errMsg:Ljava/lang/String;

    .line 173
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
    .line 88
    .local p1, fsInfos:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/handler/entity/FsInfo;>;"
    iput-object p1, p0, Lnet/yostore/aws/vo/BrowseVo;->fsInfos:Ljava/util/List;

    .line 89
    return-void
.end method

.method public setParentFolderId(Ljava/lang/String;)V
    .locals 0
    .parameter "parentFolderId"

    .prologue
    .line 124
    iput-object p1, p0, Lnet/yostore/aws/vo/BrowseVo;->parentFolderId:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setParentFolderName(Ljava/lang/String;)V
    .locals 0
    .parameter "parentFolderName"

    .prologue
    .line 136
    iput-object p1, p0, Lnet/yostore/aws/vo/BrowseVo;->parentFolderName:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0
    .parameter "isReadOnly"

    .prologue
    .line 216
    iput-boolean p1, p0, Lnet/yostore/aws/vo/BrowseVo;->isReadOnly:Z

    .line 217
    return-void
.end method

.method public setSearch(Lnet/yostore/aws/handler/entity/Search;)V
    .locals 1
    .parameter "search"

    .prologue
    .line 226
    iput-object p1, p0, Lnet/yostore/aws/vo/BrowseVo;->search:Lnet/yostore/aws/handler/entity/Search;

    .line 227
    sget-object v0, Lnet/yostore/aws/dto/BrowseToObject$BrowseType;->Search:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    iput-object v0, p0, Lnet/yostore/aws/vo/BrowseVo;->browseType:Lnet/yostore/aws/dto/BrowseToObject$BrowseType;

    .line 228
    return-void
.end method

.method public setSearchOffset(I)V
    .locals 0
    .parameter "searchOffset"

    .prologue
    .line 196
    iput p1, p0, Lnet/yostore/aws/vo/BrowseVo;->searchOffset:I

    .line 197
    return-void
.end method

.method public setStatus(Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 184
    iput-object p1, p0, Lnet/yostore/aws/vo/BrowseVo;->status:Lnet/yostore/aws/vo/BrowseVo$BrowseStatus;

    .line 185
    return-void
.end method
