.class public interface abstract Lcom/google/protos/speech/service/ClientReportProto$ClientReportOrBuilder;
.super Ljava/lang/Object;
.source "ClientReportProto.java"

# interfaces
.implements Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/ClientReportProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ClientReportOrBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder",
        "<",
        "Lcom/google/protos/speech/service/ClientReportProto$ClientReport;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getClientPerceivedRequestStatus()Lcom/google/protos/speech/service/ClientReportProto$ClientReport$ClientPerceivedRequestStatus;
.end method

.method public abstract getClientSideError()I
.end method

.method public abstract getInProgressResultLatencyMs()I
.end method

.method public abstract getRecognitionQualityInfo()Lcom/google/protos/speech/service/ClientReportProto$RecognitionQualityInfo;
.end method

.method public abstract getRequestAckLatencyMs()I
.end method

.method public abstract getSelectedNbestIndex()I
.end method

.method public abstract getTotalLatencyMs()I
.end method

.method public abstract getUserPerceivedLatencyMs()I
.end method

.method public abstract hasClientPerceivedRequestStatus()Z
.end method

.method public abstract hasClientSideError()Z
.end method

.method public abstract hasInProgressResultLatencyMs()Z
.end method

.method public abstract hasRecognitionQualityInfo()Z
.end method

.method public abstract hasRequestAckLatencyMs()Z
.end method

.method public abstract hasSelectedNbestIndex()Z
.end method

.method public abstract hasTotalLatencyMs()Z
.end method

.method public abstract hasUserPerceivedLatencyMs()Z
.end method
