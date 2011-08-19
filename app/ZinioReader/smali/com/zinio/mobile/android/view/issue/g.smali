.class public final enum Lcom/zinio/mobile/android/view/issue/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/zinio/mobile/android/view/issue/g;

.field public static final enum b:Lcom/zinio/mobile/android/view/issue/g;

.field public static final enum c:Lcom/zinio/mobile/android/view/issue/g;

.field public static final enum d:Lcom/zinio/mobile/android/view/issue/g;

.field public static final enum e:Lcom/zinio/mobile/android/view/issue/g;

.field private static final synthetic f:[Lcom/zinio/mobile/android/view/issue/g;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    new-instance v0, Lcom/zinio/mobile/android/view/issue/g;

    const-string v1, "IDLE_FIT"

    invoke-direct {v0, v1, v2}, Lcom/zinio/mobile/android/view/issue/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zinio/mobile/android/view/issue/g;->a:Lcom/zinio/mobile/android/view/issue/g;

    .line 101
    new-instance v0, Lcom/zinio/mobile/android/view/issue/g;

    const-string v1, "IDLE_ZOOMED"

    invoke-direct {v0, v1, v3}, Lcom/zinio/mobile/android/view/issue/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zinio/mobile/android/view/issue/g;->b:Lcom/zinio/mobile/android/view/issue/g;

    .line 106
    new-instance v0, Lcom/zinio/mobile/android/view/issue/g;

    const-string v1, "NAVIGATING"

    invoke-direct {v0, v1, v4}, Lcom/zinio/mobile/android/view/issue/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zinio/mobile/android/view/issue/g;->c:Lcom/zinio/mobile/android/view/issue/g;

    .line 111
    new-instance v0, Lcom/zinio/mobile/android/view/issue/g;

    const-string v1, "ZOOMING"

    invoke-direct {v0, v1, v5}, Lcom/zinio/mobile/android/view/issue/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zinio/mobile/android/view/issue/g;->d:Lcom/zinio/mobile/android/view/issue/g;

    .line 116
    new-instance v0, Lcom/zinio/mobile/android/view/issue/g;

    const-string v1, "PANNING"

    invoke-direct {v0, v1, v6}, Lcom/zinio/mobile/android/view/issue/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zinio/mobile/android/view/issue/g;->e:Lcom/zinio/mobile/android/view/issue/g;

    .line 91
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/zinio/mobile/android/view/issue/g;

    sget-object v1, Lcom/zinio/mobile/android/view/issue/g;->a:Lcom/zinio/mobile/android/view/issue/g;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zinio/mobile/android/view/issue/g;->b:Lcom/zinio/mobile/android/view/issue/g;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zinio/mobile/android/view/issue/g;->c:Lcom/zinio/mobile/android/view/issue/g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zinio/mobile/android/view/issue/g;->d:Lcom/zinio/mobile/android/view/issue/g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zinio/mobile/android/view/issue/g;->e:Lcom/zinio/mobile/android/view/issue/g;

    aput-object v1, v0, v6

    sput-object v0, Lcom/zinio/mobile/android/view/issue/g;->f:[Lcom/zinio/mobile/android/view/issue/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zinio/mobile/android/view/issue/g;
    .locals 1
    .parameter

    .prologue
    .line 91
    const-class v0, Lcom/zinio/mobile/android/view/issue/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/view/issue/g;

    return-object p0
.end method

.method public static values()[Lcom/zinio/mobile/android/view/issue/g;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/zinio/mobile/android/view/issue/g;->f:[Lcom/zinio/mobile/android/view/issue/g;

    invoke-virtual {v0}, [Lcom/zinio/mobile/android/view/issue/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zinio/mobile/android/view/issue/g;

    return-object v0
.end method
