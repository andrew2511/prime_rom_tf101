.class Ljava/text/DecimalFormat$1;
.super Ljava/lang/Object;
.source "DecimalFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/DecimalFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/text/DecimalFormat;


# direct methods
.method constructor <init>(Ljava/text/DecimalFormat;)V
    .registers 2
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Ljava/text/DecimalFormat$1;->this$0:Ljava/text/DecimalFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 508
    :try_start_0
    iget-object v0, p0, Ljava/text/DecimalFormat$1;->this$0:Ljava/text/DecimalFormat;

    #getter for: Ljava/text/DecimalFormat;->dform:Llibcore/icu/NativeDecimalFormat;
    invoke-static {v0}, Ljava/text/DecimalFormat;->access$000(Ljava/text/DecimalFormat;)Llibcore/icu/NativeDecimalFormat;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/icu/NativeDecimalFormat;->close()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    .line 510
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 512
    return-void

    .line 510
    :catchall_d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
