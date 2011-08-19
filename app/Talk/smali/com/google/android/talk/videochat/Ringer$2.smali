.class Lcom/google/android/talk/videochat/Ringer$2;
.super Ljava/lang/Object;
.source "Ringer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/Ringer;->resetVolume(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/Ringer;

.field final synthetic val$newVolume:I

.field final synthetic val$origVolume:I

.field final synthetic val$streamType:I


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/Ringer;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/google/android/talk/videochat/Ringer$2;->this$0:Lcom/google/android/talk/videochat/Ringer;

    iput p2, p0, Lcom/google/android/talk/videochat/Ringer$2;->val$origVolume:I

    iput p3, p0, Lcom/google/android/talk/videochat/Ringer$2;->val$newVolume:I

    iput p4, p0, Lcom/google/android/talk/videochat/Ringer$2;->val$streamType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 363
    const-wide/16 v0, 0x14

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/Ringer$2;->this$0:Lcom/google/android/talk/videochat/Ringer;

    iget v1, p0, Lcom/google/android/talk/videochat/Ringer$2;->val$origVolume:I

    iget v2, p0, Lcom/google/android/talk/videochat/Ringer$2;->val$newVolume:I

    iget v3, p0, Lcom/google/android/talk/videochat/Ringer$2;->val$streamType:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/talk/videochat/Ringer;->access$500(Lcom/google/android/talk/videochat/Ringer;III)V

    .line 367
    return-void

    .line 364
    :catch_0
    move-exception v0

    goto :goto_0
.end method
