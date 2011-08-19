.class interface abstract Lcom/google/android/voicesearch/logging/VoiceSearchLogger$Logger;
.super Ljava/lang/Object;
.source "VoiceSearchLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/logging/VoiceSearchLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Logger"
.end annotation


# virtual methods
.method public abstract actionAccepted(Lcom/google/android/voicesearch/actions/VoiceAction;)V
.end method

.method public abstract actionPresented(Lcom/google/android/voicesearch/actions/VoiceAction;)V
.end method

.method public abstract actionRejected(Lcom/google/android/voicesearch/actions/VoiceAction;)V
.end method

.method public abstract contactMissingAddress(I)V
.end method

.method public abstract disambigAccepted(Lcom/google/android/voicesearch/actions/VoiceAction;)V
.end method

.method public abstract disambigPresented()V
.end method

.method public abstract errorCancel()V
.end method

.method public abstract errorRetry()V
.end method

.method public abstract flush()V
.end method

.method public abstract helpButtonUsed(Z)V
.end method

.method public abstract listeningCancel()V
.end method

.method public abstract personalizationAuthTokenFailure()V
.end method

.method public abstract personalizationDashboardLink()V
.end method

.method public abstract personalizationMoreLink()V
.end method

.method public abstract personalizationPopup(Z)V
.end method

.method public abstract personalizationSetting(Z)V
.end method

.method public abstract retry()V
.end method

.method public abstract start(Ljava/lang/String;)V
.end method

.method public abstract textModified(Lcom/google/android/voicesearch/actions/VoiceAction;Ljava/lang/String;Ljava/lang/String;Lcom/google/protos/MobileappsExtensions$TextModification;)V
.end method

.method public abstract videoLaunched()V
.end method

.method public abstract workingCancel()V
.end method
