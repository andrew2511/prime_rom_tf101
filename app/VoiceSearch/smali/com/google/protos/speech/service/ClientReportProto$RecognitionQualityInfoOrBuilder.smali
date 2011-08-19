.class public interface abstract Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfoOrBuilder;
.super Ljava/lang/Object;
.source "ClientReportProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/ClientReportProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecognitionQualityInfoOrBuilder"
.end annotation


# virtual methods
.method public abstract getCorrectIndex()I
.end method

.method public abstract getCorrectResult()Ljava/lang/String;
.end method

.method public abstract getCorrectResultBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCorrectResultStatus()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo$CorrectResultStatus;
.end method

.method public abstract getNoneCorrect()Z
.end method

.method public abstract getSelectedAlternateSpans(I)Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;
.end method

.method public abstract getSelectedAlternateSpansCount()I
.end method

.method public abstract getSelectedAlternateSpansList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/service/ClientReportProto$SelectedAlternateSpan;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasCorrectIndex()Z
.end method

.method public abstract hasCorrectResult()Z
.end method

.method public abstract hasCorrectResultStatus()Z
.end method

.method public abstract hasNoneCorrect()Z
.end method
