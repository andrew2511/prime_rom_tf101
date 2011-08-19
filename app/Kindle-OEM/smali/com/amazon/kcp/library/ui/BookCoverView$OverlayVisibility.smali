.class public final enum Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;
.super Ljava/lang/Enum;
.source "BookCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/ui/BookCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OverlayVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

.field public static final enum INVISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

.field public static final enum VISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

.field public static final enum VISIBLE_IF_DEFAULT_COVER:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    const-string v1, "INVISIBLE"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->INVISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 51
    new-instance v0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    const-string v1, "VISIBLE"

    invoke-direct {v0, v1, v3}, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 56
    new-instance v0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    const-string v1, "VISIBLE_IF_DEFAULT_COVER"

    invoke-direct {v0, v1, v4}, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE_IF_DEFAULT_COVER:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    sget-object v1, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->INVISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE_IF_DEFAULT_COVER:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->$VALUES:[Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

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
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;
    .locals 1
    .parameter

    .prologue
    .line 41
    const-class v0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->$VALUES:[Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    return-object v0
.end method
