.class public Lcom/android/videoeditor/service/MovieEffect;
.super Ljava/lang/Object;
.source "MovieEffect.java"


# instance fields
.field private mDurationMs:J

.field private mEndRect:Landroid/graphics/Rect;

.field private mStartRect:Landroid/graphics/Rect;

.field private mStartTimeMs:J

.field private final mType:I

.field private final mUniqueId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/videoeditor/service/MovieEffect;-><init>(Landroid/media/videoeditor/Effect;)V

    .line 43
    return-void
.end method

.method constructor <init>(Landroid/media/videoeditor/Effect;)V
    .locals 4
    .parameter "effect"

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/media/videoeditor/Effect;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/videoeditor/service/MovieEffect;->mUniqueId:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/media/videoeditor/Effect;->getStartTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/videoeditor/service/MovieEffect;->mStartTimeMs:J

    .line 53
    invoke-virtual {p1}, Landroid/media/videoeditor/Effect;->getDuration()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/videoeditor/service/MovieEffect;->mDurationMs:J

    .line 54
    instance-of v1, p1, Landroid/media/videoeditor/EffectKenBurns;

    if-eqz v1, :cond_0

    .line 55
    move-object v0, p1

    check-cast v0, Landroid/media/videoeditor/EffectKenBurns;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/media/videoeditor/EffectKenBurns;->getStartRect()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/videoeditor/service/MovieEffect;->mStartRect:Landroid/graphics/Rect;

    .line 56
    move-object v0, p1

    check-cast v0, Landroid/media/videoeditor/EffectKenBurns;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/media/videoeditor/EffectKenBurns;->getEndRect()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/videoeditor/service/MovieEffect;->mEndRect:Landroid/graphics/Rect;

    .line 62
    :goto_0
    invoke-static {p1}, Lcom/android/videoeditor/service/MovieEffect;->toType(Landroid/media/videoeditor/Effect;)I

    move-result v1

    iput v1, p0, Lcom/android/videoeditor/service/MovieEffect;->mType:I

    .line 63
    return-void

    .line 58
    :cond_0
    iput-object v3, p0, Lcom/android/videoeditor/service/MovieEffect;->mStartRect:Landroid/graphics/Rect;

    .line 59
    iput-object v3, p0, Lcom/android/videoeditor/service/MovieEffect;->mEndRect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private static toType(Landroid/media/videoeditor/Effect;)I
    .locals 5
    .parameter "effect"

    .prologue
    .line 148
    instance-of v2, p0, Landroid/media/videoeditor/EffectKenBurns;

    if-eqz v2, :cond_0

    .line 149
    const/4 v2, 0x0

    .line 166
    :goto_0
    return v2

    .line 150
    :cond_0
    instance-of v2, p0, Landroid/media/videoeditor/EffectColor;

    if-eqz v2, :cond_1

    .line 151
    move-object v0, p0

    check-cast v0, Landroid/media/videoeditor/EffectColor;

    move-object v1, v0

    .line 152
    .local v1, colorEffect:Landroid/media/videoeditor/EffectColor;
    invoke-virtual {v1}, Landroid/media/videoeditor/EffectColor;->getType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 171
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported color type effect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/media/videoeditor/EffectColor;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 154
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 158
    :pswitch_1
    const/4 v2, 0x2

    goto :goto_0

    .line 162
    :pswitch_2
    const/4 v2, 0x3

    goto :goto_0

    .line 166
    :pswitch_3
    const/4 v2, 0x4

    goto :goto_0

    .line 176
    .end local v1           #colorEffect:Landroid/media/videoeditor/EffectColor;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported effect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 185
    instance-of v0, p1, Lcom/android/videoeditor/service/MovieEffect;

    if-nez v0, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 188
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieEffect;->mUniqueId:Ljava/lang/String;

    check-cast p1, Lcom/android/videoeditor/service/MovieEffect;

    .end local p1
    iget-object v1, p1, Lcom/android/videoeditor/service/MovieEffect;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/videoeditor/service/MovieEffect;->mDurationMs:J

    return-wide v0
.end method

.method public getEndRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieEffect;->mEndRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieEffect;->mUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public getStartRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieEffect;->mStartRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method getStartTime()J
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/android/videoeditor/service/MovieEffect;->mStartTimeMs:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/videoeditor/service/MovieEffect;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/videoeditor/service/MovieEffect;->mUniqueId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method setDuration(J)V
    .locals 0
    .parameter "durationMs"

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/android/videoeditor/service/MovieEffect;->mDurationMs:J

    .line 86
    return-void
.end method

.method setRectangles(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "startRect"
    .parameter "endRect"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/videoeditor/service/MovieEffect;->mStartRect:Landroid/graphics/Rect;

    .line 123
    iput-object p2, p0, Lcom/android/videoeditor/service/MovieEffect;->mEndRect:Landroid/graphics/Rect;

    .line 124
    return-void
.end method

.method setStartTime(J)V
    .locals 0
    .parameter "startTimeMs"

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/android/videoeditor/service/MovieEffect;->mStartTimeMs:J

    .line 106
    return-void
.end method
