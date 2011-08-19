.class final enum Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;
.super Ljava/lang/Enum;
.source "SelectionButtons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/SelectionButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

.field public static final enum Above:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

.field public static final enum Below:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

.field public static final enum Center:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    const-string v1, "Above"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;->Above:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    .line 49
    new-instance v0, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    const-string v1, "Below"

    invoke-direct {v0, v1, v3}, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;->Below:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    .line 50
    new-instance v0, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    const-string v1, "Center"

    invoke-direct {v0, v1, v4}, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;->Center:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    sget-object v1, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;->Above:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;->Below:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;->Center:Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;->$VALUES:[Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;
    .locals 1
    .parameter

    .prologue
    .line 46
    const-class v0, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;->$VALUES:[Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/ui/SelectionButtons$Position;

    return-object v0
.end method
