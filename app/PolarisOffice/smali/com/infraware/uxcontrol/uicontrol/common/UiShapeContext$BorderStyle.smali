.class public final enum Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;
.super Ljava/lang/Enum;
.source "UiShapeContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BorderStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DASHED:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

.field public static final enum DASH_DOTTED:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

.field public static final enum DASH_DOUBLE_DOTTED:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

.field public static final enum DOTTED:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

.field private static final synthetic ENUM$VALUES:[Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

.field public static final enum SOLID:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    const-string v1, "SOLID"

    invoke-direct {v0, v1, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->SOLID:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    .line 17
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    const-string v1, "DOTTED"

    invoke-direct {v0, v1, v3}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->DOTTED:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    .line 18
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    const-string v1, "DASHED"

    invoke-direct {v0, v1, v4}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->DASHED:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    .line 19
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    const-string v1, "DASH_DOTTED"

    invoke-direct {v0, v1, v5}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->DASH_DOTTED:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    .line 20
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    const-string v1, "DASH_DOUBLE_DOTTED"

    invoke-direct {v0, v1, v6}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->DASH_DOUBLE_DOTTED:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    .line 15
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    sget-object v1, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->SOLID:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->DOTTED:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->DASHED:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->DASH_DOTTED:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    aput-object v1, v0, v5

    sget-object v1, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->DASH_DOUBLE_DOTTED:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    aput-object v1, v0, v6

    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->ENUM$VALUES:[Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    return-object p0
.end method

.method public static values()[Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;->ENUM$VALUES:[Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    array-length v1, v0

    new-array v2, v1, [Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderStyle;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
