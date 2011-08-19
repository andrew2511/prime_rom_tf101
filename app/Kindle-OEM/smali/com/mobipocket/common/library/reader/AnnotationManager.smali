.class public abstract Lcom/mobipocket/common/library/reader/AnnotationManager;
.super Ljava/lang/Object;
.source "AnnotationManager.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static getAnnotationManager(Lcom/mobipocket/common/filesystem/PDBFactory;Ljava/lang/String;Ljava/lang/String;)Lcom/mobipocket/common/library/reader/AnnotationManager;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 84
    :try_start_0
    invoke-static {p2}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->getRandomId(Ljava/lang/String;)I

    move-result v0

    .line 85
    invoke-static {p2}, Lcom/mobipocket/common/library/reader/book/MobiFileHeader;->getPdbName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 91
    if-nez v1, :cond_0

    move-object v0, v2

    .line 96
    :goto_0
    return-object v0

    .line 88
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    .line 96
    :cond_0
    new-instance v2, Lcom/mobipocket/common/library/reader/MBPFile;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/mobipocket/common/library/reader/MBPFile;-><init>(Lcom/mobipocket/common/filesystem/PDBFactory;Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public abstract add(Lcom/mobipocket/common/library/reader/AnnotationExport;)Lcom/mobipocket/common/library/reader/AnnotationItem;
.end method

.method public abstract delete(Lcom/mobipocket/common/library/reader/AnnotationExport;)Z
.end method

.method public abstract delete(Lcom/mobipocket/common/library/reader/AnnotationItem;)Z
.end method

.method public abstract getAll()[Lcom/mobipocket/common/library/reader/AnnotationItem;
.end method

.method public abstract getAnnotationExport(Lcom/mobipocket/common/library/reader/AnnotationItem;)Lcom/mobipocket/common/library/reader/AnnotationExport;
.end method

.method public abstract modifyTitle(Lcom/mobipocket/common/library/reader/AnnotationItem;Ljava/lang/String;)Z
.end method

.method public abstract saveFile()Z
.end method
