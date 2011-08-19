.class public final enum Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;
.super Ljava/lang/Enum;
.source "Video.java"

# interfaces
.implements Lcom/google/android/youtube/core/model/Video$Genre;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/Video$Episode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EpisodeGenre"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;",
        ">;",
        "Lcom/google/android/youtube/core/model/Video$Genre;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum ACTION_AND_ADVENTURE:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum ANIMATION_AND_CARTOONS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum BEAUTY_AND_FASHION:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum CELEBRITY_AND_ENTERTAINMENT:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum CLASSIC_TV:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum COMEDY:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum DOCUMENTARY_AND_BIOGRAPHY:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum DRAMA:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum FOOD:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum GAMING:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum HEALTH_AND_FITNESS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum HOME_AND_GARDEN:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum LEARNING_AND_EDUCATION:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum NATURE:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum NEWS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum REALITY_AND_GAMES:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum SCIENCE_AND_TECHNOLOGY:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum SCIENCE_FICTION:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum SOAPS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum SPORTS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum TRAVEL:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum UNSPECIFIED:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

.field public static final enum WEB_ORIGINALS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;


# instance fields
.field private final stringId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 197
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "UNSPECIFIED"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->UNSPECIFIED:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 198
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "ACTION_AND_ADVENTURE"

    const v2, 0x7f0d00f3

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->ACTION_AND_ADVENTURE:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 199
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "ANIMATION_AND_CARTOONS"

    const v2, 0x7f0d00f4

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->ANIMATION_AND_CARTOONS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 200
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "COMEDY"

    const v2, 0x7f0d00f5

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->COMEDY:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 201
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "DRAMA"

    const v2, 0x7f0d00f6

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->DRAMA:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 202
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "SPORTS"

    const/4 v2, 0x5

    const v3, 0x7f0d00f7

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->SPORTS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 203
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "DOCUMENTARY_AND_BIOGRAPHY"

    const/4 v2, 0x6

    const v3, 0x7f0d00f8

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->DOCUMENTARY_AND_BIOGRAPHY:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 204
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "SCIENCE_FICTION"

    const/4 v2, 0x7

    const v3, 0x7f0d00f9

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->SCIENCE_FICTION:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 205
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "CLASSIC_TV"

    const/16 v2, 0x8

    const v3, 0x7f0d0101

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->CLASSIC_TV:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 206
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "HOME_AND_GARDEN"

    const/16 v2, 0x9

    const v3, 0x7f0d0102

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->HOME_AND_GARDEN:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 207
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "NEWS"

    const/16 v2, 0xa

    const v3, 0x7f0d0103

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->NEWS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 208
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "REALITY_AND_GAMES"

    const/16 v2, 0xb

    const v3, 0x7f0d0104

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->REALITY_AND_GAMES:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 209
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "SCIENCE_AND_TECHNOLOGY"

    const/16 v2, 0xc

    const v3, 0x7f0d0105

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->SCIENCE_AND_TECHNOLOGY:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 210
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "SOAPS"

    const/16 v2, 0xd

    const v3, 0x7f0d0106

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->SOAPS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 211
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "TRAVEL"

    const/16 v2, 0xe

    const v3, 0x7f0d0107

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->TRAVEL:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 212
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "WEB_ORIGINALS"

    const/16 v2, 0xf

    const v3, 0x7f0d0108

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->WEB_ORIGINALS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 213
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "CELEBRITY_AND_ENTERTAINMENT"

    const/16 v2, 0x10

    const v3, 0x7f0d0109

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->CELEBRITY_AND_ENTERTAINMENT:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 214
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "NATURE"

    const/16 v2, 0x11

    const v3, 0x7f0d010a

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->NATURE:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 215
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "BEAUTY_AND_FASHION"

    const/16 v2, 0x12

    const v3, 0x7f0d010b

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->BEAUTY_AND_FASHION:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 216
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "FOOD"

    const/16 v2, 0x13

    const v3, 0x7f0d010c

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->FOOD:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 217
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "GAMING"

    const/16 v2, 0x14

    const v3, 0x7f0d010d

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->GAMING:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 218
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "HEALTH_AND_FITNESS"

    const/16 v2, 0x15

    const v3, 0x7f0d010e

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->HEALTH_AND_FITNESS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 219
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    const-string v1, "LEARNING_AND_EDUCATION"

    const/16 v2, 0x16

    const v3, 0x7f0d010f

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->LEARNING_AND_EDUCATION:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    .line 196
    const/16 v0, 0x17

    new-array v0, v0, [Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->UNSPECIFIED:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->ACTION_AND_ADVENTURE:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->ANIMATION_AND_CARTOONS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->COMEDY:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->DRAMA:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->SPORTS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->DOCUMENTARY_AND_BIOGRAPHY:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->SCIENCE_FICTION:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->CLASSIC_TV:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->HOME_AND_GARDEN:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->NEWS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->REALITY_AND_GAMES:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->SCIENCE_AND_TECHNOLOGY:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->SOAPS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->TRAVEL:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->WEB_ORIGINALS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->CELEBRITY_AND_ENTERTAINMENT:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->NATURE:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->BEAUTY_AND_FASHION:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->FOOD:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->GAMING:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->HEALTH_AND_FITNESS:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->LEARNING_AND_EDUCATION:Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->$VALUES:[Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "stringId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 227
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 228
    iput p3, p0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->stringId:I

    .line 229
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;
    .locals 1
    .parameter

    .prologue
    .line 196
    const-class v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    return-object p0
.end method

.method public static values()[Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->$VALUES:[Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;

    return-object v0
.end method
