.class Lcom/android/deskclock/DeskClock$2$1;
.super Ljava/lang/Thread;
.source "DeskClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/DeskClock$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/deskclock/DeskClock$2;


# direct methods
.method constructor <init>(Lcom/android/deskclock/DeskClock$2;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/deskclock/DeskClock$2$1;->this$1:Lcom/android/deskclock/DeskClock$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/deskclock/DeskClock$2$1;->this$1:Lcom/android/deskclock/DeskClock$2;

    iget-object v0, v0, Lcom/android/deskclock/DeskClock$2;->this$0:Lcom/android/deskclock/DeskClock;

    invoke-static {v0}, Lcom/android/deskclock/DeskClock;->access$400(Lcom/android/deskclock/DeskClock;)V

    return-void
.end method
