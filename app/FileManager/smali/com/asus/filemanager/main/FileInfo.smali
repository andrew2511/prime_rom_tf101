.class public Lcom/asus/filemanager/main/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# static fields
.field private static folder_depth:I


# instance fields
.field public PermissionRead:Z

.field public PermissionWrite:Z

.field public numFiles:I

.field public numFolders:I

.field public numSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput v0, Lcom/asus/filemanager/main/FileInfo;->folder_depth:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean v0, p0, Lcom/asus/filemanager/main/FileInfo;->PermissionRead:Z

    .line 10
    iput-boolean v0, p0, Lcom/asus/filemanager/main/FileInfo;->PermissionWrite:Z

    .line 11
    iput v0, p0, Lcom/asus/filemanager/main/FileInfo;->numFiles:I

    .line 12
    iput v0, p0, Lcom/asus/filemanager/main/FileInfo;->numFolders:I

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/asus/filemanager/main/FileInfo;->numSize:J

    return-void
.end method

.method public static getArrayInfo([Ljava/io/File;Landroid/os/Handler;I)Lcom/asus/filemanager/main/FileInfo;
    .locals 9
    .parameter "fa"
    .parameter "h"
    .parameter "Msg"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 58
    new-instance v1, Lcom/asus/filemanager/main/FileInfo;

    invoke-direct {v1}, Lcom/asus/filemanager/main/FileInfo;-><init>()V

    .line 59
    .local v1, info:Lcom/asus/filemanager/main/FileInfo;
    sput v7, Lcom/asus/filemanager/main/FileInfo;->folder_depth:I

    .line 60
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-eqz p0, :cond_2

    array-length v3, p0

    if-ge v0, v3, :cond_2

    aget-object v3, p0, v0

    if-eqz v3, :cond_2

    .line 62
    aget-object v3, p0, v0

    invoke-static {v3, p1, p2}, Lcom/asus/filemanager/main/FileInfo;->getInfo(Ljava/io/File;Landroid/os/Handler;I)Lcom/asus/filemanager/main/FileInfo;

    move-result-object v2

    .line 63
    .local v2, t:Lcom/asus/filemanager/main/FileInfo;
    iget-boolean v3, v1, Lcom/asus/filemanager/main/FileInfo;->PermissionRead:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/asus/filemanager/main/FileInfo;->PermissionRead:Z

    if-eqz v3, :cond_0

    move v3, v8

    :goto_1
    iput-boolean v3, v1, Lcom/asus/filemanager/main/FileInfo;->PermissionRead:Z

    .line 64
    iget-boolean v3, v1, Lcom/asus/filemanager/main/FileInfo;->PermissionWrite:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Lcom/asus/filemanager/main/FileInfo;->PermissionWrite:Z

    if-eqz v3, :cond_1

    move v3, v8

    :goto_2
    iput-boolean v3, v1, Lcom/asus/filemanager/main/FileInfo;->PermissionWrite:Z

    .line 65
    iget v3, v1, Lcom/asus/filemanager/main/FileInfo;->numFiles:I

    iget v4, v2, Lcom/asus/filemanager/main/FileInfo;->numFiles:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/asus/filemanager/main/FileInfo;->numFiles:I

    .line 66
    iget v3, v1, Lcom/asus/filemanager/main/FileInfo;->numFolders:I

    iget v4, v2, Lcom/asus/filemanager/main/FileInfo;->numFolders:I

    add-int/2addr v3, v4

    iput v3, v1, Lcom/asus/filemanager/main/FileInfo;->numFolders:I

    .line 67
    iget-wide v3, v1, Lcom/asus/filemanager/main/FileInfo;->numSize:J

    iget-wide v5, v2, Lcom/asus/filemanager/main/FileInfo;->numSize:J

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/asus/filemanager/main/FileInfo;->numSize:J

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v3, v7

    .line 63
    goto :goto_1

    :cond_1
    move v3, v7

    .line 64
    goto :goto_2

    .line 69
    .end local v2           #t:Lcom/asus/filemanager/main/FileInfo;
    :cond_2
    return-object v1
.end method

.method public static getInfo(Ljava/io/File;Landroid/os/Handler;I)Lcom/asus/filemanager/main/FileInfo;
    .locals 10
    .parameter "f"
    .parameter "h"
    .parameter "Msg"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 20
    new-instance v2, Lcom/asus/filemanager/main/FileInfo;

    invoke-direct {v2}, Lcom/asus/filemanager/main/FileInfo;-><init>()V

    .line 21
    .local v2, info:Lcom/asus/filemanager/main/FileInfo;
    if-eqz p0, :cond_0

    sget v4, Lcom/asus/filemanager/main/FileInfo;->folder_depth:I

    const/16 v5, 0x20

    if-le v4, v5, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-object v2

    .line 22
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 24
    sget v4, Lcom/asus/filemanager/main/FileInfo;->folder_depth:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/asus/filemanager/main/FileInfo;->folder_depth:I

    .line 25
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v4

    iput-boolean v4, v2, Lcom/asus/filemanager/main/FileInfo;->PermissionRead:Z

    .line 26
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v4

    iput-boolean v4, v2, Lcom/asus/filemanager/main/FileInfo;->PermissionWrite:Z

    .line 27
    iput v9, v2, Lcom/asus/filemanager/main/FileInfo;->numFiles:I

    .line 28
    iput v8, v2, Lcom/asus/filemanager/main/FileInfo;->numFolders:I

    .line 29
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/asus/filemanager/main/FileInfo;->numSize:J

    .line 30
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 31
    .local v0, childs:[Ljava/io/File;
    if-eqz v0, :cond_4

    .line 33
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_4

    aget-object v4, v0, v1

    if-eqz v4, :cond_4

    .line 35
    aget-object v4, v0, v1

    invoke-static {v4, p1, p2}, Lcom/asus/filemanager/main/FileInfo;->getInfo(Ljava/io/File;Landroid/os/Handler;I)Lcom/asus/filemanager/main/FileInfo;

    move-result-object v3

    .line 36
    .local v3, t:Lcom/asus/filemanager/main/FileInfo;
    iget-boolean v4, v2, Lcom/asus/filemanager/main/FileInfo;->PermissionRead:Z

    if-eqz v4, :cond_2

    iget-boolean v4, v3, Lcom/asus/filemanager/main/FileInfo;->PermissionRead:Z

    if-eqz v4, :cond_2

    move v4, v8

    :goto_2
    iput-boolean v4, v2, Lcom/asus/filemanager/main/FileInfo;->PermissionRead:Z

    .line 37
    iget-boolean v4, v2, Lcom/asus/filemanager/main/FileInfo;->PermissionWrite:Z

    if-eqz v4, :cond_3

    iget-boolean v4, v3, Lcom/asus/filemanager/main/FileInfo;->PermissionWrite:Z

    if-eqz v4, :cond_3

    move v4, v8

    :goto_3
    iput-boolean v4, v2, Lcom/asus/filemanager/main/FileInfo;->PermissionWrite:Z

    .line 38
    iget v4, v2, Lcom/asus/filemanager/main/FileInfo;->numFiles:I

    iget v5, v3, Lcom/asus/filemanager/main/FileInfo;->numFiles:I

    add-int/2addr v4, v5

    iput v4, v2, Lcom/asus/filemanager/main/FileInfo;->numFiles:I

    .line 39
    iget v4, v2, Lcom/asus/filemanager/main/FileInfo;->numFolders:I

    iget v5, v3, Lcom/asus/filemanager/main/FileInfo;->numFolders:I

    add-int/2addr v4, v5

    iput v4, v2, Lcom/asus/filemanager/main/FileInfo;->numFolders:I

    .line 40
    iget-wide v4, v2, Lcom/asus/filemanager/main/FileInfo;->numSize:J

    iget-wide v6, v3, Lcom/asus/filemanager/main/FileInfo;->numSize:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/asus/filemanager/main/FileInfo;->numSize:J

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v4, v9

    .line 36
    goto :goto_2

    :cond_3
    move v4, v9

    .line 37
    goto :goto_3

    .line 43
    .end local v1           #i:I
    .end local v3           #t:Lcom/asus/filemanager/main/FileInfo;
    :cond_4
    sget v4, Lcom/asus/filemanager/main/FileInfo;->folder_depth:I

    sub-int/2addr v4, v8

    sput v4, Lcom/asus/filemanager/main/FileInfo;->folder_depth:I

    goto :goto_0

    .line 47
    .end local v0           #childs:[Ljava/io/File;
    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->canRead()Z

    move-result v4

    iput-boolean v4, v2, Lcom/asus/filemanager/main/FileInfo;->PermissionRead:Z

    .line 48
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v4

    iput-boolean v4, v2, Lcom/asus/filemanager/main/FileInfo;->PermissionWrite:Z

    .line 49
    iput v8, v2, Lcom/asus/filemanager/main/FileInfo;->numFiles:I

    .line 50
    iput v9, v2, Lcom/asus/filemanager/main/FileInfo;->numFolders:I

    .line 51
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/asus/filemanager/main/FileInfo;->numSize:J

    .line 52
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
