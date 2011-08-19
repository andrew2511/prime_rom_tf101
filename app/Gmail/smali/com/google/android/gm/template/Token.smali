.class public Lcom/google/android/gm/template/Token;
.super Ljava/lang/Object;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/template/Token$1;,
        Lcom/google/android/gm/template/Token$Type;
    }
.end annotation


# static fields
.field private static final sNumberPool:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/template/Token;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStringPool:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/template/Token;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSymbolPool:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/template/Token;",
            ">;"
        }
    .end annotation
.end field

.field private static final sWordPool:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/template/Token;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHashCode:I

.field final mType:Lcom/google/android/gm/template/Token$Type;

.field final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/template/Token;->sNumberPool:Ljava/util/WeakHashMap;

    .line 24
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/template/Token;->sStringPool:Ljava/util/WeakHashMap;

    .line 25
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/template/Token;->sSymbolPool:Ljava/util/WeakHashMap;

    .line 26
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/template/Token;->sWordPool:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "value"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gm/template/Token;->mHashCode:I

    .line 75
    iput-object p1, p0, Lcom/google/android/gm/template/Token;->mType:Lcom/google/android/gm/template/Token$Type;

    .line 76
    iput-object p2, p0, Lcom/google/android/gm/template/Token;->mValue:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public static final getToken(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)Lcom/google/android/gm/template/Token;
    .locals 5
    .parameter "type"
    .parameter "value"

    .prologue
    .line 39
    sget-object v2, Lcom/google/android/gm/template/Token$1;->$SwitchMap$com$google$android$gm$template$Token$Type:[I

    invoke-virtual {p0}, Lcom/google/android/gm/template/Token$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 53
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid token type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 41
    :pswitch_0
    sget-object v0, Lcom/google/android/gm/template/Token;->sNumberPool:Ljava/util/WeakHashMap;

    .line 56
    .local v0, pool:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Ljava/lang/String;Lcom/google/android/gm/template/Token;>;"
    :goto_0
    monitor-enter v0

    .line 57
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/template/Token;

    .line 58
    .local v1, token:Lcom/google/android/gm/template/Token;
    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/google/android/gm/template/Token;

    .end local v1           #token:Lcom/google/android/gm/template/Token;
    invoke-direct {v1, p0, p1}, Lcom/google/android/gm/template/Token;-><init>(Lcom/google/android/gm/template/Token$Type;Ljava/lang/String;)V

    .line 60
    .restart local v1       #token:Lcom/google/android/gm/template/Token;
    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 44
    .end local v0           #pool:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Ljava/lang/String;Lcom/google/android/gm/template/Token;>;"
    .end local v1           #token:Lcom/google/android/gm/template/Token;
    :pswitch_1
    sget-object v0, Lcom/google/android/gm/template/Token;->sStringPool:Ljava/util/WeakHashMap;

    .line 45
    .restart local v0       #pool:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Ljava/lang/String;Lcom/google/android/gm/template/Token;>;"
    goto :goto_0

    .line 47
    .end local v0           #pool:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Ljava/lang/String;Lcom/google/android/gm/template/Token;>;"
    :pswitch_2
    sget-object v0, Lcom/google/android/gm/template/Token;->sSymbolPool:Ljava/util/WeakHashMap;

    .line 48
    .restart local v0       #pool:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Ljava/lang/String;Lcom/google/android/gm/template/Token;>;"
    goto :goto_0

    .line 50
    .end local v0           #pool:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Ljava/lang/String;Lcom/google/android/gm/template/Token;>;"
    :pswitch_3
    sget-object v0, Lcom/google/android/gm/template/Token;->sWordPool:Ljava/util/WeakHashMap;

    .line 51
    .restart local v0       #pool:Ljava/util/WeakHashMap;,"Ljava/util/WeakHashMap<Ljava/lang/String;Lcom/google/android/gm/template/Token;>;"
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 81
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 87
    :goto_0
    return v2

    .line 83
    :cond_0
    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/google/android/gm/template/Token;

    if-eqz v2, :cond_2

    .line 84
    move-object v0, p1

    check-cast v0, Lcom/google/android/gm/template/Token;

    move-object v1, v0

    .line 85
    .local v1, t:Lcom/google/android/gm/template/Token;
    iget-object v2, p0, Lcom/google/android/gm/template/Token;->mType:Lcom/google/android/gm/template/Token$Type;

    iget-object v3, v1, Lcom/google/android/gm/template/Token;->mType:Lcom/google/android/gm/template/Token$Type;

    invoke-virtual {v2, v3}, Lcom/google/android/gm/template/Token$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gm/template/Token;->mValue:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gm/template/Token;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0

    .end local v1           #t:Lcom/google/android/gm/template/Token;
    :cond_2
    move v2, v4

    .line 87
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 93
    iget v1, p0, Lcom/google/android/gm/template/Token;->mHashCode:I

    if-nez v1, :cond_0

    .line 94
    const/16 v0, 0x11

    .line 95
    .local v0, hashCode:I
    mul-int/lit8 v1, v0, 0x25

    iget-object v1, p0, Lcom/google/android/gm/template/Token;->mType:Lcom/google/android/gm/template/Token$Type;

    invoke-virtual {v1}, Lcom/google/android/gm/template/Token$Type;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x275

    .line 96
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/android/gm/template/Token;->mValue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 97
    iput v0, p0, Lcom/google/android/gm/template/Token;->mHashCode:I

    .line 99
    .end local v0           #hashCode:I
    :cond_0
    iget v1, p0, Lcom/google/android/gm/template/Token;->mHashCode:I

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gm/template/Token;->mType:Lcom/google/android/gm/template/Token$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/template/Token;->mValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
