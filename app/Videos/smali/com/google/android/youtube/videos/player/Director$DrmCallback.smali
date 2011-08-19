.class Lcom/google/android/youtube/videos/player/Director$DrmCallback;
.super Ljava/lang/Object;
.source "Director.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/player/Director;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrmCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/videos/DrmRequest;",
        "Lcom/google/android/youtube/videos/DrmResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private expectedResponses:I

.field final synthetic this$0:Lcom/google/android/youtube/videos/player/Director;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/player/Director;I)V
    .locals 1
    .parameter
    .parameter "expectedResponses"

    .prologue
    .line 733
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 734
    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(Z)V

    .line 735
    iput p2, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->expectedResponses:I

    .line 736
    return-void

    .line 734
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onAnyResponse(Z)V
    .locals 3
    .parameter "maybeShowShortClockConfirmation"

    .prologue
    .line 785
    iget v1, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->expectedResponses:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->expectedResponses:I

    if-nez v1, :cond_0

    .line 786
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v1}, Lcom/google/android/youtube/videos/player/Director;->access$1900(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/model/Purchase;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v1}, Lcom/google/android/youtube/videos/player/Director;->access$1900(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/model/Purchase;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Purchase;->expirationDate:Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 788
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 789
    .local v0, activationEnd:Ljava/util/Calendar;
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v2}, Lcom/google/android/youtube/videos/player/Director;->access$1900(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/model/Purchase;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Purchase;->pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/PricingStructure;->duration:Lcom/google/android/youtube/core/model/Duration;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/model/Duration;->inHours()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 790
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v2}, Lcom/google/android/youtube/videos/player/Director;->access$1900(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/model/Purchase;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Purchase;->expirationDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v1}, Lcom/google/android/youtube/videos/player/Director;->access$1300(Lcom/google/android/youtube/videos/player/Director;)I

    move-result v1

    if-nez v1, :cond_1

    .line 791
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v1}, Lcom/google/android/youtube/videos/player/Director;->access$2000(Lcom/google/android/youtube/videos/player/Director;)V

    .line 797
    .end local v0           #activationEnd:Ljava/util/Calendar;
    :cond_0
    :goto_0
    return-void

    .line 795
    :cond_1
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v1}, Lcom/google/android/youtube/videos/player/Director;->access$1600(Lcom/google/android/youtube/videos/player/Director;)V

    goto :goto_0
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/videos/DrmRequest;Ljava/lang/Exception;)V
    .locals 5
    .parameter "request"
    .parameter "exception"

    .prologue
    const/4 v4, 0x0

    .line 762
    instance-of v2, p2, Lcom/google/android/youtube/videos/DrmException;

    if-eqz v2, :cond_0

    .line 763
    move-object v0, p2

    check-cast v0, Lcom/google/android/youtube/videos/DrmException;

    move-object v1, v0

    .line 764
    .local v1, e:Lcom/google/android/youtube/videos/DrmException;
    sget-object v2, Lcom/google/android/youtube/videos/player/Director$11;->$SwitchMap$com$google$android$youtube$videos$DrmException$DrmError:[I

    iget-object v3, v1, Lcom/google/android/youtube/videos/DrmException;->drmError:Lcom/google/android/youtube/videos/DrmException$DrmError;

    invoke-virtual {v3}, Lcom/google/android/youtube/videos/DrmException$DrmError;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 781
    .end local v1           #e:Lcom/google/android/youtube/videos/DrmException;
    :cond_0
    invoke-direct {p0, v4}, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->onAnyResponse(Z)V

    .line 782
    :goto_0
    return-void

    .line 766
    .restart local v1       #e:Lcom/google/android/youtube/videos/DrmException;
    :pswitch_0
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v2}, Lcom/google/android/youtube/videos/player/Director;->access$1400(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->hideLoading()V

    .line 767
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v2}, Lcom/google/android/youtube/videos/player/Director;->access$1400(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v2

    const v3, 0x7f0c007b

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showErrorMessage(IZ)V

    goto :goto_0

    .line 770
    :pswitch_1
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v2}, Lcom/google/android/youtube/videos/player/Director;->access$1400(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->hideLoading()V

    .line 771
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v2}, Lcom/google/android/youtube/videos/player/Director;->access$1400(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v2

    const v3, 0x7f0c0052

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showErrorMessage(IZ)V

    goto :goto_0

    .line 776
    :pswitch_2
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v2}, Lcom/google/android/youtube/videos/player/Director;->access$1400(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->hideLoading()V

    .line 777
    iget-object v2, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v2}, Lcom/google/android/youtube/videos/player/Director;->access$1400(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v2

    const v3, 0x7f0c0088

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showErrorMessage(IZ)V

    goto :goto_0

    .line 764
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 729
    check-cast p1, Lcom/google/android/youtube/videos/DrmRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->onError(Lcom/google/android/youtube/videos/DrmRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;)V
    .locals 3
    .parameter "request"
    .parameter "response"

    .prologue
    const/4 v2, 0x0

    .line 739
    const/4 v0, 0x0

    .line 740
    .local v0, error:I
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v1}, Lcom/google/android/youtube/videos/player/Director;->access$1700(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/model/VideoStreams;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/youtube/core/model/VideoStreams;->streamingAllowed:Z

    if-nez v1, :cond_0

    .line 741
    iget-boolean v1, p2, Lcom/google/android/youtube/videos/DrmResponse;->allowsOffline:Z

    if-nez v1, :cond_2

    .line 743
    const v0, 0x7f0c007b

    .line 749
    :cond_0
    :goto_0
    if-nez v0, :cond_4

    .line 750
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v1}, Lcom/google/android/youtube/videos/player/Director;->access$1500(Lcom/google/android/youtube/videos/player/Director;)Z

    move-result v1

    if-nez v1, :cond_3

    iget v1, p2, Lcom/google/android/youtube/videos/DrmResponse;->secondsSinceActivation:I

    if-gtz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v1}, Lcom/google/android/youtube/videos/player/Director;->access$1800(Lcom/google/android/youtube/videos/player/Director;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v1}, Lcom/google/android/youtube/videos/player/Director;->access$1700(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/model/VideoStreams;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/youtube/core/model/VideoStreams;->hi:Lcom/google/android/youtube/core/model/Stream;

    iget-boolean v1, v1, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    if-eqz v1, :cond_3

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v1}, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->onAnyResponse(Z)V

    .line 757
    :goto_2
    return-void

    .line 744
    :cond_2
    iget-object v1, p1, Lcom/google/android/youtube/videos/DrmRequest;->stream:Lcom/google/android/youtube/core/model/Stream;

    iget-boolean v1, v1, Lcom/google/android/youtube/core/model/Stream;->isOffline:Z

    if-nez v1, :cond_0

    .line 746
    const v0, 0x7f0c007c

    goto :goto_0

    :cond_3
    move v1, v2

    .line 750
    goto :goto_1

    .line 754
    :cond_4
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v1}, Lcom/google/android/youtube/videos/player/Director;->access$1400(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/youtube/core/player/ControllerOverlay;->hideLoading()V

    .line 755
    iget-object v1, p0, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-static {v1}, Lcom/google/android/youtube/videos/player/Director;->access$1400(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showErrorMessage(IZ)V

    goto :goto_2
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 729
    check-cast p1, Lcom/google/android/youtube/videos/DrmRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/videos/DrmResponse;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/player/Director$DrmCallback;->onResponse(Lcom/google/android/youtube/videos/DrmRequest;Lcom/google/android/youtube/videos/DrmResponse;)V

    return-void
.end method
