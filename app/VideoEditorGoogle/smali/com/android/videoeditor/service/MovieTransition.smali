.class public Lcom/android/videoeditor/service/MovieTransition;
.super Ljava/lang/Object;
.source "MovieTransition.java"


# instance fields
.field private final mAlphaInvert:Z

.field private final mAlphaMaskBlendingPercent:I

.field private final mAlphaMaskFilename:Ljava/lang/String;

.field private final mAlphaMaskResId:I

.field private mAppDurationMs:J

.field private final mBehavior:I

.field private mDurationMs:J

.field private final mSlidingDirection:I

.field private final mType:I

.field private final mTypeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final mUniqueId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/media/videoeditor/Transition;)V
    .locals 5
    .parameter "transition"

    .prologue
    const/4 v4, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/android/videoeditor/service/MovieTransition;->mTypeClass:Ljava/lang/Class;

    .line 58
    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/videoeditor/service/MovieTransition;->mUniqueId:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getDuration()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/videoeditor/service/MovieTransition;->mDurationMs:J

    iput-wide v2, p0, Lcom/android/videoeditor/service/MovieTransition;->mAppDurationMs:J

    .line 60
    invoke-virtual {p1}, Landroid/media/videoeditor/Transition;->getBehavior()I

    move-result v2

    iput v2, p0, Lcom/android/videoeditor/service/MovieTransition;->mBehavior:I

    .line 61
    instance-of v2, p1, Landroid/media/videoeditor/TransitionSliding;

    if-eqz v2, :cond_0

    .line 62
    move-object v0, p1

    check-cast v0, Landroid/media/videoeditor/TransitionSliding;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/media/videoeditor/TransitionSliding;->getDirection()I

    move-result v2

    iput v2, p0, Lcom/android/videoeditor/service/MovieTransition;->mSlidingDirection:I

    .line 67
    :goto_0
    instance-of v2, p1, Landroid/media/videoeditor/TransitionAlpha;

    if-eqz v2, :cond_1

    .line 68
    move-object v0, p1

    check-cast v0, Landroid/media/videoeditor/TransitionAlpha;

    move-object v1, v0

    .line 69
    .local v1, ta:Landroid/media/videoeditor/TransitionAlpha;
    invoke-virtual {v1}, Landroid/media/videoeditor/TransitionAlpha;->getMaskFilename()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaMaskFilename:Ljava/lang/String;

    .line 70
    iput v4, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaMaskResId:I

    .line 71
    invoke-virtual {v1}, Landroid/media/videoeditor/TransitionAlpha;->getBlendingPercent()I

    move-result v2

    iput v2, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaMaskBlendingPercent:I

    .line 72
    invoke-virtual {v1}, Landroid/media/videoeditor/TransitionAlpha;->isInvert()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaInvert:Z

    .line 80
    .end local v1           #ta:Landroid/media/videoeditor/TransitionAlpha;
    :goto_1
    invoke-direct {p0}, Lcom/android/videoeditor/service/MovieTransition;->toType()I

    move-result v2

    iput v2, p0, Lcom/android/videoeditor/service/MovieTransition;->mType:I

    .line 81
    return-void

    .line 64
    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/videoeditor/service/MovieTransition;->mSlidingDirection:I

    goto :goto_0

    .line 74
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaMaskFilename:Ljava/lang/String;

    .line 75
    iput v4, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaMaskResId:I

    .line 76
    iput v4, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaMaskBlendingPercent:I

    .line 77
    iput-boolean v4, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaInvert:Z

    goto :goto_1
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;JI)V
    .locals 2
    .parameter
    .parameter "id"
    .parameter "durationMs"
    .parameter "behavior"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "JI)V"
        }
    .end annotation

    .prologue
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/android/videoeditor/service/MovieTransition;->mTypeClass:Ljava/lang/Class;

    .line 93
    iput-object p2, p0, Lcom/android/videoeditor/service/MovieTransition;->mUniqueId:Ljava/lang/String;

    .line 94
    iput-wide p3, p0, Lcom/android/videoeditor/service/MovieTransition;->mDurationMs:J

    iput-wide p3, p0, Lcom/android/videoeditor/service/MovieTransition;->mAppDurationMs:J

    .line 95
    iput p5, p0, Lcom/android/videoeditor/service/MovieTransition;->mBehavior:I

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/videoeditor/service/MovieTransition;->mSlidingDirection:I

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaMaskFilename:Ljava/lang/String;

    .line 98
    iput v1, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaMaskResId:I

    .line 99
    iput v1, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaMaskBlendingPercent:I

    .line 100
    iput-boolean v1, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaInvert:Z

    .line 102
    invoke-direct {p0}, Lcom/android/videoeditor/service/MovieTransition;->toType()I

    move-result v0

    iput v0, p0, Lcom/android/videoeditor/service/MovieTransition;->mType:I

    .line 103
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;JII)V
    .locals 2
    .parameter
    .parameter "id"
    .parameter "durationMs"
    .parameter "behavior"
    .parameter "slidingDirection"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "JII)V"
        }
    .end annotation

    .prologue
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/android/videoeditor/service/MovieTransition;->mTypeClass:Ljava/lang/Class;

    .line 117
    iput-object p2, p0, Lcom/android/videoeditor/service/MovieTransition;->mUniqueId:Ljava/lang/String;

    .line 118
    iput-wide p3, p0, Lcom/android/videoeditor/service/MovieTransition;->mDurationMs:J

    iput-wide p3, p0, Lcom/android/videoeditor/service/MovieTransition;->mAppDurationMs:J

    .line 119
    iput p5, p0, Lcom/android/videoeditor/service/MovieTransition;->mBehavior:I

    .line 120
    iput p6, p0, Lcom/android/videoeditor/service/MovieTransition;->mSlidingDirection:I

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaMaskFilename:Ljava/lang/String;

    .line 122
    iput v1, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaMaskResId:I

    .line 123
    iput v1, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaMaskBlendingPercent:I

    .line 124
    iput-boolean v1, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaInvert:Z

    .line 126
    invoke-direct {p0}, Lcom/android/videoeditor/service/MovieTransition;->toType()I

    move-result v0

    iput v0, p0, Lcom/android/videoeditor/service/MovieTransition;->mType:I

    .line 127
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;JIIIZ)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "durationMs"
    .parameter "behavior"
    .parameter "maskResId"
    .parameter "blendingPercent"
    .parameter "invert"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "JIIIZ)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/android/videoeditor/service/MovieTransition;->mTypeClass:Ljava/lang/Class;

    .line 143
    iput-object p2, p0, Lcom/android/videoeditor/service/MovieTransition;->mUniqueId:Ljava/lang/String;

    .line 144
    iput-wide p3, p0, Lcom/android/videoeditor/service/MovieTransition;->mDurationMs:J

    iput-wide p3, p0, Lcom/android/videoeditor/service/MovieTransition;->mAppDurationMs:J

    .line 145
    iput p5, p0, Lcom/android/videoeditor/service/MovieTransition;->mBehavior:I

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/videoeditor/service/MovieTransition;->mSlidingDirection:I

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaMaskFilename:Ljava/lang/String;

    .line 148
    iput p6, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaMaskResId:I

    .line 149
    iput p7, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaMaskBlendingPercent:I

    .line 150
    iput-boolean p8, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaInvert:Z

    .line 152
    invoke-direct {p0}, Lcom/android/videoeditor/service/MovieTransition;->toType()I

    move-result v0

    iput v0, p0, Lcom/android/videoeditor/service/MovieTransition;->mType:I

    .line 153
    return-void
