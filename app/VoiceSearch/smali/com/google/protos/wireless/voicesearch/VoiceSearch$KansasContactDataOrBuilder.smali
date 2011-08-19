.class public interface abstract Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContactDataOrBuilder;
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
    name = "KansasContactDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getContact(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;
.end method

.method public abstract getContactCount()I
.end method

.method public abstract getContactList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$KansasContact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKansasId()Ljava/lang/String;
.end method

.method public abstract getKansasIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract getLanguageBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasKansasId()Z
.end method

.method public abstract hasLanguage()Z
.end method
