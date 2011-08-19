.class Lcom/google/android/gm/HtmlConversationFragment$MailEngineDownloadHandler;
.super Ljava/lang/Object;
.source "HtmlConversationFragment.java"

# interfaces
.implements Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/HtmlConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MailEngineDownloadHandler"
.end annotation


# instance fields
.field private final mConversationId:J

.field final synthetic this$0:Lcom/google/android/gm/HtmlConversationFragment;


# direct methods
.method constructor <init>(Lcom/google/android/gm/HtmlConversationFragment;J)V
    .locals 0
    .parameter
    .parameter "conversationId"

    .prologue
    .line 1909
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationFragment$MailEngineDownloadHandler;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1910
    iput-wide p2, p0, Lcom/google/android/gm/HtmlConversationFragment$MailEngineDownloadHandler;->mConversationId:J

    .line 1911
    return-void
.end method


# virtual methods
.method public onMailEngineResult(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 4
    .parameter "engine"

    .prologue
    .line 1915
    new-instance v0, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;

    iget-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment$MailEngineDownloadHandler;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    iget-wide v2, p0, Lcom/google/android/gm/HtmlConversationFragment$MailEngineDownloadHandler;->mConversationId:J

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;-><init>(Lcom/google/android/gm/HtmlConversationFragment;Lcom/google/android/gm/provider/MailEngine;J)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/HtmlConversationFragment$UpdateAttachmentStatesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1916
    return-void
.end method
