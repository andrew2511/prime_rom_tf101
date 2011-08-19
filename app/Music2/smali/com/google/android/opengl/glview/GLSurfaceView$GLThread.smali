.class Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/opengl/glview/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRenderer:Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field final synthetic this$0:Lcom/google/android/opengl/glview/GLSurfaceView;


# direct methods
.method constructor <init>(Lcom/google/android/opengl/glview/GLSurfaceView;Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;)V
    .locals 3
    .parameter
    .parameter "renderer"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1151
    iput-object p1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->this$0:Lcom/google/android/opengl/glview/GLSurfaceView;

    .line 1152
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1621
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1153
    iput v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mWidth:I

    .line 1154
    iput v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mHeight:I

    .line 1155
    iput-boolean v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1156
    iput v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1157
    iput-object p2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mRenderer:Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;

    .line 1158
    return-void
.end method

.method static synthetic access$1202(Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1150
    iput-boolean p1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/16 v16, 0x0

    .line 1199
    new-instance v14, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->this$0:Lcom/google/android/opengl/glview/GLSurfaceView;

    move-object v15, v0

    invoke-direct {v14, v15}, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;-><init>(Lcom/google/android/opengl/glview/GLSurfaceView;)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;

    .line 1200
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1201
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1203
    const/4 v7, 0x0

    .line 1204
    .local v7, gl:Ljavax/microedition/khronos/opengles/GL10;
    const/4 v3, 0x0

    .line 1205
    .local v3, createEglContext:Z
    const/4 v4, 0x0

    .line 1206
    .local v4, createEglSurface:Z
    const/4 v9, 0x0

    .line 1207
    .local v9, lostEglContext:Z
    const/4 v10, 0x0

    .line 1208
    .local v10, sizeChanged:Z
    const/4 v13, 0x0

    .line 1209
    .local v13, wantRenderNotification:Z
    const/4 v5, 0x0

    .line 1210
    .local v5, doRenderNotification:Z
    const/4 v2, 0x0

    .line 1211
    .local v2, askedToReleaseEglContext:Z
    const/4 v12, 0x0

    .line 1212
    .local v12, w:I
    const/4 v8, 0x0

    .line 1213
    .local v8, h:I
    const/4 v6, 0x0

    .line 1216
    .local v6, event:Ljava/lang/Runnable;
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1218
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mShouldExit:Z

    move v14, v0

    if-eqz v14, :cond_1

    .line 1219
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1430
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v14

    monitor-enter v14

    .line 1431
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1432
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1433
    monitor-exit v14

    .line 1435
    :goto_2
    return-void

    .line 1433
    :catchall_0
    move-exception v15

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v15

    .line 1222
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object v14, v0

    const/16 v16, 0x0

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/lang/Runnable;

    move-object v6, v0

    .line 1373
    :goto_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1375
    if-eqz v6, :cond_12

    .line 1376
    :try_start_4
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1377
    const/4 v6, 0x0

    .line 1378
    goto :goto_0

    .line 1228
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mPaused:Z

    move v14, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v16, v0

    move v0, v14

    move/from16 v1, v16

    if-eq v0, v1, :cond_3

    .line 1229
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mRequestPaused:Z

    move v14, v0

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mPaused:Z

    .line 1230
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 1237
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    move v14, v0

    if-eqz v14, :cond_4

    .line 1241
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1242
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1243
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1244
    const/4 v2, 0x1

    .line 1248
    :cond_4
    if-eqz v9, :cond_5

    .line 1249
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1250
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1251
    const/4 v9, 0x0

    .line 1255
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move v14, v0

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mPaused:Z

    move v14, v0

    if-eqz v14, :cond_8

    .line 1259
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->this$0:Lcom/google/android/opengl/glview/GLSurfaceView;

    move-object v14, v0

    invoke-static {v14}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$900(Lcom/google/android/opengl/glview/GLSurfaceView;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1261
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1266
    :cond_7
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->finish()V

    .line 1275
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mHasSurface:Z

    move v14, v0

    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    move v14, v0

    if-nez v14, :cond_a

    .line 1279
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move v14, v0

    if-eqz v14, :cond_9

    .line 1280
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1282
    :cond_9
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1283
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 1287
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mHasSurface:Z

    move v14, v0

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    move v14, v0

    if-eqz v14, :cond_b

    .line 1291
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1292
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 1295
    :cond_b
    if-eqz v5, :cond_c

    .line 1299
    const/4 v13, 0x0

    .line 1300
    const/4 v5, 0x0

    .line 1301
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1302
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    .line 1306
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 1309
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move v14, v0

    if-nez v14, :cond_d

    .line 1310
    if-eqz v2, :cond_f

    .line 1311
    const/4 v2, 0x0

    .line 1326
    :cond_d
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move v14, v0

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move v14, v0

    if-nez v14, :cond_e

    .line 1327
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1328
    const/4 v4, 0x1

    .line 1329
    const/4 v10, 0x1

    .line 1332
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move v14, v0

    if-eqz v14, :cond_11

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->this$0:Lcom/google/android/opengl/glview/GLSurfaceView;

    move-object v14, v0

    invoke-static {v14}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$1000(Lcom/google/android/opengl/glview/GLSurfaceView;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 1334
    const/4 v10, 0x1

    .line 1335
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mWidth:I

    move v12, v0

    .line 1336
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mHeight:I

    move v8, v0

    .line 1337
    const/4 v13, 0x1

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->this$0:Lcom/google/android/opengl/glview/GLSurfaceView;

    move-object v14, v0

    const/16 v16, 0x0

    move-object v0, v14

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$1002(Lcom/google/android/opengl/glview/GLSurfaceView;Z)Z

    .line 1353
    :goto_5
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_3

    .line 1373
    :catchall_1
    move-exception v14

    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1430
    :catchall_2
    move-exception v14

    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v15

    monitor-enter v15

    .line 1431
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1432
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1433
    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v14

    .line 1312
    :cond_f
    :try_start_8
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->tryAcquireEglContextLocked(Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v14

    if-eqz v14, :cond_d

    .line 1314
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->start()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 1319
    const/4 v14, 0x1

    :try_start_a
    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1320
    const/4 v3, 0x1

    .line 1322
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notifyAll()V

    goto :goto_4

    .line 1315
    :catch_0
    move-exception v14

    move-object v11, v14

    .line 1316
    .local v11, t:Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;)V

    .line 1317
    throw v11

    .line 1351
    .end local v11           #t:Ljava/lang/RuntimeException;
    :cond_10
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mRequestRender:Z

    goto :goto_5

    .line 1371
    :cond_11
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 1381
    :cond_12
    if-eqz v4, :cond_14

    .line 1385
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->this$0:Lcom/google/android/opengl/glview/GLSurfaceView;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/google/android/opengl/glview/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v7, v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1386
    if-nez v7, :cond_13

    .line 1430
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v14

    monitor-enter v14

    .line 1431
    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1432
    invoke-direct/range {p0 .. p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1433
    monitor-exit v14

    goto/16 :goto_2

    :catchall_3
    move-exception v15

    monitor-exit v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v15

    .line 1390
    :cond_13
    :try_start_d
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v14

    invoke-virtual {v14, v7}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1391
    const/4 v4, 0x0

    .line 1394
    :cond_14
    if-eqz v3, :cond_15

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mRenderer:Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;

    move-object v15, v0

    iget-object v15, v15, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v14, v7, v15}, Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1399
    const/4 v3, 0x0

    .line 1402
    :cond_15
    if-eqz v10, :cond_16

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mRenderer:Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;

    move-object v14, v0

    invoke-interface {v14, v7, v12, v8}, Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1407
    const/4 v10, 0x0

    .line 1413
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mRenderer:Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;

    move-object v14, v0

    invoke-interface {v14, v7}, Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->swap()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-result v14

    if-nez v14, :cond_17

    .line 1418
    const/4 v9, 0x1

    .line 1421
    :cond_17
    if-eqz v13, :cond_0

    .line 1422
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1433
    :catchall_4
    move-exception v14

    :try_start_e
    monitor-exit v15
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v14
.end method

.method private readyToDraw()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1442
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mHeight:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mRenderMode:I

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    .prologue
    .line 1192
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->finish()V

    .line 1194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1195
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;)V

    .line 1197
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .prologue
    .line 1181
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 1182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1183
    iget-object v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mEglHelper:Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/google/android/opengl/glview/GLSurfaceView$EglHelper;->destroySurface()V

    .line 1185
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .prologue
    .line 1438
    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    .prologue
    .line 1458
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1459
    :try_start_0
    iget v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v0

    return v1

    .line 1460
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1505
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1509
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1510
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1511
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mExited:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1516
    :try_start_1
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1517
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1518
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1521
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1522
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1525
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1529
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1530
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1531
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1532
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1533
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mExited:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1538
    :try_start_1
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1539
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1540
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1543
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1544
    return-void
.end method

.method public onWindowResize(II)V
    .locals 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 1547
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1548
    :try_start_0
    iput p1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mWidth:I

    .line 1549
    iput p2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mHeight:I

    .line 1550
    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->this$0:Lcom/google/android/opengl/glview/GLSurfaceView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$1002(Lcom/google/android/opengl/glview/GLSurfaceView;Z)Z

    .line 1551
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1552
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1553
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1557
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mExited:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->this$0:Lcom/google/android/opengl/glview/GLSurfaceView;

    invoke-static {v2}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$1100(Lcom/google/android/opengl/glview/GLSurfaceView;)Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->this$0:Lcom/google/android/opengl/glview/GLSurfaceView;

    invoke-static {v2}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$1100(Lcom/google/android/opengl/glview/GLSurfaceView;)Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->ableToDraw()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 1562
    :try_start_1
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1563
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1564
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1567
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1568
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 1596
    if-nez p1, :cond_0

    .line 1597
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1599
    :cond_0
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1600
    :try_start_0
    iget-object v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1601
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1602
    monitor-exit v0

    .line 1603
    return-void

    .line 1602
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestExitAndWait()V
    .locals 3

    .prologue
    .line 1573
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1574
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mShouldExit:Z

    .line 1575
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1576
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1578
    :try_start_1
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1579
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1580
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1583
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1584
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    .prologue
    .line 1587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1588
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1589
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1464
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1465
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1466
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1467
    monitor-exit v0

    .line 1468
    return-void

    .line 1467
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 1168
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;)V

    .line 1174
    :goto_0
    return-void

    .line 1169
    :catch_0
    move-exception v0

    .line 1172
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;->threadExiting(Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;)V

    throw v0
.end method

.method public setRenderMode(I)V
    .locals 2
    .parameter "renderMode"

    .prologue
    .line 1448
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1449
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1451
    :cond_1
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v0

    monitor-enter v0

    .line 1452
    :try_start_0
    iput p1, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1453
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1454
    monitor-exit v0

    .line 1455
    return-void

    .line 1454
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public surfaceCreated()V
    .locals 3

    .prologue
    .line 1471
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1475
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1476
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1477
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1479
    :try_start_1
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1480
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1481
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1484
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1485
    return-void
.end method

.method public surfaceDestroyed()V
    .locals 3

    .prologue
    .line 1488
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1492
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1493
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1494
    :goto_0
    iget-boolean v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/opengl/glview/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1496
    :try_start_1
    invoke-static {}, Lcom/google/android/opengl/glview/GLSurfaceView;->access$800()Lcom/google/android/opengl/glview/GLSurfaceView$GLThreadManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1497
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1498
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1501
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1502
    return-void
.end method
