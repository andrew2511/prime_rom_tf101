.class public interface abstract Lcom/google/protos/wireless/voicesearch/VoiceSearch$ContactsDataOrBuilder;
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
    name = "ContactsDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getContact(I)Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;
.end method

.method public abstract getContactCount()I
.end method

.method public abstract getContactList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/wireless/voicesearch/VoiceSearch$Contact;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHighConfidence()Z
.end method

.method public abstract getPriority()I
.end method

.method public abstract hasHighConfidence()Z
.end method

.method public abstract hasPriority()Z
.end method
