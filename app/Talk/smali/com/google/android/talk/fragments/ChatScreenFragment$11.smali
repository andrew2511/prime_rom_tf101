.class Lcom/google/android/talk/fragments/ChatScreenFragment$11;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;->checkChatSession(Ljava/lang/String;JZ)Lcom/google/android/gtalkservice/IChatSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

.field final synthetic val$accountId:J

.field final synthetic val$contact:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1276
    iput-object p1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$11;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    iput-object p2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$11;->val$contact:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$11;->val$accountId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$11;->this$0:Lcom/google/android/talk/fragments/ChatScreenFragment;

    iget-object v1, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$11;->val$contact:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/talk/fragments/ChatScreenFragment$11;->val$accountId:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/talk/fragments/ChatScreenFragment;->access$3400(Lcom/google/android/talk/fragments/ChatScreenFragment;Ljava/lang/String;J)V

    .line 1279
    return-void
.end method
