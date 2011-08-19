.class final enum Lcom/asus/reader/book/PageRenderer$FlipState;
.super Ljava/lang/Enum;
.source "PageRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/PageRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "FlipState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/reader/book/PageRenderer$FlipState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/reader/book/PageRenderer$FlipState;

.field public static final enum LEFT_FLIP:Lcom/asus/reader/book/PageRenderer$FlipState;

.field public static final enum NO_FLIP:Lcom/asus/reader/book/PageRenderer$FlipState;

.field public static final enum RIGHT_FLIP:Lcom/asus/reader/book/PageRenderer$FlipState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    new-instance v0, Lcom/asus/reader/book/PageRenderer$FlipState;

    const-string v1, "NO_FLIP"

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/PageRenderer$FlipState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/reader/book/PageRenderer$FlipState;->NO_FLIP:Lcom/asus/reader/book/PageRenderer$FlipState;

    new-instance v0, Lcom/asus/reader/book/PageRenderer$FlipState;

    const-string v1, "RIGHT_FLIP"

    invoke-direct {v0, v1, v3}, Lcom/asus/reader/book/PageRenderer$FlipState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/reader/book/PageRenderer$FlipState;->RIGHT_FLIP:Lcom/asus/reader/book/PageRenderer$FlipState;

    new-instance v0, Lcom/asus/reader/book/PageRenderer$FlipState;

    const-string v1, "LEFT_FLIP"

    invoke-direct {v0, v1, v4}, Lcom/asus/reader/book/PageRenderer$FlipState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/reader/book/PageRenderer$FlipState;->LEFT_FLIP:Lcom/asus/reader/book/PageRenderer$FlipState;

    .line 110
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/asus/reader/book/PageRenderer$FlipState;

    sget-object v1, Lcom/asus/reader/book/PageRenderer$FlipState;->NO_FLIP:Lcom/asus/reader/book/PageRenderer$FlipState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/asus/reader/book/PageRenderer$FlipState;->RIGHT_FLIP:Lcom/asus/reader/book/PageRenderer$FlipState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/reader/book/PageRenderer$FlipState;->LEFT_FLIP:Lcom/asus/reader/book/PageRenderer$FlipState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/asus/reader/book/PageRenderer$FlipState;->$VALUES:[Lcom/asus/reader/book/PageRenderer$FlipState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/reader/book/PageRenderer$FlipState;
    .locals 1
    .parameter

    .prologue
    .line 110
    const-class v0, Lcom/asus/reader/book/PageRenderer$FlipState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/asus/reader/book/PageRenderer$FlipState;

    return-object p0
.end method

.method public static values()[Lcom/asus/reader/book/PageRenderer$FlipState;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/asus/reader/book/PageRenderer$FlipState;->$VALUES:[Lcom/asus/reader/book/PageRenderer$FlipState;

    invoke-virtual {v0}, [Lcom/asus/reader/book/PageRenderer$FlipState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/reader/book/PageRenderer$FlipState;

    return-object v0
.end method
