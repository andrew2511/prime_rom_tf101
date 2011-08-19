.class public Lcom/google/android/backup/BackupDataFragmenter;
.super Ljava/lang/Object;
.source "BackupDataFragmenter.java"


# static fields
.field public static final PART_FORMAT:Ljava/text/DecimalFormat;

.field public static final TOTAL_FORMAT:Ljava/text/DecimalFormat;


# instance fields
.field private mCurrentDataPos:I

.field private mInput:Landroid/app/backup/BackupDataInput;

.field private mOutput:Lcom/google/android/backup/BackupRequestGenerator$Application;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "\':#\'00000"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/backup/BackupDataFragmenter;->PART_FORMAT:Ljava/text/DecimalFormat;

    .line 38
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "/0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/backup/BackupDataFragmenter;->TOTAL_FORMAT:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>(Landroid/app/backup/BackupDataInput;Lcom/google/android/backup/BackupRequestGenerator$Application;)V
    .locals 1
    .parameter "input"
    .parameter "output"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/backup/BackupDataFragmenter;->mCurrentDataPos:I

    .line 50
    iput-object p1, p0, Lcom/google/android/backup/BackupDataFragmenter;->mInput:Landroid/app/backup/BackupDataInput;

    .line 51
    iput-object p2, p0, Lcom/google/android/backup/BackupDataFragmenter;->mOutput:Lcom/google/android/backup/BackupRequestGenerator$Application;

    .line 52
    return-void
.end method


# virtual methods
.method public readSomeData(I)Z
    .locals 10
    .parameter "maxFragmentSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 66
    iget v4, p0, Lcom/google/android/backup/BackupDataFragmenter;->mCurrentDataPos:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/google/android/backup/BackupDataFragmenter;->mCurrentDataPos:I

    iget-object v5, p0, Lcom/google/android/backup/BackupDataFragmenter;->mInput:Landroid/app/backup/BackupDataInput;

    invoke-virtual {v5}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 68
    :cond_0
    iget-object v4, p0, Lcom/google/android/backup/BackupDataFragmenter;->mInput:Landroid/app/backup/BackupDataInput;

    invoke-virtual {v4}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v6

    .line 123
    :goto_0
    return v4

    .line 69
    :cond_1
    iput v6, p0, Lcom/google/android/backup/BackupDataFragmenter;->mCurrentDataPos:I

    .line 86
    :cond_2
    iget-object v4, p0, Lcom/google/android/backup/BackupDataFragmenter;->mInput:Landroid/app/backup/BackupDataInput;

    invoke-virtual {v4}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/backup/BackupDataFragmenter;->mInput:Landroid/app/backup/BackupDataInput;

    invoke-virtual {v4}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v1

    .line 88
    .local v1, dataSize:I
    if-gez v1, :cond_3

    .line 89
    iget-object v4, p0, Lcom/google/android/backup/BackupDataFragmenter;->mOutput:Lcom/google/android/backup/BackupRequestGenerator$Application;

    invoke-virtual {v4, v2, v7}, Lcom/google/android/backup/BackupRequestGenerator$Application;->addKey(Ljava/lang/String;[B)V

    .line 90
    iget-object v4, p0, Lcom/google/android/backup/BackupDataFragmenter;->mOutput:Lcom/google/android/backup/BackupRequestGenerator$Application;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/backup/BackupRequestGenerator$Application;->deleteAll(Ljava/lang/String;)V

    move v4, v9

    .line 91
    goto :goto_0

    .line 94
    :cond_3
    iget v4, p0, Lcom/google/android/backup/BackupDataFragmenter;->mCurrentDataPos:I

    sub-int v4, v1, v4

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v0, v4, [B

    .line 95
    .local v0, data:[B
    iget-object v4, p0, Lcom/google/android/backup/BackupDataFragmenter;->mInput:Landroid/app/backup/BackupDataInput;

    array-length v5, v0

    invoke-virtual {v4, v0, v6, v5}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 100
    iget v4, p0, Lcom/google/android/backup/BackupDataFragmenter;->mCurrentDataPos:I

    if-nez v4, :cond_4

    if-gt v1, p1, :cond_4

    const-string v4, ":#"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 109
    iget-object v4, p0, Lcom/google/android/backup/BackupDataFragmenter;->mOutput:Lcom/google/android/backup/BackupRequestGenerator$Application;

    invoke-virtual {v4, v2, v0}, Lcom/google/android/backup/BackupRequestGenerator$Application;->addKey(Ljava/lang/String;[B)V

    .line 122
    :goto_1
    iget v4, p0, Lcom/google/android/backup/BackupDataFragmenter;->mCurrentDataPos:I

    array-length v5, v0

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/backup/BackupDataFragmenter;->mCurrentDataPos:I

    move v4, v9

    .line 123
    goto :goto_0

    .line 111
    :cond_4
    iget v4, p0, Lcom/google/android/backup/BackupDataFragmenter;->mCurrentDataPos:I

    div-int v3, v4, p1

    .line 112
    .local v3, part:I
    if-nez v3, :cond_6

    .line 115
    const-string v4, ":#"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/google/android/backup/BackupDataFragmenter;->mOutput:Lcom/google/android/backup/BackupRequestGenerator$Application;

    invoke-virtual {v4, v2, v7}, Lcom/google/android/backup/BackupRequestGenerator$Application;->addKey(Ljava/lang/String;[B)V

    .line 116
    :cond_5
    iget-object v4, p0, Lcom/google/android/backup/BackupDataFragmenter;->mOutput:Lcom/google/android/backup/BackupRequestGenerator$Application;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/backup/BackupRequestGenerator$Application;->deleteAll(Ljava/lang/String;)V

    .line 119
    :cond_6
    iget-object v4, p0, Lcom/google/android/backup/BackupDataFragmenter;->mOutput:Lcom/google/android/backup/BackupRequestGenerator$Application;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/google/android/backup/BackupDataFragmenter;->PART_FORMAT:Ljava/text/DecimalFormat;

    int-to-long v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/google/android/backup/BackupDataFragmenter;->TOTAL_FORMAT:Ljava/text/DecimalFormat;

    int-to-long v7, v1

    invoke-virtual {v6, v7, v8}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/google/android/backup/BackupRequestGenerator$Application;->addKey(Ljava/lang/String;[B)V

    goto :goto_1
.end method
