.class public Lcom/splashtop/remote/bean/AudioFormatBean;
.super Ljava/lang/Object;
.source "AudioFormatBean.java"


# instance fields
.field private channels:I

.field private frameSize:I

.field private sampleBits:I

.field private sampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .parameter "sampleRate"
    .parameter "sampleBits"
    .parameter "frameSize"
    .parameter "channels"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/splashtop/remote/bean/AudioFormatBean;->sampleRate:I

    .line 23
    iput p2, p0, Lcom/splashtop/remote/bean/AudioFormatBean;->sampleBits:I

    .line 24
    iput p3, p0, Lcom/splashtop/remote/bean/AudioFormatBean;->frameSize:I

    .line 25
    iput p4, p0, Lcom/splashtop/remote/bean/AudioFormatBean;->channels:I

    .line 26
    return-void
.end method


# virtual methods
.method public getChannels()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/splashtop/remote/bean/AudioFormatBean;->channels:I

    return v0
.end method

.method public getFrameSize()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/splashtop/remote/bean/AudioFormatBean;->frameSize:I

    return v0
.end method

.method public getSampleBits()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/splashtop/remote/bean/AudioFormatBean;->sampleBits:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/splashtop/remote/bean/AudioFormatBean;->sampleRate:I

    return v0
.end method

.method public setChannels(I)V
    .locals 0
    .parameter "channels"

    .prologue
    .line 57
    iput p1, p0, Lcom/splashtop/remote/bean/AudioFormatBean;->channels:I

    .line 58
    return-void
.end method

.method public setFrameSize(I)V
    .locals 0
    .parameter "frameSize"

    .prologue
    .line 49
    iput p1, p0, Lcom/splashtop/remote/bean/AudioFormatBean;->frameSize:I

    .line 50
    return-void
.end method

.method public setSampleBits(I)V
    .locals 0
    .parameter "sampleBits"

    .prologue
    .line 41
    iput p1, p0, Lcom/splashtop/remote/bean/AudioFormatBean;->sampleBits:I

    .line 42
    return-void
.end method

.method public setSampleRate(I)V
    .locals 0
    .parameter "sampleRate"

    .prologue
    .line 33
    iput p1, p0, Lcom/splashtop/remote/bean/AudioFormatBean;->sampleRate:I

    .line 34
    return-void
.end method
