.class public interface abstract Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentOrBuilder;
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
    name = "IntentOrBuilder"
.end annotation


# virtual methods
.method public abstract getAction()Ljava/lang/String;
.end method

.method public abstract getActionBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCategory(I)Ljava/lang/String;
.end method

.method public abstract getCategoryBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCategoryCount()I
.end method

.method public abstract getCategoryList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getComponentName()Ljava/lang/String;
.end method

.method public abstract getComponentNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getData()Ljava/lang/String;
.end method

.method public abstract getDataBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDataType()Ljava/lang/String;
.end method

.method public abstract getDataTypeBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getExtra(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;
.end method

.method public abstract getExtraCount()I
.end method

.method public abstract getExtraList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$IntentExtra;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFlag(I)I
.end method

.method public abstract getFlagCount()I
.end method

.method public abstract getFlagList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHdpiCountdownIconUrl()Ljava/lang/String;
.end method

.method public abstract getHdpiCountdownIconUrlBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getHdpiListItemIconUrl()Ljava/lang/String;
.end method

.method public abstract getHdpiListItemIconUrlBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMdpiCountdownIconUrl()Ljava/lang/String;
.end method

.method public abstract getMdpiCountdownIconUrlBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMdpiListItemIconUrl()Ljava/lang/String;
.end method

.method public abstract getMdpiListItemIconUrlBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasAction()Z
.end method

.method public abstract hasComponentName()Z
.end method

.method public abstract hasData()Z
.end method

.method public abstract hasDataType()Z
.end method

.method public abstract hasHdpiCountdownIconUrl()Z
.end method

.method public abstract hasHdpiListItemIconUrl()Z
.end method

.method public abstract hasMdpiCountdownIconUrl()Z
.end method

.method public abstract hasMdpiListItemIconUrl()Z
.end method
