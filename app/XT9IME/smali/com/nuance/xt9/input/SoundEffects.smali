.class public Lcom/nuance/xt9/input/SoundEffects;
.super Ljava/lang/Object;
.source "SoundEffects.java"


# instance fields
.field protected context:Landroid/content/Context;

.field public released:Z

.field private soundPool:Landroid/media/SoundPool;

.field private soundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volume:I


# direct methods
.method protected constructor <init>(ILandroid/content/Context;)V
    .locals 4
    .parameter "size"
    .parameter "context"

    .prologue
    const/4 v3, 0x5

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/xt9/input/SoundEffects;->released:Z

    .line 21
    iput-object p2, p0, Lcom/nuance/xt9/input/SoundEffects;->context:Landroid/content/Context;

    .line 22
    new-instance v1, Landroid/media/SoundPool;

    const/16 v2, 0x28

    invoke-direct {v1, p1, v3, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/nuance/xt9/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    .line 23
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nuance/xt9/input/SoundEffects;->soundPoolMap:Ljava/util/HashMap;

    .line 24
    const-string v1, "audio"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 25
    .local v0, mgr:Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/nuance/xt9/input/SoundEffects;->volume:I

    .line 26
    return-void
.end method


# virtual methods
.method public addLoopSound(I)V
    .locals 4
    .parameter "resid"

    .prologue
    .line 35
    iget-object v1, p0, Lcom/nuance/xt9/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/nuance/xt9/input/SoundEffects;->context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    .line 36
    .local v0, soundId:I
    iget-object v1, p0, Lcom/nuance/xt9/input/SoundEffects;->soundPoolMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v1, p0, Lcom/nuance/xt9/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/media/SoundPool;->setLoop(II)V

    .line 38
    return-void
.end method

.method public addSound(I)V
    .locals 5
    .parameter "resid"

    .prologue
    const/4 v4, 0x1

    .line 29
    iget-object v1, p0, Lcom/nuance/xt9/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/nuance/xt9/input/SoundEffects;->context:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    .line 30
    .local v0, soundId:I
    iget-object v1, p0, Lcom/nuance/xt9/input/SoundEffects;->soundPoolMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object v1, p0, Lcom/nuance/xt9/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0, v4}, Landroid/media/SoundPool;->setLoop(II)V

    .line 32
    return-void
.end method

.method public play(I)V
    .locals 7
    .parameter "resid"

    .prologue
    const/4 v4, 0x1

    .line 41
    iget-object v0, p0, Lcom/nuance/xt9/input/SoundEffects;->soundPoolMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 42
    .local v1, soundId:I
    iget-object v0, p0, Lcom/nuance/xt9/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, v1, v4}, Landroid/media/SoundPool;->setLoop(II)V

    .line 43
    iget-object v0, p0, Lcom/nuance/xt9/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/nuance/xt9/input/SoundEffects;->volume:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nuance/xt9/input/SoundEffects;->volume:I

    int-to-float v3, v3

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 44
    return-void
.end method

.method public playLoop(I)V
    .locals 7
    .parameter "resid"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nuance/xt9/input/SoundEffects;->soundPoolMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 48
    .local v1, soundId:I
    iget-object v0, p0, Lcom/nuance/xt9/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->setLoop(II)V

    .line 49
    iget-object v0, p0, Lcom/nuance/xt9/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/nuance/xt9/input/SoundEffects;->volume:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nuance/xt9/input/SoundEffects;->volume:I

    int-to-float v3, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 50
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/xt9/input/SoundEffects;->released:Z

    .line 60
    iget-object v0, p0, Lcom/nuance/xt9/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 61
    return-void
.end method

.method public stop(I)V
    .locals 4
    .parameter "resid"

    .prologue
    const/4 v3, 0x0

    .line 53
    iget-object v1, p0, Lcom/nuance/xt9/input/SoundEffects;->soundPoolMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 54
    .local v0, soundId:I
    iget-object v1, p0, Lcom/nuance/xt9/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/SoundPool;->setLoop(II)V

    .line 55
    iget-object v1, p0, Lcom/nuance/xt9/input/SoundEffects;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0, v3, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 56
    return-void
.end method
