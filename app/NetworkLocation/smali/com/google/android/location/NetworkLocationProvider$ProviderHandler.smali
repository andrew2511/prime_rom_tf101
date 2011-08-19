.class final Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "NetworkLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/NetworkLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/location/NetworkLocationProvider;


# direct methods
.method private constructor <init>(Lcom/google/android/location/NetworkLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 1115
    iput-object p1, p0, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/location/NetworkLocationProvider;Lcom/google/android/location/NetworkLocationProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1115
    invoke-direct {p0, p1}, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;-><init>(Lcom/google/android/location/NetworkLocationProvider;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 1120
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1166
    .end local p0
    :goto_0
    return-void

    .line 1122
    .restart local p0
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v0}, Lcom/google/android/location/NetworkLocationProvider;->access$200(Lcom/google/android/location/NetworkLocationProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v0}, Lcom/google/android/location/NetworkLocationProvider;->access$300(Lcom/google/android/location/NetworkLocationProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v0}, Lcom/google/android/location/NetworkLocationProvider;->access$400(Lcom/google/android/location/NetworkLocationProvider;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1123
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v0}, Lcom/google/android/location/NetworkLocationProvider;->access$500(Lcom/google/android/location/NetworkLocationProvider;)V

    goto :goto_0

    .line 1126
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v0}, Lcom/google/android/location/NetworkLocationProvider;->access$1600(Lcom/google/android/location/NetworkLocationProvider;)V

    goto :goto_0

    .line 1129
    :pswitch_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 1132
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v0}, Lcom/google/android/location/NetworkLocationProvider;->access$1700(Lcom/google/android/location/NetworkLocationProvider;)V

    goto :goto_0

    .line 1135
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    invoke-static {v0}, Lcom/google/android/location/NetworkLocationProvider;->access$1800(Lcom/google/android/location/NetworkLocationProvider;)V

    goto :goto_0

    .line 1138
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v0, v1}, Lcom/google/android/location/NetworkLocationProvider;->access$1900(Lcom/google/android/location/NetworkLocationProvider;Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1141
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/google/android/location/NetworkLocationProvider$SetMinTimeArgs;

    iget-wide v1, p0, Lcom/google/android/location/NetworkLocationProvider$SetMinTimeArgs;->minTime:J

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/location/NetworkLocationProvider$SetMinTimeArgs;

    iget-object v3, p0, Lcom/google/android/location/NetworkLocationProvider$SetMinTimeArgs;->ws:Landroid/os/WorkSource;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/location/NetworkLocationProvider;->access$2000(Lcom/google/android/location/NetworkLocationProvider;JLandroid/os/WorkSource;)V

    goto :goto_0

    .line 1145
    .restart local p0
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/net/NetworkInfo;

    invoke-static {v0, v1, p0}, Lcom/google/android/location/NetworkLocationProvider;->access$2100(Lcom/google/android/location/NetworkLocationProvider;ILandroid/net/NetworkInfo;)V

    goto :goto_0

    .line 1148
    .restart local p0
    :pswitch_7
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/location/Location;

    invoke-static {v0, p0}, Lcom/google/android/location/NetworkLocationProvider;->access$2200(Lcom/google/android/location/NetworkLocationProvider;Landroid/location/Location;)V

    goto :goto_0

    .line 1151
    .restart local p0
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/WorkSource;

    invoke-static {v0, v1, p0}, Lcom/google/android/location/NetworkLocationProvider;->access$2300(Lcom/google/android/location/NetworkLocationProvider;ILandroid/os/WorkSource;)V

    goto :goto_0

    .line 1154
    .restart local p0
    :pswitch_9
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/WorkSource;

    invoke-static {v0, v1, p0}, Lcom/google/android/location/NetworkLocationProvider;->access$2400(Lcom/google/android/location/NetworkLocationProvider;ILandroid/os/WorkSource;)V

    goto/16 :goto_0

    .line 1157
    .restart local p0
    :pswitch_a
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/telephony/CellLocation;

    invoke-static {v0, p0}, Lcom/google/android/location/NetworkLocationProvider;->access$2500(Lcom/google/android/location/NetworkLocationProvider;Landroid/telephony/CellLocation;)V

    goto/16 :goto_0

    .line 1160
    .restart local p0
    :pswitch_b
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/telephony/SignalStrength;

    invoke-static {v0, p0}, Lcom/google/android/location/NetworkLocationProvider;->access$2600(Lcom/google/android/location/NetworkLocationProvider;Landroid/telephony/SignalStrength;)V

    goto/16 :goto_0

    .line 1163
    .restart local p0
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/location/NetworkLocationProvider$ProviderHandler;->this$0:Lcom/google/android/location/NetworkLocationProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/google/android/location/NetworkLocationProvider;->access$2700(Lcom/google/android/location/NetworkLocationProvider;I)V

    goto/16 :goto_0

    .line 1120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
