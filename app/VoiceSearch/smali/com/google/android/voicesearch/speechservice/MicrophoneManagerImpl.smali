.class public Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;
.super Ljava/lang/Object;
.source "MicrophoneManagerImpl.java"

# interfaces
.implements Lcom/google/android/voicesearch/speechservice/MicrophoneManager;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "MicrophoneManagerImpl"


# instance fields
.field private mAudioLoggingEnabled:Z

.field private mContext:Landroid/content/Context;

.field protected mEncoding:I

.field protected mEncodingThreeG:I

.field protected mEncodingWifi:I

.field protected mEndpointer:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

.field protected mSamplingRate:I

.field protected mSpeechInputCompleteSilenceLengthMillis:J

.field protected mSpeechInputMinimumLengthMillis:J

.field protected mSpeechInputPossiblyCompleteSilenceLengthMillis:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x3e80

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mSamplingRate:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEndpointer:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    .line 61
    iput-wide v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mSpeechInputMinimumLengthMillis:J

    .line 63
    iput-wide v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mSpeechInputCompleteSilenceLengthMillis:J

    .line 65
    iput-wide v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mSpeechInputPossiblyCompleteSilenceLengthMillis:J

    .line 68
    iput-boolean v3, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mAudioLoggingEnabled:Z

    .line 71
    iput-object p1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mContext:Landroid/content/Context;

    .line 72
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getGservicesHelper()Lcom/google/android/voicesearch/GservicesHelper;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 76
    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getAudioEncoding3G()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->getEncodingOf(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEncodingThreeG:I

    .line 77
    invoke-virtual {v0}, Lcom/google/android/voicesearch/GservicesHelper;->getAudioEncodingWifi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->getEncodingOf(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEncodingWifi:I

    .line 78
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "audioLoggingEnabled"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mAudioLoggingEnabled:Z

    .line 80
    return-void
.end method

.method private static getEncodingOf(Ljava/lang/String;)I
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    .line 247
    const-string v0, "ULAW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    .line 249
    :cond_0
    const-string v0, "LINEAR_16"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    const/4 v0, 0x2

    goto :goto_0

    .line 251
    :cond_1
    const-string v0, "AMR_NB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    .line 252
    goto :goto_0

    .line 253
    :cond_2
    const-string v0, "SPEEX_NB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 254
    const/4 v0, 0x6

    goto :goto_0

    .line 255
    :cond_3
    const-string v0, "FLAC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 256
    const/4 v0, 0x7

    goto :goto_0

    .line 259
    :cond_4
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected encoding type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Using AMR."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 260
    goto :goto_0
.end method


# virtual methods
.method protected captureStream(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)Ljava/io/InputStream;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 233
    if-nez p2, :cond_0

    move-object v0, p1

    .line 237
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/voicesearch/logging/CopyInputStream;

    invoke-direct {v0, p1, p2}, Lcom/google/android/voicesearch/logging/CopyInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEndpointer:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEndpointer:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->requestClose()V

    .line 208
    :cond_0
    return-void
.end method

.method public getEncoding()I
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEncoding:I

    return v0
.end method

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
    const/16 v3, 0x1f40

    .line 108
    new-instance v0, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;

    iget v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mSamplingRate:I

    iget v2, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mSamplingRate:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/google/android/voicesearch/endpointer/MicrophoneInputStream;-><init>(II)V

    .line 111
    iget v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mSamplingRate:I

    if-eq v1, v3, :cond_0

    .line 112
    new-instance v1, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;

    iget v2, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mSamplingRate:I

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/voicesearch/endpointer/ResampleInputStream;-><init>(Ljava/io/InputStream;II)V

    .line 113
    iput v3, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mSamplingRate:I

    move-object v0, v1

    .line 120
    :cond_0
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEncoding:I

    .line 121
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 122
    iget v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEncodingWifi:I

    iput v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEncoding:I

    .line 127
    :cond_1
    :goto_0
    const-string v1, "mic"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->logStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 128
    invoke-virtual {p0, v0, p4}, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->captureStream(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;)Ljava/io/InputStream;

    move-result-object v0

    .line 129
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x640

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 131
    new-instance v0, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mSpeechInputMinimumLengthMillis:J

    iget-wide v5, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mSpeechInputCompleteSilenceLengthMillis:J

    iget-wide v7, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mSpeechInputPossiblyCompleteSilenceLengthMillis:J

    invoke-direct/range {v0 .. v8}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;-><init>(Ljava/io/InputStream;IJJJ)V

    iput-object v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEndpointer:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    .line 136
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEndpointer:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    invoke-virtual {v0, p1}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->setListener(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEndpointer:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    iget v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEncoding:I

    invoke-static {v0, v1}, Lcom/google/android/voicesearch/speechservice/Utils;->getEncodingInputStream(Ljava/io/InputStream;I)Ljava/io/InputStream;

    move-result-object v0

    .line 139
    new-instance v1, Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    iget v2, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEncoding:I

    invoke-static {v2}, Lcom/google/android/voicesearch/speechservice/Utils;->getAudioPacketSize(I)I

    move-result v2

    invoke-direct {v1, v2, v0, p3}, Lcom/google/android/voicesearch/speechservice/AudioBuffer;-><init>(ILjava/io/InputStream;Z)V

    return-object v1

    .line 123
    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_1

    .line 124
    iget v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEncodingThreeG:I

    iput v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEncoding:I

    goto :goto_0
.end method

.method public getSamplingRate()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mSamplingRate:I

    return v0
.end method

.method protected logStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mAudioLoggingEnabled:Z

    if-nez v0, :cond_0

    move-object v0, p1

    .line 226
    :goto_0
    return-object v0

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/voicesearch/TestPlatformLog;->logAudioPath(Ljava/lang/String;)V

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 223
    new-instance v1, Lcom/google/android/voicesearch/logging/CopyInputStream;

    invoke-direct {v1, p1, v0}, Lcom/google/android/voicesearch/logging/CopyInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    const-string v1, "MicrophoneManagerImpl"

    const-string v2, "Error opening audio log file."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, p1

    .line 226
    goto :goto_0
.end method

.method public pauseStream()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEndpointer:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->pauseStream()V

    .line 189
    return-void
.end method

.method public restartStream()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEndpointer:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->restartStream()V

    .line 193
    return-void
.end method

.method public setSpeechInputCompleteSilenceLengthMillis(J)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-wide p1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mSpeechInputCompleteSilenceLengthMillis:J

    .line 159
    return-void
.end method

.method public setSpeechInputMinimumLengthMillis(J)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-wide p1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mSpeechInputMinimumLengthMillis:J

    .line 149
    return-void
.end method

.method public setSpeechInputPossiblyCompleteSilenceLengthMillis(J)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-wide p1, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mSpeechInputPossiblyCompleteSilenceLengthMillis:J

    .line 171
    return-void
.end method

.method public setupMicrophone(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;IZLjava/io/ByteArrayOutputStream;)Lcom/google/android/voicesearch/speechservice/AudioBuffer;
    .locals 1
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
    .line 96
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->getMicInputStream(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;IZLjava/io/ByteArrayOutputStream;)Lcom/google/android/voicesearch/speechservice/AudioBuffer;

    move-result-object v0

    .line 99
    return-object v0
.end method

.method public stopListening()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/voicesearch/speechservice/MicrophoneManagerImpl;->mEndpointer:Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;

    invoke-virtual {v0}, Lcom/google/android/voicesearch/endpointer/EndpointerInputStream;->stopListening()V

    .line 197
    return-void
.end method
