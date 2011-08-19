.class public abstract Lcom/infraware/filemanager/webstorage/objects/WebStorageData;
.super Ljava/lang/Object;
.source "WebStorageData.java"


# static fields
.field public static final TEMP_PATH:Ljava/lang/String; = "/sdcard/.temp/"

.field public static m_bCancel:Z


# instance fields
.field public tmpFile:Ljava/lang/String;

.field public tmpFolderId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->m_bCancel:Z

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->tmpFile:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->tmpFolderId:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public abstract createFolder(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/WebStorageException;
        }
    .end annotation
.end method

.method public abstract decodeTitle(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract downloadFile(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/WebStorageException;
        }
    .end annotation
.end method

.method public abstract encodeTitle(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getEntryTree()Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/WebStorageException;
        }
    .end annotation
.end method

.method public abstract moveEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/WebStorageException;
        }
    .end annotation
.end method

.method public abstract refreshEntryTree()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/WebStorageException;
        }
    .end annotation
.end method

.method public abstract removeEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/WebStorageException;
        }
    .end annotation
.end method

.method public abstract renameEntry(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/WebStorageException;
        }
    .end annotation
.end method

.method public setTmpFile(Ljava/lang/String;)V
    .locals 0
    .parameter "tmpFileName"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->tmpFile:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setTmpFolder(Ljava/lang/String;)V
    .locals 0
    .parameter "folderId"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/infraware/filemanager/webstorage/objects/WebStorageData;->tmpFolderId:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public abstract uploadFile(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;Ljava/io/File;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/infraware/filemanager/webstorage/WebStorageException;
        }
    .end annotation
.end method
