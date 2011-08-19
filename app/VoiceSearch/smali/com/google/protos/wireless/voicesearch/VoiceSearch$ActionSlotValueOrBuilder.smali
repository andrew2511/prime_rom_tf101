.class public interface abstract Lcom/google/protos/wireless/voicesearch/VoiceSearch$ActionSlotValueOrBuilder;
.super Ljava/lang/Object;
.source "VoiceSearch.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/wireless/voicesearch/VoiceSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActionSlotValueOrBuilder"
.end annotation


# virtual methods
.method public abstract getAlternates()Lcom/google/protos/speech/common/Alternates$RecognitionClientAlternates;
.end method

.method public abstract getContactsListValue(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;
.end method

.method public abstract getContactsListValueCount()I
.end method

.method public abstract getContactsListValueList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsResponseItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContactsWithAltsValue(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;
.end method

.method public abstract getContactsWithAltsValueCount()I
.end method

.method public abstract getContactsWithAltsValueList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsWithAlternatesResponseItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIntValue()I
.end method

.method public abstract getStringValue()Ljava/lang/String;
.end method

.method public abstract getStringValueBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasAlternates()Z
.end method

.method public abstract hasIntValue()Z
.end method

.method public abstract hasStringValue()Z
.end method