.end method

.method private toType()I
    .locals 4

    .prologue
    .line 286
    const-class v1, Landroid/media/videoeditor/TransitionCrossfade;

    iget-object v2, p0, Lcom/android/videoeditor/service/MovieTransition;->mTypeClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    const/4 v1, 0x2

    .line 320
    :goto_0
    return v1

    .line 288
    :cond_0
    const-class v1, Landroid/media/videoeditor/TransitionAlpha;

    iget-object v2, p0, Lcom/android/videoeditor/service/MovieTransition;->mTypeClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaMaskFilename:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/videoeditor/util/FileUtils;->getMaskRawId(Ljava/lang/String;)I

    move-result v0

    .line 290
    .local v0, rawId:I
    packed-switch v0, :pswitch_data_0

    .line 300
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown id for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaMaskFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 292
    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    .line 296
    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 303
    .end local v0           #rawId:I
    :cond_1
    const-class v1, Landroid/media/videoeditor/TransitionFadeBlack;

    iget-object v2, p0, Lcom/android/videoeditor/service/MovieTransition;->mTypeClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 304
    const/4 v1, 0x3

    goto :goto_0

    .line 305
    :cond_2
    const-class v1, Landroid/media/videoeditor/TransitionSliding;

    iget-object v2, p0, Lcom/android/videoeditor/service/MovieTransition;->mTypeClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 306
    iget v1, p0, Lcom/android/videoeditor/service/MovieTransition;->mSlidingDirection:I

    packed-switch v1, :pswitch_data_1

    .line 324
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown direction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/videoeditor/service/MovieTransition;->mSlidingDirection:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    :pswitch_2
    const/4 v1, 0x7

    goto :goto_0

    .line 312
    :pswitch_3
    const/4 v1, 0x5

    goto :goto_0

    .line 316
    :pswitch_4
    const/4 v1, 0x4

    goto :goto_0

    .line 320
    :pswitch_5
    const/4 v1, 0x6

    goto :goto_0

    .line 328
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/videoeditor/service/MovieTransition;->mTypeClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 290
    nop

    :pswitch_data_0
    .packed-switch 0x7f050001
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 306
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method buildTransition(Landroid/content/Context;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;)Landroid/media/videoeditor/Transition;
    .locals 10
    .parameter "context"
    .parameter "afterMediaItem"
    .parameter "beforeMediaItem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    const-class v0, Landroid/media/videoeditor/TransitionCrossfade;

    iget-object v1, p0, Lcom/android/videoeditor/service/MovieTransition;->mTypeClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    new-instance v0, Landroid/media/videoeditor/TransitionCrossfade;

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/videoeditor/service/MovieTransition;->mDurationMs:J

    iget v6, p0, Lcom/android/videoeditor/service/MovieTransition;->mBehavior:I

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/media/videoeditor/TransitionCrossfade;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V

    .line 276
    :goto_0
    return-object v0

    .line 264
    :cond_0
    const-class v0, Landroid/media/videoeditor/TransitionAlpha;

    iget-object v1, p0, Lcom/android/videoeditor/service/MovieTransition;->mTypeClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    new-instance v0, Landroid/media/videoeditor/TransitionAlpha;

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/videoeditor/service/MovieTransition;->mDurationMs:J

    iget v6, p0, Lcom/android/videoeditor/service/MovieTransition;->mBehavior:I

    iget v2, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaMaskResId:I

    invoke-static {p1, v2}, Lcom/android/videoeditor/util/FileUtils;->getMaskFilename(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaMaskBlendingPercent:I

    iget-boolean v9, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaInvert:Z

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v9}, Landroid/media/videoeditor/TransitionAlpha;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JILjava/lang/String;IZ)V

    goto :goto_0

    .line 269
    :cond_1
    const-class v0, Landroid/media/videoeditor/TransitionFadeBlack;

    iget-object v1, p0, Lcom/android/videoeditor/service/MovieTransition;->mTypeClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    new-instance v0, Landroid/media/videoeditor/TransitionFadeBlack;

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/videoeditor/service/MovieTransition;->mDurationMs:J

    iget v6, p0, Lcom/android/videoeditor/service/MovieTransition;->mBehavior:I

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/media/videoeditor/TransitionFadeBlack;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JI)V

    goto :goto_0

    .line 272
    :cond_2
    const-class v0, Landroid/media/videoeditor/TransitionSliding;

    iget-object v1, p0, Lcom/android/videoeditor/service/MovieTransition;->mTypeClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    new-instance v0, Landroid/media/videoeditor/TransitionSliding;

    invoke-static {}, Lcom/android/videoeditor/service/ApiService;->generateId()Ljava/lang/String;

    move-result-object v1

    iget-wide v4, p0, Lcom/android/videoeditor/service/MovieTransition;->mDurationMs:J

    iget v6, p0, Lcom/android/videoeditor/service/MovieTransition;->mBehavior:I

    iget v7, p0, Lcom/android/videoeditor/service/MovieTransition;->mSlidingDirection:I

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Landroid/media/videoeditor/TransitionSliding;-><init>(Ljava/lang/String;Landroid/media/videoeditor/MediaItem;Landroid/media/videoeditor/MediaItem;JII)V

    goto :goto_0

    .line 276
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 337
    instance-of v0, p1, Lcom/android/videoeditor/service/MovieTransition;

    if-nez v0, :cond_0

    .line 338
    const/4 v0, 0x0

    .line 340
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieTransition;->mUniqueId:Ljava/lang/String;

    check-cast p1, Lcom/android/videoeditor/service/MovieTransition;

    .end local p1
    iget-object v1, p1, Lcom/android/videoeditor/service/MovieTransition;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAlphaMaskBlendingPercent()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaMaskBlendingPercent:I

    return v0
