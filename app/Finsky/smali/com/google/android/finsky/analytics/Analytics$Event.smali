.class public final enum Lcom/google/android/finsky/analytics/Analytics$Event;
.super Ljava/lang/Enum;
.source "Analytics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/analytics/Analytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/analytics/Analytics$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/analytics/Analytics$Event;

.field public static final enum BROWSE:Lcom/google/android/finsky/analytics/Analytics$Event;

.field public static final enum BUY_ITEM:Lcom/google/android/finsky/analytics/Analytics$Event;

.field public static final enum CONTENT_FILTER:Lcom/google/android/finsky/analytics/Analytics$Event;

.field public static final enum DETAILS:Lcom/google/android/finsky/analytics/Analytics$Event;

.field public static final enum MANAGE_ITEM:Lcom/google/android/finsky/analytics/Analytics$Event;

.field public static final enum MORE_BY:Lcom/google/android/finsky/analytics/Analytics$Event;

.field public static final enum PROMOTED:Lcom/google/android/finsky/analytics/Analytics$Event;

.field public static final enum PURCHASE_COMPLETE:Lcom/google/android/finsky/analytics/Analytics$Event;

.field public static final enum PURCHASE_STARTED:Lcom/google/android/finsky/analytics/Analytics$Event;

.field public static final enum PURCHASE_WEBVIEW:Lcom/google/android/finsky/analytics/Analytics$Event;

.field public static final enum RELATED:Lcom/google/android/finsky/analytics/Analytics$Event;

.field public static final enum SAMPLE_ITEM:Lcom/google/android/finsky/analytics/Analytics$Event;

.field public static final enum SEARCH:Lcom/google/android/finsky/analytics/Analytics$Event;

.field public static final enum SEARCH_RESULTS:Lcom/google/android/finsky/analytics/Analytics$Event;

.field public static final enum SEARCH_SUGGESTION:Lcom/google/android/finsky/analytics/Analytics$Event;

.field public static final enum VIEW_ITEM:Lcom/google/android/finsky/analytics/Analytics$Event;

