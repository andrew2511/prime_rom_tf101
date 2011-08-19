.class Lorg/apache/commons/compress/changes/Change;
.super Ljava/lang/Object;
.source "Change.java"


# static fields
.field static final TYPE_ADD:I = 0x2

.field static final TYPE_DELETE:I = 0x1

.field static final TYPE_DELETE_DIR:I = 0x4

.field static final TYPE_MOVE:I = 0x3


# instance fields
.field private final entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

.field private final input:Ljava/io/InputStream;

.field private final replaceMode:Z

.field private final targetFile:Ljava/lang/String;

.field private final type:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "pFilename"
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-nez p1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/compress/changes/Change;->targetFile:Ljava/lang/String;

    .line 54
    iput p2, p0, Lorg/apache/commons/compress/changes/Change;->type:I

    .line 55
    iput-object v0, p0, Lorg/apache/commons/compress/changes/Change;->input:Ljava/io/InputStream;

    .line 56
    iput-object v0, p0, Lorg/apache/commons/compress/changes/Change;->entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/changes/Change;->replaceMode:Z

    .line 58
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/compress/archivers/ArchiveEntry;Ljava/io/InputStream;Z)V
    .locals 1
    .parameter "pEntry"
    .parameter "pInput"
    .parameter "replace"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 70
    :cond_1
    iput-object p1, p0, Lorg/apache/commons/compress/changes/Change;->entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    .line 71
    iput-object p2, p0, Lorg/apache/commons/compress/changes/Change;->input:Ljava/io/InputStream;

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/commons/compress/changes/Change;->type:I

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/changes/Change;->targetFile:Ljava/lang/String;

    .line 74
    iput-boolean p3, p0, Lorg/apache/commons/compress/changes/Change;->replaceMode:Z

    .line 75
    return-void
.end method


# virtual methods
.method getEntry()Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/commons/compress/changes/Change;->entry:Lorg/apache/commons/compress/archivers/ArchiveEntry;

    return-object v0
.end method

.method getInput()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/commons/compress/changes/Change;->input:Ljava/io/InputStream;

    return-object v0
.end method

.method isReplaceMode()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/apache/commons/compress/changes/Change;->replaceMode:Z

    return v0
.end method

.method targetFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/commons/compress/changes/Change;->targetFile:Ljava/lang/String;

    return-object v0
.end method

.method type()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lorg/apache/commons/compress/changes/Change;->type:I

    return v0
.end method
