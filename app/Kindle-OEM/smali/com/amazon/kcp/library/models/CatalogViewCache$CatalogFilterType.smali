.class public final enum Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;
.super Ljava/lang/Enum;
.source "CatalogViewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/CatalogViewCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CatalogFilterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

.field public static final enum BACK_ISSUES_EXCLUDED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

.field public static final enum DICTIONARY_EXCLUDED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

.field public static final enum UI_ALLITEMS:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

.field public static final enum UI_ARCHIVED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

.field public static final enum UI_DOWNLOADED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

.field public static final enum UI_PERIODICALS:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

.field public static final enum UNFILTERED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    const-string v1, "UNFILTERED"

    invoke-direct {v0, v1, v3}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->UNFILTERED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    .line 34
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    const-string v1, "DICTIONARY_EXCLUDED"

    invoke-direct {v0, v1, v4}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->DICTIONARY_EXCLUDED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    .line 35
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    const-string v1, "BACK_ISSUES_EXCLUDED"

    invoke-direct {v0, v1, v5}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->BACK_ISSUES_EXCLUDED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    .line 39
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    const-string v1, "UI_ALLITEMS"

    invoke-direct {v0, v1, v6}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->UI_ALLITEMS:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    .line 44
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    const-string v1, "UI_ARCHIVED"

    invoke-direct {v0, v1, v7}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->UI_ARCHIVED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    .line 49
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    const-string v1, "UI_DOWNLOADED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->UI_DOWNLOADED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    .line 55
    new-instance v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    const-string v1, "UI_PERIODICALS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->UI_PERIODICALS:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    .line 31
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    sget-object v1, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->UNFILTERED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->DICTIONARY_EXCLUDED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->BACK_ISSUES_EXCLUDED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->UI_ALLITEMS:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->UI_ARCHIVED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->UI_DOWNLOADED:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->UI_PERIODICALS:Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->$VALUES:[Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;
    .locals 1
    .parameter

    .prologue
    .line 31
    const-class v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->$VALUES:[Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogFilterType;

    return-object v0
.end method
