.class final enum Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;
.super Ljava/lang/Enum;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ecareme/pixwe/media/HighlightView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ModifyMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;

.field public static final enum Grow:Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;

.field public static final enum Move:Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;

.field public static final enum None:Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 353
    new-instance v0, Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;->None:Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;

    new-instance v0, Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;

    const-string v1, "Move"

    invoke-direct {v0, v1, v3}, Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;->Move:Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;

    new-instance v0, Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;

    const-string v1, "Grow"

    invoke-direct {v0, v1, v4}, Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;->Grow:Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;

    .line 352
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;

    sget-object v1, Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;->None:Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;->Move:Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;->Grow:Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;->ENUM$VALUES:[Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 352
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;

    return-object p0
.end method

.method public static values()[Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;->ENUM$VALUES:[Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/ecareme/pixwe/media/HighlightView$ModifyMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
