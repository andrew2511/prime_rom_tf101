.class Lcom/android/server/wm/WindowManagerService$3;
.super Lcom/android/internal/view/BaseInputHandler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/android/internal/view/BaseInputHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMotion(Landroid/view/MotionEvent;Landroid/view/InputQueue$FinishedCallback;)V
    .registers 10
    .parameter "event"
    .parameter "finishedCallback"

    .prologue
    .line 549
    const/4 v2, 0x0

    .line 551
    .local v2, handled:Z
    :try_start_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2f

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v5, :cond_2f

    .line 553
    const/4 v1, 0x0

    .line 554
    .local v1, endDrag:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 555
    .local v3, newX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 557
    .local v4, newY:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_6a

    .line 585
    :goto_1f
    :pswitch_1f
    if-eqz v1, :cond_2e

    .line 588
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_4e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_44

    .line 589
    :try_start_26
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v6}, Lcom/android/server/wm/DragState;->endDragLw()V

    .line 590
    monitor-exit v5
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_67

    .line 593
    :cond_2e
    const/4 v2, 0x1

    .line 598
    .end local v1           #endDrag:Z
    .end local v3           #newX:F
    .end local v4           #newY:F
    :cond_2f
    :goto_2f
    invoke-virtual {p2, v2}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    .line 600
    return-void

    .line 565
    .restart local v1       #endDrag:Z
    .restart local v3       #newX:F
    .restart local v4       #newY:F
    :pswitch_33
    :try_start_33
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_4e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_38} :catch_44

    .line 567
    :try_start_38
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v6, v3, v4}, Lcom/android/server/wm/DragState;->notifyMoveLw(FF)V

    .line 568
    monitor-exit v5

    goto :goto_1f

    :catchall_41
    move-exception v6

    monitor-exit v5
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_41

    :try_start_43
    throw v6
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_4e
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_44} :catch_44

    .line 595
    .end local v1           #endDrag:Z
    .end local v3           #newX:F
    .end local v4           #newY:F
    :catch_44
    move-exception v5

    move-object v0, v5

    .line 596
    .local v0, e:Ljava/lang/Exception;
    :try_start_46
    const-string v5, "WindowManager"

    const-string v6, "Exception caught by drag handleMotion"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_4e

    goto :goto_2f

    .line 598
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_4e
    move-exception v5

    invoke-virtual {p2, v2}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    throw v5

    .line 574
    .restart local v1       #endDrag:Z
    .restart local v3       #newX:F
    .restart local v4       #newY:F
    :pswitch_53
    :try_start_53
    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_4e
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_58} :catch_44

    .line 575
    :try_start_58
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerService$3;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v6, v3, v4}, Lcom/android/server/wm/DragState;->notifyDropLw(FF)Z

    move-result v1

    .line 576
    monitor-exit v5

    goto :goto_1f

    :catchall_62
    move-exception v6

    monitor-exit v5
    :try_end_64
    .catchall {:try_start_58 .. :try_end_64} :catchall_62

    :try_start_64
    throw v6
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_4e
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_65} :catch_44

    .line 581
    :pswitch_65
    const/4 v1, 0x1

    goto :goto_1f

    .line 590
    :catchall_67
    move-exception v6

    :try_start_68
    monitor-exit v5
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    :try_start_69
    throw v6
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_4e
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6a} :catch_44

    .line 557
    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_53
        :pswitch_33
        :pswitch_65
    .end packed-switch
.end method
