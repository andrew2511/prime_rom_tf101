.class Lcom/android/server/AccessibilityManagerService$1;
.super Landroid/os/Handler;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AccessibilityManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/server/AccessibilityManagerService$1;->this$0:Lcom/android/server/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "message"

    .prologue
    .line 117
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/AccessibilityManagerService$Service;

    .line 118
    .local v2, service:Lcom/android/server/AccessibilityManagerService$Service;
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 120
    .local v0, eventType:I
    iget-object v3, p0, Lcom/android/server/AccessibilityManagerService$1;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v3, v3, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 121
    :try_start_b
    iget-object v4, p0, Lcom/android/server/AccessibilityManagerService$1;->this$0:Lcom/android/server/AccessibilityManagerService;

    #calls: Lcom/android/server/AccessibilityManagerService;->notifyEventListenerLocked(Lcom/android/server/AccessibilityManagerService$Service;I)V
    invoke-static {v4, v2, v0}, Lcom/android/server/AccessibilityManagerService;->access$000(Lcom/android/server/AccessibilityManagerService;Lcom/android/server/AccessibilityManagerService$Service;I)V

    .line 122
    iget-object v4, v2, Lcom/android/server/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityEvent;

    .line 123
    .local v1, oldEvent:Landroid/view/accessibility/AccessibilityEvent;
    iget-object v4, v2, Lcom/android/server/AccessibilityManagerService$Service;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 124
    iget-object v4, p0, Lcom/android/server/AccessibilityManagerService$1;->this$0:Lcom/android/server/AccessibilityManagerService;

    #calls: Lcom/android/server/AccessibilityManagerService;->tryRecycleLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    invoke-static {v4, v1}, Lcom/android/server/AccessibilityManagerService;->access$100(Lcom/android/server/AccessibilityManagerService;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 125
    monitor-exit v3

    .line 126
    return-void

    .line 125
    .end local v1           #oldEvent:Landroid/view/accessibility/AccessibilityEvent;
    :catchall_24
    move-exception v4

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_24

    throw v4
.end method
