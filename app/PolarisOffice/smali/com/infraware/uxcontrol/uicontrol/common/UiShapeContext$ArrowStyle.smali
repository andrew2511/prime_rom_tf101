.class public final enum Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;
.super Ljava/lang/Enum;
.source "UiShapeContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArrowStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ARROW:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

.field public static final enum CIRCLE:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

.field public static final enum DIAMOND:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

.field private static final synthetic ENUM$VALUES:[Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

.field public static final enum NORMAL:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

.field public static final enum TRIANGLE:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->NORMAL:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    .line 25
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    const-string v1, "TRIANGLE"

    invoke-direct {v0, v1, v3}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->TRIANGLE:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    .line 26
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    const-string v1, "ARROW"

    invoke-direct {v0, v1, v4}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->ARROW:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    .line 27
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    const-string v1, "DIAMOND"

    invoke-direct {v0, v1, v5}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->DIAMOND:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    .line 28
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    const-string v1, "CIRCLE"

    invoke-direct {v0, v1, v6}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->CIRCLE:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    sget-object v1, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->NORMAL:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->TRIANGLE:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->ARROW:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->DIAMOND:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    aput-object v1, v0, v5

    sget-object v1, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->CIRCLE:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    aput-object v1, v0, v6

    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->ENUM$VALUES:[Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    return-object p0
.end method

.method public static values()[Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;->ENUM$VALUES:[Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    array-length v1, v0

    new-array v2, v1, [Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$ArrowStyle;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
