.class public final Lcom/zinio/mobile/android/a/a/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/a/a/x;


# static fields
.field private static a:Ljava/util/HashMap;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1478
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zinio/mobile/android/a/a/u;->a:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1482
    iput-object p1, p0, Lcom/zinio/mobile/android/a/a/u;->b:Ljava/lang/String;

    .line 1483
    sget-object v0, Lcom/zinio/mobile/android/a/a/u;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/u;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/zinio/mobile/android/a/a/u;
    .locals 1
    .parameter

    .prologue
    .line 1495
    sget-object v0, Lcom/zinio/mobile/android/a/a/u;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1496
    sget-object v0, Lcom/zinio/mobile/android/a/a/u;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/a/u;

    move-object v0, p0

    .line 1498
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/zinio/mobile/android/a/a/u;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/a/a/u;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/zinio/mobile/android/a/a/u;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/zinio/mobile/android/a/a/w;
    .locals 1

    .prologue
    .line 1509
    sget-object v0, Lcom/zinio/mobile/android/a/a/w;->e:Lcom/zinio/mobile/android/a/a/w;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{External resource "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zinio/mobile/android/a/a/u;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
