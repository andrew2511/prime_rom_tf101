.class Lcom/google/android/gm/provider/Label$1;
.super Ljava/lang/Object;
.source "Label.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/provider/Label;->requery(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/provider/Label;

.field final synthetic val$callerHandler:Landroid/os/Handler;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/Label;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/google/android/gm/provider/Label$1;->this$0:Lcom/google/android/gm/provider/Label;

    iput-object p2, p0, Lcom/google/android/gm/provider/Label$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gm/provider/Label$1;->val$callerHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 589
    iget-object v0, p0, Lcom/google/android/gm/provider/Label$1;->this$0:Lcom/google/android/gm/provider/Label;

    invoke-static {v0}, Lcom/google/android/gm/provider/Label;->access$000(Lcom/google/android/gm/provider/Label;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gm/provider/Label$1;->this$0:Lcom/google/android/gm/provider/Label;

    invoke-static {v2}, Lcom/google/android/gm/provider/Label;->access$100(Lcom/google/android/gm/provider/Label;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gm/provider/Label;->getLabelUri(Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    .line 590
    .local v1, labelUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/gm/provider/Label$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/android/gm/provider/Gmail;->LABEL_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 592
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 594
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Label$1;->this$0:Lcom/google/android/gm/provider/Label;

    iget-object v2, p0, Lcom/google/android/gm/provider/Label$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v2, v6}, Lcom/google/android/gm/provider/Label;->access$200(Lcom/google/android/gm/provider/Label;Landroid/content/Context;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Label$1;->val$callerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gm/provider/Label$1$1;

    invoke-direct {v2, p0}, Lcom/google/android/gm/provider/Label$1$1;-><init>(Lcom/google/android/gm/provider/Label$1;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 606
    return-void

    .line 596
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
