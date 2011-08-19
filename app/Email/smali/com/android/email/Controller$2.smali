.class Lcom/android/email/Controller$2;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->serviceCheckMail(JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$accountId:J

.field final synthetic val$tag:J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/email/Controller$2;->this$0:Lcom/android/email/Controller;

    iput-wide p2, p0, Lcom/android/email/Controller$2;->val$accountId:J

    iput-wide p4, p0, Lcom/android/email/Controller$2;->val$tag:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/email/Controller$2;->this$0:Lcom/android/email/Controller;

    invoke-static {v0}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/Controller$2;->val$accountId:J

    iget-wide v3, p0, Lcom/android/email/Controller$2;->val$tag:J

    iget-object v5, p0, Lcom/android/email/Controller$2;->this$0:Lcom/android/email/Controller;

    invoke-static {v5}, Lcom/android/email/Controller;->access$200(Lcom/android/email/Controller;)Lcom/android/email/Controller$LegacyListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/MessagingController;->checkMail(JJLcom/android/email/MessagingListener;)V

    .line 356
    return-void
.end method
