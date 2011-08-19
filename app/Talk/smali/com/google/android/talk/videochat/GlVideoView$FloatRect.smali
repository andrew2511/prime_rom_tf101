.class public Lcom/google/android/talk/videochat/GlVideoView$FloatRect;
.super Ljava/lang/Object;
.source "GlVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/GlVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatRect"
.end annotation


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public top:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->bottom:F

    iput v0, p0, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->right:F

    iput v0, p0, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->top:F

    iput v0, p0, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->left:F

    .line 94
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->left:F

    .line 98
    iput p2, p0, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->top:F

    .line 99
    iput p3, p0, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->right:F

    .line 100
    iput p4, p0, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->bottom:F

    .line 101
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 106
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "FloatRect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v1, p0, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->right:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
