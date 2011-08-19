.class public Lcom/asus/filemanager/adapter/ScanFile;
.super Ljava/lang/Object;
.source "ScanFile.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/filemanager/adapter/ScanFile$Result;
    }
.end annotation


# instance fields
.field private mFile:Lcom/asus/filemanager/main/VFile;

.field private mFileArray:[Lcom/asus/filemanager/main/VFile;

.field private mFlag:I

.field private mHandler:Landroid/os/Handler;

.field private mShowHiddenFile:Z

.field private mSortUtil:Lcom/asus/filemanager/sort/SortUtil;

.field private mTerminate:Z

.field private visiableFile:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/asus/filemanager/main/VFile;IZLcom/asus/filemanager/sort/SortUtil;[Lcom/asus/filemanager/main/VFile;Landroid/os/Handler;)V
    .locals 3
    .parameter "f"
    .parameter "flag"
    .parameter "showHidden"
    .parameter "sort"
    .parameter "fa"
    .parameter "h"

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v2, p0, Lcom/asus/filemanager/adapter/ScanFile;->mTerminate:Z

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getEpadExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/asus/filemanager/adapter/ScanFile;->visiableFile:[Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/asus/filemanager/adapter/ScanFile;->mFile:Lcom/asus/filemanager/main/VFile;

    .line 42
    iput p2, p0, Lcom/asus/filemanager/adapter/ScanFile;->mFlag:I

    .line 43
    iput-object p4, p0, Lcom/asus/filemanager/adapter/ScanFile;->mSortUtil:Lcom/asus/filemanager/sort/SortUtil;

    .line 44
    iput-object p5, p0, Lcom/asus/filemanager/adapter/ScanFile;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    .line 45
    iput-object p6, p0, Lcom/asus/filemanager/adapter/ScanFile;->mHandler:Landroid/os/Handler;

    .line 46
    iput-boolean p3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mShowHiddenFile:Z

    .line 47
    return-void
.end method

.method private FilterHiddenFile([Lcom/asus/filemanager/main/VFile;)[Lcom/asus/filemanager/main/VFile;
    .locals 5
    .parameter "fa"

    .prologue
    const/4 v4, 0x0

    .line 92
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v4

    .line 107
    :goto_0
    return-object v3

    .line 94
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v1, pool:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/filemanager/main/VFile;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_4

    aget-object v3, p1, v0

    if-eqz v3, :cond_4

    .line 97
    iget-boolean v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mTerminate:Z

    if-eqz v3, :cond_2

    move-object v3, v4

    goto :goto_0

    .line 98
    :cond_2
    aget-object v3, p1, v0

    invoke-direct {p0, v3}, Lcom/asus/filemanager/adapter/ScanFile;->isHidden(Lcom/asus/filemanager/main/VFile;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 99
    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 101
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Lcom/asus/filemanager/main/VFile;

    .line 102
    .local v2, r:[Lcom/asus/filemanager/main/VFile;
    const/4 v0, 0x0

    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_6

    .line 104
    iget-boolean v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mTerminate:Z

    if-eqz v3, :cond_5

    move-object v3, v4

    goto :goto_0

    .line 105
    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/asus/filemanager/main/VFile;

    aput-object v3, v2, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move-object v3, v2

    .line 107
    goto :goto_0
.end method

.method private isHidden(Lcom/asus/filemanager/main/VFile;)Z
    .locals 3
    .parameter "vFile"

    .prologue
    const/4 v2, 0x1

    .line 111
    invoke-virtual {p1}, Lcom/asus/filemanager/main/VFile;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 118
    :goto_0
    return v0

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/asus/filemanager/main/VFile;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/asus/filemanager/adapter/ScanFile;->visiableFile:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/asus/filemanager/main/VFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_1

    move v0, v2

    .line 116
    goto :goto_0

    .line 118
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 50
    const/4 v3, 0x0

    sput-boolean v3, Lcom/asus/filemanager/adapter/ScanUtil;->mQuit:Z

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, listParent:Lcom/asus/filemanager/main/VFile;
    iget-object v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mFile:Lcom/asus/filemanager/main/VFile;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mTerminate:Z

    if-nez v3, :cond_0

    .line 54
    iget v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mFlag:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 56
    iget-object v0, p0, Lcom/asus/filemanager/adapter/ScanFile;->mFile:Lcom/asus/filemanager/main/VFile;

    .line 57
    iget-object v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mFile:Lcom/asus/filemanager/main/VFile;

    invoke-static {v3}, Lcom/asus/filemanager/adapter/ScanUtil;->getChild(Lcom/asus/filemanager/main/VFile;)[Lcom/asus/filemanager/main/VFile;

    move-result-object v3

    iput-object v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    .line 68
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mShowHiddenFile:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mTerminate:Z

    if-nez v3, :cond_1

    .line 69
    iget-object v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    invoke-direct {p0, v3}, Lcom/asus/filemanager/adapter/ScanFile;->FilterHiddenFile([Lcom/asus/filemanager/main/VFile;)[Lcom/asus/filemanager/main/VFile;

    move-result-object v3

    iput-object v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    .line 71
    :cond_1
    iget-object v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mSortUtil:Lcom/asus/filemanager/sort/SortUtil;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mTerminate:Z

    if-nez v3, :cond_2

    .line 72
    iget-object v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mSortUtil:Lcom/asus/filemanager/sort/SortUtil;

    iget-object v4, p0, Lcom/asus/filemanager/adapter/ScanFile;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    invoke-virtual {v3, v4}, Lcom/asus/filemanager/sort/SortUtil;->SortFiles([Lcom/asus/filemanager/main/VFile;)[Lcom/asus/filemanager/main/VFile;

    .line 74
    :cond_2
    new-instance v2, Lcom/asus/filemanager/adapter/ScanFile$Result;

    iget-object v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    invoke-direct {v2, v0, v3}, Lcom/asus/filemanager/adapter/ScanFile$Result;-><init>(Lcom/asus/filemanager/main/VFile;[Lcom/asus/filemanager/main/VFile;)V

    .line 76
    .local v2, result:Lcom/asus/filemanager/adapter/ScanFile$Result;
    iget-object v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mTerminate:Z

    if-nez v3, :cond_3

    .line 77
    iget-object v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/asus/filemanager/adapter/ScanFile;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x1646

    invoke-virtual {v4, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 79
    :cond_3
    iget-object v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mTerminate:Z

    if-nez v3, :cond_4

    .line 80
    iget-object v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/asus/filemanager/adapter/ScanFile;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x1388

    invoke-virtual {v4, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 82
    :cond_4
    iget-object v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mTerminate:Z

    if-nez v3, :cond_5

    .line 83
    iget-object v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/asus/filemanager/adapter/ScanFile;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x1389

    iget-object v6, p0, Lcom/asus/filemanager/adapter/ScanFile;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 84
    :cond_5
    return-void

    .line 59
    .end local v2           #result:Lcom/asus/filemanager/adapter/ScanFile$Result;
    :cond_6
    iget v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mFlag:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 61
    iget-object v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mFile:Lcom/asus/filemanager/main/VFile;

    invoke-virtual {v3}, Lcom/asus/filemanager/main/VFile;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 62
    .local v1, p:Ljava/io/File;
    if-nez v1, :cond_7

    new-instance v0, Lcom/asus/filemanager/main/VFile;

    .end local v0           #listParent:Lcom/asus/filemanager/main/VFile;
    const-string v3, "/"

    invoke-direct {v0, v3}, Lcom/asus/filemanager/main/VFile;-><init>(Ljava/lang/String;)V

    .line 64
    .restart local v0       #listParent:Lcom/asus/filemanager/main/VFile;
    :goto_1
    iget-object v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mFile:Lcom/asus/filemanager/main/VFile;

    invoke-static {v3}, Lcom/asus/filemanager/adapter/ScanUtil;->getSibling(Lcom/asus/filemanager/main/VFile;)[Lcom/asus/filemanager/main/VFile;

    move-result-object v3

    iput-object v3, p0, Lcom/asus/filemanager/adapter/ScanFile;->mFileArray:[Lcom/asus/filemanager/main/VFile;

    goto/16 :goto_0

    .line 63
    :cond_7
    new-instance v0, Lcom/asus/filemanager/main/VFile;

    .end local v0           #listParent:Lcom/asus/filemanager/main/VFile;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/asus/filemanager/main/VFile;-><init>(Ljava/lang/String;)V

    .restart local v0       #listParent:Lcom/asus/filemanager/main/VFile;
    goto :goto_1
.end method

.method public terminate()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 87
    sput-boolean v0, Lcom/asus/filemanager/adapter/ScanUtil;->mQuit:Z

    .line 88
    iput-boolean v0, p0, Lcom/asus/filemanager/adapter/ScanFile;->mTerminate:Z

    .line 89
    return-void
.end method
