.class public final Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "QsbLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/QsbLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoiceSearchEntry"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasVoiceSearchInstalled:Z

.field private voiceSearchInstalled_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 877
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 882
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;->voiceSearchInstalled_:Z

    .line 914
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;->cachedSize:I

    .line 877
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 916
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;->cachedSize:I

    if-gez v0, :cond_0

    .line 918
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;->getSerializedSize()I

    .line 920
    :cond_0
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 924
    const/4 v0, 0x0

    .line 925
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;->hasVoiceSearchInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;->getVoiceSearchInstalled()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 929
    :cond_0
    iput v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;->cachedSize:I

    .line 930
    return v0
.end method

.method public getVoiceSearchInstalled()Z
    .locals 1

    .prologue
    .line 883
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;->voiceSearchInstalled_:Z

    return v0
.end method

.method public hasVoiceSearchInstalled()Z
    .locals 1

    .prologue
    .line 884
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;->hasVoiceSearchInstalled:Z

    return v0
.end method

.method public setVoiceSearchInstalled(Z)Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 886
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;->hasVoiceSearchInstalled:Z

    .line 887
    iput-boolean p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;->voiceSearchInstalled_:Z

    .line 888
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;->hasVoiceSearchInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$VoiceSearchEntry;->getVoiceSearchInstalled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 912
    :cond_0
    return-void
.end method
