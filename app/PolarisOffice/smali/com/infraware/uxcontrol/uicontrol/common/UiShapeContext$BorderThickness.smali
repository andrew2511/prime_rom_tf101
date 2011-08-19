.class public final enum Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;
.super Ljava/lang/Enum;
.source "UiShapeContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BorderThickness"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOLD:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;

.field private static final synthetic ENUM$VALUES:[Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;

.field public static final enum NONE:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;

.field public static final enum NORMAL:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;->NONE:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;

    .line 11
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;->NORMAL:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;

    .line 12
    new-instance v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;

    const-string v1, "BOLD"

    invoke-direct {v0, v1, v4}, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;->BOLD:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;

    sget-object v1, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;->NONE:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;

    aput-object v1, v0, v2

    sget-object v1, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;->NORMAL:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;

    aput-object v1, v0, v3

    sget-object v1, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;->BOLD:Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;

    aput-object v1, v0, v4

    sput-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;->ENUM$VALUES:[Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;

    return-object p0
.end method

.method public static values()[Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;->ENUM$VALUES:[Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;

    array-length v1, v0

    new-array v2, v1, [Lcom/infraware/uxcontrol/uicontrol/common/UiShapeContext$BorderThickness;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
