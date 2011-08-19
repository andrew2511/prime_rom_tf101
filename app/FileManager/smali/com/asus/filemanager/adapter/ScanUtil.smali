.class public Lcom/asus/filemanager/adapter/ScanUtil;
.super Ljava/lang/Object;
.source "ScanUtil.java"


# static fields
.field public static mQuit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lcom/asus/filemanager/adapter/ScanUtil;->mQuit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChild(Lcom/asus/filemanager/main/VFile;)[Lcom/asus/filemanager/main/VFile;
    .locals 5
    .parameter "f"

    .prologue
    const/4 v4, 0x0

    .line 18
    invoke-virtual {p0}, Lcom/asus/filemanager/main/VFile;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v4

    .line 31
    :goto_0
    return-object v3

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/asus/filemanager/main/VFile;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 22
    .local v2, temp:[Ljava/io/File;
    if-eqz v2, :cond_1

    array-length v3, v2

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/asus/filemanager/adapter/ScanUtil;->mQuit:Z

    if-eqz v3, :cond_2

    :cond_1
    move-object v3, v4

    .line 23
    goto :goto_0

    .line 25
    :cond_2
    array-length v3, v2

    new-array v0, v3, [Lcom/asus/filemanager/main/VFile;

    .line 26
    .local v0, array:[Lcom/asus/filemanager/main/VFile;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_3

    aget-object v3, v2, v1

    if-eqz v3, :cond_3

    .line 28
    new-instance v3, Lcom/asus/filemanager/main/VFile;

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/asus/filemanager/main/VFile;-><init>(Ljava/lang/String;)V

    aput-object v3, v0, v1

    .line 29
    sget-boolean v3, Lcom/asus/filemanager/adapter/ScanUtil;->mQuit:Z

    if-eqz v3, :cond_4

    :cond_3
    move-object v3, v0

    .line 31
    goto :goto_0

    .line 26
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getSibling(Lcom/asus/filemanager/main/VFile;)[Lcom/asus/filemanager/main/VFile;
    .locals 6
    .parameter "f"

    .prologue
    const/4 v5, 0x0

    .line 36
    invoke-virtual {p0}, Lcom/asus/filemanager/main/VFile;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 37
    .local v2, parent:Ljava/io/File;
    if-nez v2, :cond_0

    move-object v4, v5

    .line 50
    :goto_0
    return-object v4

    .line 40
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 41
    .local v3, temp:[Ljava/io/File;
    if-eqz v3, :cond_1

    array-length v4, v3

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/asus/filemanager/adapter/ScanUtil;->mQuit:Z

    if-eqz v4, :cond_2

    :cond_1
    move-object v4, v5

    .line 42
    goto :goto_0

    .line 44
    :cond_2
    array-length v4, v3

    new-array v0, v4, [Lcom/asus/filemanager/main/VFile;

    .line 45
    .local v0, array:[Lcom/asus/filemanager/main/VFile;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_3

    aget-object v4, v3, v1

    if-eqz v4, :cond_3

    .line 47
    new-instance v4, Lcom/asus/filemanager/main/VFile;

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/asus/filemanager/main/VFile;-><init>(Ljava/lang/String;)V

    aput-object v4, v0, v1

    .line 48
    sget-boolean v4, Lcom/asus/filemanager/adapter/ScanUtil;->mQuit:Z

    if-eqz v4, :cond_4

    :cond_3
    move-object v4, v0

    .line 50
    goto :goto_0

    .line 45
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
