.class public final enum Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;
.super Ljava/lang/Enum;
.source "Sharing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newspaperdirect/pressreader/android/core/Sharing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShareService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

.field public static final enum Email:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

.field public static final enum Facebook:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

.field public static final enum Twitter:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    const-string v1, "Email"

    invoke-direct {v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;->Email:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    .line 33
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    const-string v1, "Twitter"

    invoke-direct {v0, v1, v3}, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;->Twitter:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    .line 34
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    const-string v1, "Facebook"

    invoke-direct {v0, v1, v4}, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;->Facebook:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;->Email:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    aput-object v1, v0, v2

    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;->Twitter:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    aput-object v1, v0, v3

    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;->Facebook:Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    aput-object v1, v0, v4

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;->ENUM$VALUES:[Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    return-object p0
.end method

.method public static values()[Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;->ENUM$VALUES:[Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    array-length v1, v0

    new-array v2, v1, [Lcom/newspaperdirect/pressreader/android/core/Sharing$ShareService;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
