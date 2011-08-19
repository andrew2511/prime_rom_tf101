.class public final enum Lcom/amazon/kcp/library/LibraryActivity$ViewType;
.super Ljava/lang/Enum;
.source "LibraryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/LibraryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/kcp/library/LibraryActivity$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/LibraryActivity$ViewType;

.field public static final enum GALLERY:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

.field public static final enum GRID:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

.field public static final enum LIST:Lcom/amazon/kcp/library/LibraryActivity$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    new-instance v0, Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    const-string v1, "LIST"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/LibraryActivity$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/LibraryActivity$ViewType;->LIST:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    .line 195
    new-instance v0, Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    const-string v1, "GRID"

    invoke-direct {v0, v1, v3}, Lcom/amazon/kcp/library/LibraryActivity$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/LibraryActivity$ViewType;->GRID:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    .line 196
    new-instance v0, Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    const-string v1, "GALLERY"

    invoke-direct {v0, v1, v4}, Lcom/amazon/kcp/library/LibraryActivity$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/LibraryActivity$ViewType;->GALLERY:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    .line 192
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    sget-object v1, Lcom/amazon/kcp/library/LibraryActivity$ViewType;->LIST:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/library/LibraryActivity$ViewType;->GRID:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kcp/library/LibraryActivity$ViewType;->GALLERY:Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amazon/kcp/library/LibraryActivity$ViewType;->$VALUES:[Lcom/amazon/kcp/library/LibraryActivity$ViewType;

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
    .line 192
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/LibraryActivity$ViewType;
    .locals 1
    .parameter

    .prologue
    .line 192
    const-class v0, Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/LibraryActivity$ViewType;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/amazon/kcp/library/LibraryActivity$ViewType;->$VALUES:[Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/LibraryActivity$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/LibraryActivity$ViewType;

    return-object v0
.end method
