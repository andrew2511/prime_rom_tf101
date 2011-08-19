.class Lcom/google/android/talk/videochat/CallManager$1;
.super Ljava/lang/Object;
.source "CallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/CallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/CallManager;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/CallManager;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/google/android/talk/videochat/CallManager$1;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/talk/videochat/CallManager$1;->this$0:Lcom/google/android/talk/videochat/CallManager;

    invoke-static {v0}, Lcom/google/android/talk/videochat/CallManager;->access$000(Lcom/google/android/talk/videochat/CallManager;)V

    .line 224
    return-void
.end method
