.class Lcom/android/soundrecorder/RecorderService$ServiceStub;
.super Lcom/android/soundrecorder/IRecorderService$Stub;
.source "RecorderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/soundrecorder/RecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceStub"
.end annotation


# instance fields
.field mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/soundrecorder/RecorderService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/RecorderService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/android/soundrecorder/IRecorderService$Stub;-><init>()V

    .line 411
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/soundrecorder/RecorderService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    .line 412
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/soundrecorder/RecorderService;

    invoke-virtual {p0}, Lcom/android/soundrecorder/RecorderService;->delete()V

    .line 436
    return-void
.end method

.method public getMaxAmplitude()I
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/soundrecorder/RecorderService;

    invoke-virtual {p0}, Lcom/android/soundrecorder/RecorderService;->getMaxAmplitude()I

    move-result v0

    return v0
.end method

.method public progress()I
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/soundrecorder/RecorderService;

    invoke-virtual {p0}, Lcom/android/soundrecorder/RecorderService;->progress()I

    move-result v0

    return v0
.end method

.method public restoreState(Ljava/lang/String;I)V
    .locals 1
    .parameter "samplePath"
    .parameter "sampleLength"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/soundrecorder/RecorderService;

    invoke-virtual {p0, p1, p2}, Lcom/android/soundrecorder/RecorderService;->restoreState(Ljava/lang/String;I)V

    .line 468
    return-void
.end method

.method public sampleFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/soundrecorder/RecorderService;

    invoke-virtual {p0}, Lcom/android/soundrecorder/RecorderService;->sampleFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sampleLength()I
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/soundrecorder/RecorderService;

    invoke-virtual {p0}, Lcom/android/soundrecorder/RecorderService;->sampleLength()I

    move-result v0

    return v0
.end method

.method public startPlayback()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/soundrecorder/RecorderService;

    invoke-virtual {p0}, Lcom/android/soundrecorder/RecorderService;->startPlayback()V

    .line 464
    return-void
.end method

.method public startRecording(ILjava/lang/String;)V
    .locals 1
    .parameter "outputfileformat"
    .parameter "extension"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/soundrecorder/RecorderService;

    invoke-virtual {p0, p1, p2}, Lcom/android/soundrecorder/RecorderService;->startRecording(ILjava/lang/String;)V

    .line 416
    return-void
.end method

.method public state()I
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/soundrecorder/RecorderService;

    invoke-virtual {p0}, Lcom/android/soundrecorder/RecorderService;->state()I

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/soundrecorder/RecorderService;

    invoke-virtual {p0}, Lcom/android/soundrecorder/RecorderService;->stop()V

    .line 420
    return-void
.end method

.method public stopRecorderService()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/soundrecorder/RecorderService$ServiceStub;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/soundrecorder/RecorderService;

    invoke-virtual {p0}, Lcom/android/soundrecorder/RecorderService;->stopRecorderService()V

    .line 460
    return-void
.end method
