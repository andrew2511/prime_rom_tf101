.class public final enum Lcom/android/vending/model/Asset$BitmapState;
.super Ljava/lang/Enum;
.source "Asset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/Asset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BitmapState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/Asset$BitmapState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/Asset$BitmapState;

.field public static final enum ERROR:Lcom/android/vending/model/Asset$BitmapState;

.field public static final enum LOADED:Lcom/android/vending/model/Asset$BitmapState;

.field public static final enum LOADING:Lcom/android/vending/model/Asset$BitmapState;

.field public static final enum NONE:Lcom/android/vending/model/Asset$BitmapState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 123
    new-instance v0, Lcom/android/vending/model/Asset$BitmapState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/vending/model/Asset$BitmapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/Asset$BitmapState;->NONE:Lcom/android/vending/model/Asset$BitmapState;

    .line 125
    new-instance v0, Lcom/android/vending/model/Asset$BitmapState;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/android/vending/model/Asset$BitmapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/Asset$BitmapState;->LOADING:Lcom/android/vending/model/Asset$BitmapState;

    .line 127
    new-instance v0, Lcom/android/vending/model/Asset$BitmapState;

    const-string v1, "LOADED"

    invoke-direct {v0, v1, v4}, Lcom/android/vending/model/Asset$BitmapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/Asset$BitmapState;->LOADED:Lcom/android/vending/model/Asset$BitmapState;

    .line 129
    new-instance v0, Lcom/android/vending/model/Asset$BitmapState;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/android/vending/model/Asset$BitmapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/Asset$BitmapState;->ERROR:Lcom/android/vending/model/Asset$BitmapState;

    .line 121
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/vending/model/Asset$BitmapState;

    sget-object v1, Lcom/android/vending/model/Asset$BitmapState;->NONE:Lcom/android/vending/model/Asset$BitmapState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/model/Asset$BitmapState;->LOADING:Lcom/android/vending/model/Asset$BitmapState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/model/Asset$BitmapState;->LOADED:Lcom/android/vending/model/Asset$BitmapState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/vending/model/Asset$BitmapState;->ERROR:Lcom/android/vending/model/Asset$BitmapState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/vending/model/Asset$BitmapState;->$VALUES:[Lcom/android/vending/model/Asset$BitmapState;

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
    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/Asset$BitmapState;
    .locals 1
    .parameter

    .prologue
    .line 121
    const-class v0, Lcom/android/vending/model/Asset$BitmapState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/Asset$BitmapState;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/Asset$BitmapState;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/vending/model/Asset$BitmapState;->$VALUES:[Lcom/android/vending/model/Asset$BitmapState;

    invoke-virtual {v0}, [Lcom/android/vending/model/Asset$BitmapState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/Asset$BitmapState;

    return-object v0
.end method


# virtual methods
.method public needsLoading(Ljava/lang/ref/SoftReference;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, bitmapRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/BitmapDrawable;>;"
    const/4 v1, 0x1

    .line 134
    sget-object v0, Lcom/android/vending/model/Asset$BitmapState;->LOADED:Lcom/android/vending/model/Asset$BitmapState;

    if-ne p0, v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 138
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/vending/model/Asset$BitmapState;->NONE:Lcom/android/vending/model/Asset$BitmapState;

    if-ne p0, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
