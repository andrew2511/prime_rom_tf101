.class Lcom/google/android/gsf/login/LoginActivityTask$1$1;
.super Ljava/lang/Object;
.source "LoginActivityTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/LoginActivityTask$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gsf/login/LoginActivityTask$1;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/LoginActivityTask$1;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/google/android/gsf/login/LoginActivityTask$1$1;->this$1:Lcom/google/android/gsf/login/LoginActivityTask$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask$1$1;->this$1:Lcom/google/android/gsf/login/LoginActivityTask$1;

    iget-object v0, v0, Lcom/google/android/gsf/login/LoginActivityTask$1;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-virtual {v0}, Lcom/google/android/gsf/login/LoginActivityTask;->onNetworkFailed()V

    .line 207
    return-void
.end method
