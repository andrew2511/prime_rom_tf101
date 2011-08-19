.class public interface abstract Lcom/google/protos/MobileappsExtensions$OrkutPhoneActionOrBuilder;
.super Ljava/lang/Object;
.source "MobileappsExtensions.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/MobileappsExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OrkutPhoneActionOrBuilder"
.end annotation


# virtual methods
.method public abstract getIsSms()Z
.end method

.method public abstract getPhoneNumberTypeActedOn()Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;
.end method

.method public abstract getPhoneNumberTypeShown(I)Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;
.end method

.method public abstract getPhoneNumberTypeShownCount()I
.end method

.method public abstract getPhoneNumberTypeShownList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/MobileappsExtensions$OrkutPhoneAction$PhoneType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasIsSms()Z
.end method

.method public abstract hasPhoneNumberTypeActedOn()Z
.end method
