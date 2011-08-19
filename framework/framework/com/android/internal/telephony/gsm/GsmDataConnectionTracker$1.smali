.class Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;
.super Ljava/lang/Object;
.source "GsmDataConnectionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 670
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 16

    .prologue
    .line 674
    const-wide/16 v4, -0x1

    .local v4, preTxPkts:J
    const-wide/16 v2, -0x1

    .line 678
    .local v2, preRxPkts:J
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mTxPkts:J
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v4

    .line 679
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mRxPkts:J
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v2

    .line 681
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v12

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mTxPkts:J
    invoke-static {v11, v12, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$302(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 682
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v12

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mRxPkts:J
    invoke-static {v11, v12, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$402(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 686
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mNetStatPollEnabled:Z
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v11

    if-eqz v11, :cond_7f

    const-wide/16 v11, 0x0

    cmp-long v11, v4, v11

    if-gtz v11, :cond_36

    const-wide/16 v11, 0x0

    cmp-long v11, v2, v11

    if-lez v11, :cond_7f

    .line 687
    :cond_36
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mTxPkts:J
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v11

    sub-long v8, v11, v4

    .line 688
    .local v8, sent:J
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mRxPkts:J
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v11

    sub-long v6, v11, v2

    .line 690
    .local v6, received:J
    const-wide/16 v11, 0x0

    cmp-long v11, v8, v11

    if-lez v11, :cond_10d

    const-wide/16 v11, 0x0

    cmp-long v11, v6, v11

    if-lez v11, :cond_10d

    .line 691
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-wide/16 v12, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v11, v12, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$802(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 692
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAINANDOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 693
    .local v0, newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const/4 v12, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPdpResetCount:I
    invoke-static {v11, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$902(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    .line 712
    :goto_61
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v11

    if-eq v11, v0, :cond_7f

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsScreenOn:Z
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v11

    if-eqz v11, :cond_7f

    .line 713
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    invoke-static {v11, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1702(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 714
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 718
    .end local v0           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .end local v6           #received:J
    .end local v8           #sent:J
    :cond_7f
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "pdp_watchdog_trigger_packet_count"

    const/16 v13, 0xa

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 722
    .local v10, watchdogTrigger:I
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v11

    int-to-long v13, v10

    cmp-long v11, v11, v13

    if-ltz v11, :cond_1ac

    .line 724
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mNoRecvPollCount:I
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v11

    if-nez v11, :cond_ac

    .line 725
    const v11, 0xc3b5

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 729
    :cond_ac
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "pdp_watchdog_error_poll_count"

    const/16 v13, 0x18

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 732
    .local v1, noRecvPollLimit:I
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mNoRecvPollCount:I
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v11

    if-ge v11, v1, :cond_170

    .line 735
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string v12, "no DATAIN in a while; polling PDP"

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 736
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v11

    iget-object v11, v11, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const/16 v13, 0xb

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-interface {v11, v12}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 738
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2508(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    .line 741
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "pdp_watchdog_error_poll_interval_ms"

    const/16 v14, 0x1388

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mNetStatPollPeriod:I
    invoke-static {v11, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2602(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    .line 762
    .end local v1           #noRecvPollLimit:I
    :goto_f4
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mNetStatPollEnabled:Z
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v11

    if-eqz v11, :cond_10c

    .line 763
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/os/Handler;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mNetStatPollPeriod:I
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v11, p0, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 765
    :cond_10c
    return-void

    .line 694
    .end local v10           #watchdogTrigger:I
    .restart local v6       #received:J
    .restart local v8       #sent:J
    :cond_10d
    const-wide/16 v11, 0x0

    cmp-long v11, v8, v11

    if-lez v11, :cond_138

    const-wide/16 v11, 0x0

    cmp-long v11, v6, v11

    if-nez v11, :cond_138

    .line 695
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v11, v12, :cond_130

    .line 696
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-static {v11, v8, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1114(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 700
    :goto_12c
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAOUT:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v0       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto/16 :goto_61

    .line 698
    .end local v0           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_130
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-wide/16 v12, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v11, v12, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1202(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    goto :goto_12c

    .line 701
    :cond_138
    const-wide/16 v11, 0x0

    cmp-long v11, v8, v11

    if-nez v11, :cond_155

    const-wide/16 v11, 0x0

    cmp-long v11, v6, v11

    if-lez v11, :cond_155

    .line 702
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-wide/16 v12, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v11, v12, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1302(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 703
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->DATAIN:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 704
    .restart local v0       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const/4 v12, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPdpResetCount:I
    invoke-static {v11, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$902(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    goto/16 :goto_61

    .line 705
    .end local v0           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_155
    const-wide/16 v11, 0x0

    cmp-long v11, v8, v11

    if-nez v11, :cond_165

    const-wide/16 v11, 0x0

    cmp-long v11, v6, v11

    if-nez v11, :cond_165

    .line 706
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v0       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto/16 :goto_61

    .line 708
    .end local v0           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    :cond_165
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-wide/16 v12, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v11, v12, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1402(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;J)J

    .line 709
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .restart local v0       #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    goto/16 :goto_61

    .line 745
    .end local v0           #newActivity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .end local v6           #received:J
    .end local v8           #sent:J
    .restart local v1       #noRecvPollLimit:I
    .restart local v10       #watchdogTrigger:I
    :cond_170
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sent "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mSentSinceLastRecv:J
    invoke-static {v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " pkts since last received start recovery process"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 747
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopNetStatPoll()V

    .line 748
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const/16 v13, 0x1c

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_f4

    .line 751
    .end local v1           #noRecvPollLimit:I
    :cond_1ac
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const/4 v12, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mNoRecvPollCount:I
    invoke-static {v11, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2802(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    .line 752
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsScreenOn:Z
    invoke-static {v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$2900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z

    move-result v11

    if-eqz v11, :cond_1cf

    .line 753
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "pdp_watchdog_poll_interval_ms"

    const/16 v14, 0x3e8

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mNetStatPollPeriod:I
    invoke-static {v11, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3002(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    goto/16 :goto_f4

    .line 756
    :cond_1cf
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "pdp_watchdog_long_poll_interval_ms"

    const v14, 0x927c0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    #setter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mNetStatPollPeriod:I
    invoke-static {v11, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$3102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)I

    goto/16 :goto_f4
.end method
