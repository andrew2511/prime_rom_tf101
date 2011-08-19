.class public interface abstract Lcom/google/android/voicesearch/speechservice/MicrophoneManager;
.super Ljava/lang/Object;
.source "MicrophoneManager.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract getEncoding()I
.end method

.method public abstract getSamplingRate()I
.end method

.method public abstract pauseStream()V
.end method

.method public abstract restartStream()V
.end method

.method public abstract setSpeechInputCompleteSilenceLengthMillis(J)V
.end method

.method public abstract setSpeechInputMinimumLengthMillis(J)V
.end method

.method public abstract setSpeechInputPossiblyCompleteSilenceLengthMillis(J)V
.end method

.method public abstract setupMicrophone(Lcom/google/android/voicesearch/endpointer/EndpointerInputStream$Listener;IZLjava/io/ByteArrayOutputStream;)Lcom/google/android/voicesearch/speechservice/AudioBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract stopListening()V
.end method
