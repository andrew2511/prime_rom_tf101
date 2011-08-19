.class Lcom/google/android/gsf/login/NetworkMonitor$1;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/login/NetworkMonitor;-><init>(Landroid/content/Context;Lcom/google/android/gsf/login/NetworkMonitor$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/login/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/login/NetworkMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/gsf/login/NetworkMonitor$1;->this$0:Lcom/google/android/gsf/login/NetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/gsf/login/NetworkMonitor$1;->this$0:Lcom/google/android/gsf/login/NetworkMonitor;

    invoke-static {v0}, Lcom/google/android/gsf/login/NetworkMonitor;->access$000(Lcom/google/android/gsf/login/NetworkMonitor;)V

    return-void
.end method
