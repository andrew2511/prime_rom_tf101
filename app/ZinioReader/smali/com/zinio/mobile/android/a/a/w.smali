.class public final enum Lcom/zinio/mobile/android/a/a/w;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/zinio/mobile/android/a/a/w;

.field public static final enum b:Lcom/zinio/mobile/android/a/a/w;

.field public static final enum c:Lcom/zinio/mobile/android/a/a/w;

.field public static final enum d:Lcom/zinio/mobile/android/a/a/w;

.field public static final enum e:Lcom/zinio/mobile/android/a/a/w;

.field private static final synthetic f:[Lcom/zinio/mobile/android/a/a/w;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1292
    new-instance v0, Lcom/zinio/mobile/android/a/a/w;

    const-string v1, "COVER"

    invoke-direct {v0, v1, v2}, Lcom/zinio/mobile/android/a/a/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zinio/mobile/android/a/a/w;->a:Lcom/zinio/mobile/android/a/a/w;

    .line 1299
    new-instance v0, Lcom/zinio/mobile/android/a/a/w;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v3}, Lcom/zinio/mobile/android/a/a/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zinio/mobile/android/a/a/w;->b:Lcom/zinio/mobile/android/a/a/w;

    .line 1307
    new-instance v0, Lcom/zinio/mobile/android/a/a/w;

    const-string v1, "THUMBNAIL"

    invoke-direct {v0, v1, v4}, Lcom/zinio/mobile/android/a/a/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zinio/mobile/android/a/a/w;->c:Lcom/zinio/mobile/android/a/a/w;

    .line 1313
    new-instance v0, Lcom/zinio/mobile/android/a/a/w;

    const-string v1, "ARTICLE"

    invoke-direct {v0, v1, v5}, Lcom/zinio/mobile/android/a/a/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zinio/mobile/android/a/a/w;->d:Lcom/zinio/mobile/android/a/a/w;

    .line 1318
    new-instance v0, Lcom/zinio/mobile/android/a/a/w;

    const-string v1, "EXTERNAL_RESOURCE"

    invoke-direct {v0, v1, v6}, Lcom/zinio/mobile/android/a/a/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zinio/mobile/android/a/a/w;->e:Lcom/zinio/mobile/android/a/a/w;

    .line 1287
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/zinio/mobile/android/a/a/w;

    sget-object v1, Lcom/zinio/mobile/android/a/a/w;->a:Lcom/zinio/mobile/android/a/a/w;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zinio/mobile/android/a/a/w;->b:Lcom/zinio/mobile/android/a/a/w;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zinio/mobile/android/a/a/w;->c:Lcom/zinio/mobile/android/a/a/w;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zinio/mobile/android/a/a/w;->d:Lcom/zinio/mobile/android/a/a/w;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zinio/mobile/android/a/a/w;->e:Lcom/zinio/mobile/android/a/a/w;

    aput-object v1, v0, v6

    sput-object v0, Lcom/zinio/mobile/android/a/a/w;->f:[Lcom/zinio/mobile/android/a/a/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1287
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zinio/mobile/android/a/a/w;
    .locals 1
    .parameter

    .prologue
    .line 1287
    const-class v0, Lcom/zinio/mobile/android/a/a/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/a/a/w;

    return-object p0
.end method

.method public static values()[Lcom/zinio/mobile/android/a/a/w;
    .locals 1

    .prologue
    .line 1287
    sget-object v0, Lcom/zinio/mobile/android/a/a/w;->f:[Lcom/zinio/mobile/android/a/a/w;

    invoke-virtual {v0}, [Lcom/zinio/mobile/android/a/a/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zinio/mobile/android/a/a/w;

    return-object v0
.end method
