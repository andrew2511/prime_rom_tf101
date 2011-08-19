.class public Lcom/google/android/talk/videochat/VideoChatService$LocalBinder;
.super Landroid/os/Binder;
.source "VideoChatService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatService;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/videochat/VideoChatService;)V
    .locals 0
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatService$LocalBinder;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/google/android/talk/videochat/VideoChatService;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatService$LocalBinder;->this$0:Lcom/google/android/talk/videochat/VideoChatService;

    return-object v0
.end method
