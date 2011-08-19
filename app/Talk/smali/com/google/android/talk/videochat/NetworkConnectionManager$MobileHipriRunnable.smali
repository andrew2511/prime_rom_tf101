.class public Lcom/google/android/talk/videochat/NetworkConnectionManager$MobileHipriRunnable;
.super Ljava/lang/Object;
.source "NetworkConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/NetworkConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MobileHipriRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/NetworkConnectionManager;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/videochat/NetworkConnectionManager;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/android/talk/videochat/NetworkConnectionManager$MobileHipriRunnable;->this$0:Lcom/google/android/talk/videochat/NetworkConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/talk/videochat/NetworkConnectionManager$MobileHipriRunnable;->this$0:Lcom/google/android/talk/videochat/NetworkConnectionManager;

    invoke-static {v0}, Lcom/google/android/talk/videochat/NetworkConnectionManager;->access$000(Lcom/google/android/talk/videochat/NetworkConnectionManager;)V

    .line 27
    return-void
.end method
