.class public Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;
.super Ljava/lang/Object;
.source "WebStorageFile.java"


# instance fields
.field public ext:Ljava/lang/String;

.field public isFolder:Z

.field public name:Ljava/lang/String;

.field public size:J

.field public updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->isFolder:Z

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->name:Ljava/lang/String;

    .line 13
    iput-wide v1, p0, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->updateTime:J

    .line 14
    iput-wide v1, p0, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->size:J

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/objects/WebStorageFile;->ext:Ljava/lang/String;

    .line 16
    return-void
.end method
