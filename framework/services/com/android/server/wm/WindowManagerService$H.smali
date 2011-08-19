.class final Lcom/android/server/wm/WindowManagerService$H;
.super Landroid/os/Handler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final ADD_STARTING:I = 0x5

.field public static final ANIMATE:I = 0x4

.field public static final APP_FREEZE_TIMEOUT:I = 0x11

.field public static final APP_TRANSITION_TIMEOUT:I = 0xd

.field public static final DRAG_END_TIMEOUT:I = 0x15

.field public static final DRAG_START_TIMEOUT:I = 0x14

.field public static final ENABLE_SCREEN:I = 0x10

.field public static final FINISHED_STARTING:I = 0x7

.field public static final FORCE_GC:I = 0xf

.field public static final HOLD_SCREEN_CHANGED:I = 0xc

.field public static final PERSIST_ANIMATION_SCALE:I = 0xe

.field public static final REMOVE_STARTING:I = 0x6

.field public static final REPORT_APPLICATION_TOKEN_WINDOWS:I = 0x8

.field public static final REPORT_FOCUS_CHANGE:I = 0x2

.field public static final REPORT_HARD_KEYBOARD_STATUS_CHANGE:I = 0x16

.field public static final REPORT_LOSING_FOCUS:I = 0x3

.field public static final REPORT_WINDOWS_CHANGE:I = 0x13

.field public static final SEND_NEW_CONFIGURATION:I = 0x12

.field public static final WINDOW_FREEZE_TIMEOUT:I = 0xb


