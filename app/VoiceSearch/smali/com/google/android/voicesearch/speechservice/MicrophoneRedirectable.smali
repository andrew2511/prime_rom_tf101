.class public Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;
.super Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;
.source "MicrophoneRedirectable.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MicrophoneRedirectable"


# instance fields
.field private mPlaybackFilename:Ljava/lang/String;

.field private mRecordFilename:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mRecordFilename:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mPlaybackFilename:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mPlaybackFilename:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mRecordFilename:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private recordStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 108
    const-string v0, "MicrophoneRedirectable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recording to file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 111
    new-instance v1, Lcom/google/android/voicesearch/logging/CopyInputStream;

    invoke-direct {v1, p1, v0}, Lcom/google/android/voicesearch/logging/CopyInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 114
    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    const-string v1, "MicrophoneRedirectable"

    const-string v2, "Error opening audio record file."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, p1

    .line 114
    goto :goto_0
.end method


# virtual methods
.method protected getMicInputStream(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;IZLjava/io/ByteArrayOutputStream;)Lcom/google/android/voicesearch/speechservice/AudioBuffer;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x1f40

    .line 59
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mPlaybackFilename:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 60
    const-string v0, "MicrophoneRedirectable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Playing back from file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mPlaybackFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v0, Lcom/google/android/voicesearch/endpointer/FileLoopInputStream;

    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mPlaybackFilename:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mSamplingRate:I

    iget v3, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mSamplingRate:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/voicesearch/endpointer/FileLoopInputStream;-><init>(Ljava/lang/String;II)V

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mRecordFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mRecordFilename:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->recordStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 74
    :cond_0
    iget v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mSamplingRate:I

    if-eq v1, v4, :cond_1

    .line 75
    new-instance v1, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;

    iget v2, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mSamplingRate:I

    invoke-direct {v1, v0, v2, v4}, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;-><init>(Ljava/io/InputStream;II)V

    .line 76
    iput v4, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mSamplingRate:I

    move-object v0, v1

    .line 83
    :cond_1
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mEncoding:I

    .line 84
    const/4 v1, 0x1

    if-ne p2, v1, :cond_5

    .line 85
    iget v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mEncodingWifi:I

    iput v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mEncoding:I

    .line 91
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mPlaybackFilename:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 92
    const-string v1, "mic"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->logStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 94
    :cond_3
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x640

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 96
    new-instance v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mSpeechInputMinimumLengthMillis:J

    iget-wide v5, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mSpeechInputCompleteSilenceLengthMillis:J

    iget-wide v7, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mSpeechInputPossiblyCompleteSilenceLengthMillis:J

    invoke-direct/range {v0 .. v8}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;-><init>(Ljava/io/InputStream;IJJJ)V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mEndpointer:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    .line 101
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mEndpointer:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->setListener(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;)V

    .line 103
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mEndpointer:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    iget v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mEncoding:I

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/speechservice/Utils;->getEncodingInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    iget v2, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mEncoding:I

    invoke-static {v2}, Lcom/google/android/voicesearch/speechservice/Utils;->getAudioPacketSize(I)I

    move-result v2

    invoke-direct {v1, v2, v0, p3}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;-><init>(ILjava/io/InputStream;Z)V

    return-object v1

    .line 67
    :cond_4
    new-instance v0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;

    iget v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mSamplingRate:I

    iget v2, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mSamplingRate:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;-><init>(II)V

    goto :goto_0

    .line 86
    :cond_5
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 87
    iget v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mEncodingThreeG:I

    iput v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneRedirectable;->mEncoding:I

    goto :goto_1
.end method
