.class public interface abstract Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternatesOrBuilder;
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
    name = "RecognitionClientAlternatesOrBuilder"
.end annotation


# virtual methods
.method public abstract getMaxSpanLength()I
.end method

.method public abstract getSpan(I)Lcom/google/protos/speech/common/Alternates$AlternateSpan;
.end method

.method public abstract getSpanCount()I
.end method

.method public abstract getSpanList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/speech/common/Alternates$AlternateSpan;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasMaxSpanLength()Z
.end method