# instance fields
.field private mLastReportedHold:Lcom/android/server/wm/Session;

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 6165
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6166
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 33
    .parameter "msg"

    .prologue
    .line 6170
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v4, v0

    packed-switch v4, :pswitch_data_54a

    .line 6540
    .end local p1
    :cond_8
    :goto_8
    :pswitch_8
    return-void

    .line 6175
    .restart local p1
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 6176
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v17, v0

    .line 6177
    .local v17, lastFocus:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    .line 6178
    .local v19, newFocus:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_30

    .line 6180
    monitor-exit v4

    goto :goto_8

    .line 6191
    .end local v17           #lastFocus:Lcom/android/server/wm/WindowState;
    .end local v19           #newFocus:Lcom/android/server/wm/WindowState;
    :catchall_2d
    move-exception v5

    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_2d

    throw v5

    .line 6182
    .restart local v17       #lastFocus:Lcom/android/server/wm/WindowState;
    .restart local v19       #newFocus:Lcom/android/server/wm/WindowState;
    :cond_30
    :try_start_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    move-object/from16 v0, v19

    move-object v1, v5

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 6185
    if-eqz v19, :cond_53

    if-eqz v17, :cond_53

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v5

    if-nez v5, :cond_53

    .line 6188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6189
    const/16 v17, 0x0

    .line 6191
    :cond_53
    monitor-exit v4
    :try_end_54
    .catchall {:try_start_30 .. :try_end_54} :catchall_2d

    .line 6193
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_8

    .line 6196
    if-eqz v19, :cond_74

    .line 6199
    :try_start_5c
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object v4, v0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-interface {v4, v5, v6}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_6c} :catch_546

    .line 6203
    :goto_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->notifyFocusChanged()V
    invoke-static {v4}, Lcom/android/server/wm/WindowManagerService;->access$400(Lcom/android/server/wm/WindowManagerService;)V

    .line 6206
    :cond_74
    if-eqz v17, :cond_86

    .line 6209
    :try_start_76
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-interface {v4, v5, v6}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_86} :catch_543

    .line 6215
    :cond_86
    :goto_86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v0, v4

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->focusChanged(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    goto/16 :goto_8

    .line 6222
    .end local v17           #lastFocus:Lcom/android/server/wm/WindowState;
    .end local v19           #newFocus:Lcom/android/server/wm/WindowState;
    :pswitch_97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 6223
    :try_start_9f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 6224
    .local v18, losers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    .line 6225
    monitor-exit v4
    :try_end_b6
    .catchall {:try_start_9f .. :try_end_b6} :catchall_de

    .line 6227
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 6228
    .local v13, N:I
    const/16 v16, 0x0

    .end local p1
    .local v16, i:I
    :goto_bc
    move/from16 v0, v16

    move v1, v13

    if-ge v0, v1, :cond_8

    .line 6231
    :try_start_c1
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-interface {v4, v5, v6}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_c1 .. :try_end_db} :catch_540

    .line 6228
    :goto_db
    add-int/lit8 v16, v16, 0x1

    goto :goto_bc

    .line 6225
    .end local v13           #N:I
    .end local v16           #i:I
    .end local v18           #losers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local p1
    :catchall_de
    move-exception v5

    :try_start_df
    monitor-exit v4
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    throw v5

    .line 6239
    :pswitch_e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 6240
    :try_start_e9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/wm/WindowManagerService;->mAnimationPending:Z

    .line 6241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v5}, Lcom/android/server/wm/WindowManagerService;->access$500(Lcom/android/server/wm/WindowManagerService;)V

    .line 6242
    monitor-exit v4

    goto/16 :goto_8

    :catchall_fc
    move-exception v5

    monitor-exit v4
    :try_end_fe
    .catchall {:try_start_e9 .. :try_end_fe} :catchall_fc

    throw v5

    .line 6246
    :pswitch_ff
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/server/wm/AppWindowToken;

    .line 6247
    .local v30, wtoken:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v24, v0

    .line 6249
    .local v24, sd:Lcom/android/server/wm/StartingData;
    if-eqz v24, :cond_8

    .line 6257
    const/16 v27, 0x0

    .line 6259
    .local v27, view:Landroid/view/View;
    :try_start_111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object v5, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/StartingData;->pkg:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/StartingData;->theme:I

    move v7, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/StartingData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    move-object v8, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/StartingData;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object v9, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/StartingData;->labelRes:I

    move v10, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/StartingData;->icon:I

    move v11, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/wm/StartingData;->windowFlags:I

    move v12, v0

    invoke-interface/range {v4 .. v12}, Landroid/view/WindowManagerPolicy;->addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;III)Landroid/view/View;
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_143} :catch_194

    move-result-object v27

    .line 6266
    :goto_144
    if-eqz v27, :cond_8

    .line 6267
    const/4 v14, 0x0

    .line 6269
    .local v14, abort:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 6270
    :try_start_14f
    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    move v5, v0

    if-nez v5, :cond_15d

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object v5, v0

    if-nez v5, :cond_19e

    .line 6273
    :cond_15d
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object v5, v0

    if-eqz v5, :cond_171

    .line 6278
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 6279
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 6280
    const/4 v14, 0x1

    .line 6290
    :cond_171
    :goto_171
    monitor-exit v4
    :try_end_172
    .catchall {:try_start_14f .. :try_end_172} :catchall_1a5

    .line 6292
    if-eqz v14, :cond_8

    .line 6294
    :try_start_174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_187
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_187} :catch_189

    goto/16 :goto_8

    .line 6295
    :catch_189
    move-exception v4

    move-object v15, v4

    .line 6296
    .local v15, e:Ljava/lang/Exception;
    const-string v4, "WindowManager"

    const-string v5, "Exception when removing starting window"

    invoke-static {v4, v5, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 6262
    .end local v14           #abort:Z
    .end local v15           #e:Ljava/lang/Exception;
    :catch_194
    move-exception v4

    move-object v15, v4

    .line 6263
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v4, "WindowManager"

    const-string v5, "Exception when adding starting window"

    invoke-static {v4, v5, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_144

    .line 6283
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v14       #abort:Z
    :cond_19e
    :try_start_19e
    move-object/from16 v0, v27

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    goto :goto_171

    .line 6290
    :catchall_1a5
    move-exception v5

    monitor-exit v4
    :try_end_1a7
    .catchall {:try_start_19e .. :try_end_1a7} :catchall_1a5

    throw v5

    .line 6303
    .end local v14           #abort:Z
    .end local v24           #sd:Lcom/android/server/wm/StartingData;
    .end local v27           #view:Landroid/view/View;
    .end local v30           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :pswitch_1a8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/server/wm/AppWindowToken;

    .line 6304
    .restart local v30       #wtoken:Lcom/android/server/wm/AppWindowToken;
    const/16 v26, 0x0

    .line 6305
    .local v26, token:Landroid/os/IBinder;
    const/16 v27, 0x0

    .line 6306
    .restart local v27       #view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 6311
    :try_start_1bc
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object v5, v0

    if-eqz v5, :cond_1e1

    .line 6312
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v27, v0

    .line 6313
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v26, v0

    .line 6314
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 6315
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 6316
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 6318
    :cond_1e1
    monitor-exit v4
    :try_end_1e2
    .catchall {:try_start_1bc .. :try_end_1e2} :catchall_200

    .line 6319
    if-eqz v27, :cond_8

    .line 6321
    :try_start_1e4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v0, v4

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_1f3
    .catch Ljava/lang/Exception; {:try_start_1e4 .. :try_end_1f3} :catch_1f5

    goto/16 :goto_8

    .line 6322
    :catch_1f5
    move-exception v4

    move-object v15, v4

    .line 6323
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v4, "WindowManager"

    const-string v5, "Exception when removing starting window"

    invoke-static {v4, v5, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 6318
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_200
    move-exception v5

    :try_start_201
    monitor-exit v4
    :try_end_202
    .catchall {:try_start_201 .. :try_end_202} :catchall_200

    throw v5

    .line 6329
    .end local v26           #token:Landroid/os/IBinder;
    .end local v27           #view:Landroid/view/View;
    .end local v30           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :pswitch_203
    const/16 v26, 0x0

    .line 6330
    .restart local v26       #token:Landroid/os/IBinder;
    const/16 v27, 0x0

    .line 6332
    .restart local v27       #view:Landroid/view/View;
    :goto_207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 6333
    :try_start_20f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 6334
    .restart local v13       #N:I
    if-gtz v13, :cond_222

    .line 6335
    monitor-exit v4

    goto/16 :goto_8

    .line 6353
    .end local v13           #N:I
    :catchall_21f
    move-exception v5

    monitor-exit v4
    :try_end_221
    .catchall {:try_start_20f .. :try_end_221} :catchall_21f

    throw v5

    .line 6337
    .restart local v13       #N:I
    :cond_222
    :try_start_222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    const/4 v6, 0x1

    sub-int v6, v13, v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/wm/AppWindowToken;

    .line 6344
    .restart local v30       #wtoken:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    move-object v5, v0

    if-nez v5, :cond_23b

    .line 6345
    monitor-exit v4

    goto :goto_207

    .line 6348
    :cond_23b
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v27, v0

    .line 6349
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v26, v0

    .line 6350
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 6351
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 6352
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 6353
    monitor-exit v4
    :try_end_25a
    .catchall {:try_start_222 .. :try_end_25a} :catchall_21f

    .line 6356
    :try_start_25a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object v0, v4

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_269
    .catch Ljava/lang/Exception; {:try_start_25a .. :try_end_269} :catch_26a

    goto :goto_207

    .line 6357
    :catch_26a
    move-exception v4

    move-object v15, v4

    .line 6358
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v4, "WindowManager"

    const-string v5, "Exception when removing starting window"

    invoke-static {v4, v5, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_207

    .line 6364
    .end local v13           #N:I
    .end local v15           #e:Ljava/lang/Exception;
    .end local v26           #token:Landroid/os/IBinder;
    .end local v27           #view:Landroid/view/View;
    .end local v30           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :pswitch_274
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Lcom/android/server/wm/AppWindowToken;

    .line 6366
    .restart local v30       #wtoken:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v4, v0

    if-eqz v4, :cond_29f

    const/4 v4, 0x1

    move/from16 v22, v4

    .line 6367
    .local v22, nowVisible:Z
    :goto_286
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v4, v0

    if-eqz v4, :cond_2a3

    const/4 v4, 0x1

    move/from16 v21, v4

    .line 6374
    .local v21, nowGone:Z
    :goto_290
    if-eqz v22, :cond_2a7

    .line 6375
    :try_start_292
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object v4, v0

    invoke-interface {v4}, Landroid/view/IApplicationToken;->windowsVisible()V

    goto/16 :goto_8

    .line 6379
    :catch_29c
    move-exception v4

    goto/16 :goto_8

    .line 6366
    .end local v21           #nowGone:Z
    .end local v22           #nowVisible:Z
    :cond_29f
    const/4 v4, 0x0

    move/from16 v22, v4

    goto :goto_286

    .line 6367
    .restart local v22       #nowVisible:Z
    :cond_2a3
    const/4 v4, 0x0

    move/from16 v21, v4

    goto :goto_290

    .line 6377
    .restart local v21       #nowGone:Z
    :cond_2a7
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    move-object v4, v0

    invoke-interface {v4}, Landroid/view/IApplicationToken;->windowsGone()V
    :try_end_2af
    .catch Landroid/os/RemoteException; {:try_start_292 .. :try_end_2af} :catch_29c

    goto/16 :goto_8

    .line 6384
    .end local v21           #nowGone:Z
    .end local v22           #nowVisible:Z
    .end local v30           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :pswitch_2b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 6385
    :try_start_2b9
    const-string v5, "WindowManager"

    const-string v6, "Window freeze timeout expired."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 6387
    .restart local v16       #i:I
    :cond_2cb
    :goto_2cb
    if-lez v16, :cond_30b

    .line 6388
    add-int/lit8 v16, v16, -0x1

    .line 6389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindows:Ljava/util/ArrayList;

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/wm/WindowState;

    .line 6390
    .local v28, w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    move v5, v0

    if-eqz v5, :cond_2cb

    .line 6391
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 6392
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Force clearing orientation change: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2cb

    .line 6396
    .end local v16           #i:I
    .end local v28           #w:Lcom/android/server/wm/WindowState;
    :catchall_308
    move-exception v5

    monitor-exit v4
    :try_end_30a
    .catchall {:try_start_2b9 .. :try_end_30a} :catchall_308

    throw v5

    .line 6395
    .restart local v16       #i:I
    :cond_30b
    :try_start_30b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v5}, Lcom/android/server/wm/WindowManagerService;->access$500(Lcom/android/server/wm/WindowManagerService;)V

    .line 6396
    monitor-exit v4
    :try_end_314
    .catchall {:try_start_30b .. :try_end_314} :catchall_308

    goto/16 :goto_8

    .line 6403
    .end local v16           #i:I
    :pswitch_316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 6404
    :try_start_31e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->mLastReportedHold:Lcom/android/server/wm/Session;

    move-object/from16 v23, v0

    .line 6405
    .local v23, oldHold:Lcom/android/server/wm/Session;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/server/wm/Session;

    .line 6406
    .local v20, newHold:Lcom/android/server/wm/Session;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowManagerService$H;->mLastReportedHold:Lcom/android/server/wm/Session;

    .line 6407
    monitor-exit v4
    :try_end_333
    .catchall {:try_start_31e .. :try_end_333} :catchall_368

    .line 6409
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_8

    .line 6411
    if-eqz v23, :cond_34e

    .line 6412
    :try_start_33b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/server/wm/Session;->mUid:I

    move v5, v0

    const/4 v6, -0x1

    const-string v7, "window"

    const/4 v8, 0x2

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/internal/app/IBatteryStats;->noteStopWakelock(IILjava/lang/String;I)V

    .line 6416
    :cond_34e
    if-eqz v20, :cond_8

    .line 6417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/wm/Session;->mUid:I

    move v5, v0

    const/4 v6, -0x1

    const-string v7, "window"

    const/4 v8, 0x2

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/internal/app/IBatteryStats;->noteStartWakelock(IILjava/lang/String;I)V
    :try_end_363
    .catch Landroid/os/RemoteException; {:try_start_33b .. :try_end_363} :catch_365

    goto/16 :goto_8

    .line 6421
    :catch_365
    move-exception v4

    goto/16 :goto_8

    .line 6407
    .end local v20           #newHold:Lcom/android/server/wm/Session;
    .end local v23           #oldHold:Lcom/android/server/wm/Session;
    :catchall_368
    move-exception v5

    :try_start_369
    monitor-exit v4
    :try_end_36a
    .catchall {:try_start_369 .. :try_end_36a} :catchall_368

    throw v5

    .line 6428
    :pswitch_36b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 6429
    :try_start_373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_395

    .line 6432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    .line 6433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    .line 6434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v5}, Lcom/android/server/wm/WindowManagerService;->access$500(Lcom/android/server/wm/WindowManagerService;)V

    .line 6436
    :cond_395
    monitor-exit v4

    goto/16 :goto_8

    :catchall_398
    move-exception v5

    monitor-exit v4
    :try_end_39a
    .catchall {:try_start_373 .. :try_end_39a} :catchall_398

    throw v5

    .line 6441
    :pswitch_39b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "window_animation_scale"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 6443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "transition_animation_scale"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto/16 :goto_8

    .line 6449
    :pswitch_3cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 6450
    :try_start_3d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimationPending:Z

    if-eqz v5, :cond_3fb

    .line 6453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x7d0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6455
    monitor-exit v4

    goto/16 :goto_8

    .line 6463
    :catchall_3f8
    move-exception v5

    monitor-exit v4
    :try_end_3fa
    .catchall {:try_start_3d3 .. :try_end_3fa} :catchall_3f8

    throw v5

    .line 6459
    :cond_3fb
    :try_start_3fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v5, :cond_407

    .line 6460
    monitor-exit v4

    goto/16 :goto_8

    .line 6462
    :cond_407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/android/server/wm/WindowManagerService;->mFreezeGcPending:J

    .line 6463
    monitor-exit v4
    :try_end_411
    .catchall {:try_start_3fb .. :try_end_411} :catchall_3f8

    .line 6464
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    goto/16 :goto_8

    .line 6469
    :pswitch_41a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto/16 :goto_8

    .line 6474
    :pswitch_424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 6475
    :try_start_42c
    const-string v5, "WindowManager"

    const-string v6, "App freeze timeout expired."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 6477
    .restart local v16       #i:I
    :cond_43e
    :goto_43e
    if-lez v16, :cond_487

    .line 6478
    add-int/lit8 v16, v16, -0x1

    .line 6479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/wm/AppWindowToken;

    .line 6480
    .local v25, tok:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->freezingScreen:Z

    move v5, v0

    if-eqz v5, :cond_43e

    .line 6481
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Force clearing freeze: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, v25

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    goto :goto_43e

    .line 6485
    .end local v16           #i:I
    .end local v25           #tok:Lcom/android/server/wm/AppWindowToken;
    :catchall_484
    move-exception v5

    monitor-exit v4
    :try_end_486
    .catchall {:try_start_42c .. :try_end_486} :catchall_484

    throw v5

    .restart local v16       #i:I
    :cond_487
    :try_start_487
    monitor-exit v4
    :try_end_488
    .catchall {:try_start_487 .. :try_end_488} :catchall_484

    goto/16 :goto_8

    .line 6490
    .end local v16           #i:I
    :pswitch_48a
    const/16 v4, 0x12

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 6491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    goto/16 :goto_8

    .line 6496
    :pswitch_49c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    #getter for: Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z
    invoke-static {v4}, Lcom/android/server/wm/WindowManagerService;->access$600(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 6497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 6498
    :try_start_4af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    #setter for: Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z
    invoke-static {v5, v6}, Lcom/android/server/wm/WindowManagerService;->access$602(Lcom/android/server/wm/WindowManagerService;Z)Z

    .line 6499
    monitor-exit v4
    :try_end_4b9
    .catchall {:try_start_4af .. :try_end_4b9} :catchall_4c3

    .line 6500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    #calls: Lcom/android/server/wm/WindowManagerService;->notifyWindowsChanged()V
    invoke-static {v4}, Lcom/android/server/wm/WindowManagerService;->access$700(Lcom/android/server/wm/WindowManagerService;)V

    goto/16 :goto_8

    .line 6499
    :catchall_4c3
    move-exception v5

    :try_start_4c4
    monitor-exit v4
    :try_end_4c5
    .catchall {:try_start_4c4 .. :try_end_4c5} :catchall_4c3

    throw v5

    .line 6506
    :pswitch_4c6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/IBinder;

    .line 6510
    .local v29, win:Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 6512
    :try_start_4d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v5, :cond_506

    .line 6513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v5}, Lcom/android/server/wm/DragState;->unregister()V

    .line 6514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 6515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v5}, Lcom/android/server/wm/DragState;->reset()V

    .line 6516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    .line 6518
    :cond_506
    monitor-exit v4

    goto/16 :goto_8

    :catchall_509
    move-exception v5

    monitor-exit v4
    :try_end_50b
    .catchall {:try_start_4d6 .. :try_end_50b} :catchall_509

    throw v5

    .line 6523
    .end local v29           #win:Landroid/os/IBinder;
    :pswitch_50c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/IBinder;

    .line 6527
    .restart local v29       #win:Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 6529
    :try_start_51c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 6530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v5}, Lcom/android/server/wm/DragState;->endDragLw()V

    .line 6531
    monitor-exit v4

    goto/16 :goto_8

    :catchall_533
    move-exception v5

    monitor-exit v4
    :try_end_535
    .catchall {:try_start_51c .. :try_end_535} :catchall_533

    throw v5

    .line 6536
    .end local v29           #win:Landroid/os/IBinder;
    :pswitch_536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->notifyHardKeyboardStatusChange()V

    goto/16 :goto_8

    .line 6232
    .end local p1
    .restart local v13       #N:I
    .restart local v16       #i:I
    .restart local v18       #losers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :catch_540
    move-exception v4

    goto/16 :goto_db

    .line 6210
    .end local v13           #N:I
    .end local v16           #i:I
    .end local v18           #losers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v17       #lastFocus:Lcom/android/server/wm/WindowState;
    .restart local v19       #newFocus:Lcom/android/server/wm/WindowState;
    .restart local p1
    :catch_543
    move-exception v4

    goto/16 :goto_86

    .line 6200
    :catch_546
    move-exception v4

    goto/16 :goto_6c

    .line 6170
    nop

    :pswitch_data_54a
    .packed-switch 0x2
        :pswitch_9
        :pswitch_97
        :pswitch_e1
        :pswitch_ff
        :pswitch_1a8
        :pswitch_203
        :pswitch_274
        :pswitch_8
        :pswitch_8
        :pswitch_2b1
        :pswitch_316
        :pswitch_36b
        :pswitch_39b
        :pswitch_3cb
        :pswitch_41a
        :pswitch_424
        :pswitch_48a
        :pswitch_49c
        :pswitch_4c6
        :pswitch_50c
        :pswitch_536
    .end packed-switch
.end method
