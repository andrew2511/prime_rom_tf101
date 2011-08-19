.class Lcom/android/soundrecorder/RemainingTimeCalculator;
.super Ljava/lang/Object;
.source "SoundRecorder.java"


# instance fields
.field private mBlocksChangedTime:J

.field mBytesPerSecond:I

.field private mCurrentLowerLimit:I

.field private mFileSizeChangedTime:J

.field private mLastBlocks:J

.field private mLastFileSize:J

.field private mMaxBytes:J

.field private mRecordingFile:Ljava/io/File;

.field private mSDCardDirectory:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    .line 94
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mSDCardDirectory:Ljava/io/File;

    .line 95
    return-void
.end method


# virtual methods
.method public currentLowerLimit()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    return v0
.end method

.method public diskSpaceAvailable()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 185
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mSDCardDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, fs:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    if-le v1, v2, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    .line 116
    iput-wide v1, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBlocksChangedTime:J

    .line 117
    iput-wide v1, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFileSizeChangedTime:J

    .line 118
    return-void
.end method

.method public setBitRate(I)V
    .locals 1
    .parameter "bitRate"

    .prologue
    .line 196
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBytesPerSecond:I

    .line 197
    return-void
.end method

.method public setFileSizeLimit(Ljava/io/File;J)V
    .locals 0
    .parameter "file"
    .parameter "maxBytes"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    .line 108
    iput-wide p2, p0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mMaxBytes:J

    .line 109
    return-void
.end method

.method public timeRemaining()J
    .locals 20

    .prologue
    .line 126
    new-instance v9, Landroid/os/StatFs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mSDCardDirectory:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 127
    .local v9, fs:Landroid/os/StatFs;
    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide v5, v0

    .line 128
    .local v5, blocks:J
    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide v3, v0

    .line 129
    .local v3, blockSize:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 131
    .local v10, now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBlocksChangedTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x1

    cmp-long v16, v16, v18

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastBlocks:J

    move-wide/from16 v16, v0

    cmp-long v16, v5, v16

    if-eqz v16, :cond_1

    .line 132
    :cond_0
    move-wide v0, v10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBlocksChangedTime:J

    .line 133
    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastBlocks:J

    .line 141
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastBlocks:J

    move-wide/from16 v16, v0

    mul-long v16, v16, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBytesPerSecond:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    div-long v12, v16, v18

    .line 143
    .local v12, result:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBlocksChangedTime:J

    move-wide/from16 v16, v0

    sub-long v16, v10, v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    sub-long v12, v12, v16

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 146
    const/16 v16, 0x2

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    move-wide/from16 v16, v12

    .line 169
    :goto_0
    return-wide v16

    .line 153
    :cond_2
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mRecordingFile:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 156
    .local v7, fileSize:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFileSizeChangedTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x1

    cmp-long v16, v16, v18

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastFileSize:J

    move-wide/from16 v16, v0

    cmp-long v16, v7, v16

    if-eqz v16, :cond_4

    .line 157
    :cond_3
    move-wide v0, v10

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFileSizeChangedTime:J

    .line 158
    move-wide v0, v7

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/soundrecorder/RemainingTimeCalculator;->mLastFileSize:J

    .line 161
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mMaxBytes:J

    move-wide/from16 v16, v0

    sub-long v16, v16, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mBytesPerSecond:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    div-long v14, v16, v18

    .line 162
    .local v14, result2:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/soundrecorder/RemainingTimeCalculator;->mFileSizeChangedTime:J

    move-wide/from16 v16, v0

    sub-long v16, v10, v16

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    sub-long v14, v14, v16

    .line 163
    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    .line 166
    cmp-long v16, v12, v14

    if-gez v16, :cond_5

    const/16 v16, 0x2

    :goto_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/soundrecorder/RemainingTimeCalculator;->mCurrentLowerLimit:I

    .line 169
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v16

    goto :goto_0

    .line 166
    :cond_5
    const/16 v16, 0x1

    goto :goto_1
.end method
