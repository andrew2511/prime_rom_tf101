.class final enum Lcom/google/android/youtube/app/ui/PromoHelper$Position;
.super Ljava/lang/Enum;
.source "PromoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/ui/PromoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/app/ui/PromoHelper$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/app/ui/PromoHelper$Position;

.field public static final enum BOTTOM:Lcom/google/android/youtube/app/ui/PromoHelper$Position;

.field public static final enum CENTER:Lcom/google/android/youtube/app/ui/PromoHelper$Position;

.field public static final enum TOP:Lcom/google/android/youtube/app/ui/PromoHelper$Position;


# instance fields
.field public final percentage:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    const-string v1, "TOP"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/youtube/app/ui/PromoHelper$Position;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/ui/PromoHelper$Position;->TOP:Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    .line 26
    new-instance v0, Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    const-string v1, "CENTER"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/youtube/app/ui/PromoHelper$Position;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/ui/PromoHelper$Position;->CENTER:Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    .line 27
    new-instance v0, Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    const-string v1, "BOTTOM"

    const/16 v2, 0x38

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/youtube/app/ui/PromoHelper$Position;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/app/ui/PromoHelper$Position;->BOTTOM:Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    sget-object v1, Lcom/google/android/youtube/app/ui/PromoHelper$Position;->TOP:Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/youtube/app/ui/PromoHelper$Position;->CENTER:Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/app/ui/PromoHelper$Position;->BOTTOM:Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/youtube/app/ui/PromoHelper$Position;->$VALUES:[Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "percentage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Lcom/google/android/youtube/app/ui/PromoHelper$Position;->percentage:I

    .line 33
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/app/ui/PromoHelper$Position;
    .locals 1
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    return-object p0
.end method

.method public static values()[Lcom/google/android/youtube/app/ui/PromoHelper$Position;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/android/youtube/app/ui/PromoHelper$Position;->$VALUES:[Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    invoke-virtual {v0}, [Lcom/google/android/youtube/app/ui/PromoHelper$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/app/ui/PromoHelper$Position;

    return-object v0
.end method
