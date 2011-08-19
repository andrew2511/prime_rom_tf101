.class public abstract enum Lcom/zinio/mobile/android/a/b/v;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/a/b/k;


# static fields
.field public static final enum a:Lcom/zinio/mobile/android/a/b/v;

.field public static final enum b:Lcom/zinio/mobile/android/a/b/v;

.field private static enum c:Lcom/zinio/mobile/android/a/b/v;

.field private static final synthetic d:[Lcom/zinio/mobile/android/a/b/v;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/zinio/mobile/android/a/b/p;

    const-string v1, "ALL"

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/a/b/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zinio/mobile/android/a/b/v;->a:Lcom/zinio/mobile/android/a/b/v;

    .line 55
    new-instance v0, Lcom/zinio/mobile/android/a/b/o;

    const-string v1, "DOWNLOADED"

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/a/b/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zinio/mobile/android/a/b/v;->c:Lcom/zinio/mobile/android/a/b/v;

    .line 74
    new-instance v0, Lcom/zinio/mobile/android/a/b/n;

    const-string v1, "DOWNLOAD_STARTED"

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/a/b/n;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zinio/mobile/android/a/b/v;->b:Lcom/zinio/mobile/android/a/b/v;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/zinio/mobile/android/a/b/v;

    const/4 v1, 0x0

    sget-object v2, Lcom/zinio/mobile/android/a/b/v;->a:Lcom/zinio/mobile/android/a/b/v;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/zinio/mobile/android/a/b/v;->c:Lcom/zinio/mobile/android/a/b/v;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/zinio/mobile/android/a/b/v;->b:Lcom/zinio/mobile/android/a/b/v;

    aput-object v2, v0, v1

    sput-object v0, Lcom/zinio/mobile/android/a/b/v;->d:[Lcom/zinio/mobile/android/a/b/v;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zinio/mobile/android/a/b/v;-><init>(Ljava/lang/String;IB)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zinio/mobile/android/a/b/v;
    .locals 1
    .parameter

    .prologue
    .line 42
    const-class v0, Lcom/zinio/mobile/android/a/b/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/b/v;

    return-object p0
.end method

.method public static values()[Lcom/zinio/mobile/android/a/b/v;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/zinio/mobile/android/a/b/v;->d:[Lcom/zinio/mobile/android/a/b/v;

    invoke-virtual {v0}, [Lcom/zinio/mobile/android/a/b/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zinio/mobile/android/a/b/v;

    return-object v0
.end method
