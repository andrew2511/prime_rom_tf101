.class public final enum Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;
.super Ljava/lang/Enum;
.source "LibraryBookView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/ui/LibraryBookView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewPlace"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;

.field public static final enum HOME:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;

.field public static final enum OTHER:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;->HOME:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;

    .line 37
    new-instance v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v3}, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;->OTHER:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;

    sget-object v1, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;->HOME:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;->OTHER:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;->$VALUES:[Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;
    .locals 1
    .parameter

    .prologue
    .line 27
    const-class v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;->$VALUES:[Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/ui/LibraryBookView$ViewPlace;

    return-object v0
.end method
