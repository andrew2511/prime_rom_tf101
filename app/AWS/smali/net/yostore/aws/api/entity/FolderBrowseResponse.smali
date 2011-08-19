.class public Lnet/yostore/aws/api/entity/FolderBrowseResponse;
.super Lnet/yostore/aws/api/entity/ApiResponse;
.source "FolderBrowseResponse.java"


# instance fields
.field private _attribute:Lnet/yostore/aws/api/entity/Attribute;

.field private _hasnextpage:Z

.field private _pageno:I

.field private _pagesize:I

.field private _parentFolder:Lnet/yostore/aws/api/entity/ParentFolder;

.field private _scrip:Ljava/lang/String;

.field private _totalcount:I

.field private fileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private folderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/FolderInfo;",
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

    .line 7
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->fileList:Ljava/util/List;

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->folderList:Ljava/util/List;

    .line 6
    return-void
.end method


# virtual methods
.method public getAttribute()Lnet/yostore/aws/api/entity/Attribute;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->_attribute:Lnet/yostore/aws/api/entity/Attribute;

    return-object v0
.end method

.method public getFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->fileList:Ljava/util/List;

    return-object v0
.end method

.method public getFolderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/FolderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->folderList:Ljava/util/List;

    return-object v0
.end method

.method public getHasnextpage()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->_hasnextpage:Z

    return v0
.end method

.method public getPageno()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->_pageno:I

    return v0
.end method

.method public getPagesize()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->_pagesize:I

    return v0
.end method

.method public getParentFolder()Lnet/yostore/aws/api/entity/ParentFolder;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->_parentFolder:Lnet/yostore/aws/api/entity/ParentFolder;

    return-object v0
.end method

.method public getScrip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->_scrip:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalcount()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->_totalcount:I

    return v0
.end method

.method public setAttribute(Lnet/yostore/aws/api/entity/Attribute;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 22
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->_attribute:Lnet/yostore/aws/api/entity/Attribute;

    return-void
.end method

.method public setFileList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9
    .local p1, fileList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FileInfo;>;"
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->fileList:Ljava/util/List;

    return-void
.end method

.method public setFolderList(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/api/entity/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, folderList:Ljava/util/List;,"Ljava/util/List<Lnet/yostore/aws/api/entity/FolderInfo;>;"
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->folderList:Ljava/util/List;

    return-void
.end method

.method public setHasnextpage(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 42
    iput-boolean p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->_hasnextpage:Z

    return-void
.end method

.method public setPageno(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 30
    iput p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->_pageno:I

    return-void
.end method

.method public setPagesize(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 34
    iput p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->_pagesize:I

    return-void
.end method

.method public setParentFolder(Lnet/yostore/aws/api/entity/ParentFolder;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 18
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->_parentFolder:Lnet/yostore/aws/api/entity/ParentFolder;

    return-void
.end method

.method public setScrip(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 26
    iput-object p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->_scrip:Ljava/lang/String;

    return-void
.end method

.method public setTotalcount(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 38
    iput p1, p0, Lnet/yostore/aws/api/entity/FolderBrowseResponse;->_totalcount:I

    return-void
.end method
