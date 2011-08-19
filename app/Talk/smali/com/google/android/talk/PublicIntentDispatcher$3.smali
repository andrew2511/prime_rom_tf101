.class Lcom/google/android/talk/PublicIntentDispatcher$3;
.super Ljava/lang/Object;
.source "PublicIntentDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/PublicIntentDispatcher;->executeRequestedActionWithConfirm(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/PublicIntentDispatcher;

.field final synthetic val$needLogin:Z


# direct methods
.method constructor <init>(Lcom/google/android/talk/PublicIntentDispatcher;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/google/android/talk/PublicIntentDispatcher$3;->this$0:Lcom/google/android/talk/PublicIntentDispatcher;

    iput-boolean p2, p0, Lcom/google/android/talk/PublicIntentDispatcher$3;->val$needLogin:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/android/talk/PublicIntentDispatcher$3;->this$0:Lcom/google/android/talk/PublicIntentDispatcher;

    iget-object v1, p0, Lcom/google/android/talk/PublicIntentDispatcher$3;->this$0:Lcom/google/android/talk/PublicIntentDispatcher;

    invoke-static {v1}, Lcom/google/android/talk/PublicIntentDispatcher;->access$200(Lcom/google/android/talk/PublicIntentDispatcher;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/talk/PublicIntentDispatcher$3;->this$0:Lcom/google/android/talk/PublicIntentDispatcher;

    invoke-static {v2}, Lcom/google/android/talk/PublicIntentDispatcher;->access$300(Lcom/google/android/talk/PublicIntentDispatcher;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/talk/PublicIntentDispatcher$3;->this$0:Lcom/google/android/talk/PublicIntentDispatcher;

    invoke-static {v3}, Lcom/google/android/talk/PublicIntentDispatcher;->access$400(Lcom/google/android/talk/PublicIntentDispatcher;)Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;->accountId:J

    iget-object v5, p0, Lcom/google/android/talk/PublicIntentDispatcher$3;->this$0:Lcom/google/android/talk/PublicIntentDispatcher;

    invoke-static {v5}, Lcom/google/android/talk/PublicIntentDispatcher;->access$500(Lcom/google/android/talk/PublicIntentDispatcher;)Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/google/android/talk/PublicIntentDispatcher$3;->val$needLogin:Z

    invoke-static/range {v0 .. v6}, Lcom/google/android/talk/PublicIntentDispatcher;->access$600(Landroid/content/Context;ILjava/lang/String;JLjava/lang/String;Z)V

    .line 317
    return-void
.end method
