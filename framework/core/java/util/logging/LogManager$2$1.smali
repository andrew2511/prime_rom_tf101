.class Ljava/util/logging/LogManager$2$1;
.super Ljava/lang/Thread;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/logging/LogManager$2;->run()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/logging/LogManager$2;


# direct methods
.method constructor <init>(Ljava/util/logging/LogManager$2;)V
    .registers 2
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Ljava/util/logging/LogManager$2$1;->this$1:Ljava/util/logging/LogManager$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Ljava/util/logging/LogManager$2$1;->this$1:Ljava/util/logging/LogManager$2;

    iget-object v0, v0, Ljava/util/logging/LogManager$2;->this$0:Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->reset()V

    .line 210
    return-void
.end method
