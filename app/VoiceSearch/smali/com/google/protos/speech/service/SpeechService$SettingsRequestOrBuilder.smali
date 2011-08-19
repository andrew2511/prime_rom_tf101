.class public interface abstract Lcom/google/protos/speech/service/SpeechService$SettingsRequestOrBuilder;
.super Ljava/lang/Object;
.source "SpeechService.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/speech/service/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SettingsRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getDeprecatedGaiaAuthenticationToken()Ljava/lang/String;
.end method

.method public abstract getDeprecatedGaiaAuthenticationTokenBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDeprecatedPersonalizationOptIn()Lcom/google/protos/speech/service/SpeechService$DeprecatedPersonalizationSettingCode;
.end method

.method public abstract hasDeprecatedGaiaAuthenticationToken()Z
.end method

.method public abstract hasDeprecatedPersonalizationOptIn()Z
.end method
