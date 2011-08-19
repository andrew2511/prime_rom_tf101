.class public Lcom/google/android/gm/template/Variable;
.super Lcom/google/android/gm/template/Expression;
.source "Variable.java"


# static fields
.field private static final sPool:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/template/Variable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/template/Variable;->sPool:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/gm/template/Expression;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/gm/template/Variable;->mName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "context"
    .parameter "name"

    .prologue
    .line 45
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gm/template/EvalContext;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getVariable(Ljava/lang/String;)Lcom/google/android/gm/template/Variable;
    .locals 3
    .parameter "name"

    .prologue
    .line 15
    sget-object v1, Lcom/google/android/gm/template/Variable;->sPool:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 16
    :try_start_0
    sget-object v2, Lcom/google/android/gm/template/Variable;->sPool:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/template/Variable;

    .line 17
    .local v0, variable:Lcom/google/android/gm/template/Variable;
    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/google/android/gm/template/Variable;

    .end local v0           #variable:Lcom/google/android/gm/template/Variable;
    invoke-direct {v0, p0}, Lcom/google/android/gm/template/Variable;-><init>(Ljava/lang/String;)V

    .line 19
    .restart local v0       #variable:Lcom/google/android/gm/template/Variable;
    sget-object v2, Lcom/google/android/gm/template/Variable;->sPool:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_0
    monitor-exit v1

    return-object v0

    .line 22
    .end local v0           #variable:Lcom/google/android/gm/template/Variable;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public evaluate(Lcom/google/android/gm/template/EvalContext;)Ljava/lang/Object;
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/gm/template/Variable;->mName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/template/Variable;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
