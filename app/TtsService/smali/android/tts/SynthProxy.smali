.class public Landroid/tts/SynthProxy;
.super Ljava/lang/Object;
.source "SynthProxy.java"


# instance fields
.field private mJniData:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 175
    const-string v0, "ttssynthproxy"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "nativeSoLib"
    .parameter "engineConfig"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pico"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 53
    .local v1, applyFilter:Z
    const-string v0, "TtsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "About to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", applyFilter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, p1, p2}, Landroid/tts/SynthProxy;->native_setup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/high16 v2, 0x40a0

    const/high16 v3, -0x3e70

    const v4, 0x44898000

    const/high16 v5, 0x3f80

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/tts/SynthProxy;->native_setLowShelf(ZFFFF)I

    .line 57
    return-void
.end method

.method private final native native_finalize(I)V
.end method

.method private final native native_getLanguage(I)[Ljava/lang/String;
.end method

.method private final native native_getRate(I)I
.end method

.method private final native native_isLanguageAvailable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private final native native_loadLanguage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private final native native_setConfig(ILjava/lang/String;)I
.end method

.method private final native native_setLanguage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private final native native_setLowShelf(ZFFFF)I
.end method

.method private final native native_setPitch(II)I
.end method

.method private final native native_setSpeechRate(II)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private final native native_shutdown(I)V
.end method

.method private final native native_speak(ILjava/lang/String;IFF)I
.end method

.method private final native native_stop(I)I
.end method

.method private final native native_stopSync(I)I
.end method

.method private final native native_synthesizeToFile(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private static postNativeSpeechSynthesizedInJava(Ljava/lang/Object;II)V
    .locals 4
    .parameter "tts_ref"
    .parameter "bufferPointer"
    .parameter "bufferSize"

    .prologue
    .line 231
    const-string v1, "TTS plugin debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bufferPointer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bufferSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/tts/SynthProxy;

    .line 237
    .local v0, nativeTTS:Landroid/tts/SynthProxy;
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    invoke-direct {p0, v0}, Landroid/tts/SynthProxy;->native_finalize(I)V

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    .line 172
    return-void
.end method

.method public getLanguage()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    invoke-direct {p0, v0}, Landroid/tts/SynthProxy;->native_getLanguage(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRate()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    invoke-direct {p0, v0}, Landroid/tts/SynthProxy;->native_getRate(I)I

    move-result v0

    return v0
.end method

.method public isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "language"
    .parameter "country"
    .parameter "variant"

    .prologue
    .line 106
    iget v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/tts/SynthProxy;->native_isLanguageAvailable(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public loadLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "language"
    .parameter "country"
    .parameter "variant"

    .prologue
    .line 127
    iget v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/tts/SynthProxy;->native_loadLanguage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setConfig(Ljava/lang/String;)I
    .locals 1
    .parameter "engineConfig"

    .prologue
    .line 113
    iget v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    invoke-direct {p0, v0, p1}, Landroid/tts/SynthProxy;->native_setConfig(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "language"
    .parameter "country"
    .parameter "variant"

    .prologue
    .line 120
    iget v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/tts/SynthProxy;->native_setLanguage(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final setPitch(I)I
    .locals 1
    .parameter "pitch"

    .prologue
    .line 141
    iget v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    invoke-direct {p0, v0, p1}, Landroid/tts/SynthProxy;->native_setPitch(II)I

    move-result v0

    return v0
.end method

.method public final setSpeechRate(I)I
    .locals 1
    .parameter "speechRate"

    .prologue
    .line 134
    iget v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    invoke-direct {p0, v0, p1}, Landroid/tts/SynthProxy;->native_setSpeechRate(II)I

    move-result v0

    return v0
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    invoke-direct {p0, v0}, Landroid/tts/SynthProxy;->native_shutdown(I)V

    .line 163
    return-void
.end method

.method public speak(Ljava/lang/String;IFF)I
    .locals 6
    .parameter "text"
    .parameter "streamType"
    .parameter "volume"
    .parameter "pan"

    .prologue
    .line 82
    const-string v0, "SynthProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "speak() on stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v0, -0x1

    if-le p2, v0, :cond_0

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 84
    iget v1, p0, Landroid/tts/SynthProxy;->mJniData:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/tts/SynthProxy;->native_speak(ILjava/lang/String;IFF)I

    move-result v0

    .line 87
    :goto_0
    return v0

    .line 86
    :cond_0
    const-string v0, "SynthProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to speak with invalid stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget v1, p0, Landroid/tts/SynthProxy;->mJniData:I

    const/4 v3, 0x3

    move-object v0, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/tts/SynthProxy;->native_speak(ILjava/lang/String;IFF)I

    move-result v0

    goto :goto_0
.end method

.method public stop()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    invoke-direct {p0, v0}, Landroid/tts/SynthProxy;->native_stop(I)I

    move-result v0

    return v0
.end method

.method public stopSync()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    invoke-direct {p0, v0}, Landroid/tts/SynthProxy;->native_stopSync(I)I

    move-result v0

    return v0
.end method

.method public synthesizeToFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "text"
    .parameter "filename"

    .prologue
    .line 97
    const-string v0, "SynthProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "synthesizeToFile() to file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget v0, p0, Landroid/tts/SynthProxy;->mJniData:I

    invoke-direct {p0, v0, p1, p2}, Landroid/tts/SynthProxy;->native_synthesizeToFile(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
