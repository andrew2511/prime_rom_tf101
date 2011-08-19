.class public final Lcom/ecareme/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/utils/FileUtils$CopyConfig;,
        Lcom/ecareme/utils/FileUtils$DefaultCopyConfig;,
        Lcom/ecareme/utils/FileUtils$DummyFilter;,
        Lcom/ecareme/utils/FileUtils$FilePathFilter;,
        Lcom/ecareme/utils/FileUtils$MultiANDFilter;,
        Lcom/ecareme/utils/FileUtils$MultiFilter;,
        Lcom/ecareme/utils/FileUtils$MultiORFilter;
    }
.end annotation


# static fields
.field public static final DATE_CHANGED:Z = true

.field public static final DATE_NOT_CHANGED:Z = false

.field public static final DEFAULT_COPY_CONFIG:Lcom/ecareme/utils/FileUtils$CopyConfig; = null

.field public static final DIR_COPY:Z = true

.field public static final DIR_NOT_COPY:Z = false

.field public static final OVERWRITE_ALL:I = 0x4

.field public static final OVERWRITE_NEWER:I = 0x3

.field public static final OVERWRITE_OFF:I = 0x0

.field public static final OVERWRITE_RENAME_NEW:I = 0x2

.field public static final OVERWRITE_RENAME_OLD:I = 0x1

