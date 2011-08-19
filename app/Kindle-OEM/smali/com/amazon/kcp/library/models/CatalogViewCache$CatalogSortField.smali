.class public final enum Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;
.super Ljava/lang/Enum;
.source "CatalogViewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/CatalogViewCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CatalogSortField"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

.field public static final enum AUTHOR:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

.field public static final enum NONE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

.field public static final enum PUBLICATION:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

.field public static final enum RECENT:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

.field public static final enum TITLE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;


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
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    const-string v1, "TITLE"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->TITLE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    .line 25
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    const-string v1, "AUTHOR"

    invoke-direct {v0, v1, v3}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->AUTHOR:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    .line 26
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    const-string v1, "RECENT"

    invoke-direct {v0, v1, v4}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->RECENT:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    .line 27
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    const-string v1, "PUBLICATION"

    invoke-direct {v0, v1, v5}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->PUBLICATION:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    .line 28
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v6}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->NONE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    .line 22
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    sget-object v1, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->TITLE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->AUTHOR:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->RECENT:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->PUBLICATION:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->NONE:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    aput-object v1, v0, v6

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->$VALUES:[Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;
    .locals 1
    .parameter

    .prologue
    .line 22
    const-class v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->$VALUES:[Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogSortField;

    return-object v0
.end method
