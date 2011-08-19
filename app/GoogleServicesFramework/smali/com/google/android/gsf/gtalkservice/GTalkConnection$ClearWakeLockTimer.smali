.class Lcom/google/android/gsf/gtalkservice/GTalkConnection$ClearWakeLockTimer;
.super Ljava/lang/Object;
.source "GTalkConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/GTalkConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearWakeLockTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ClearWakeLockTimer;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Lcom/google/android/gsf/gtalkservice/GTalkConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ClearWakeLockTimer;-><init>(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 350
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ClearWakeLockTimer;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    const-string v1, "##### clear wakelock timer fired #####"

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$600(Lcom/google/android/gsf/gtalkservice/GTalkConnection;Ljava/lang/String;)V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ClearWakeLockTimer;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-virtual {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->releaseAsyncWakeLock()V

    .line 352
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/LogTag;->logEvent(I)V

    .line 353
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ClearWakeLockTimer;->this$0:Lcom/google/android/gsf/gtalkservice/GTalkConnection;

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/GTalkConnection;->access$1008(Lcom/google/android/gsf/gtalkservice/GTalkConnection;)I

    .line 354
    return-void
.end method
