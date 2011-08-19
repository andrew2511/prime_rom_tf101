.class Lcom/android/email/Controller$4;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/Controller;->loadMessageForView(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/Controller;

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/Controller;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/android/email/Controller$4;->this$0:Lcom/android/email/Controller;

    iput-wide p2, p0, Lcom/android/email/Controller$4;->val$messageId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/email/Controller$4;->this$0:Lcom/android/email/Controller;

    invoke-static {v0}, Lcom/android/email/Controller;->access$300(Lcom/android/email/Controller;)Lcom/android/email/MessagingController;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/Controller$4;->val$messageId:J

    iget-object v3, p0, Lcom/android/email/Controller$4;->this$0:Lcom/android/email/Controller;

    invoke-static {v3}, Lcom/android/email/Controller;->access$200(Lcom/android/email/Controller;)Lcom/android/email/Controller$LegacyListener;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/MessagingController;->loadMessageForView(JLcom/android/email/MessagingListener;)V

    .line 431
    return-void
.end method
