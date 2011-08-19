.class public final enum Lcom/zinio/mobile/android/view/issue/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/zinio/mobile/android/view/issue/f;

.field public static final enum b:Lcom/zinio/mobile/android/view/issue/f;

.field public static final enum c:Lcom/zinio/mobile/android/view/issue/f;

.field private static final synthetic d:[Lcom/zinio/mobile/android/view/issue/f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/zinio/mobile/android/view/issue/f;

    const-string v1, "PREVIOUS"

    invoke-direct {v0, v1, v2}, Lcom/zinio/mobile/android/view/issue/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zinio/mobile/android/view/issue/f;->a:Lcom/zinio/mobile/android/view/issue/f;

    .line 80
    new-instance v0, Lcom/zinio/mobile/android/view/issue/f;

    const-string v1, "CURRENT"

    invoke-direct {v0, v1, v3}, Lcom/zinio/mobile/android/view/issue/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zinio/mobile/android/view/issue/f;->b:Lcom/zinio/mobile/android/view/issue/f;

    .line 84
    new-instance v0, Lcom/zinio/mobile/android/view/issue/f;

    const-string v1, "NEXT"

    invoke-direct {v0, v1, v4}, Lcom/zinio/mobile/android/view/issue/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zinio/mobile/android/view/issue/f;->c:Lcom/zinio/mobile/android/view/issue/f;

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/zinio/mobile/android/view/issue/f;

    sget-object v1, Lcom/zinio/mobile/android/view/issue/f;->a:Lcom/zinio/mobile/android/view/issue/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zinio/mobile/android/view/issue/f;->b:Lcom/zinio/mobile/android/view/issue/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zinio/mobile/android/view/issue/f;->c:Lcom/zinio/mobile/android/view/issue/f;

    aput-object v1, v0, v4

    sput-object v0, Lcom/zinio/mobile/android/view/issue/f;->d:[Lcom/zinio/mobile/android/view/issue/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zinio/mobile/android/view/issue/f;
    .locals 1
    .parameter

    .prologue
    .line 70
    const-class v0, Lcom/zinio/mobile/android/view/issue/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/view/issue/f;

    return-object p0
.end method

.method public static values()[Lcom/zinio/mobile/android/view/issue/f;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/zinio/mobile/android/view/issue/f;->d:[Lcom/zinio/mobile/android/view/issue/f;

    invoke-virtual {v0}, [Lcom/zinio/mobile/android/view/issue/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zinio/mobile/android/view/issue/f;

    return-object v0
.end method
