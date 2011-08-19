.class Lcom/asus/DLNA/DLNA$21;
.super Ljava/lang/Object;
.source "DLNA.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DLNA/DLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/DLNA/DLNA;


# direct methods
.method constructor <init>(Lcom/asus/DLNA/DLNA;)V
    .locals 0
    .parameter

    .prologue
    .line 2366
    iput-object p1, p0, Lcom/asus/DLNA/DLNA$21;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .parameter "bar"
    .parameter "progress"
    .parameter "fromuser"

    .prologue
    .line 2374
    if-nez p3, :cond_1

    .line 2383
    :cond_0
    :goto_0
    return-void

    .line 2375
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2376
    .local v0, now:J
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$21;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$7000(Lcom/asus/DLNA/DLNA;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 2377
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$21;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2, v0, v1}, Lcom/asus/DLNA/DLNA;->access$7002(Lcom/asus/DLNA/DLNA;J)J

    .line 2378
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$21;->this$0:Lcom/asus/DLNA/DLNA;

    iget-object v3, p0, Lcom/asus/DLNA/DLNA$21;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v3}, Lcom/asus/DLNA/DLNA;->access$7300(Lcom/asus/DLNA/DLNA;)J

    move-result-wide v3

    int-to-long v5, p2

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/asus/DLNA/DLNA;->access$7202(Lcom/asus/DLNA/DLNA;J)J

    .line 2379
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$21;->this$0:Lcom/asus/DLNA/DLNA;

    iget-object v3, p0, Lcom/asus/DLNA/DLNA$21;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v3}, Lcom/asus/DLNA/DLNA;->access$7200(Lcom/asus/DLNA/DLNA;)J

    move-result-wide v3

    const-wide/16 v5, 0x3

    sub-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/asus/DLNA/DLNA;->access$7402(Lcom/asus/DLNA/DLNA;J)J

    .line 2380
    iget-object v2, p0, Lcom/asus/DLNA/DLNA$21;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v2}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/DLNA/DLNA$21;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v3}, Lcom/asus/DLNA/DLNA;->access$7400(Lcom/asus/DLNA/DLNA;)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/asus/DLNA/MediaControl;->setSeekBar(I)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "bar"

    .prologue
    .line 2368
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$21;->this$0:Lcom/asus/DLNA/DLNA;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/asus/DLNA/DLNA;->access$7002(Lcom/asus/DLNA/DLNA;J)J

    .line 2369
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$21;->this$0:Lcom/asus/DLNA/DLNA;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/asus/DLNA/DLNA;->access$7102(Lcom/asus/DLNA/DLNA;Z)Z

    .line 2371
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .parameter "bar"

    .prologue
    .line 2387
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$21;->this$0:Lcom/asus/DLNA/DLNA;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/asus/DLNA/DLNA;->access$7102(Lcom/asus/DLNA/DLNA;Z)Z

    .line 2388
    iget-object v0, p0, Lcom/asus/DLNA/DLNA$21;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v0}, Lcom/asus/DLNA/DLNA;->access$200(Lcom/asus/DLNA/DLNA;)Lcom/asus/DLNA/MediaControl;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/DLNA/DLNA$21;->this$0:Lcom/asus/DLNA/DLNA;

    invoke-static {v1}, Lcom/asus/DLNA/DLNA;->access$7400(Lcom/asus/DLNA/DLNA;)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/asus/DLNA/MediaControl;->setSeekBar(I)V

    .line 2389
    return-void
.end method
