.class public Lcom/google/android/gm/template/Constant;
.super Lcom/google/android/gm/template/Expression;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/template/Constant$1;,
        Lcom/google/android/gm/template/Constant$Type;
    }
.end annotation


# static fields
.field public static final FALSE:Lcom/google/android/gm/template/Constant;

.field public static final NULL:Lcom/google/android/gm/template/Constant;

.field public static final TRUE:Lcom/google/android/gm/template/Constant;

.field private static final sFloatPool:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gm/template/Constant;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIntegerPool:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gm/template/Constant;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStringPool:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/google/android/gm/template/Constant;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHashCode:I

.field final mType:Lcom/google/android/gm/template/Constant$Type;

.field final mValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/template/Constant;->sFloatPool:Ljava/util/WeakHashMap;

    .line 27
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/template/Constant;->sIntegerPool:Ljava/util/WeakHashMap;

    .line 29
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/template/Constant;->sStringPool:Ljava/util/WeakHashMap;

    .line 106
    new-instance v0, Lcom/google/android/gm/template/Constant;

    sget-object v1, Lcom/google/android/gm/template/Constant$Type;->NULL:Lcom/google/android/gm/template/Constant$Type;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/template/Constant;-><init>(Lcom/google/android/gm/template/Constant$Type;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gm/template/Constant;->NULL:Lcom/google/android/gm/template/Constant;

    .line 111
    new-instance v0, Lcom/google/android/gm/template/Constant;

    sget-object v1, Lcom/google/android/gm/template/Constant$Type;->BOOLEAN:Lcom/google/android/gm/template/Constant$Type;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/template/Constant;-><init>(Lcom/google/android/gm/template/Constant$Type;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gm/template/Constant;->TRUE:Lcom/google/android/gm/template/Constant;

    .line 116
    new-instance v0, Lcom/google/android/gm/template/Constant;

    sget-object v1, Lcom/google/android/gm/template/Constant$Type;->BOOLEAN:Lcom/google/android/gm/template/Constant$Type;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/template/Constant;-><init>(Lcom/google/android/gm/template/Constant$Type;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gm/template/Constant;->FALSE:Lcom/google/android/gm/template/Constant;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gm/template/Constant$Type;Ljava/lang/Object;)V
    .locals 1
    .parameter "type"
    .parameter "value"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/google/android/gm/template/Expression;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gm/template/Constant;->mHashCode:I

    .line 128
    iput-object p1, p0, Lcom/google/android/gm/template/Constant;->mType:Lcom/google/android/gm/template/Constant$Type;

    .line 129
    iput-object p2, p0, Lcom/google/android/gm/template/Constant;->mValue:Ljava/lang/Object;

    .line 130
    return-void
.end method

.method private static final get(Lcom/google/android/gm/template/Constant$Type;Ljava/lang/Object;)Lcom/google/android/gm/template/Constant;
    .locals 5
    .parameter "type"
    .parameter "value"

    .prologue
    .line 78
    sget-object v2, Lcom/google/android/gm/template/Constant$1;->$SwitchMap$com$google$android$gm$template$Constant$Type:[I

    invoke-virtual {p0}, Lcom/google/android/gm/template/Constant$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 90
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid constant type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :pswitch_0
    sget-object v1, Lcom/google/android/gm/template/Constant;->sFloatPool:Ljava/util/WeakHashMap;

    .line 93
    .local v1, pool:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Ljava/lang/Object;Lcom/google/android/gm/template/Constant;>;"
    :goto_0
    monitor-enter v1

    .line 94
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/template/Constant;

    .line 95
    .local v0, constant:Lcom/google/android/gm/template/Constant;
    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/google/android/gm/template/Constant;

    .end local v0           #constant:Lcom/google/android/gm/template/Constant;
    invoke-direct {v0, p0, p1}, Lcom/google/android/gm/template/Constant;-><init>(Lcom/google/android/gm/template/Constant$Type;Ljava/lang/Object;)V

    .line 97
    .restart local v0       #constant:Lcom/google/android/gm/template/Constant;
    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 83
    .end local v0           #constant:Lcom/google/android/gm/template/Constant;
    .end local v1           #pool:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Ljava/lang/Object;Lcom/google/android/gm/template/Constant;>;"
    :pswitch_1
    sget-object v1, Lcom/google/android/gm/template/Constant;->sIntegerPool:Ljava/util/WeakHashMap;

    .line 84
    .restart local v1       #pool:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Ljava/lang/Object;Lcom/google/android/gm/template/Constant;>;"
    goto :goto_0

    .line 86
    .end local v1           #pool:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Ljava/lang/Object;Lcom/google/android/gm/template/Constant;>;"
    :pswitch_2
    sget-object v1, Lcom/google/android/gm/template/Constant;->sStringPool:Ljava/util/WeakHashMap;

    .line 87
    .restart local v1       #pool:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Ljava/lang/Object;Lcom/google/android/gm/template/Constant;>;"
    goto :goto_0

    .line 100
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static final getConstant(D)Lcom/google/android/gm/template/Constant;
    .locals 2
    .parameter "value"

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/gm/template/Constant$Type;->FLOAT:Lcom/google/android/gm/template/Constant$Type;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Constant;->get(Lcom/google/android/gm/template/Constant$Type;Ljava/lang/Object;)Lcom/google/android/gm/template/Constant;

    move-result-object v0

    return-object v0
.end method

.method public static final getConstant(J)Lcom/google/android/gm/template/Constant;
    .locals 2
    .parameter "value"

    .prologue
    .line 49
    sget-object v0, Lcom/google/android/gm/template/Constant$Type;->INTEGER:Lcom/google/android/gm/template/Constant$Type;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Constant;->get(Lcom/google/android/gm/template/Constant$Type;Ljava/lang/Object;)Lcom/google/android/gm/template/Constant;

    move-result-object v0

    return-object v0
.end method

.method public static final getConstant(Ljava/lang/String;)Lcom/google/android/gm/template/Constant;
    .locals 2
    .parameter "value"

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String constant must have non-null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    sget-object v0, Lcom/google/android/gm/template/Constant$Type;->STRING:Lcom/google/android/gm/template/Constant$Type;

    invoke-static {v0, p0}, Lcom/google/android/gm/template/Constant;->get(Lcom/google/android/gm/template/Constant$Type;Ljava/lang/Object;)Lcom/google/android/gm/template/Constant;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 165
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 172
    :goto_0
    return v2

    .line 167
    :cond_0
    if-eqz p1, :cond_3

    instance-of v2, p1, Lcom/google/android/gm/template/Constant;

    if-eqz v2, :cond_3

    .line 168
    move-object v0, p1

    check-cast v0, Lcom/google/android/gm/template/Constant;

    move-object v1, v0

    .line 169
    .local v1, c:Lcom/google/android/gm/template/Constant;
    iget-object v2, p0, Lcom/google/android/gm/template/Constant;->mType:Lcom/google/android/gm/template/Constant$Type;

    iget-object v3, v1, Lcom/google/android/gm/template/Constant;->mType:Lcom/google/android/gm/template/Constant$Type;

    invoke-virtual {v2, v3}, Lcom/google/android/gm/template/Constant$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gm/template/Constant;->mValue:Ljava/lang/Object;

    iget-object v3, v1, Lcom/google/android/gm/template/Constant;->mValue:Ljava/lang/Object;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/android/gm/template/Constant;->mValue:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gm/template/Constant;->mValue:Ljava/lang/Object;

    iget-object v3, v1, Lcom/google/android/gm/template/Constant;->mValue:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    .end local v1           #c:Lcom/google/android/gm/template/Constant;
    :cond_3
    move v2, v4

    .line 172
    goto :goto_0
.end method

.method public evaluate(Lcom/google/android/gm/template/EvalContext;)Ljava/lang/Object;
    .locals 1
    .parameter "context"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/gm/template/Constant;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 177
    iget v1, p0, Lcom/google/android/gm/template/Constant;->mHashCode:I

    if-nez v1, :cond_0

    .line 178
    const/16 v0, 0x11

    .line 179
    .local v0, hashCode:I
    mul-int/lit8 v1, v0, 0x25

    iget-object v1, p0, Lcom/google/android/gm/template/Constant;->mType:Lcom/google/android/gm/template/Constant$Type;

    invoke-virtual {v1}, Lcom/google/android/gm/template/Constant$Type;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x275

    .line 180
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/android/gm/template/Constant;->mValue:Ljava/lang/Object;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    add-int v0, v1, v2

    .line 181
    iput v0, p0, Lcom/google/android/gm/template/Constant;->mHashCode:I

    .line 183
    .end local v0           #hashCode:I
    :cond_0
    iget v1, p0, Lcom/google/android/gm/template/Constant;->mHashCode:I

    return v1

    .line 180
    .restart local v0       #hashCode:I
    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/template/Constant;->mValue:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/gm/template/Constant;->mValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/template/Constant;->mValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
