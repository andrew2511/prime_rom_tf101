.class Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$TimeoutHandler;
.super Landroid/os/Handler;
.source "JTCriticalAngleRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;


# direct methods
.method private constructor <init>(Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$TimeoutHandler;->this$0:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$TimeoutHandler;-><init>(Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$TimeoutHandler;->this$0:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->access$202(Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;Z)Z

    .line 191
    iget-object v0, p0, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer$TimeoutHandler;->this$0:Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;

    invoke-virtual {v0}, Lcom/google/android/motiongesture/JTCriticalAngleRecognizer;->processEvents()V

    .line 192
    return-void
.end method
