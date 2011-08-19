.class public interface abstract Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer$Listener;
.super Ljava/lang/Object;
.source "BackgroundRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onEndOfSpeech(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;)V
.end method

.method public abstract onError(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;I)V
.end method

.method public abstract onFinishRecognizing(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReadyForSpeech(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;)V
.end method

.method public abstract onRmsChanged(Lcom/google/android/voicesearch/actioneditor/BackgroundRecognizer;F)V
.end method