.end method

.method public getAlphaMaskFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaMaskFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getAlphaMaskResId()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaMaskResId:I

    return v0
.end method

.method public getAppDuration()J
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/android/videoeditor/service/MovieTransition;->mAppDurationMs:J

    return-wide v0
.end method

.method public getBehavior()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/android/videoeditor/service/MovieTransition;->mBehavior:I

    return v0
.end method

.method getDuration()J
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/android/videoeditor/service/MovieTransition;->mDurationMs:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieTransition;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getSlidingDirection()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/android/videoeditor/service/MovieTransition;->mSlidingDirection:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/android/videoeditor/service/MovieTransition;->mType:I

    return v0
.end method

.method public getTypeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieTransition;->mTypeClass:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieTransition;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAlphaInverted()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/android/videoeditor/service/MovieTransition;->mAlphaInvert:Z

    return v0
.end method

.method public setAppDuration(J)V
    .locals 0
    .parameter "durationMs"

    .prologue
    .line 198
    iput-wide p1, p0, Lcom/android/videoeditor/service/MovieTransition;->mAppDurationMs:J

    .line 199
    return-void
.end method

.method setDuration(J)V
    .locals 0
    .parameter "durationMs"

    .prologue
    .line 182
    iput-wide p1, p0, Lcom/android/videoeditor/service/MovieTransition;->mDurationMs:J

    .line 183
    return-void
.end method
