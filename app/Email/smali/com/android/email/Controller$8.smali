.class Lcom/android/email/Controller$8;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->deleteMessage(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$accountId:J

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 716
    iput-object p1, p0, Lcom/android/email/Controller$8;->this$0:Lcom/android/email/Controller;

    iput-wide p2, p0, Lcom/android/email/Controller$8;->val$messageId:J

    iput-wide p4, p0, Lcom/android/email/Controller$8;->val$accountId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/email/Controller$8;->this$0:Lcom/android/email/Controller;

    iget-wide v1, p0, Lcom/android/email/Controller$8;->val$messageId:J

    iget-wide v3, p0, Lcom/android/email/Controller$8;->val$accountId:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/email/Controller;->deleteMessageSync(JJ)V

    .line 719
    return-void
.end method
