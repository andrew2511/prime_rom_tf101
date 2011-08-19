.class Lcom/google/android/talk/SelfStatusCursor$2;
.super Ljava/lang/Object;
.source "SelfStatusCursor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/SelfStatusCursor;-><init>(Landroid/app/Activity;Lcom/google/android/gtalkservice/Presence;Lcom/google/android/talk/TalkApp$AccountInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/SelfStatusCursor;

.field final synthetic val$info:Lcom/google/android/talk/TalkApp$AccountInfo;


# direct methods
.method constructor <init>(Lcom/google/android/talk/SelfStatusCursor;Lcom/google/android/talk/TalkApp$AccountInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/talk/SelfStatusCursor$2;->this$0:Lcom/google/android/talk/SelfStatusCursor;

    iput-object p2, p0, Lcom/google/android/talk/SelfStatusCursor$2;->val$info:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 71
    invoke-static {}, Lcom/google/android/talk/SettingsCache;->getInstance()Lcom/google/android/talk/SettingsCache;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/SelfStatusCursor$2;->val$info:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-wide v2, v2, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/talk/SettingsCache;->getSettingsMap(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v0

    .line 72
    .local v0, settings:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    iget-object v1, p0, Lcom/google/android/talk/SelfStatusCursor$2;->this$0:Lcom/google/android/talk/SelfStatusCursor;

    invoke-virtual {v0}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getCapabilities()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/talk/SelfStatusCursor;->access$202(Lcom/google/android/talk/SelfStatusCursor;I)I

    .line 73
    iget-object v1, p0, Lcom/google/android/talk/SelfStatusCursor$2;->this$0:Lcom/google/android/talk/SelfStatusCursor;

    invoke-static {v1}, Lcom/google/android/talk/SelfStatusCursor;->access$300(Lcom/google/android/talk/SelfStatusCursor;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 74
    :try_start_0
    iget-object v2, p0, Lcom/google/android/talk/SelfStatusCursor$2;->this$0:Lcom/google/android/talk/SelfStatusCursor;

    invoke-static {v2}, Lcom/google/android/talk/SelfStatusCursor;->access$300(Lcom/google/android/talk/SelfStatusCursor;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 75
    iget-object v2, p0, Lcom/google/android/talk/SelfStatusCursor$2;->this$0:Lcom/google/android/talk/SelfStatusCursor;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/android/talk/SelfStatusCursor;->access$402(Lcom/google/android/talk/SelfStatusCursor;Z)Z

    .line 76
    monitor-exit v1

    .line 77
    return-void

    .line 76
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
