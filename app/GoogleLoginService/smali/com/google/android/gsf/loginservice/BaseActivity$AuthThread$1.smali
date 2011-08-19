.class Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;)V
    .locals 0
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread$1;->this$1:Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread$1;->this$1:Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;

    iget-object v0, v0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->this$0:Lcom/google/android/gsf/loginservice/BaseActivity;

    iget-object v1, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread$1;->this$1:Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;

    invoke-static {v1}, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->access$200(Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;)Lcom/google/android/gsf/LoginData;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread$1;->this$1:Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;

    invoke-static {v2}, Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;->access$300(Lcom/google/android/gsf/loginservice/BaseActivity$AuthThread;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/loginservice/BaseActivity;->access$400(Lcom/google/android/gsf/loginservice/BaseActivity;Lcom/google/android/gsf/LoginData;Z)V

    .line 493
    return-void
.end method
