.class Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;
.super Ljava/lang/Object;
.source "HtmlConversationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/HtmlConversationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachmentState"
.end annotation


# instance fields
.field final cursor:Landroid/database/Cursor;

.field final messageId:J

.field final partId:Ljava/lang/String;

.field final size:I

.field status:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/gm/HtmlConversationFragment;


# direct methods
.method constructor <init>(Lcom/google/android/gm/HtmlConversationFragment;JLjava/lang/String;JILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter "messageId"
    .parameter "partId"
    .parameter "downloadId"
    .parameter "size"
    .parameter "status"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->this$0:Lcom/google/android/gm/HtmlConversationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-wide p2, p0, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->messageId:J

    .line 236
    iput-object p4, p0, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->partId:Ljava/lang/String;

    .line 237
    iput p7, p0, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->size:I

    .line 238
    if-nez p8, :cond_0

    .line 239
    invoke-static {p1}, Lcom/google/android/gm/HtmlConversationFragment;->access$000(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/content/Context;

    move-result-object v1

    int-to-long v2, p7

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/AttachmentUtils;->convertToHumanReadableSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->status:Ljava/lang/String;

    .line 244
    :goto_0
    const-wide/16 v1, -0x1

    cmp-long v1, p5, v1

    if-nez v1, :cond_1

    .line 245
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->cursor:Landroid/database/Cursor;

    .line 250
    :goto_1
    return-void

    .line 241
    :cond_0
    iput-object p8, p0, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->status:Ljava/lang/String;

    goto :goto_0

    .line 247
    :cond_1
    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p5, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v0

    .line 248
    .local v0, query:Landroid/app/DownloadManager$Query;
    invoke-static {p1}, Lcom/google/android/gm/HtmlConversationFragment;->access$100(Lcom/google/android/gm/HtmlConversationFragment;)Landroid/app/DownloadManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/HtmlConversationFragment$AttachmentState;->cursor:Landroid/database/Cursor;

    goto :goto_1
.end method
