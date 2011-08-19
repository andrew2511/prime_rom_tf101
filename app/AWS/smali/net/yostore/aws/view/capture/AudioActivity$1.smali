.class Lnet/yostore/aws/view/capture/AudioActivity$1;
.super Ljava/lang/Object;
.source "AudioActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/view/capture/AudioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/view/capture/AudioActivity;


# direct methods
.method constructor <init>(Lnet/yostore/aws/view/capture/AudioActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/view/capture/AudioActivity$1;->this$0:Lnet/yostore/aws/view/capture/AudioActivity;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 243
    invoke-static {}, Lnet/yostore/aws/view/capture/AudioActivity;->access$0()J

    move-result-wide v4

    .line 244
    .local v4, start:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v4

    .line 245
    .local v0, millis:J
    const-wide/16 v6, 0x3e8

    div-long v6, v0, v6

    long-to-int v3, v6

    .line 246
    .local v3, seconds:I
    div-int/lit8 v2, v3, 0x3c

    .line 247
    .local v2, minutes:I
    rem-int/lit8 v3, v3, 0x3c

    .line 249
    const/16 v6, 0xa

    if-ge v3, v6, :cond_0

    .line 250
    iget-object v6, p0, Lnet/yostore/aws/view/capture/AudioActivity$1;->this$0:Lnet/yostore/aws/view/capture/AudioActivity;

    invoke-static {v6}, Lnet/yostore/aws/view/capture/AudioActivity;->access$1(Lnet/yostore/aws/view/capture/AudioActivity;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    :goto_0
    iget-object v6, p0, Lnet/yostore/aws/view/capture/AudioActivity$1;->this$0:Lnet/yostore/aws/view/capture/AudioActivity;

    invoke-static {v6}, Lnet/yostore/aws/view/capture/AudioActivity;->access$2(Lnet/yostore/aws/view/capture/AudioActivity;)Landroid/os/Handler;

    move-result-object v6

    .line 256
    mul-int/lit8 v7, v2, 0x3c

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x1

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    add-long/2addr v7, v4

    .line 255
    invoke-virtual {v6, p0, v7, v8}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 257
    return-void

    .line 252
    :cond_0
    iget-object v6, p0, Lnet/yostore/aws/view/capture/AudioActivity$1;->this$0:Lnet/yostore/aws/view/capture/AudioActivity;

    invoke-static {v6}, Lnet/yostore/aws/view/capture/AudioActivity;->access$1(Lnet/yostore/aws/view/capture/AudioActivity;)Landroid/widget/TextView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
