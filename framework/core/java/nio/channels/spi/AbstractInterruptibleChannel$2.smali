.class Ljava/nio/channels/spi/AbstractInterruptibleChannel$2;
.super Ljava/lang/Object;
.source "AbstractInterruptibleChannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/channels/spi/AbstractInterruptibleChannel;->begin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/spi/AbstractInterruptibleChannel;)V
    .registers 2
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$2;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 127
    :try_start_0
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$2;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->interrupted:Z

    .line 128
    iget-object v0, p0, Ljava/nio/channels/spi/AbstractInterruptibleChannel$2;->this$0:Ljava/nio/channels/spi/AbstractInterruptibleChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    .line 132
    :goto_a
    return-void

    .line 129
    :catch_b
    move-exception v0

    goto :goto_a
.end method
