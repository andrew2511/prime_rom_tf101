.class Lcom/google/android/talk/videochat/CallRinger$1;
.super Ljava/lang/Object;
.source "CallRinger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/CallRinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/CallRinger;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/CallRinger;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/talk/videochat/CallRinger$1;->this$0:Lcom/google/android/talk/videochat/CallRinger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallRinger$1;->this$0:Lcom/google/android/talk/videochat/CallRinger;

    const-string v1, "mRingDelayRunnable.run"

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/CallRinger;->log(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallRinger$1;->this$0:Lcom/google/android/talk/videochat/CallRinger;

    invoke-static {v0}, Lcom/google/android/talk/videochat/CallRinger;->access$000(Lcom/google/android/talk/videochat/CallRinger;)V

    .line 84
    return-void
.end method
