.class public final enum Lcom/zinio/mobile/android/view/dialogs/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/zinio/mobile/android/view/dialogs/s;

.field public static final enum b:Lcom/zinio/mobile/android/view/dialogs/s;

.field public static final enum c:Lcom/zinio/mobile/android/view/dialogs/s;

.field private static enum f:Lcom/zinio/mobile/android/view/dialogs/s;

.field private static enum g:Lcom/zinio/mobile/android/view/dialogs/s;

.field private static final synthetic h:[Lcom/zinio/mobile/android/view/dialogs/s;


# instance fields
.field d:Ljava/lang/String;

.field e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/s;

    const-string v1, "NO_TEXT_TIP"

    const-string v2, "no-text-tip"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/zinio/mobile/android/view/dialogs/s;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v0, Lcom/zinio/mobile/android/view/dialogs/s;->f:Lcom/zinio/mobile/android/view/dialogs/s;

    .line 44
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/s;

    const-string v1, "READ_TIPS"

    const-string v2, "read-tips"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/zinio/mobile/android/view/dialogs/s;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v0, Lcom/zinio/mobile/android/view/dialogs/s;->a:Lcom/zinio/mobile/android/view/dialogs/s;

    .line 48
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/s;

    const-string v1, "CONNECTION_TIP"

    const-string v2, "conection-tip"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/zinio/mobile/android/view/dialogs/s;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v0, Lcom/zinio/mobile/android/view/dialogs/s;->b:Lcom/zinio/mobile/android/view/dialogs/s;

    .line 52
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/s;

    const-string v1, "PAGE_TIP"

    const-string v2, "page-tip"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/zinio/mobile/android/view/dialogs/s;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v0, Lcom/zinio/mobile/android/view/dialogs/s;->c:Lcom/zinio/mobile/android/view/dialogs/s;

    .line 56
    new-instance v0, Lcom/zinio/mobile/android/view/dialogs/s;

    const-string v1, "WIRELESS_SETTINGS_TIP"

    const-string v2, "wireless-setting-tip"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/zinio/mobile/android/view/dialogs/s;-><init>(Ljava/lang/String;ILjava/lang/String;B)V

    sput-object v0, Lcom/zinio/mobile/android/view/dialogs/s;->g:Lcom/zinio/mobile/android/view/dialogs/s;

    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/zinio/mobile/android/view/dialogs/s;

    sget-object v1, Lcom/zinio/mobile/android/view/dialogs/s;->f:Lcom/zinio/mobile/android/view/dialogs/s;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zinio/mobile/android/view/dialogs/s;->a:Lcom/zinio/mobile/android/view/dialogs/s;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zinio/mobile/android/view/dialogs/s;->b:Lcom/zinio/mobile/android/view/dialogs/s;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zinio/mobile/android/view/dialogs/s;->c:Lcom/zinio/mobile/android/view/dialogs/s;

    aput-object v1, v0, v6

    sget-object v1, Lcom/zinio/mobile/android/view/dialogs/s;->g:Lcom/zinio/mobile/android/view/dialogs/s;

    aput-object v1, v0, v7

    sput-object v0, Lcom/zinio/mobile/android/view/dialogs/s;->h:[Lcom/zinio/mobile/android/view/dialogs/s;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput-object p3, p0, Lcom/zinio/mobile/android/view/dialogs/s;->d:Ljava/lang/String;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/dialogs/s;->e:Z

    .line 68
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/zinio/mobile/android/view/dialogs/s;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 63
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zinio/mobile/android/view/dialogs/s;
    .locals 1
    .parameter

    .prologue
    .line 36
    const-class v0, Lcom/zinio/mobile/android/view/dialogs/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zinio/mobile/android/view/dialogs/s;

    return-object p0
.end method

.method public static values()[Lcom/zinio/mobile/android/view/dialogs/s;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/zinio/mobile/android/view/dialogs/s;->h:[Lcom/zinio/mobile/android/view/dialogs/s;

    invoke-virtual {v0}, [Lcom/zinio/mobile/android/view/dialogs/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zinio/mobile/android/view/dialogs/s;

    return-object v0
.end method
