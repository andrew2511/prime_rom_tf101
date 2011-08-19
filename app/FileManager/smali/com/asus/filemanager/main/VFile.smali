.class public Lcom/asus/filemanager/main/VFile;
.super Ljava/io/File;
.source "VFile.java"


# static fields
.field private static final serialVersionUID:J = 0x294f1ec66ce8400eL


# instance fields
.field private mChecked:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/filemanager/main/VFile;->mChecked:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/filemanager/main/VFile;->mChecked:Z

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "dirPath"
    .parameter "name"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/filemanager/main/VFile;->mChecked:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/filemanager/main/VFile;->mChecked:Z

    .line 25
    return-void
.end method


# virtual methods
.method public GetChecked()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/asus/filemanager/main/VFile;->mChecked:Z

    return v0
.end method

.method public SetChecked(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/asus/filemanager/main/VFile;->mChecked:Z

    .line 33
    return-void
.end method

.method public getAttrSimple()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x2d

    .line 85
    const-string v0, "DRW"

    .line 86
    .local v0, s:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/asus/filemanager/main/VFile;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    const/16 v1, 0x44

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/asus/filemanager/main/VFile;->canRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    const/16 v1, 0x52

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/asus/filemanager/main/VFile;->canWrite()Z

    move-result v1

    if-nez v1, :cond_2

    .line 91
    const/16 v1, 0x57

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 92
    :cond_2
    return-object v0
.end method

.method public getExtName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, p:I
    invoke-virtual {p0}, Lcom/asus/filemanager/main/VFile;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/asus/filemanager/main/VFile;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 39
    if-gez v0, :cond_1

    .line 40
    const/4 v0, 0x0

    .line 44
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/asus/filemanager/main/VFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 42
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
