.class public final enum Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;
.super Ljava/lang/Enum;
.source "CatalogItemComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/CatalogItemComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

.field public static final enum AUTHOR:Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

.field public static final enum PUBLICATION:Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

.field public static final enum RECENT:Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

.field public static final enum TITLE:Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

    const-string v1, "TITLE"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;->TITLE:Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

    .line 22
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

    const-string v1, "AUTHOR"

    invoke-direct {v0, v1, v3}, Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;->AUTHOR:Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

    .line 23
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

    const-string v1, "RECENT"

    invoke-direct {v0, v1, v4}, Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;->RECENT:Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

    .line 24
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

    const-string v1, "PUBLICATION"

    invoke-direct {v0, v1, v5}, Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;->PUBLICATION:Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

    sget-object v1, Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;->TITLE:Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;->AUTHOR:Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;->RECENT:Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;->PUBLICATION:Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;->$VALUES:[Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;
    .locals 1
    .parameter

    .prologue
    .line 19
    const-class v0, Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;->$VALUES:[Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/models/CatalogItemComparator$SortType;

    return-object v0
.end method
