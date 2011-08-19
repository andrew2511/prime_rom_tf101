.class public interface abstract Lcom/google/protobuf/MessageLite;
.super Ljava/lang/Object;
.source "MessageLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/MessageLite$Builder;
    }
.end annotation


# virtual methods
.method public abstract getSerializedSize()I
.end method

.method public abstract toByteArray()[B
.end method

.method public abstract writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
