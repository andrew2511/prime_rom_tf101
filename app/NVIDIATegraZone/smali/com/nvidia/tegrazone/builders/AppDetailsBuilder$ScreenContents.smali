.class public final enum Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;
.super Ljava/lang/Enum;
.source "AppDetailsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nvidia/tegrazone/builders/AppDetailsBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenContents"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COMMENTS_PAGE:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

.field private static final synthetic ENUM$VALUES:[Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

.field public static final enum GAME_DETAILS_PAGE:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

.field public static final enum REVIEWS_PAGE:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    const-string v1, "GAME_DETAILS_PAGE"

    invoke-direct {v0, v1, v2}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;->GAME_DETAILS_PAGE:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    new-instance v0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    const-string v1, "COMMENTS_PAGE"

    invoke-direct {v0, v1, v3}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;->COMMENTS_PAGE:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    new-instance v0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    const-string v1, "REVIEWS_PAGE"

    invoke-direct {v0, v1, v4}, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;->REVIEWS_PAGE:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    sget-object v1, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;->GAME_DETAILS_PAGE:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;->COMMENTS_PAGE:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;->REVIEWS_PAGE:Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;->ENUM$VALUES:[Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    return-object p0
.end method

.method public static values()[Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;->ENUM$VALUES:[Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    array-length v1, v0

    new-array v2, v1, [Lcom/nvidia/tegrazone/builders/AppDetailsBuilder$ScreenContents;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
