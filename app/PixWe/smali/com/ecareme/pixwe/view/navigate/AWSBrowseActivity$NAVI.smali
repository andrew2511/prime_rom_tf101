.class final enum Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;
.super Ljava/lang/Enum;
.source "AWSBrowseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NAVI"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEEP:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

.field private static final synthetic ENUM$VALUES:[Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

.field public static final enum FLOAT:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

.field public static final enum HERE:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

.field public static final enum TOP:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v2}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;->TOP:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    new-instance v0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    const-string v1, "FLOAT"

    invoke-direct {v0, v1, v3}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;->FLOAT:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    new-instance v0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    const-string v1, "DEEP"

    invoke-direct {v0, v1, v4}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;->DEEP:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    new-instance v0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    const-string v1, "HERE"

    invoke-direct {v0, v1, v5}, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;->HERE:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    sget-object v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;->TOP:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;->FLOAT:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;->DEEP:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;->HERE:Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;->ENUM$VALUES:[Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    return-object p0
.end method

.method public static values()[Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;->ENUM$VALUES:[Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    array-length v1, v0

    new-array v2, v1, [Lcom/ecareme/pixwe/view/navigate/AWSBrowseActivity$NAVI;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
