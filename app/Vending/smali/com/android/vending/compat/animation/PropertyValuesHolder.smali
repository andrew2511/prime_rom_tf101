.class public Lcom/android/vending/compat/animation/PropertyValuesHolder;
.super Ljava/lang/Object;
.source "PropertyValuesHolder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static DOUBLE_VARIANTS:[Ljava/lang/Class;

.field private static FLOAT_VARIANTS:[Ljava/lang/Class;

.field private static INTEGER_VARIANTS:[Ljava/lang/Class;

.field private static final sDoubleEvaluator:Lcom/android/vending/compat/animation/TypeEvaluator;

.field private static final sFloatEvaluator:Lcom/android/vending/compat/animation/TypeEvaluator;

.field private static final sGetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sIntEvaluator:Lcom/android/vending/compat/animation/TypeEvaluator;

.field private static final sSetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimatedValue:Ljava/lang/Object;

.field private mEvaluator:Lcom/android/vending/compat/animation/TypeEvaluator;

.field private mGetter:Ljava/lang/reflect/Method;

.field private mKeyframeSet:Lcom/android/vending/compat/animation/KeyframeSet;

.field private mPropertyName:Ljava/lang/String;

.field private mSetter:Ljava/lang/reflect/Method;

.field private mTmpValueArray:[Ljava/lang/Object;

.field private mValueType:Ljava/lang/Class;

.field private propertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    new-instance v0, Lcom/android/vending/compat/animation/IntEvaluator;

    invoke-direct {v0}, Lcom/android/vending/compat/animation/IntEvaluator;-><init>()V

    sput-object v0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->sIntEvaluator:Lcom/android/vending/compat/animation/TypeEvaluator;

    .line 60
    new-instance v0, Lcom/android/vending/compat/animation/FloatEvaluator;

    invoke-direct {v0}, Lcom/android/vending/compat/animation/FloatEvaluator;-><init>()V

    sput-object v0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->sFloatEvaluator:Lcom/android/vending/compat/animation/TypeEvaluator;

    .line 61
    new-instance v0, Lcom/android/vending/compat/animation/DoubleEvaluator;

    invoke-direct {v0}, Lcom/android/vending/compat/animation/DoubleEvaluator;-><init>()V

    sput-object v0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->sDoubleEvaluator:Lcom/android/vending/compat/animation/TypeEvaluator;

    .line 70
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->FLOAT_VARIANTS:[Ljava/lang/Class;

    .line 72
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Double;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->INTEGER_VARIANTS:[Ljava/lang/Class;

    .line 74
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->DOUBLE_VARIANTS:[Ljava/lang/Class;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->sSetterPropertyMap:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->sGetterPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "propertyName"

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    .line 44
    iput-object v0, p0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->mGetter:Ljava/lang/reflect/Method;

    .line 55
    iput-object v0, p0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/android/vending/compat/animation/KeyframeSet;

    .line 87
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->propertyMapLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 90
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    .line 112
    iput-object p1, p0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public static varargs ofFloat(Ljava/lang/String;[F)Lcom/android/vending/compat/animation/PropertyValuesHolder;
    .locals 1
    .parameter "propertyName"
    .parameter "values"

    .prologue
    .line 136
    new-instance v0, Lcom/android/vending/compat/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Lcom/android/vending/compat/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, pvh:Lcom/android/vending/compat/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Lcom/android/vending/compat/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 138
    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/String;[I)Lcom/android/vending/compat/animation/PropertyValuesHolder;
    .locals 1
    .parameter "propertyName"
    .parameter "values"

    .prologue
    .line 123
    new-instance v0, Lcom/android/vending/compat/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Lcom/android/vending/compat/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, pvh:Lcom/android/vending/compat/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Lcom/android/vending/compat/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 125
    return-object v0
.end method

.method public static varargs ofKeyframe(Ljava/lang/String;[Lcom/android/vending/compat/animation/Keyframe;)Lcom/android/vending/compat/animation/PropertyValuesHolder;
    .locals 1
    .parameter "propertyName"
    .parameter "values"

    .prologue
    .line 208
    new-instance v0, Lcom/android/vending/compat/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Lcom/android/vending/compat/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, pvh:Lcom/android/vending/compat/animation/PropertyValuesHolder;
    invoke-virtual {v0, p1}, Lcom/android/vending/compat/animation/PropertyValuesHolder;->setKeyframes([Lcom/android/vending/compat/animation/Keyframe;)V

    .line 210
    return-object v0
.end method


# virtual methods
.method calculateValue(F)Ljava/lang/Object;
    .locals 2
    .parameter "fraction"

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/android/vending/compat/animation/KeyframeSet;

    iget-object v1, p0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->mEvaluator:Lcom/android/vending/compat/animation/TypeEvaluator;

    invoke-virtual {v0, p1, v1}, Lcom/android/vending/compat/animation/KeyframeSet;->getValue(FLcom/android/vending/compat/animation/TypeEvaluator;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->mAnimatedValue:Ljava/lang/Object;

    .line 581
    iget-object v0, p0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->mAnimatedValue:Ljava/lang/Object;

    return-object v0
.end method

.method public clone()Lcom/android/vending/compat/animation/PropertyValuesHolder;
    .locals 5

    .prologue
    .line 518
    iget-object v4, p0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/android/vending/compat/animation/KeyframeSet;

    iget-object v1, v4, Lcom/android/vending/compat/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    .line 519
    .local v1, keyframes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/compat/animation/Keyframe;>;"
    iget-object v4, p0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/android/vending/compat/animation/KeyframeSet;

    iget-object v4, v4, Lcom/android/vending/compat/animation/KeyframeSet;->mKeyframes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 520
    .local v3, numKeyframes:I
    new-array v2, v3, [Lcom/android/vending/compat/animation/Keyframe;

    .line 521
    .local v2, newKeyframes:[Lcom/android/vending/compat/animation/Keyframe;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 522
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/vending/compat/animation/Keyframe;

    invoke-virtual {v4}, Lcom/android/vending/compat/animation/Keyframe;->clone()Lcom/android/vending/compat/animation/Keyframe;

    move-result-object v4

    aput-object v4, v2, v0

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 524
    :cond_0
    iget-object v4, p0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/android/vending/compat/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Lcom/android/vending/compat/animation/Keyframe;)Lcom/android/vending/compat/animation/PropertyValuesHolder;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/android/vending/compat/animation/PropertyValuesHolder;->clone()Lcom/android/vending/compat/animation/PropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method getAnimatedValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->mAnimatedValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method init()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->mEvaluator:Lcom/android/vending/compat/animation/TypeEvaluator;

    if-nez v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_2

    :cond_0
    sget-object v0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->sIntEvaluator:Lcom/android/vending/compat/animation/TypeEvaluator;

    :goto_0
    iput-object v0, p0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->mEvaluator:Lcom/android/vending/compat/animation/TypeEvaluator;

    .line 556
    :cond_1
    return-void

    .line 552
    :cond_2
    iget-object v0, p0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_4

    :cond_3
    sget-object v0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->sDoubleEvaluator:Lcom/android/vending/compat/animation/TypeEvaluator;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->sFloatEvaluator:Lcom/android/vending/compat/animation/TypeEvaluator;

    goto :goto_0
.end method

.method public varargs setFloatValues([F)V
    .locals 1
    .parameter "values"

    .prologue
    .line 247
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 248
    invoke-static {p1}, Lcom/android/vending/compat/animation/KeyframeSet;->ofFloat([F)Lcom/android/vending/compat/animation/KeyframeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/android/vending/compat/animation/KeyframeSet;

    .line 249
    return-void
.end method

.method public varargs setIntValues([I)V
    .locals 1
    .parameter "values"

    .prologue
    .line 228
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 229
    invoke-static {p1}, Lcom/android/vending/compat/animation/KeyframeSet;->ofInt([I)Lcom/android/vending/compat/animation/KeyframeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/android/vending/compat/animation/KeyframeSet;

    .line 230
    return-void
.end method

.method public varargs setKeyframes([Lcom/android/vending/compat/animation/Keyframe;)V
    .locals 4
    .parameter "values"

    .prologue
    .line 295
    array-length v2, p1

    .line 296
    .local v2, numKeyframes:I
    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v1, v3, [Lcom/android/vending/compat/animation/Keyframe;

    .line 297
    .local v1, keyframes:[Lcom/android/vending/compat/animation/Keyframe;
    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lcom/android/vending/compat/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 298
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 299
    aget-object v3, p1, v0

    aput-object v3, v1, v0

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_0
    new-instance v3, Lcom/android/vending/compat/animation/KeyframeSet;

    invoke-direct {v3, v1}, Lcom/android/vending/compat/animation/KeyframeSet;-><init>([Lcom/android/vending/compat/animation/Keyframe;)V

    iput-object v3, p0, Lcom/android/vending/compat/animation/PropertyValuesHolder;->mKeyframeSet:Lcom/android/vending/compat/animation/KeyframeSet;

    .line 302
    return-void
.end method
