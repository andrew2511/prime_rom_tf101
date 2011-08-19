.class Lcom/google/android/feedback/FeedbackSession$1;
.super Ljava/lang/Object;
.source "FeedbackSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/feedback/FeedbackSession;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/feedback/FeedbackSession;


# direct methods
.method constructor <init>(Lcom/google/android/feedback/FeedbackSession;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/google/android/feedback/FeedbackSession$1;->this$0:Lcom/google/android/feedback/FeedbackSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 367
    iget-object v0, p0, Lcom/google/android/feedback/FeedbackSession$1;->this$0:Lcom/google/android/feedback/FeedbackSession;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/feedback/FeedbackSession;->onGotSystemLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void
.end method
