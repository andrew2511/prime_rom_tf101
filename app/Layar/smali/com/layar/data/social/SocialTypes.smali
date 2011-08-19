.class public Lcom/layar/data/social/SocialTypes;
.super Ljava/lang/Object;
.source "SocialTypes.java"


# static fields
.field public static final ALL:Ljava/lang/String; = "ALL"

.field public static final DEVELOPER:Ljava/lang/String; = "developer"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field private static final EMAIL_ID:I = 0x2

.field public static final FACEBOOK:Ljava/lang/String; = "facebook"

.field private static final FACEBOOK_ID:I = 0x0

.field public static final SOCIALS:[Ljava/lang/String; = null

.field public static final SOCIALS_TO_SHARE:[Ljava/lang/String; = null

.field public static final SOCIAL_IMAGE_IDS:[I = null

.field public static final SOCIAL_TITLE_IDS:[I = null

.field public static final TWITTER:Ljava/lang/String; = "twitter"

.field private static final TWITTER_ID:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/layar/data/social/SocialTypes;->SOCIAL_TITLE_IDS:[I

    .line 21
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/layar/data/social/SocialTypes;->SOCIAL_IMAGE_IDS:[I

    .line 25
    new-array v0, v4, [Ljava/lang/String;

    .line 26
    const-string v1, "facebook"

    aput-object v1, v0, v2

    const-string v1, "twitter"

    aput-object v1, v0, v3

    .line 25
    sput-object v0, Lcom/layar/data/social/SocialTypes;->SOCIALS:[Ljava/lang/String;

    .line 29
    new-array v0, v4, [Ljava/lang/String;

    .line 30
    const-string v1, "facebook"

    aput-object v1, v0, v2

    const-string v1, "twitter"

    aput-object v1, v0, v3

    .line 29
    sput-object v0, Lcom/layar/data/social/SocialTypes;->SOCIALS_TO_SHARE:[Ljava/lang/String;

    .line 7
    return-void

    .line 18
    nop

    :array_0
    .array-data 0x4
        0x17t 0x1t 0x9t 0x7ft
        0x18t 0x1t 0x9t 0x7ft
        0x19t 0x1t 0x9t 0x7ft
    .end array-data

    .line 21
    :array_1
    .array-data 0x4
        0x8ct 0x0t 0x2t 0x7ft
        0x4ct 0x1t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSocialName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "socialType"

    .prologue
    .line 40
    const-string v0, "facebook"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/layar/data/social/SocialTypes;->SOCIAL_TITLE_IDS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    .line 42
    :cond_0
    const-string v0, "twitter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    sget-object v0, Lcom/layar/data/social/SocialTypes;->SOCIAL_TITLE_IDS:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_1
    const-string v0, "email"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    sget-object v0, Lcom/layar/data/social/SocialTypes;->SOCIAL_TITLE_IDS:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
