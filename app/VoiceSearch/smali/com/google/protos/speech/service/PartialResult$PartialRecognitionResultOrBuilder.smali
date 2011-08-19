.class public interface abstract Lcom/google/protos/speech/service/PartialResult$PartialRecognitionResultOrBuilder;
.super Ljava/lang/Object;
.source "PartialResult.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/PartialResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PartialRecognitionResultOrBuilder"
.end annotation


# virtual methods
.method public abstract getPart(I)Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;
.end method

.method public abstract getPartCount()I
.end method

.method public abstract getPartList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/PartialResult$RecognitionResultPart;",
            ">;"
        }
    .end annotation
.end method
