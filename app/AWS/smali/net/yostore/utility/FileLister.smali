.class public final Lnet/yostore/utility/FileLister;
.super Ljava/lang/Object;
.source "FileLister.java"


# instance fields
.field private dir:Ljava/lang/String;

.field private extendedName:Ljava/lang/String;

.field private filter:Ljava/io/FileFilter;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "dir"
    .parameter "ext"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, "./"

    iput-object v0, p0, Lnet/yostore/utility/FileLister;->dir:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lnet/yostore/utility/FileLister;->extendedName:Ljava/lang/String;

    .line 13
    new-instance v0, Lnet/yostore/utility/FileLister$1;

    invoke-direct {v0, p0}, Lnet/yostore/utility/FileLister$1;-><init>(Lnet/yostore/utility/FileLister;)V

    iput-object v0, p0, Lnet/yostore/utility/FileLister;->filter:Ljava/io/FileFilter;

    .line 25
    iput-object p1, p0, Lnet/yostore/utility/FileLister;->dir:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lnet/yostore/utility/FileLister;->extendedName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lnet/yostore/utility/FileLister;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 10
    iget-object v0, p0, Lnet/yostore/utility/FileLister;->extendedName:Ljava/lang/String;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .parameter "args"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 114
    const-string v0, "Usage: java FileLister dir extendedName"

    .line 117
    .local v0, errTip:Ljava/lang/String;
    array-length v3, p0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    aget-object v3, p0, v5

    if-eqz v3, :cond_0

    aget-object v3, p0, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v6, :cond_0

    aget-object v3, p0, v6

    if-eqz v3, :cond_0

    aget-object v3, p0, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_1

    .line 119
    :cond_0
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Usage: java FileLister dir extendedName"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    .line 123
    :cond_1
    new-instance v3, Lnet/yostore/utility/FileLister;

    aget-object v4, p0, v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aget-object v5, p0, v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lnet/yostore/utility/FileLister;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6, v6}, Lnet/yostore/utility/FileLister;->listFile(ZZ)[Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, s:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, x:I
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_2

    .line 126
    return-void

    .line 125
    :cond_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private walkThrough(Ljava/io/File;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .parameter "f"
    .parameter "dirLs"
    .parameter "fileLs"

    .prologue
    .line 31
    iget-object v2, p0, Lnet/yostore/utility/FileLister;->filter:Ljava/io/FileFilter;

    invoke-virtual {p1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 33
    .local v0, fs:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 45
    return-void

    .line 35
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    aget-object v2, v0, v1

    invoke-direct {p0, v2, p2, p3}, Lnet/yostore/utility/FileLister;->walkThrough(Ljava/io/File;Ljava/util/List;Ljava/util/List;)V

    .line 38
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public listFile(ZZ)[Ljava/lang/String;
    .locals 10
    .parameter "isDirectoryFirst"
    .parameter "ascend"

    .prologue
    const/4 v9, 0x1

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v0, dirLs:Ljava/util/List;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v2, fileLs:Ljava/util/List;
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lnet/yostore/utility/FileLister;->dir:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v7, v0, v2}, Lnet/yostore/utility/FileLister;->walkThrough(Ljava/io/File;Ljava/util/List;Ljava/util/List;)V

    .line 54
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 55
    .local v1, dirs:[Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 56
    .local v3, fs:[Ljava/lang/Object;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 57
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 59
    array-length v7, v1

    array-length v8, v3

    add-int/2addr v7, v8

    new-array v6, v7, [Ljava/lang/String;

    .line 61
    .local v6, s:[Ljava/lang/String;
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 63
    const/4 v4, 0x0

    .end local p0
    .local v4, j:I
    :goto_0
    array-length v7, v1

    if-lt v4, v7, :cond_1

    .line 68
    const/4 v5, 0x0

    .local v5, k:I
    :goto_1
    array-length v7, v3

    if-lt v5, v7, :cond_2

    .line 109
    :cond_0
    return-object v6

    .line 65
    .end local v5           #k:I
    :cond_1
    aget-object p0, v1, v4

    check-cast p0, Ljava/lang/String;

    aput-object p0, v6, v4

    .line 63
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 70
    .restart local v5       #k:I
    :cond_2
    array-length v7, v1

    add-int/2addr v7, v5

    aget-object p0, v3, v5

    check-cast p0, Ljava/lang/String;

    aput-object p0, v6, v7

    .line 68
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 73
    .end local v4           #j:I
    .end local v5           #k:I
    .restart local p0
    :cond_3
    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    .line 75
    const/4 v4, 0x0

    .end local p0
    .restart local v4       #j:I
    :goto_2
    array-length v7, v1

    if-lt v4, v7, :cond_4

    .line 80
    const/4 v5, 0x0

    .restart local v5       #k:I
    :goto_3
    array-length v7, v3

    if-ge v5, v7, :cond_0

    .line 82
    array-length v7, v1

    add-int/2addr v7, v5

    array-length v8, v3

    sub-int/2addr v8, v5

    sub-int/2addr v8, v9

    aget-object p0, v3, v8

    check-cast p0, Ljava/lang/String;

    aput-object p0, v6, v7

    .line 80
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 77
    .end local v5           #k:I
    :cond_4
    array-length v7, v1

    sub-int/2addr v7, v4

    sub-int/2addr v7, v9

    aget-object p0, v1, v7

    check-cast p0, Ljava/lang/String;

    aput-object p0, v6, v4

    .line 75
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 85
    .end local v4           #j:I
    .restart local p0
    :cond_5
    if-nez p1, :cond_7

    if-eqz p2, :cond_7

    .line 88
    const/4 v4, 0x0

    .end local p0
    .restart local v4       #j:I
    :goto_4
    array-length v7, v3

    if-lt v4, v7, :cond_6

    .line 92
    const/4 v5, 0x0

    .restart local v5       #k:I
    :goto_5
    array-length v7, v1

    if-ge v5, v7, :cond_0

    .line 94
    array-length v7, v3

    add-int/2addr v7, v5

    aget-object p0, v1, v5

    check-cast p0, Ljava/lang/String;

    aput-object p0, v6, v7

    .line 92
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 90
    .end local v5           #k:I
    :cond_6
    aget-object p0, v3, v4

    check-cast p0, Ljava/lang/String;

    aput-object p0, v6, v4

    .line 88
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 99
    .end local v4           #j:I
    .restart local p0
    :cond_7
    const/4 v4, 0x0

    .end local p0
    .restart local v4       #j:I
    :goto_6
    array-length v7, v3

    if-lt v4, v7, :cond_8

    .line 104
    const/4 v5, 0x0

    .restart local v5       #k:I
    :goto_7
    array-length v7, v1

    if-ge v5, v7, :cond_0

    .line 106
    array-length v7, v3

    add-int/2addr v7, v5

    array-length v8, v1

    sub-int/2addr v8, v5

    sub-int/2addr v8, v9

    aget-object p0, v1, v8

    check-cast p0, Ljava/lang/String;

    aput-object p0, v6, v7

    .line 104
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 101
    .end local v5           #k:I
    :cond_8
    array-length v7, v3

    sub-int/2addr v7, v4

    sub-int/2addr v7, v9

    aget-object p0, v3, v7

    check-cast p0, Ljava/lang/String;

    aput-object p0, v6, v4

    .line 99
    add-int/lit8 v4, v4, 0x1

    goto :goto_6
.end method
