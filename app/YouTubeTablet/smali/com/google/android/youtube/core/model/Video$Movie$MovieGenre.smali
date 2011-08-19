.class public final enum Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;
.super Ljava/lang/Enum;
.source "Video.java"

# interfaces
.implements Lcom/google/android/youtube/core/model/Video$Genre;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/model/Video$Movie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MovieGenre"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;",
        ">;",
        "Lcom/google/android/youtube/core/model/Video$Genre;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum ACTION_AND_ADVENTURE:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum ANIMATION_AND_CARTOONS:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum CLASSICS:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum COMEDY:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum CRIME:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum DOCUMENTARY_AND_BIOGRAPHY:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum DRAMA:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum FAMILY:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum FOREIGN:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum HORROR:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum MYSTERY_AND_SUSPENSE:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum ROMANCE:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum SCIENCE_FICTION:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum SPORTS:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

.field public static final enum UNSPECIFIED:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;


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

    .line 137
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "UNSPECIFIED"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->UNSPECIFIED:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 138
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "ACTION_AND_ADVENTURE"

    const v2, 0x7f0d00f3

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->ACTION_AND_ADVENTURE:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 139
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "ANIMATION_AND_CARTOONS"

    const v2, 0x7f0d00f4

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->ANIMATION_AND_CARTOONS:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 140
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "COMEDY"

    const v2, 0x7f0d00f5

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->COMEDY:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 141
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "DRAMA"

    const v2, 0x7f0d00f6

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->DRAMA:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 142
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "SPORTS"

    const/4 v2, 0x5

    const v3, 0x7f0d00f7

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->SPORTS:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 143
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "DOCUMENTARY_AND_BIOGRAPHY"

    const/4 v2, 0x6

    const v3, 0x7f0d00f8

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->DOCUMENTARY_AND_BIOGRAPHY:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 144
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "SCIENCE_FICTION"

    const/4 v2, 0x7

    const v3, 0x7f0d00f9

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->SCIENCE_FICTION:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 145
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "CLASSICS"

    const/16 v2, 0x8

    const v3, 0x7f0d00fa

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->CLASSICS:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 146
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "CRIME"

    const/16 v2, 0x9

    const v3, 0x7f0d00fb

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->CRIME:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 147
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "FAMILY"

    const/16 v2, 0xa

    const v3, 0x7f0d00fc

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->FAMILY:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 148
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "FOREIGN"

    const/16 v2, 0xb

    const v3, 0x7f0d00fd

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->FOREIGN:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 149
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "HORROR"

    const/16 v2, 0xc

    const v3, 0x7f0d00fe

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->HORROR:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 150
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "MYSTERY_AND_SUSPENSE"

    const/16 v2, 0xd

    const v3, 0x7f0d00ff

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->MYSTERY_AND_SUSPENSE:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 151
    new-instance v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    const-string v1, "ROMANCE"

    const/16 v2, 0xe

    const v3, 0x7f0d0100

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->ROMANCE:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    .line 136
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->UNSPECIFIED:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->ACTION_AND_ADVENTURE:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->ANIMATION_AND_CARTOONS:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->COMEDY:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->DRAMA:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->SPORTS:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->DOCUMENTARY_AND_BIOGRAPHY:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->SCIENCE_FICTION:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->CLASSICS:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->CRIME:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->FAMILY:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->FOREIGN:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->HORROR:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->MYSTERY_AND_SUSPENSE:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->ROMANCE:Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->$VALUES:[Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

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
    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 160
    iput p3, p0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->stringId:I

    .line 161
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;
    .locals 1
    .parameter

    .prologue
    .line 136
    const-class v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    return-object p0
.end method

.method public static values()[Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->$VALUES:[Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    invoke-virtual {v0}, [Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/youtube/core/model/Video$Movie$MovieGenre;

    return-object v0
.end method
