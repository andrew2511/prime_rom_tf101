.class Lcom/google/android/gsf/login/BackgroundTask$1;
.super Landroid/os/Handler;
.source "BackgroundTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/BackgroundTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/BackgroundTask;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/BackgroundTask;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/google/android/gsf/login/BackgroundTask$1;->this$0:Lcom/google/android/gsf/login/BackgroundTask;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask$1;->this$0:Lcom/google/android/gsf/login/BackgroundTask;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/BackgroundTask;->access$002(Lcom/google/android/gsf/login/BackgroundTask;Z)Z

    .line 94
    iget-object v0, p0, Lcom/google/android/gsf/login/BackgroundTask$1;->this$0:Lcom/google/android/gsf/login/BackgroundTask;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/BackgroundTask;->onViewTimeout()V

    .line 96
    :cond_0
    return-void
.end method
