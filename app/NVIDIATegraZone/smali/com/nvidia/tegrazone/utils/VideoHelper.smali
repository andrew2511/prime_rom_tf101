.class public Lcom/nvidia/tegrazone/utils/VideoHelper;
.super Ljava/lang/Object;
.source "VideoHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadVideo(Landroid/app/Activity;I)V
    .locals 8
    .parameter "activity"
    .parameter "position"

    .prologue
    .line 17
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v1

    .line 18
    .local v1, model:Lcom/nvidia/tegrazone/model/NVModel;
    iget-object v0, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getMedia()[Lcom/nvidia/tegrazone/model/vo/MediaVO;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/MediaVO;->getItemType()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/nvidia/tegrazone/model/vo/MediaVO;->VIDEO_TYPE:Ljava/lang/String;

    if-ne v0, v2, :cond_0

    .line 19
    iget-object v0, v1, Lcom/nvidia/tegrazone/model/NVModel;->currentGame:Lcom/nvidia/tegrazone/model/vo/LargeGameVO;

    invoke-virtual {v0}, Lcom/nvidia/tegrazone/model/vo/LargeGameVO;->getMedia()[Lcom/nvidia/tegrazone/model/vo/MediaVO;

    move-result-object v0

    aget-object p1, v0, p1

    .end local p1
    check-cast p1, Lcom/nvidia/tegrazone/model/vo/VideoVO;

    .line 21
    .local p1, tempVideo:Lcom/nvidia/tegrazone/model/vo/VideoVO;
    invoke-virtual {p1}, Lcom/nvidia/tegrazone/model/vo/VideoVO;->getVideoURL()Ljava/lang/String;

    move-result-object v4

    .line 22
    .local v4, originalURL:Ljava/lang/String;
    const-string p1, ""

    .line 23
    .local p1, videoURL:Ljava/lang/String;
    const-string v3, ""

    .line 24
    .local v3, revisedURL:Ljava/lang/String;
    const-string v5, ""

    .line 25
    .local v5, youTubeVid:Ljava/lang/String;
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .end local p1           #videoURL:Ljava/lang/String;
    move-result-object v0

    .line 27
    .local v0, isYouTube:Ljava/lang/Boolean;
    new-instance v2, Landroid/content/Intent;

    const-string p1, "android.intent.action.VIEW"

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    .local v2, myIntent:Landroid/content/Intent;
    const-string p1, "youtube"

    invoke-virtual {v4, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v6, -0x1

    if-eq p1, v6, :cond_1

    .line 32
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 33
    .end local v0           #isYouTube:Ljava/lang/Boolean;
    .local p1, isYouTube:Ljava/lang/Boolean;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 34
    .local v0, uri:Landroid/net/Uri;
    const-string v1, "v"

    .end local v1           #model:Lcom/nvidia/tegrazone/model/NVModel;
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .end local v5           #youTubeVid:Ljava/lang/String;
    .local v0, youTubeVid:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "youtube id: "

    .end local v4           #originalURL:Ljava/lang/String;
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    move-object v1, v0

    .end local v0           #youTubeVid:Ljava/lang/String;
    .local v1, youTubeVid:Ljava/lang/String;
    move-object v0, v3

    .line 64
    .end local v3           #revisedURL:Ljava/lang/String;
    .local v0, revisedURL:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .end local p1           #isYouTube:Ljava/lang/Boolean;
    if-eqz p1, :cond_6

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "vnd.youtube:"

    .end local v0           #revisedURL:Ljava/lang/String;
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 66
    .local p1, videoURL:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "YouTube path: "

    .end local v1           #youTubeVid:Ljava/lang/String;
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    .line 67
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 74
    :goto_1
    invoke-static {p0, v2}, Lcom/nvidia/tegrazone/utils/NVUtils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    .end local p1           #videoURL:Ljava/lang/String;
    if-eqz p1, :cond_7

    .line 75
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 85
    .end local v2           #myIntent:Landroid/content/Intent;
    .end local p0
    :cond_0
    :goto_2
    return-void

    .line 38
    .local v0, isYouTube:Ljava/lang/Boolean;
    .local v1, model:Lcom/nvidia/tegrazone/model/NVModel;
    .restart local v2       #myIntent:Landroid/content/Intent;
    .restart local v3       #revisedURL:Ljava/lang/String;
    .restart local v4       #originalURL:Ljava/lang/String;
    .restart local v5       #youTubeVid:Ljava/lang/String;
    .restart local p0
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "\\"

    .end local v3           #revisedURL:Ljava/lang/String;
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f06006e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 39
    .local p1, tempURL:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, p1, v3

    .line 40
    .local v3, originalPath:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .end local p1           #tempURL:[Ljava/lang/String;
    const v6, 0x7f06006e

    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 44
    .local p1, extension:Ljava/lang/String;
    iget-object v6, v1, Lcom/nvidia/tegrazone/model/NVModel;->isTablet:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v1, v1, Lcom/nvidia/tegrazone/model/NVModel;->isLarge:Ljava/lang/Boolean;

    .end local v1           #model:Lcom/nvidia/tegrazone/model/NVModel;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 45
    :cond_2
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->isHighBandwidth(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 46
    move-object p1, v4

    .line 47
    .local p1, revisedURL:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "use high bandwidth video, "

    .end local v3           #originalPath:Ljava/lang/String;
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    move-object v1, v5

    .end local v5           #youTubeVid:Ljava/lang/String;
    .local v1, youTubeVid:Ljava/lang/String;
    move-object v7, v0

    .end local v0           #isYouTube:Ljava/lang/Boolean;
    .local v7, isYouTube:Ljava/lang/Boolean;
    move-object v0, p1

    .end local p1           #revisedURL:Ljava/lang/String;
    .local v0, revisedURL:Ljava/lang/String;
    move-object p1, v7

    .end local v7           #isYouTube:Ljava/lang/Boolean;
    .local p1, isYouTube:Ljava/lang/Boolean;
    goto/16 :goto_0

    .line 49
    .end local v1           #youTubeVid:Ljava/lang/String;
    .local v0, isYouTube:Ljava/lang/Boolean;
    .restart local v3       #originalPath:Ljava/lang/String;
    .restart local v5       #youTubeVid:Ljava/lang/String;
    .local p1, extension:Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .end local v3           #originalPath:Ljava/lang/String;
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06006b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local v4           #originalURL:Ljava/lang/String;
    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #extension:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    .local p1, revisedURL:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "use low bandwidth video, "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    move-object v1, v5

    .end local v5           #youTubeVid:Ljava/lang/String;
    .restart local v1       #youTubeVid:Ljava/lang/String;
    move-object v7, v0

    .end local v0           #isYouTube:Ljava/lang/Boolean;
    .restart local v7       #isYouTube:Ljava/lang/Boolean;
    move-object v0, p1

    .end local p1           #revisedURL:Ljava/lang/String;
    .local v0, revisedURL:Ljava/lang/String;
    move-object p1, v7

    .end local v7           #isYouTube:Ljava/lang/Boolean;
    .local p1, isYouTube:Ljava/lang/Boolean;
    goto/16 :goto_0

    .line 54
    .end local v1           #youTubeVid:Ljava/lang/String;
    .local v0, isYouTube:Ljava/lang/Boolean;
    .restart local v3       #originalPath:Ljava/lang/String;
    .restart local v4       #originalURL:Ljava/lang/String;
    .restart local v5       #youTubeVid:Ljava/lang/String;
    .local p1, extension:Ljava/lang/String;
    :cond_4
    invoke-static {p0}, Lcom/nvidia/tegrazone/utils/NVUtils;->isHighBandwidth(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .end local v3           #originalPath:Ljava/lang/String;
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06006d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local v4           #originalURL:Ljava/lang/String;
    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #extension:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 56
    .local p1, revisedURL:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "use medium bandwidth video, "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    move-object v1, v5

    .end local v5           #youTubeVid:Ljava/lang/String;
    .restart local v1       #youTubeVid:Ljava/lang/String;
    move-object v7, v0

    .end local v0           #isYouTube:Ljava/lang/Boolean;
    .restart local v7       #isYouTube:Ljava/lang/Boolean;
    move-object v0, p1

    .end local p1           #revisedURL:Ljava/lang/String;
    .local v0, revisedURL:Ljava/lang/String;
    move-object p1, v7

    .end local v7           #isYouTube:Ljava/lang/Boolean;
    .local p1, isYouTube:Ljava/lang/Boolean;
    goto/16 :goto_0

    .line 58
    .end local v1           #youTubeVid:Ljava/lang/String;
    .local v0, isYouTube:Ljava/lang/Boolean;
    .restart local v3       #originalPath:Ljava/lang/String;
    .restart local v4       #originalURL:Ljava/lang/String;
    .restart local v5       #youTubeVid:Ljava/lang/String;
    .local p1, extension:Ljava/lang/String;
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .end local v3           #originalPath:Ljava/lang/String;
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06006b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local v4           #originalURL:Ljava/lang/String;
    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #extension:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    .local p1, revisedURL:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "use low bandwidth video, "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    move-object v1, v5

    .end local v5           #youTubeVid:Ljava/lang/String;
    .restart local v1       #youTubeVid:Ljava/lang/String;
    move-object v7, v0

    .end local v0           #isYouTube:Ljava/lang/Boolean;
    .restart local v7       #isYouTube:Ljava/lang/Boolean;
    move-object v0, p1

    .end local p1           #revisedURL:Ljava/lang/String;
    .local v0, revisedURL:Ljava/lang/String;
    move-object p1, v7

    .end local v7           #isYouTube:Ljava/lang/Boolean;
    .local p1, isYouTube:Ljava/lang/Boolean;
    goto/16 :goto_0

    .line 69
    .end local p1           #isYouTube:Ljava/lang/Boolean;
    :cond_6
    move-object p1, v0

    .line 70
    .local p1, videoURL:Ljava/lang/String;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .end local v0           #revisedURL:Ljava/lang/String;
    const-string v1, "video/mp4"

    .end local v1           #youTubeVid:Ljava/lang/String;
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 78
    .end local p1           #videoURL:Ljava/lang/String;
    :cond_7
    const-string p0, "Activity not available"

    .end local p0
    invoke-static {p0}, Lcom/nvidia/tegrazone/nvidia/debug/NVDebug;->log(Ljava/lang/String;)V

    goto/16 :goto_2
.end method
