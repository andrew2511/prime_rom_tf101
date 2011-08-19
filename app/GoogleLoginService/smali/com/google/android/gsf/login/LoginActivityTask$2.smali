.class Lcom/google/android/gsf/login/LoginActivityTask$2;
.super Ljava/lang/Object;
.source "LoginActivityTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/LoginActivityTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/LoginActivityTask;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/LoginActivityTask;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/android/gsf/login/LoginActivityTask$2;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/gsf/login/LoginActivityTask$2;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/google/android/gsf/login/LoginActivityTask$2;->this$0:Lcom/google/android/gsf/login/LoginActivityTask;

    iget-object v2, v2, Lcom/google/android/gsf/login/LoginActivityTask;->mFinishIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gsf/login/LoginActivityTask;->requestFinish(ILandroid/content/Intent;Z)V

    .line 221
    return-void
.end method
