.class final enum Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;
.super Ljava/lang/Enum;
.source "PageCellsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/core/PageCellsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BitmapTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BACKGROUND:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

.field private static final synthetic ENUM$VALUES:[Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

.field public static final enum FOREGROUND:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

.field public static final enum UNKNOWN:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;->UNKNOWN:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    .line 37
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    const-string v1, "FOREGROUND"

    invoke-direct {v0, v1, v3}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;->FOREGROUND:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    .line 38
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v4}, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;->BACKGROUND:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;->UNKNOWN:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;->FOREGROUND:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    aput-object v1, v0, v3

    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;->BACKGROUND:Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    aput-object v1, v0, v4

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;->ENUM$VALUES:[Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    return-object p0
.end method

.method public static values()[Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;->ENUM$VALUES:[Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    array-length v1, v0

    new-array v2, v1, [Lcom/newspaperdirect/pressreader/android/core/PageCellsManager$BitmapTypes;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
