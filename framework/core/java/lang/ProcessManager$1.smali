.class Ljava/lang/ProcessManager$1;
.super Ljava/lang/Thread;
.source "ProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/lang/ProcessManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/lang/ProcessManager;


# direct methods
.method constructor <init>(Ljava/lang/ProcessManager;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 81
    iput-object p1, p0, Ljava/lang/ProcessManager$1;->this$0:Ljava/lang/ProcessManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Ljava/lang/ProcessManager$1;->this$0:Ljava/lang/ProcessManager;

    invoke-virtual {v0}, Ljava/lang/ProcessManager;->watchChildren()V

    .line 85
    return-void
.end method
