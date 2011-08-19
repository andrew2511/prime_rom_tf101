.class public final Ls;
.super Ljava/lang/Object;

# interfaces
.implements Li;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ld;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/WebView;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const-string v0, "action"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    instance-of v0, p3, Lg;

    if-eqz v0, :cond_1

    check-cast p3, Lg;

    invoke-virtual {p3}, Lg;->b()Lcom/google/ads/AdActivity;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "Could not get adActivity to create the video."

    invoke-static {v0}, Lt;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Could not get adWebView to create the video."

    invoke-static {v0}, Lt;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "load"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "url"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v1, Landroid/widget/VideoView;

    invoke-virtual {p1}, Ld;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/ads/AdActivity;->showVideo(Landroid/widget/VideoView;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/ads/AdActivity;->getVideoView()Landroid/widget/VideoView;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "Could not get the VideoView for a video GMSG."

    invoke-static {v0}, Lt;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "play"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_0

    :cond_5
    const-string v1, "pause"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    goto :goto_0

    :cond_6
    const-string v1, "stop"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    goto :goto_0

    :cond_7
    const-string v1, "remove"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    goto :goto_0

    :cond_8
    const-string v1, "replay"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->seekTo(I)V

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_0

    :cond_9
    const-string v1, "currentTime"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "time"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_a

    const-string v0, "No \"time\" parameter!"

    invoke-static {v0}, Lt;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "position"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown movie action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt;->e(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
