.class public final enum Lcom/layar/data/layer/LayerManager$LayarView;
.super Ljava/lang/Enum;
.source "LayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/data/layer/LayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayarView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/layar/data/layer/LayerManager$LayarView;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AR:Lcom/layar/data/layer/LayerManager$LayarView;

.field private static final synthetic ENUM$VALUES:[Lcom/layar/data/layer/LayerManager$LayarView;

.field public static final enum FAVORITES:Lcom/layar/data/layer/LayerManager$LayarView;

.field public static final enum LIST:Lcom/layar/data/layer/LayerManager$LayarView;

.field public static final enum MAP:Lcom/layar/data/layer/LayerManager$LayarView;

.field public static final enum POI_DETAILS:Lcom/layar/data/layer/LayerManager$LayarView;

.field public static final enum POPULAR:Lcom/layar/data/layer/LayerManager$LayarView;

.field public static final enum SHARE:Lcom/layar/data/layer/LayerManager$LayarView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    new-instance v0, Lcom/layar/data/layer/LayerManager$LayarView;

    const-string v1, "AR"

    invoke-direct {v0, v1, v3}, Lcom/layar/data/layer/LayerManager$LayarView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layar/data/layer/LayerManager$LayarView;->AR:Lcom/layar/data/layer/LayerManager$LayarView;

    new-instance v0, Lcom/layar/data/layer/LayerManager$LayarView;

    const-string v1, "MAP"

    invoke-direct {v0, v1, v4}, Lcom/layar/data/layer/LayerManager$LayarView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layar/data/layer/LayerManager$LayarView;->MAP:Lcom/layar/data/layer/LayerManager$LayarView;

    new-instance v0, Lcom/layar/data/layer/LayerManager$LayarView;

    const-string v1, "LIST"

    invoke-direct {v0, v1, v5}, Lcom/layar/data/layer/LayerManager$LayarView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layar/data/layer/LayerManager$LayarView;->LIST:Lcom/layar/data/layer/LayerManager$LayarView;

    new-instance v0, Lcom/layar/data/layer/LayerManager$LayarView;

    const-string v1, "FAVORITES"

    invoke-direct {v0, v1, v6}, Lcom/layar/data/layer/LayerManager$LayarView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layar/data/layer/LayerManager$LayarView;->FAVORITES:Lcom/layar/data/layer/LayerManager$LayarView;

    new-instance v0, Lcom/layar/data/layer/LayerManager$LayarView;

    const-string v1, "SHARE"

    invoke-direct {v0, v1, v7}, Lcom/layar/data/layer/LayerManager$LayarView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layar/data/layer/LayerManager$LayarView;->SHARE:Lcom/layar/data/layer/LayerManager$LayarView;

    new-instance v0, Lcom/layar/data/layer/LayerManager$LayarView;

    const-string v1, "POI_DETAILS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/layar/data/layer/LayerManager$LayarView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layar/data/layer/LayerManager$LayarView;->POI_DETAILS:Lcom/layar/data/layer/LayerManager$LayarView;

    new-instance v0, Lcom/layar/data/layer/LayerManager$LayarView;

    const-string v1, "POPULAR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/layar/data/layer/LayerManager$LayarView;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/layar/data/layer/LayerManager$LayarView;->POPULAR:Lcom/layar/data/layer/LayerManager$LayarView;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/layar/data/layer/LayerManager$LayarView;

    sget-object v1, Lcom/layar/data/layer/LayerManager$LayarView;->AR:Lcom/layar/data/layer/LayerManager$LayarView;

    aput-object v1, v0, v3

    sget-object v1, Lcom/layar/data/layer/LayerManager$LayarView;->MAP:Lcom/layar/data/layer/LayerManager$LayarView;

    aput-object v1, v0, v4

    sget-object v1, Lcom/layar/data/layer/LayerManager$LayarView;->LIST:Lcom/layar/data/layer/LayerManager$LayarView;

    aput-object v1, v0, v5

    sget-object v1, Lcom/layar/data/layer/LayerManager$LayarView;->FAVORITES:Lcom/layar/data/layer/LayerManager$LayarView;

    aput-object v1, v0, v6

    sget-object v1, Lcom/layar/data/layer/LayerManager$LayarView;->SHARE:Lcom/layar/data/layer/LayerManager$LayarView;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/layar/data/layer/LayerManager$LayarView;->POI_DETAILS:Lcom/layar/data/layer/LayerManager$LayarView;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/layar/data/layer/LayerManager$LayarView;->POPULAR:Lcom/layar/data/layer/LayerManager$LayarView;

    aput-object v2, v0, v1

    sput-object v0, Lcom/layar/data/layer/LayerManager$LayarView;->ENUM$VALUES:[Lcom/layar/data/layer/LayerManager$LayarView;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/layar/data/layer/LayerManager$LayarView;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/layar/data/layer/LayerManager$LayarView;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/layar/data/layer/LayerManager$LayarView;

    return-object p0
.end method

.method public static values()[Lcom/layar/data/layer/LayerManager$LayarView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/layar/data/layer/LayerManager$LayarView;->ENUM$VALUES:[Lcom/layar/data/layer/LayerManager$LayarView;

    array-length v1, v0

    new-array v2, v1, [Lcom/layar/data/layer/LayerManager$LayarView;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