.field private static final _dummy_filter:Lcom/ecareme/utils/FileUtils$DummyFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    new-instance v0, Lcom/ecareme/utils/FileUtils$DefaultCopyConfig;

    invoke-direct {v0, v1}, Lcom/ecareme/utils/FileUtils$DefaultCopyConfig;-><init>(Lcom/ecareme/utils/FileUtils$DefaultCopyConfig;)V

    sput-object v0, Lcom/ecareme/utils/FileUtils;->DEFAULT_COPY_CONFIG:Lcom/ecareme/utils/FileUtils$CopyConfig;

    .line 307
    new-instance v0, Lcom/ecareme/utils/FileUtils$DummyFilter;

    invoke-direct {v0, v1}, Lcom/ecareme/utils/FileUtils$DummyFilter;-><init>(Lcom/ecareme/utils/FileUtils$DummyFilter;)V

    sput-object v0, Lcom/ecareme/utils/FileUtils;->_dummy_filter:Lcom/ecareme/utils/FileUtils$DummyFilter;

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .parameter "src"
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 693
    sget-object v0, Lcom/ecareme/utils/FileUtils;->DEFAULT_COPY_CONFIG:Lcom/ecareme/utils/FileUtils$CopyConfig;

    invoke-static {p0, p1, v0}, Lcom/ecareme/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Lcom/ecareme/utils/FileUtils$CopyConfig;)V

    .line 694
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;Lcom/ecareme/utils/FileUtils$CopyConfig;)V
    .locals 7
    .parameter "src"
    .parameter "dest"
    .parameter "config"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 705
    invoke-static {p1}, Lcom/ecareme/utils/FileUtils;->ensureParentDir(Ljava/io/File;)Z

    .line 708
    const-string v5, ".temp"

    invoke-static {p1, v5}, Lcom/ecareme/utils/FileUtils;->getAltFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 709
    .local v4, temp:Ljava/io/File;
    const/4 v0, 0x0

    .line 710
    .local v0, in:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 713
    .local v2, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    .end local v0           #in:Ljava/io/InputStream;
    .local v1, in:Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 715
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    :try_start_2
    invoke-static {v1, v3}, Lcom/ecareme/utils/IOUtils;->copyIO(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 719
    invoke-static {v1, v3}, Lcom/ecareme/utils/IOUtils;->closeQuitely(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 722
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-static {v4, p1, p2, v5, v6}, Lcom/ecareme/utils/FileUtils;->resolveTempFile(Ljava/io/File;Ljava/io/File;Lcom/ecareme/utils/FileUtils$CopyConfig;J)V

    .line 723
    return-void

    .line 718
    .end local v1           #in:Ljava/io/InputStream;
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v0       #in:Ljava/io/InputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :catchall_0
    move-exception v5

    .line 719
    :goto_0
    invoke-static {v0, v2}, Lcom/ecareme/utils/IOUtils;->closeQuitely(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 720
    throw v5

    .line 718
    .end local v0           #in:Ljava/io/InputStream;
    .restart local v1       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #in:Ljava/io/InputStream;
    .restart local v0       #in:Ljava/io/InputStream;
    goto :goto_0

    .end local v0           #in:Ljava/io/InputStream;
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #in:Ljava/io/InputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catchall_2
    move-exception v5

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    move-object v0, v1

    .end local v1           #in:Ljava/io/InputStream;
    .restart local v0       #in:Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static createNewFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 481
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 482
    .local v0, file:Ljava/io/File;
    invoke-static {v0}, Lcom/ecareme/utils/FileUtils;->ensureParentDir(Ljava/io/File;)Z

    .line 483
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 484
    return-object v0
.end method

.method public static ensureParentDir(Ljava/io/File;)Z
    .locals 2
    .parameter "file"

    .prologue
    .line 448
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 449
    .local v0, parent:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 451
    :cond_0
    const/4 v1, 0x0

    .line 453
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    goto :goto_0
.end method

.method public static findFiles(Ljava/io/File;)Ljava/util/Collection;
    .locals 1
    .parameter "dir"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    sget-object v0, Lcom/ecareme/utils/FileUtils;->_dummy_filter:Lcom/ecareme/utils/FileUtils$DummyFilter;

    invoke-static {p0, v0}, Lcom/ecareme/utils/FileUtils;->findFiles(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static findFiles(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/Collection;
    .locals 6
    .parameter "dir"
    .parameter "filter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 189
    :cond_0
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 220
    :goto_0
    return-object v5

    .line 191
    :cond_1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 193
    .local v2, files:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/io/File;>;"
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 194
    .local v4, tmps:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/io/File;>;"
    move-object v1, p0

    .line 195
    .local v1, file:Ljava/io/File;
    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_2
    :goto_1
    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 216
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 218
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 198
    :cond_3
    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #file:Ljava/io/File;
    check-cast v1, Ljava/io/File;

    .line 199
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 201
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 202
    .local v0, children:[Ljava/io/File;
    if-eqz v0, :cond_2

    .line 206
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v5, v0

    if-ge v3, v5, :cond_2

    .line 208
    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 211
    .end local v0           #children:[Ljava/io/File;
    .end local v3           #i:I
    :cond_4
    invoke-interface {p1, v1}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 213
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object v5, v2

    .line 220
    goto :goto_0
.end method

.method public static findFilesContents(Ljava/io/File;Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .parameter "dir"
    .parameter "substring"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Lcom/ecareme/utils/FileUtils$4;

    invoke-direct {v0, p1}, Lcom/ecareme/utils/FileUtils$4;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/ecareme/utils/FileUtils;->findFiles(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static findFilesEndsWith(Ljava/io/File;Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .parameter "dir"
    .parameter "suffix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Lcom/ecareme/utils/FileUtils$3;

    invoke-direct {v0, p1}, Lcom/ecareme/utils/FileUtils$3;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/ecareme/utils/FileUtils;->findFiles(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static findFilesMatchs(Ljava/io/File;Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .parameter "dir"
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lcom/ecareme/utils/FileUtils$1;

    invoke-direct {v0, p1}, Lcom/ecareme/utils/FileUtils$1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/ecareme/utils/FileUtils;->findFiles(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static findFilesStartsWith(Ljava/io/File;Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .parameter "dir"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lcom/ecareme/utils/FileUtils$2;

    invoke-direct {v0, p1}, Lcom/ecareme/utils/FileUtils$2;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/ecareme/utils/FileUtils;->findFiles(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static getAltFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .parameter "file"
    .parameter "suffix"

    .prologue
    .line 648
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 649
    .local v2, name:Ljava/lang/String;
    const/4 v0, 0x0

    .line 650
    .local v0, idx:I
    const-string v1, ""

    .line 651
    .local v1, idxValue:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 652
    .local v3, parent:Ljava/io/File;
    :goto_0
    new-instance p0, Ljava/io/File;

    .end local p0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local p0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 660
    :cond_0
    return-object p0

    .line 654
    :cond_1
    const/16 v4, 0x64

    if-gt v0, v4, :cond_0

    .line 658
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getRelativeFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 13
    .parameter "context"
    .parameter "file"

    .prologue
    const/4 v12, 0x0

    .line 525
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 527
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 530
    :cond_0
    invoke-static {p0}, Lcom/ecareme/utils/FileUtils;->normalize(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    .line 531
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 532
    .local v3, contextPath:Ljava/lang/String;
    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 534
    .local v4, contextRoot:C
    invoke-static {p1}, Lcom/ecareme/utils/FileUtils;->normalize(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 535
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 536
    .local v5, filePath:Ljava/lang/String;
    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    .line 539
    .local v6, fileRoot:C
    if-eq v4, v6, :cond_1

    move-object v11, p1

    .line 580
    :goto_0
    return-object v11

    .line 544
    :cond_1
    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 546
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v12, Ljava/io/File;->separatorChar:C

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 548
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_3

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 550
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v12, Ljava/io/File;->separatorChar:C

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 553
    :cond_3
    const/4 v9, 0x0

    .line 554
    .local v9, separatorIndex:I
    const/4 v7, 0x0

    .local v7, i:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v8

    .local v8, len:I
    :goto_1
    if-lt v7, v8, :cond_6

    .line 567
    :cond_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 569
    .local v0, buf:Ljava/lang/StringBuffer;
    new-instance v10, Ljava/util/StringTokenizer;

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    .local v10, tokens:Ljava/util/StringTokenizer;
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    :goto_2
    if-gtz v7, :cond_8

    .line 575
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 576
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-nez v11, :cond_5

    .line 578
    const/16 v11, 0x2e

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 580
    :cond_5
    new-instance v11, Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 556
    .end local v0           #buf:Ljava/lang/StringBuffer;
    .end local v10           #tokens:Ljava/util/StringTokenizer;
    :cond_6
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, c1:C
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 557
    .local v2, c2:C
    if-ne v1, v2, :cond_4

    .line 561
    sget-char v11, Ljava/io/File;->separatorChar:C

    if-ne v1, v11, :cond_7

    .line 563
    move v9, v7

    .line 554
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 572
    .end local v1           #c1:C
    .end local v2           #c2:C
    .restart local v0       #buf:Ljava/lang/StringBuffer;
    .restart local v10       #tokens:Ljava/util/StringTokenizer;
    :cond_8
    const-string v11, "../"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 570
    add-int/lit8 v7, v7, -0x1

    goto :goto_2
.end method

.method public static isRoot(Ljava/io/File;)Z
    .locals 5
    .parameter "file"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 464
    if-nez p0, :cond_0

    move v2, v3

    .line 476
    :goto_0
    return v2

    .line 468
    :cond_0
    invoke-static {}, Ljava/io/File;->listRoots()[Ljava/io/File;

    move-result-object v1

    .line 469
    .local v1, roots:[Ljava/io/File;
    array-length v2, v1

    sub-int v0, v2, v4

    .local v0, i:I
    :goto_1
    if-gez v0, :cond_1

    move v2, v3

    .line 476
    goto :goto_0

    .line 471
    :cond_1
    aget-object v2, v1, v0

    invoke-virtual {p0, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    .line 473
    goto :goto_0

    .line 469
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static moveFile(Ljava/io/File;Ljava/io/File;Lcom/ecareme/utils/FileUtils$CopyConfig;)V
    .locals 3
    .parameter "src"
    .parameter "dest"
    .parameter "config"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 675
    invoke-static {p1}, Lcom/ecareme/utils/FileUtils;->ensureParentDir(Ljava/io/File;)Z

    .line 678
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 689
    :cond_0
    return-void

    .line 684
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/ecareme/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;Lcom/ecareme/utils/FileUtils$CopyConfig;)V

    .line 685
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 687
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to delete file \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static normalize(Ljava/io/File;)Ljava/io/File;
    .locals 4
    .parameter "file"

    .prologue
    const/16 v3, 0x2f

    .line 497
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, path:Ljava/lang/String;
    sget-char v2, Ljava/io/File;->separatorChar:C

    if-ne v3, v2, :cond_0

    .line 500
    const/16 v2, 0x5c

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 506
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    .line 511
    .end local v1           #path:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 504
    .restart local v1       #path:Ljava/lang/String;
    :cond_0
    const/16 v2, 0x2f

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 508
    .end local v1           #path:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 510
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, p0

    .line 511
    goto :goto_1
.end method

.method public static resolveTempFile(Ljava/io/File;Ljava/io/File;Lcom/ecareme/utils/FileUtils$CopyConfig;J)V
    .locals 4
    .parameter "temp"
    .parameter "dest"
    .parameter "config"
    .parameter "srcModified"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 593
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 595
    invoke-virtual {p2}, Lcom/ecareme/utils/FileUtils$CopyConfig;->getOverwrite()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 597
    const-string v1, ".old"

    invoke-static {p1, v1}, Lcom/ecareme/utils/FileUtils;->getAltFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 598
    .local v0, alt:Ljava/io/File;
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 600
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to rename file \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" to \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 602
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 604
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to rename file \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" to \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 607
    .end local v0           #alt:Ljava/io/File;
    :cond_1
    invoke-virtual {p2}, Lcom/ecareme/utils/FileUtils$CopyConfig;->getOverwrite()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 609
    const-string v1, ".new"

    invoke-static {p1, v1}, Lcom/ecareme/utils/FileUtils;->getAltFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 610
    .restart local v0       #alt:Ljava/io/File;
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 612
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to rename file \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" to \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 617
    .end local v0           #alt:Ljava/io/File;
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3

    .line 619
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to delete file \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 621
    :cond_3
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 623
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to rename file \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" to \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 627
    :cond_4
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 629
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to rename file \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" to \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 632
    :cond_5
    invoke-virtual {p2}, Lcom/ecareme/utils/FileUtils$CopyConfig;->getModifyDate()Z

    move-result v1

    if-nez v1, :cond_6

    .line 634
    invoke-virtual {p1, p3, p4}, Ljava/io/File;->setLastModified(J)Z

    .line 636
    :cond_6
    return-void
.end method

.method public static verifyFile(JLjava/io/File;Lcom/ecareme/utils/FileUtils$CopyConfig;)Z
    .locals 3
    .parameter "srcModified"
    .parameter "dest"
    .parameter "config"

    .prologue
    const/4 v2, 0x0

    .line 424
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    invoke-virtual {p3}, Lcom/ecareme/utils/FileUtils$CopyConfig;->getOverwrite()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 438
    :goto_0
    return v0

    .line 430
    :cond_0
    invoke-virtual {p3}, Lcom/ecareme/utils/FileUtils$CopyConfig;->getOverwrite()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 432
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    cmp-long v0, v0, p0

    if-lez v0, :cond_1

    move v0, v2

    .line 434
    goto :goto_0

    .line 438
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
