.class public final Lcom/zinio/mobile/android/a/a/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zinio/mobile/android/a/a/x;


# static fields
.field private static a:Lcom/zinio/mobile/android/a/a/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1523
    new-instance v0, Lcom/zinio/mobile/android/a/a/ae;

    invoke-direct {v0}, Lcom/zinio/mobile/android/a/a/ae;-><init>()V

    sput-object v0, Lcom/zinio/mobile/android/a/a/ae;->a:Lcom/zinio/mobile/android/a/a/ae;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1527
    return-void
.end method

.method public static a()Lcom/zinio/mobile/android/a/a/ae;
    .locals 1

    .prologue
    .line 1536
    sget-object v0, Lcom/zinio/mobile/android/a/a/ae;->a:Lcom/zinio/mobile/android/a/a/ae;

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/zinio/mobile/android/a/a/w;
    .locals 1

    .prologue
    .line 1540
    sget-object v0, Lcom/zinio/mobile/android/a/a/w;->a:Lcom/zinio/mobile/android/a/a/w;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1545
    const-string v0, "{Cover}"

    return-object v0
.end method
