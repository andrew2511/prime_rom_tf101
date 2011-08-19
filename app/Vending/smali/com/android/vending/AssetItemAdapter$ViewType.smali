.class public final enum Lcom/android/vending/AssetItemAdapter$ViewType;
.super Ljava/lang/Enum;
.source "AssetItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/AssetItemAdapter$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/AssetItemAdapter$ViewType;

.field public static final enum DOWNLOAD_SNIPPET_LIST_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

.field public static final enum SNIPPET_LIST_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

.field public static final enum SNIPPET_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

.field public static final enum THUMBNAIL_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;


# instance fields
.field private final mResourceLayoutId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const v2, 0x7f040018

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    new-instance v0, Lcom/android/vending/AssetItemAdapter$ViewType;

    const-string v1, "SNIPPET_LIST_VIEW"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/vending/AssetItemAdapter$ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/AssetItemAdapter$ViewType;->SNIPPET_LIST_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

    .line 56
    new-instance v0, Lcom/android/vending/AssetItemAdapter$ViewType;

    const-string v1, "DOWNLOAD_SNIPPET_LIST_VIEW"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/vending/AssetItemAdapter$ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/AssetItemAdapter$ViewType;->DOWNLOAD_SNIPPET_LIST_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

    .line 57
    new-instance v0, Lcom/android/vending/AssetItemAdapter$ViewType;

    const-string v1, "SNIPPET_VIEW"

    const v2, 0x7f04001e

    invoke-direct {v0, v1, v5, v2}, Lcom/android/vending/AssetItemAdapter$ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/AssetItemAdapter$ViewType;->SNIPPET_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

    .line 58
    new-instance v0, Lcom/android/vending/AssetItemAdapter$ViewType;

    const-string v1, "THUMBNAIL_VIEW"

    const v2, 0x7f04001f

    invoke-direct {v0, v1, v6, v2}, Lcom/android/vending/AssetItemAdapter$ViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/AssetItemAdapter$ViewType;->THUMBNAIL_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/vending/AssetItemAdapter$ViewType;

    sget-object v1, Lcom/android/vending/AssetItemAdapter$ViewType;->SNIPPET_LIST_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/AssetItemAdapter$ViewType;->DOWNLOAD_SNIPPET_LIST_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/vending/AssetItemAdapter$ViewType;->SNIPPET_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/vending/AssetItemAdapter$ViewType;->THUMBNAIL_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/vending/AssetItemAdapter$ViewType;->$VALUES:[Lcom/android/vending/AssetItemAdapter$ViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "resourceLayoutId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput p3, p0, Lcom/android/vending/AssetItemAdapter$ViewType;->mResourceLayoutId:I

    .line 64
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/AssetItemAdapter$ViewType;
    .locals 1
    .parameter

    .prologue
    .line 54
    const-class v0, Lcom/android/vending/AssetItemAdapter$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/AssetItemAdapter$ViewType;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/AssetItemAdapter$ViewType;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/vending/AssetItemAdapter$ViewType;->$VALUES:[Lcom/android/vending/AssetItemAdapter$ViewType;

    invoke-virtual {v0}, [Lcom/android/vending/AssetItemAdapter$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/AssetItemAdapter$ViewType;

    return-object v0
.end method


# virtual methods
.method public getResourceLayoutId()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/android/vending/AssetItemAdapter$ViewType;->mResourceLayoutId:I

    return v0
.end method
