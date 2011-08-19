.class public interface abstract Lcom/google/protos/speech/common/Alternates$AlternateSpanOrBuilder;
.super Ljava/lang/Object;
.source "Alternates.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/common/Alternates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AlternateSpanOrBuilder"
.end annotation


# virtual methods
.method public abstract getAlternates(I)Lcom/google/protos/speech/common/Alternates$Alternate;
.end method

.method public abstract getAlternatesCount()I
.end method

.method public abstract getAlternatesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$Alternate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConfidence()F
.end method

.method public abstract getLength()I
.end method

.method public abstract getStart()I
.end method

.method public abstract hasConfidence()Z
.end method

.method public abstract hasLength()Z
.end method

.method public abstract hasStart()Z
.end method
