.class public interface abstract Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactOrBuilder;
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
    name = "KansasContactOrBuilder"
.end annotation


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNameBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPhoneNumberType(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;
.end method

.method public abstract getPhoneNumberTypeCount()I
.end method

.method public abstract getPhoneNumberTypeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact$PhoneNumberType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasName()Z
.end method
