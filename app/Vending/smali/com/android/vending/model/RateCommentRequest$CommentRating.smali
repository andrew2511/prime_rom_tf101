.class public final enum Lcom/android/vending/model/RateCommentRequest$CommentRating;
.super Ljava/lang/Enum;
.source "RateCommentRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/RateCommentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommentRating"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/RateCommentRequest$CommentRating;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/RateCommentRequest$CommentRating;

.field public static final enum HELPFUL:Lcom/android/vending/model/RateCommentRequest$CommentRating;

.field public static final enum NOT_HELPFUL:Lcom/android/vending/model/RateCommentRequest$CommentRating;

.field public static final enum SPAM:Lcom/android/vending/model/RateCommentRequest$CommentRating;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/android/vending/model/RateCommentRequest$CommentRating;

    const-string v1, "SPAM"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/vending/model/RateCommentRequest$CommentRating;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/RateCommentRequest$CommentRating;->SPAM:Lcom/android/vending/model/RateCommentRequest$CommentRating;

    .line 17
    new-instance v0, Lcom/android/vending/model/RateCommentRequest$CommentRating;

    const-string v1, "HELPFUL"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/vending/model/RateCommentRequest$CommentRating;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/RateCommentRequest$CommentRating;->HELPFUL:Lcom/android/vending/model/RateCommentRequest$CommentRating;

    .line 18
    new-instance v0, Lcom/android/vending/model/RateCommentRequest$CommentRating;

    const-string v1, "NOT_HELPFUL"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/vending/model/RateCommentRequest$CommentRating;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/RateCommentRequest$CommentRating;->NOT_HELPFUL:Lcom/android/vending/model/RateCommentRequest$CommentRating;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/vending/model/RateCommentRequest$CommentRating;

    sget-object v1, Lcom/android/vending/model/RateCommentRequest$CommentRating;->SPAM:Lcom/android/vending/model/RateCommentRequest$CommentRating;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/model/RateCommentRequest$CommentRating;->HELPFUL:Lcom/android/vending/model/RateCommentRequest$CommentRating;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/model/RateCommentRequest$CommentRating;->NOT_HELPFUL:Lcom/android/vending/model/RateCommentRequest$CommentRating;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/vending/model/RateCommentRequest$CommentRating;->$VALUES:[Lcom/android/vending/model/RateCommentRequest$CommentRating;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/android/vending/model/RateCommentRequest$CommentRating;->mValue:I

    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/RateCommentRequest$CommentRating;
    .locals 1
    .parameter

    .prologue
    .line 15
    const-class v0, Lcom/android/vending/model/RateCommentRequest$CommentRating;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/RateCommentRequest$CommentRating;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/RateCommentRequest$CommentRating;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/android/vending/model/RateCommentRequest$CommentRating;->$VALUES:[Lcom/android/vending/model/RateCommentRequest$CommentRating;

    invoke-virtual {v0}, [Lcom/android/vending/model/RateCommentRequest$CommentRating;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/RateCommentRequest$CommentRating;

    return-object v0
.end method


# virtual methods
.method public getRpcId()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/android/vending/model/RateCommentRequest$CommentRating;->mValue:I

    return v0
.end method
