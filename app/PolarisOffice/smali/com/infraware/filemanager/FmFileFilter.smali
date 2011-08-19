.class public Lcom/infraware/filemanager/FmFileFilter;
.super Ljava/lang/Object;
.source "FmFileFilter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field m_bIsFolder:Z

.field m_strPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .parameter "a_bIsFolder"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/filemanager/FmFileFilter;->m_strPath:Ljava/lang/String;

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/filemanager/FmFileFilter;->m_bIsFolder:Z

    .line 12
    iput-boolean p1, p0, Lcom/infraware/filemanager/FmFileFilter;->m_bIsFolder:Z

    .line 13
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5
    .parameter "dir"
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 18
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_0

    move v2, v4

    .line 24
    :goto_0
    return v2

    .line 21
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/infraware/filemanager/FmFileFilter;->m_strPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, strPathFileName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    iget-boolean v3, p0, Lcom/infraware/filemanager/FmFileFilter;->m_bIsFolder:Z

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "a_strPath"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/infraware/filemanager/FmFileFilter;->m_strPath:Ljava/lang/String;

    .line 30
    return-void
.end method
