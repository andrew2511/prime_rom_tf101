.class public final Lcom/zinio/mobile/android/a/a/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/a/a/x;


# static fields
.field private static a:Ljava/util/HashMap;


# instance fields
.field private final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1433
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zinio/mobile/android/a/a/z;->a:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 3
    .parameter

    .prologue
    .line 1436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1437
    iput-wide p1, p0, Lcom/zinio/mobile/android/a/a/z;->b:J

    .line 1438
    sget-object v0, Lcom/zinio/mobile/android/a/a/z;->a:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/zinio/mobile/android/a/a/z;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    return-void
.end method

.method public static a(J)Lcom/zinio/mobile/android/a/a/z;
    .locals 2
    .parameter

    .prologue
    .line 1450
    sget-object v0, Lcom/zinio/mobile/android/a/a/z;->a:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1451
    sget-object v0, Lcom/zinio/mobile/android/a/a/z;->a:Ljava/util/HashMap;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/a/z;

    move-object v0, p0

    .line 1453
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/zinio/mobile/android/a/a/z;

    invoke-direct {v0, p0, p1}, Lcom/zinio/mobile/android/a/a/z;-><init>(J)V

    goto :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 1460
    iget-wide v0, p0, Lcom/zinio/mobile/android/a/a/z;->b:J

    return-wide v0
.end method

.method public final b()Lcom/zinio/mobile/android/a/a/w;
    .locals 1

    .prologue
    .line 1464
    sget-object v0, Lcom/zinio/mobile/android/a/a/w;->d:Lcom/zinio/mobile/android/a/a/w;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Article "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/zinio/mobile/android/a/a/z;->b:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

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
