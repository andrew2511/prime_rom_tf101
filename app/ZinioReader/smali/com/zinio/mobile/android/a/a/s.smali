.class public final Lcom/zinio/mobile/android/a/a/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/a/a/x;


# static fields
.field private static a:Ljava/util/HashMap;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1339
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zinio/mobile/android/a/a/s;->a:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .parameter

    .prologue
    .line 1342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1343
    iput p1, p0, Lcom/zinio/mobile/android/a/a/s;->b:I

    .line 1344
    sget-object v0, Lcom/zinio/mobile/android/a/a/s;->a:Ljava/util/HashMap;

    iget v1, p0, Lcom/zinio/mobile/android/a/a/s;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1345
    return-void
.end method

.method public static a(I)Lcom/zinio/mobile/android/a/a/s;
    .locals 2
    .parameter

    .prologue
    .line 1357
    sget-object v0, Lcom/zinio/mobile/android/a/a/s;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1358
    sget-object v0, Lcom/zinio/mobile/android/a/a/s;->a:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/a/s;

    move-object v0, p0

    .line 1360
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/zinio/mobile/android/a/a/s;

    invoke-direct {v0, p0}, Lcom/zinio/mobile/android/a/a/s;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 1368
    iget v0, p0, Lcom/zinio/mobile/android/a/a/s;->b:I

    return v0
.end method

.method public final b()Lcom/zinio/mobile/android/a/a/w;
    .locals 1

    .prologue
    .line 1372
    sget-object v0, Lcom/zinio/mobile/android/a/a/w;->b:Lcom/zinio/mobile/android/a/a/w;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Image for page "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zinio/mobile/android/a/a/s;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

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