.field public static final enum WIDGET:Lcom/google/android/finsky/analytics/Analytics$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/google/android/finsky/analytics/Analytics$Event;

    const-string v1, "VIEW_ITEM"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/analytics/Analytics$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/analytics/Analytics$Event;->VIEW_ITEM:Lcom/google/android/finsky/analytics/Analytics$Event;

    .line 16
    new-instance v0, Lcom/google/android/finsky/analytics/Analytics$Event;

    const-string v1, "BUY_ITEM"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/analytics/Analytics$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/analytics/Analytics$Event;->BUY_ITEM:Lcom/google/android/finsky/analytics/Analytics$Event;

    .line 17
    new-instance v0, Lcom/google/android/finsky/analytics/Analytics$Event;

    const-string v1, "SAMPLE_ITEM"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/analytics/Analytics$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/analytics/Analytics$Event;->SAMPLE_ITEM:Lcom/google/android/finsky/analytics/Analytics$Event;

    .line 18
    new-instance v0, Lcom/google/android/finsky/analytics/Analytics$Event;

    const-string v1, "MANAGE_ITEM"

    invoke-direct {v0, v1, v6}, Lcom/google/android/finsky/analytics/Analytics$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/analytics/Analytics$Event;->MANAGE_ITEM:Lcom/google/android/finsky/analytics/Analytics$Event;

    .line 21
    new-instance v0, Lcom/google/android/finsky/analytics/Analytics$Event;

    const-string v1, "BROWSE"

    invoke-direct {v0, v1, v7}, Lcom/google/android/finsky/analytics/Analytics$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/analytics/Analytics$Event;->BROWSE:Lcom/google/android/finsky/analytics/Analytics$Event;

    .line 22
    new-instance v0, Lcom/google/android/finsky/analytics/Analytics$Event;

    const-string v1, "DETAILS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/analytics/Analytics$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/analytics/Analytics$Event;->DETAILS:Lcom/google/android/finsky/analytics/Analytics$Event;

    .line 23
    new-instance v0, Lcom/google/android/finsky/analytics/Analytics$Event;

    const-string v1, "WIDGET"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/analytics/Analytics$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/analytics/Analytics$Event;->WIDGET:Lcom/google/android/finsky/analytics/Analytics$Event;

    .line 24
    new-instance v0, Lcom/google/android/finsky/analytics/Analytics$Event;

    const-string v1, "SEARCH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/analytics/Analytics$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/analytics/Analytics$Event;->SEARCH:Lcom/google/android/finsky/analytics/Analytics$Event;

    .line 25
    new-instance v0, Lcom/google/android/finsky/analytics/Analytics$Event;

    const-string v1, "CONTENT_FILTER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/analytics/Analytics$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/analytics/Analytics$Event;->CONTENT_FILTER:Lcom/google/android/finsky/analytics/Analytics$Event;

    .line 28
    new-instance v0, Lcom/google/android/finsky/analytics/Analytics$Event;

    const-string v1, "SEARCH_RESULTS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/analytics/Analytics$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/analytics/Analytics$Event;->SEARCH_RESULTS:Lcom/google/android/finsky/analytics/Analytics$Event;

    .line 29
    new-instance v0, Lcom/google/android/finsky/analytics/Analytics$Event;

    const-string v1, "RELATED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/analytics/Analytics$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/analytics/Analytics$Event;->RELATED:Lcom/google/android/finsky/analytics/Analytics$Event;

    .line 30
    new-instance v0, Lcom/google/android/finsky/analytics/Analytics$Event;

    const-string v1, "MORE_BY"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/analytics/Analytics$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/analytics/Analytics$Event;->MORE_BY:Lcom/google/android/finsky/analytics/Analytics$Event;

    .line 31
    new-instance v0, Lcom/google/android/finsky/analytics/Analytics$Event;

    const-string v1, "PROMOTED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/analytics/Analytics$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/analytics/Analytics$Event;->PROMOTED:Lcom/google/android/finsky/analytics/Analytics$Event;

    .line 32
    new-instance v0, Lcom/google/android/finsky/analytics/Analytics$Event;

    const-string v1, "SEARCH_SUGGESTION"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/analytics/Analytics$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/analytics/Analytics$Event;->SEARCH_SUGGESTION:Lcom/google/android/finsky/analytics/Analytics$Event;

    .line 35
    new-instance v0, Lcom/google/android/finsky/analytics/Analytics$Event;

    const-string v1, "PURCHASE_STARTED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/analytics/Analytics$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/analytics/Analytics$Event;->PURCHASE_STARTED:Lcom/google/android/finsky/analytics/Analytics$Event;

    .line 36
    new-instance v0, Lcom/google/android/finsky/analytics/Analytics$Event;

    const-string v1, "PURCHASE_COMPLETE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/analytics/Analytics$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/analytics/Analytics$Event;->PURCHASE_COMPLETE:Lcom/google/android/finsky/analytics/Analytics$Event;

    .line 37
    new-instance v0, Lcom/google/android/finsky/analytics/Analytics$Event;

    const-string v1, "PURCHASE_WEBVIEW"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/analytics/Analytics$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/analytics/Analytics$Event;->PURCHASE_WEBVIEW:Lcom/google/android/finsky/analytics/Analytics$Event;

    .line 13
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/google/android/finsky/analytics/Analytics$Event;

    sget-object v1, Lcom/google/android/finsky/analytics/Analytics$Event;->VIEW_ITEM:Lcom/google/android/finsky/analytics/Analytics$Event;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/analytics/Analytics$Event;->BUY_ITEM:Lcom/google/android/finsky/analytics/Analytics$Event;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/analytics/Analytics$Event;->SAMPLE_ITEM:Lcom/google/android/finsky/analytics/Analytics$Event;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/analytics/Analytics$Event;->MANAGE_ITEM:Lcom/google/android/finsky/analytics/Analytics$Event;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/finsky/analytics/Analytics$Event;->BROWSE:Lcom/google/android/finsky/analytics/Analytics$Event;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/finsky/analytics/Analytics$Event;->DETAILS:Lcom/google/android/finsky/analytics/Analytics$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/finsky/analytics/Analytics$Event;->WIDGET:Lcom/google/android/finsky/analytics/Analytics$Event;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/finsky/analytics/Analytics$Event;->SEARCH:Lcom/google/android/finsky/analytics/Analytics$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/finsky/analytics/Analytics$Event;->CONTENT_FILTER:Lcom/google/android/finsky/analytics/Analytics$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/finsky/analytics/Analytics$Event;->SEARCH_RESULTS:Lcom/google/android/finsky/analytics/Analytics$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/finsky/analytics/Analytics$Event;->RELATED:Lcom/google/android/finsky/analytics/Analytics$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/finsky/analytics/Analytics$Event;->MORE_BY:Lcom/google/android/finsky/analytics/Analytics$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/finsky/analytics/Analytics$Event;->PROMOTED:Lcom/google/android/finsky/analytics/Analytics$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/finsky/analytics/Analytics$Event;->SEARCH_SUGGESTION:Lcom/google/android/finsky/analytics/Analytics$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/finsky/analytics/Analytics$Event;->PURCHASE_STARTED:Lcom/google/android/finsky/analytics/Analytics$Event;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/finsky/analytics/Analytics$Event;->PURCHASE_COMPLETE:Lcom/google/android/finsky/analytics/Analytics$Event;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/finsky/analytics/Analytics$Event;->PURCHASE_WEBVIEW:Lcom/google/android/finsky/analytics/Analytics$Event;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/analytics/Analytics$Event;->$VALUES:[Lcom/google/android/finsky/analytics/Analytics$Event;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/analytics/Analytics$Event;
    .locals 1
    .parameter

    .prologue
    .line 13
    const-class v0, Lcom/google/android/finsky/analytics/Analytics$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/finsky/analytics/Analytics$Event;

    return-object p0
.end method

.method public static values()[Lcom/google/android/finsky/analytics/Analytics$Event;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/google/android/finsky/analytics/Analytics$Event;->$VALUES:[Lcom/google/android/finsky/analytics/Analytics$Event;

    invoke-virtual {v0}, [Lcom/google/android/finsky/analytics/Analytics$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/analytics/Analytics$Event;

    return-object v0
.end method
