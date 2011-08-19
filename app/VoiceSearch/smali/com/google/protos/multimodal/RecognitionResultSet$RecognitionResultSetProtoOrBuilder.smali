.class public interface abstract Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultSetProtoOrBuilder;
.super Ljava/lang/Object;
.source "RecognitionResultSet.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/multimodal/RecognitionResultSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RecognitionResultSetProtoOrBuilder"
.end annotation


# virtual methods
.method public abstract getConfidencehighthreshold()I
.end method

.method public abstract getConfidencelowthreshold()I
.end method

.method public abstract getResults(I)Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;
.end method

.method public abstract getResultsCount()I
.end method

.method public abstract getResultsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/multimodal/RecognitionResultSet$RecognitionResultProto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasConfidencehighthreshold()Z
.end method

.method public abstract hasConfidencelowthreshold()Z
.end method
