.class public Landroid/animation/AnimatorInflater;
.super Ljava/lang/Object;
.source "AnimatorInflater.java"


# static fields
.field private static final SEQUENTIALLY:I = 0x1

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x4

.field private static final VALUE_TYPE_CUSTOM:I = 0x5

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Animator;
    .registers 5
    .parameter "c"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;
    .registers 12
    .parameter "c"
    .parameter "parser"
    .parameter "attrs"
    .parameter "parent"
    .parameter "sequenceOrdering"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, anim:Landroid/animation/Animator;
    const/4 v2, 0x0

    .line 105
    .local v2, childAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .local v4, depth:I
    move-object v3, v2

    .line 108
    .end local v2           #childAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .local v3, childAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_7
    :goto_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, type:I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_14

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v4, :cond_89

    :cond_14
    const/4 v5, 0x1

    if-eq v2, v5, :cond_89

    .line 110
    const/4 v5, 0x2

    if-ne v2, v5, :cond_7

    .line 114
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, name:Ljava/lang/String;
    const-string v2, "objectAnimator"

    .end local v2           #type:I
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 117
    invoke-static {p0, p2}, Landroid/animation/AnimatorInflater;->loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 132
    .local v1, anim:Landroid/animation/Animator;
    :goto_2a
    if-eqz p3, :cond_b8

    .line 133
    if-nez v3, :cond_b5

    .line 134
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .end local v3           #childAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .local v2, childAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :goto_33
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_36
    move-object v3, v2

    .line 138
    .end local v2           #childAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v3       #childAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    goto :goto_7

    .line 118
    .local v1, name:Ljava/lang/String;
    :cond_38
    const-string v2, "animator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 119
    const/4 v1, 0x0

    invoke-static {p0, p2, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .end local v1           #name:Ljava/lang/String;
    move-result-object v1

    .local v1, anim:Landroid/animation/Animator;
    goto :goto_2a

    .line 120
    .local v1, name:Ljava/lang/String;
    :cond_46
    const-string/jumbo v2, "set"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .end local v1           #name:Ljava/lang/String;
    if-eqz v1, :cond_6c

    .line 121
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 122
    .local v2, anim:Landroid/animation/Animator;
    sget-object v1, Lcom/android/internal/R$styleable;->AnimatorSet:[I

    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 124
    .local v1, a:Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 126
    .local v5, ordering:I
    move-object v0, v2

    check-cast v0, Landroid/animation/AnimatorSet;

    move-object v6, v0

    invoke-static {p0, p1, p2, v6, v5}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;

    .line 127
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    move-object v1, v2

    .line 128
    .end local v2           #anim:Landroid/animation/Animator;
    .local v1, anim:Landroid/animation/Animator;
    goto :goto_2a

    .line 129
    .end local v1           #anim:Landroid/animation/Animator;
    .end local v5           #ordering:I
    :cond_6c
    new-instance p0, Ljava/lang/RuntimeException;

    .end local p0
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown animator name: "

    .end local p3
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    .end local p1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 139
    .restart local v1       #anim:Landroid/animation/Animator;
    .local v2, type:I
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_89
    if-eqz p3, :cond_b0

    if-eqz v3, :cond_b0

    .line 140
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    .end local p0
    new-array p1, p0, [Landroid/animation/Animator;

    .line 141
    .local p1, animsArray:[Landroid/animation/Animator;
    const/4 p0, 0x0

    .line 142
    .local p0, index:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .local p2, i$:Ljava/util/Iterator;
    move v2, p0

    .end local v3           #childAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local p0           #index:I
    .local v2, index:I
    :goto_99
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_ab

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    .line 143
    .local p0, a:Landroid/animation/Animator;
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    aput-object p0, p1, v2

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_99

    .line 145
    .end local p0           #a:Landroid/animation/Animator;
    :cond_ab
    if-nez p4, :cond_b1

    .line 146
    invoke-virtual {p3, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 152
    .end local v2           #index:I
    .end local p1           #animsArray:[Landroid/animation/Animator;
    .end local p2           #i$:Ljava/util/Iterator;
    :cond_b0
    :goto_b0
    return-object v1

    .line 148
    .restart local v2       #index:I
    .restart local p1       #animsArray:[Landroid/animation/Animator;
    .restart local p2       #i$:Ljava/util/Iterator;
    :cond_b1
    invoke-virtual {p3, p1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    goto :goto_b0

    .end local v2           #index:I
    .local v3, childAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .local p0, c:Landroid/content/Context;
    .local p1, parser:Lorg/xmlpull/v1/XmlPullParser;
    .local p2, attrs:Landroid/util/AttributeSet;
    :cond_b5
    move-object v2, v3

    .end local v3           #childAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .local v2, childAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    goto/16 :goto_33

    .end local v2           #childAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v3       #childAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    :cond_b8
    move-object v2, v3

    .end local v3           #childAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v2       #childAnims:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    goto/16 :goto_36
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .registers 7
    .parameter "context"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 71
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 72
    invoke-static {p0, v1}, Landroid/animation/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/animation/Animator;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_35
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_c} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_3c

    move-result-object v3

    .line 86
    if-eqz v1, :cond_12

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_12
    return-object v3

    .line 73
    :catch_13
    move-exception v3

    move-object v0, v3

    .line 74
    .local v0, ex:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_15
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 77
    .local v2, rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 78
    throw v2
    :try_end_35
    .catchall {:try_start_15 .. :try_end_35} :catchall_35

    .line 86
    .end local v0           #ex:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2           #rnf:Landroid/content/res/Resources$NotFoundException;
    :catchall_35
    move-exception v3

    if-eqz v1, :cond_3b

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3b
    throw v3

    .line 79
    :catch_3c
    move-exception v3

    move-object v0, v3

    .line 80
    .local v0, ex:Ljava/io/IOException;
    :try_start_3e
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 83
    .restart local v2       #rnf:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 84
    throw v2
    :try_end_5e
    .catchall {:try_start_3e .. :try_end_5e} :catchall_35
.end method

.method private static loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 16
    .parameter "context"
    .parameter "attrs"
    .parameter "anim"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 185
    sget-object v0, Lcom/android/internal/R$styleable;->Animator:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 188
    .local p1, a:Landroid/content/res/TypedArray;
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v0, v0

    .line 190
    .local v0, duration:J
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v7, v2

    .line 192
    .local v7, startDelay:J
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 195
    .local v3, valueType:I
    if-nez p2, :cond_21

    .line 196
    new-instance p2, Landroid/animation/ValueAnimator;

    .end local p2
    invoke-direct {p2}, Landroid/animation/ValueAnimator;-><init>()V

    .line 198
    .restart local p2
    :cond_21
    const/4 v2, 0x0

    .line 200
    .local v2, evaluator:Landroid/animation/TypeEvaluator;
    const/4 v10, 0x5

    .line 201
    .local v10, valueFromIndex:I
    const/4 v11, 0x6

    .line 203
    .local v11, valueToIndex:I
    if-nez v3, :cond_bb

    const/4 v3, 0x1

    move v4, v3

    .line 205
    .end local v3           #valueType:I
    .local v4, getFloats:Z
    :goto_28
    invoke-virtual {p1, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 206
    .local v3, tvFrom:Landroid/util/TypedValue;
    if-eqz v3, :cond_bf

    const/4 v5, 0x1

    .line 207
    .local v5, hasFrom:Z
    :goto_2f
    if-eqz v5, :cond_c2

    iget v3, v3, Landroid/util/TypedValue;->type:I

    .line 208
    .local v3, fromType:I
    :goto_33
    invoke-virtual {p1, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    .line 209
    .local v9, tvTo:Landroid/util/TypedValue;
    if-eqz v9, :cond_c5

    const/4 v6, 0x1

    .line 210
    .local v6, hasTo:Z
    :goto_3a
    if-eqz v6, :cond_c8

    iget v9, v9, Landroid/util/TypedValue;->type:I

    .line 212
    .local v9, toType:I
    :goto_3e
    if-eqz v5, :cond_48

    const/16 v12, 0x1c

    if-lt v3, v12, :cond_48

    const/16 v12, 0x1f

    if-le v3, v12, :cond_52

    :cond_48
    if-eqz v6, :cond_5b

    const/16 v12, 0x1c

    if-lt v9, v12, :cond_5b

    const/16 v12, 0x1f

    if-gt v9, v12, :cond_5b

    .line 217
    :cond_52
    const/4 v4, 0x0

    .line 218
    new-instance v12, Landroid/animation/ArgbEvaluator;

    invoke-direct {v12}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p2, v12}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 221
    :cond_5b
    if-eqz v4, :cond_f9

    .line 224
    if-eqz v5, :cond_e1

    .line 225
    const/4 v4, 0x5

    if-ne v3, v4, :cond_cb

    .line 226
    .end local v4           #getFloats:Z
    const/4 v3, 0x0

    invoke-virtual {p1, v10, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .end local v3           #fromType:I
    move-result v3

    .line 230
    .local v3, valueFrom:F
    :goto_67
    if-eqz v6, :cond_d7

    .line 231
    const/4 v4, 0x5

    if-ne v9, v4, :cond_d1

    .line 232
    const/4 v4, 0x0

    invoke-virtual {p1, v11, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .line 236
    .local v4, valueTo:F
    :goto_71
    const/4 v5, 0x2

    new-array v5, v5, [F

    .end local v5           #hasFrom:Z
    const/4 v6, 0x0

    aput v3, v5, v6

    .end local v6           #hasTo:Z
    const/4 v3, 0x1

    aput v4, v5, v3

    .end local v3           #valueFrom:F
    invoke-virtual {p2, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 288
    .end local v4           #valueTo:F
    :cond_7d
    :goto_7d
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 289
    invoke-virtual {p2, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 291
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .end local v0           #duration:J
    move-result v0

    if-eqz v0, :cond_93

    .line 292
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 295
    :cond_93
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 296
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 300
    :cond_a3
    if-eqz v2, :cond_a8

    .line 301
    invoke-virtual {p2, v2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 304
    :cond_a8
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 306
    .local v0, resID:I
    if-lez v0, :cond_b7

    .line 307
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    .end local p0
    invoke-virtual {p2, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 309
    :cond_b7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 311
    return-object p2

    .line 203
    .end local v9           #toType:I
    .local v0, duration:J
    .local v3, valueType:I
    .restart local p0
    :cond_bb
    const/4 v3, 0x0

    move v4, v3

    goto/16 :goto_28

    .line 206
    .local v3, tvFrom:Landroid/util/TypedValue;
    .local v4, getFloats:Z
    :cond_bf
    const/4 v5, 0x0

    goto/16 :goto_2f

    .line 207
    .restart local v5       #hasFrom:Z
    :cond_c2
    const/4 v3, 0x0

    goto/16 :goto_33

    .line 209
    .local v3, fromType:I
    .local v9, tvTo:Landroid/util/TypedValue;
    :cond_c5
    const/4 v6, 0x0

    goto/16 :goto_3a

    .line 210
    .restart local v6       #hasTo:Z
    :cond_c8
    const/4 v9, 0x0

    goto/16 :goto_3e

    .line 228
    .end local v4           #getFloats:Z
    .local v9, toType:I
    :cond_cb
    const/4 v3, 0x0

    invoke-virtual {p1, v10, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .end local v3           #fromType:I
    move-result v3

    .local v3, valueFrom:F
    goto :goto_67

    .line 234
    :cond_d1
    const/4 v4, 0x0

    invoke-virtual {p1, v11, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .local v4, valueTo:F
    goto :goto_71

    .line 238
    .end local v4           #valueTo:F
    :cond_d7
    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v3, v4, v5

    .end local v5           #hasFrom:Z
    invoke-virtual {p2, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_7d

    .line 241
    .local v3, fromType:I
    .local v4, getFloats:Z
    .restart local v5       #hasFrom:Z
    :cond_e1
    const/4 v3, 0x5

    if-ne v9, v3, :cond_f3

    .line 242
    .end local v3           #fromType:I
    const/4 v3, 0x0

    invoke-virtual {p1, v11, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 246
    .local v3, valueTo:F
    :goto_e9
    const/4 v4, 0x1

    new-array v4, v4, [F

    .end local v4           #getFloats:Z
    const/4 v5, 0x0

    aput v3, v4, v5

    .end local v5           #hasFrom:Z
    invoke-virtual {p2, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_7d

    .line 244
    .end local v3           #valueTo:F
    .restart local v4       #getFloats:Z
    .restart local v5       #hasFrom:Z
    :cond_f3
    const/4 v3, 0x0

    invoke-virtual {p1, v11, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .restart local v3       #valueTo:F
    goto :goto_e9

    .line 251
    .local v3, fromType:I
    :cond_f9
    if-eqz v5, :cond_150

    .line 252
    const/4 v4, 0x5

    if-ne v3, v4, :cond_11d

    .line 253
    .end local v4           #getFloats:Z
    const/4 v3, 0x0

    invoke-virtual {p1, v10, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .end local v3           #fromType:I
    move-result v3

    float-to-int v3, v3

    .line 260
    .local v3, valueFrom:I
    :goto_104
    if-eqz v6, :cond_145

    .line 261
    const/4 v4, 0x5

    if-ne v9, v4, :cond_131

    .line 262
    const/4 v4, 0x0

    invoke-virtual {p1, v11, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    float-to-int v4, v4

    .line 269
    .local v4, valueTo:I
    :goto_10f
    const/4 v5, 0x2

    new-array v5, v5, [I

    .end local v5           #hasFrom:Z
    const/4 v6, 0x0

    aput v3, v5, v6

    .end local v6           #hasTo:Z
    const/4 v3, 0x1

    aput v4, v5, v3

    .end local v3           #valueFrom:I
    invoke-virtual {p2, v5}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_7d

    .line 254
    .end local v4           #valueTo:I
    .local v3, fromType:I
    .restart local v5       #hasFrom:Z
    .restart local v6       #hasTo:Z
    :cond_11d
    const/16 v4, 0x1c

    if-lt v3, v4, :cond_12b

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_12b

    .line 256
    const/4 v3, 0x0

    invoke-virtual {p1, v10, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .end local v3           #fromType:I
    move-result v3

    .local v3, valueFrom:I
    goto :goto_104

    .line 258
    .local v3, fromType:I
    :cond_12b
    const/4 v3, 0x0

    invoke-virtual {p1, v10, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .end local v3           #fromType:I
    move-result v3

    .local v3, valueFrom:I
    goto :goto_104

    .line 263
    :cond_131
    const/16 v4, 0x1c

    if-lt v9, v4, :cond_13f

    const/16 v4, 0x1f

    if-gt v9, v4, :cond_13f

    .line 265
    const/4 v4, 0x0

    invoke-virtual {p1, v11, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .restart local v4       #valueTo:I
    goto :goto_10f

    .line 267
    .end local v4           #valueTo:I
    :cond_13f
    const/4 v4, 0x0

    invoke-virtual {p1, v11, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .restart local v4       #valueTo:I
    goto :goto_10f

    .line 271
    .end local v4           #valueTo:I
    :cond_145
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v3, v4, v5

    .end local v5           #hasFrom:Z
    invoke-virtual {p2, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_7d

    .line 274
    .local v3, fromType:I
    .local v4, getFloats:Z
    .restart local v5       #hasFrom:Z
    :cond_150
    if-eqz v6, :cond_7d

    .line 275
    const/4 v3, 0x5

    if-ne v9, v3, :cond_166

    .line 276
    .end local v3           #fromType:I
    const/4 v3, 0x0

    invoke-virtual {p1, v11, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    .line 283
    .local v3, valueTo:I
    :goto_15b
    const/4 v4, 0x1

    new-array v4, v4, [I

    .end local v4           #getFloats:Z
    const/4 v5, 0x0

    aput v3, v4, v5

    .end local v5           #hasFrom:Z
    invoke-virtual {p2, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto/16 :goto_7d

    .line 277
    .end local v3           #valueTo:I
    .restart local v4       #getFloats:Z
    .restart local v5       #hasFrom:Z
    :cond_166
    const/16 v3, 0x1c

    if-lt v9, v3, :cond_174

    const/16 v3, 0x1f

    if-gt v9, v3, :cond_174

    .line 279
    const/4 v3, 0x0

    invoke-virtual {p1, v11, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .restart local v3       #valueTo:I
    goto :goto_15b

    .line 281
    .end local v3           #valueTo:I
    :cond_174
    const/4 v3, 0x0

    invoke-virtual {p1, v11, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .restart local v3       #valueTo:I
    goto :goto_15b
.end method

.method private static loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/animation/ObjectAnimator;
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v1, Landroid/animation/ObjectAnimator;

    invoke-direct {v1}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 161
    .local v1, anim:Landroid/animation/ObjectAnimator;
    invoke-static {p0, p1, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 163
    sget-object v3, Lcom/android/internal/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 166
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, propertyName:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    return-object v1
.end method
