.class public Lcom/layar/core/animation/AnimationParser;
.super Ljava/lang/Object;
.source "AnimationParser.java"


# static fields
.field public static final TYPE_OPACITY:Ljava/lang/String; = "opacity"

.field public static final TYPE_ROTATION:Ljava/lang/String; = "rotate"

.field public static final TYPE_SCALE:Ljava/lang/String; = "scale"

.field public static final TYPE_TRANSLATION:Ljava/lang/String; = "translate"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimation(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/layar/core/animation/Animation;
    .locals 12
    .parameter "json"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const-wide/high16 v9, 0x3ff0

    const-wide/16 v7, 0x0

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v3, 0x0

    .line 59
    :goto_0
    return-object v3

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    .local v0, anim:Lcom/layar/core/animation/Animation;
    const-string v3, "type"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, type:Ljava/lang/String;
    const-string v3, "rotate"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 35
    new-instance v0, Lcom/layar/core/animation/RotatePoiAnimation;

    .end local v0           #anim:Lcom/layar/core/animation/Animation;
    invoke-direct {v0}, Lcom/layar/core/animation/RotatePoiAnimation;-><init>()V

    .line 36
    .restart local v0       #anim:Lcom/layar/core/animation/Animation;
    const-string v3, "from"

    invoke-virtual {p0, v3, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v0, Lcom/layar/core/animation/Animation;->from:F

    .line 37
    const-string v3, "to"

    invoke-virtual {p0, v3, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v0, Lcom/layar/core/animation/Animation;->to:F

    .line 38
    const-string v3, "axis"

    new-instance v4, Lcom/layar/core/math/Vector3f;

    invoke-direct {v4, v5, v5, v6}, Lcom/layar/core/math/Vector3f;-><init>(FFF)V

    invoke-static {p0, v3, v4}, Lcom/layar/core/animation/AnimationParser;->optVector(Lorg/json/JSONObject;Ljava/lang/String;Lcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;

    move-result-object v3

    iput-object v3, v0, Lcom/layar/core/animation/Animation;->axis:Lcom/layar/core/math/Vector3f;

    .line 54
    :cond_1
    :goto_1
    const-string v3, "delay"

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/layar/core/animation/Animation;->delay:J

    .line 55
    const-string v3, "length"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/layar/core/animation/Animation;->length:J

    .line 56
    const-string v3, "persist"

    invoke-virtual {p0, v3, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/layar/core/animation/Animation;->persist:Z

    .line 57
    const-string v3, "repeat"

    invoke-virtual {p0, v3, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/layar/core/animation/Animation;->repeat:Z

    .line 58
    invoke-static {p0}, Lcom/layar/core/animation/AnimationParser;->getInterpolator(Lorg/json/JSONObject;)Landroid/view/animation/Interpolator;

    move-result-object v3

    iput-object v3, v0, Lcom/layar/core/animation/Animation;->interpolation:Landroid/view/animation/Interpolator;

    move-object v3, v0

    .line 59
    goto :goto_0

    .line 39
    :cond_2
    const-string v3, "translate"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 40
    new-instance v0, Lcom/layar/core/animation/TranslatePoiAnimation;

    .end local v0           #anim:Lcom/layar/core/animation/Animation;
    invoke-direct {v0}, Lcom/layar/core/animation/TranslatePoiAnimation;-><init>()V

    .line 41
    .restart local v0       #anim:Lcom/layar/core/animation/Animation;
    const-string v3, "from"

    invoke-virtual {p0, v3, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v0, Lcom/layar/core/animation/Animation;->from:F

    .line 42
    const-string v3, "to"

    invoke-virtual {p0, v3, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v0, Lcom/layar/core/animation/Animation;->to:F

    .line 44
    iget v3, v0, Lcom/layar/core/animation/Animation;->from:F

    iget v4, v0, Lcom/layar/core/animation/Animation;->to:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    const/high16 v3, -0x4080

    move v1, v3

    .line 45
    .local v1, direction:F
    :goto_2
    const-string v3, "axis"

    new-instance v4, Lcom/layar/core/math/Vector3f;

    invoke-direct {v4, v5, v5, v5}, Lcom/layar/core/math/Vector3f;-><init>(FFF)V

    invoke-static {p0, v3, v4}, Lcom/layar/core/animation/AnimationParser;->optVector(Lorg/json/JSONObject;Ljava/lang/String;Lcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;

    move-result-object v3

    iput-object v3, v0, Lcom/layar/core/animation/Animation;->axis:Lcom/layar/core/math/Vector3f;

    .line 46
    iget-object v3, v0, Lcom/layar/core/animation/Animation;->axis:Lcom/layar/core/math/Vector3f;

    invoke-virtual {v3, v1}, Lcom/layar/core/math/Vector3f;->mult(F)Lcom/layar/core/math/Vector3f;

    goto :goto_1

    .end local v1           #direction:F
    :cond_3
    move v1, v6

    .line 44
    goto :goto_2

    .line 47
    :cond_4
    const-string v3, "scale"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    new-instance v0, Lcom/layar/core/animation/ScalePoiAnimation;

    .end local v0           #anim:Lcom/layar/core/animation/Animation;
    invoke-direct {v0}, Lcom/layar/core/animation/ScalePoiAnimation;-><init>()V

    .line 49
    .restart local v0       #anim:Lcom/layar/core/animation/Animation;
    const-string v3, "from"

    invoke-virtual {p0, v3, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v0, Lcom/layar/core/animation/Animation;->from:F

    .line 50
    const-string v3, "to"

    invoke-virtual {p0, v3, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v0, Lcom/layar/core/animation/Animation;->to:F

    .line 52
    const-string v3, "axis"

    new-instance v4, Lcom/layar/core/math/Vector3f;

    invoke-direct {v4, v6, v6, v6}, Lcom/layar/core/math/Vector3f;-><init>(FFF)V

    invoke-static {p0, v3, v4}, Lcom/layar/core/animation/AnimationParser;->optVector(Lorg/json/JSONObject;Ljava/lang/String;Lcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;

    move-result-object v3

    iput-object v3, v0, Lcom/layar/core/animation/Animation;->axis:Lcom/layar/core/math/Vector3f;

    goto/16 :goto_1
.end method

.method public static getAnimations(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "pJson"
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/layar/core/animation/Animation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v0, anims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/core/animation/Animation;>;"
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 65
    .local v2, json:Lorg/json/JSONArray;
    if-nez v2, :cond_0

    .line 66
    const/4 v3, 0x0

    .line 70
    :goto_0
    return-object v3

    .line 67
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v1, v3, :cond_1

    move-object v3, v0

    .line 70
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/layar/core/animation/AnimationParser;->getAnimation(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/layar/core/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getInterpolator(Lorg/json/JSONObject;)Landroid/view/animation/Interpolator;
    .locals 5
    .parameter "json"

    .prologue
    const-wide/high16 v3, 0x3ff0

    .line 86
    const-string v2, "interpolation"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, interpolator:Ljava/lang/String;
    const-string v2, "linear"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 116
    :goto_0
    return-object v2

    .line 89
    :cond_0
    const-string v2, "accelerateDecelerate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    goto :goto_0

    .line 90
    :cond_1
    const-string v2, "accelerate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    const-string v2, "interpolationParam"

    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 92
    .local v1, param:F
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    goto :goto_0

    .line 94
    .end local v1           #param:F
    :cond_2
    const-string v2, "decelerate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 95
    const-string v2, "interpolationParam"

    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 96
    .restart local v1       #param:F
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    goto :goto_0

    .line 98
    .end local v1           #param:F
    :cond_3
    const-string v2, "bounce"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v2}, Landroid/view/animation/BounceInterpolator;-><init>()V

    goto :goto_0

    .line 99
    :cond_4
    const-string v2, "cycle"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 100
    const-string v2, "interpolationParam"

    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 101
    .restart local v1       #param:F
    new-instance v2, Landroid/view/animation/CycleInterpolator;

    invoke-direct {v2, v1}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    goto :goto_0

    .line 103
    .end local v1           #param:F
    :cond_5
    const-string v2, "anticipateOvershoot"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 104
    const-string v2, "interpolationParam"

    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 105
    .restart local v1       #param:F
    new-instance v2, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v2, v1}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    goto :goto_0

    .line 107
    .end local v1           #param:F
    :cond_6
    const-string v2, "anticipate"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 108
    const-string v2, "interpolationParam"

    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 109
    .restart local v1       #param:F
    new-instance v2, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v2, v1}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    goto/16 :goto_0

    .line 111
    .end local v1           #param:F
    :cond_7
    const-string v2, "overshoot"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 112
    const-string v2, "interpolationParam"

    invoke-virtual {p0, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 113
    .restart local v1       #param:F
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    goto/16 :goto_0

    .line 116
    .end local v1           #param:F
    :cond_8
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto/16 :goto_0
.end method

.method public static getVector(Lorg/json/JSONObject;)Lcom/layar/core/math/Vector3f;
    .locals 5
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lcom/layar/core/math/Vector3f;

    .line 75
    const-string v1, "x"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    .line 76
    const-string v2, "y"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v2, v2

    .line 77
    const-string v3, "z"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    double-to-float v3, v3

    .line 74
    invoke-direct {v0, v1, v2, v3}, Lcom/layar/core/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public static optVector(Lorg/json/JSONObject;Ljava/lang/String;Lcom/layar/core/math/Vector3f;)Lcom/layar/core/math/Vector3f;
    .locals 2
    .parameter "json"
    .parameter "name"
    .parameter "defValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 82
    .local v0, vec:Lorg/json/JSONObject;
    if-nez v0, :cond_0

    move-object v1, p2

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/layar/core/animation/AnimationParser;->getVector(Lorg/json/JSONObject;)Lcom/layar/core/math/Vector3f;

    move-result-object v1

    goto :goto_0
.end method
