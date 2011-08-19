.class public interface abstract Lcom/google/android/voicesearch/speechservice/ProtoBufHttpPoster;
.super Ljava/lang/Object;
.source "ProtoBufHttpPoster.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract post(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Lcom/google/protos/speech/service/SpeechService$RequestMessage;)Lcom/google/protos/speech/service/SpeechService$ResponseMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/ConnectionException;
        }
    .end annotation
.end method

.method public abstract post(Lcom/google/android/voicesearch/speechservice/RecognitionParameters;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/voicesearch/speechservice/RecognitionParameters;",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$RequestMessage;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/SpeechService$ResponseMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/voicesearch/speechservice/ConnectionException;
        }
    .end annotation
.end method

.method public abstract registerHttpUser(Landroid/content/Context;)V
.end method
